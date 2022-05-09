; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/r9a06g032-clocks.c_pt.bc'
source_filename = "../drivers/clk/renesas/r9a06g032-clocks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.45 = type { i16, i16 }
%struct.r9a06g032_gate = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.46 = type { i8, i16, i16, i16, i16, i16 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dev_power_governor = type { ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.r9a06g032_priv = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.r9a06g032_clkdesc = type { ptr, i24, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44, [4 x i8] }
%struct.anon.44 = type { i32, [4 x i16] }
%struct.r9a06g032_clk_div = type { %struct.clk_hw, ptr, i16, i16, i16, i16, i8, [8 x i16] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.r9a06g032_clk_bitsel = type { %struct.clk_hw, ptr, i16, i16 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.48 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.48 = type { %struct.mutex }
%struct.r9a06g032_clk_gate = type { %struct.clk_hw, ptr, i16, %struct.r9a06g032_gate }
%struct.r9a06g032_clk_dualgate = type { %struct.clk_hw, ptr, i16, i16, [2 x %struct.r9a06g032_gate] }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }

@__initcall__kmod_r9a06g032_clocks__185_987_r9a06g032_clocks_init4 = internal global ptr @r9a06g032_clocks_init, section ".initcall4.init", align 4
@r9a06g032_clock_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @r9a06g032_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"renesas,r9a06g032-sysctrl\00", [38 x i8] zeroinitializer }, align 32
@r9a06g032_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r9a06g032-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@r9a06g032_clocks_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&clocks->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/clk/renesas/r9a06g032-clocks.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_pll_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkout_d10\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkout_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkout_d160\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clkout_d1or2\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkout_d20\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkout_d40\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkout_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkout_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_adc\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_i2c\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_nand\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_p1_pg\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_p2_pg\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_p3_pg\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_p4_pg\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_p5_pg\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_p6_pg\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_qspi0\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_qspi1\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"div_ref_sync\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_sdio0\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_sdio1\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"div_switch\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"div_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_25_pg4\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_25_pg5\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_25_pg6\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_25_pg7\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_25_pg8\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_adc\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_ecat100\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_hsr100\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c0\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c1\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mii_ref\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_nand\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_nousbp2_pg6\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p1_pg2\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p1_pg3\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p1_pg4\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p4_pg3\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p4_pg4\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p6_pg1\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p6_pg2\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p6_pg3\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_p6_pg4\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_pci_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_qspi0\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_qspi1\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_rgmii_ref\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_rmii_ref\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_sdio0\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_sdio1\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_sercos100\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_slcd\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi0\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi1\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi2\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi3\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi4\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi5\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_switch\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_motor\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_ecat125\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_pinconfig\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_sercos\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_sgpio2\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_sgpio3\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_sgpio4\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_timer0\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_timer1\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_usbf\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_usbh\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_usbpm\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_48_pg_f\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_48_pg4\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_ddrphy_pllclk_d4\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_ecat100_d4\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_hsr100_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_ref_sync_d4\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_ref_sync_d8\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_sercos100_d2\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div_ca7\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_can0\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_can1\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hclk_deltasigma\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_pwmpto\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rsv\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_sgpio0\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_sgpio1\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtos_mdc\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_cm3\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ddrc\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_ecat25\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_hsr50\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_hw_rtos\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_sercos50\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_adc\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_cm3\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hclk_crypto_eip150\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclk_crypto_eip93\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_ddrc\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_dma0\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_dma1\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_gmac0\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_gmac1\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_gpio0\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_gpio1\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_gpio2\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_hsr\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_i2c0\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_i2c1\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_lcd\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_msebi_m\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_msebi_s\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_nand\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_pg_i\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_pg19\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_pg20\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_pg3\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_pg4\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_qspi0\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_qspi1\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rom\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_rtc\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_sdio0\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_sdio1\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_semap\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_spi0\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_spi1\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_spi2\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_spi3\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_spi4\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_spi5\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hclk_switch\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_switch_rg\00", [17 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart0\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart1\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart2\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart3\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart4\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart5\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart6\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hclk_uart7\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart_group_012\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uart_group_34567\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart3\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart4\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart5\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart6\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart7\00", [22 x i8] zeroinitializer }, align 32
@r9a06g032_clocks = internal constant { <{ { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } }>, [928 x i8] } { <{ { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } }> <{ { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.4, i8 16, i8 0, i8 0, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 1, i16 25 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.5, i8 16, i8 16, i8 0, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 10, i16 12 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.6, i8 16, i8 32, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 10, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.7, i8 16, i8 48, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 16, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.8, i8 16, i8 64, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 160, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.9, i8 32, i8 80, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 0, i8 64, i8 32, i8 0, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.10, i8 16, i8 96, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 20, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.11, i8 16, i8 112, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 40, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.12, i8 16, i8 -128, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 5, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.13, i8 16, i8 -112, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 8, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.14, i8 32, i8 -96, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 12, i8 -113, i8 -95, i8 52, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.15, i8 32, i8 -80, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 1, i8 1, i8 56, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.16, i8 32, i8 -64, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 2, i8 1, i8 72, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.17, i8 32, i8 -48, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 12, i8 -127, i8 16, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.18, i8 32, i8 -32, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 8, i8 0, i8 -8, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.19, i8 32, i8 -16, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 2, i8 8, i8 1, i8 0, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.20, i8 33, i8 0, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 2, i8 8, i8 1, i8 8, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.21, i8 33, i8 16, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 2, i8 -126, i8 -127, i8 28, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.22, i8 33, i8 32, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 4, i8 0, i8 72, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.23, i8 33, i8 48, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 0, i8 -64, i8 113, i8 36, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.24, i8 33, i8 64, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 0, i8 -64, i8 112, i8 100, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.25, i8 33, i8 80, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 0, i8 -127, i8 0, i8 -32, [4 x i16] [i16 2, i16 4, i16 8, i16 16] }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.26, i8 33, i8 96, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 5, i8 8, i8 1, i8 40, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.27, i8 33, i8 112, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 5, i8 8, i8 1, i8 44, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.28, i8 33, i8 -128, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 1, i8 66, i8 -128, i8 -108, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.29, i8 33, i8 -112, i8 16, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 3, i8 8, i8 1, i8 60, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.30, i8 1, i8 -96, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1865, i16 1866, i16 1867, i16 0, i16 2787, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.31, i8 1, i8 -80, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1868, i16 1869, i16 1870, i16 0, i16 2788, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.32, i8 1, i8 -64, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1871, i16 1872, i16 1873, i16 0, i16 2789, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.33, i8 1, i8 -48, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1874, i16 1875, i16 1876, i16 0, i16 2790, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.34, i8 1, i8 -32, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1877, i16 1878, i16 1879, i16 0, i16 2791, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.35, i8 1, i8 -16, i8 -80, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 490, i16 491, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.36, i8 2, i8 0, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1029, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.37, i8 2, i8 16, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1155, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.38, i8 2, i8 32, i8 -64, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 486, i16 487, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.39, i8 2, i8 48, i8 -64, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 488, i16 489, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.40, i8 2, i8 64, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 834, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.41, i8 2, i8 80, i8 -48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 644, i16 645, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.42, i8 2, i8 96, i8 -16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1908, i16 1909, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.43, i8 2, i8 112, i8 -32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2146, i16 2147, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.44, i8 2, i8 -128, i8 -32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2148, i16 2149, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.45, i8 2, i8 -112, i8 -32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2150, i16 2151, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.46, i8 2, i8 -95, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2084, i16 2085, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.47, i8 2, i8 -79, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2086, i16 2087, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.48, i8 2, i8 -63, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2208, i16 2209, i16 2210, i16 0, i16 2912, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.49, i8 2, i8 -47, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2211, i16 2212, i16 2213, i16 0, i16 2913, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.50, i8 2, i8 -31, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2214, i16 2215, i16 2216, i16 0, i16 2914, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.51, i8 2, i8 -15, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2217, i16 2218, i16 2219, i16 0, i16 2915, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.52, i8 -125, i8 0, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 230, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.53, i8 3, i8 17, i8 64, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 676, i16 677, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.54, i8 3, i8 33, i8 80, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1156, i16 1157, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.55, i8 3, i8 48, i8 -96, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 832, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.56, i8 3, i8 64, i8 112, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 833, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.57, i8 3, i8 81, i8 112, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.58, i8 3, i8 97, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1604, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.59, i8 3, i8 112, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1061, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.60, i8 3, i8 -128, i8 -32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2144, i16 2145, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.61, i8 3, i8 -111, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2016, i16 2017, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.62, i8 3, i8 -95, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2018, i16 2019, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.63, i8 3, i8 -79, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2020, i16 2021, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.64, i8 3, i8 -63, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2022, i16 2023, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.65, i8 3, i8 -47, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2080, i16 2081, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.66, i8 3, i8 -31, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2082, i16 2083, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.67, i8 3, i8 -15, i8 -112, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2434, i16 2435, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.68, i8 36, i8 0, i8 -112, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 0, i8 -128, i8 -127, i8 80, [4 x i16] zeroinitializer }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.69, i8 -124, i8 16, i8 -96, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1024, i16 1025, i16 0, i16 1026, i16 0, i16 1088, i16 1089 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.70, i8 -124, i8 32, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1856, i16 1857, i16 1858, i16 0, i16 2784, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.71, i8 -124, i8 48, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1056, i16 1058, i16 0, i16 1057, i16 0, i16 1120, i16 1121 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.72, i8 -124, i8 65, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2243, i16 2244, i16 2245, i16 0, i16 2881, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.73, i8 -124, i8 81, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2246, i16 2247, i16 2248, i16 0, i16 2882, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.74, i8 -124, i8 97, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2249, i16 2250, i16 2251, i16 0, i16 2883, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.75, i8 -124, i8 112, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1859, i16 1860, i16 1861, i16 0, i16 2785, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.76, i8 -124, i8 -128, i8 -128, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1862, i16 1863, i16 1864, i16 0, i16 2786, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.77, i8 -124, i8 -112, i8 -96, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 227, i16 0, i16 0, i16 228, i16 0, i16 258, i16 259 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.78, i8 -124, i8 -96, i8 -96, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 224, i16 225, i16 0, i16 226, i16 0, i16 256, i16 257 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.79, i8 -124, i8 -80, i8 -96, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 229, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.80, i8 4, i8 -64, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1932, i16 1933, i16 0, i16 1934, i16 0, i16 2820, i16 2821 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.81, i8 4, i8 -48, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1929, i16 1930, i16 1931, i16 0, i16 2819, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.82, i8 20, i8 -32, i8 96, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 4, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.83, i8 20, i8 -14, i8 16, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 4, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.84, i8 21, i8 2, i8 32, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 2, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.85, i8 21, i8 17, i8 96, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 4, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.86, i8 21, i8 33, i8 96, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 8, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.45, [12 x i8] } } { ptr @.str.87, i8 21, i8 51, i8 -128, { %struct.anon.45, [12 x i8] } { %struct.anon.45 { i16 2, i16 1 }, [12 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.88, i8 37, i8 65, i8 96, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 0, i8 64, i8 64, i8 -28, [4 x i16] [i16 1, i16 2, i16 4, i16 0] }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.89, i8 -123, i8 80, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1923, i16 1924, i16 1925, i16 0, i16 2817, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.90, i8 -123, i8 96, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1926, i16 1927, i16 1928, i16 0, i16 2818, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.91, i8 -123, i8 116, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 495, i16 496, i16 497, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.92, i8 -123, i8 -124, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 492, i16 493, i16 494, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.93, i8 -123, i8 -112, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1920, i16 1921, i16 1922, i16 0, i16 2816, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.94, i8 -123, i8 -92, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 480, i16 481, i16 482, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.95, i8 -123, i8 -76, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 483, i16 484, i16 485, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } } { ptr @.str.96, i8 37, i8 -63, i8 96, { { i8, i8, i8, i8, [4 x i16] }, [4 x i8] } { { i8, i8, i8, i8, [4 x i16] } { i8 20, i8 40, i8 1, i8 -112, [4 x i16] [i16 80, i16 160, i16 320, i16 640] }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.97, i8 5, i8 -43, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2976, i16 2977, i16 0, i16 2978, i16 0, i16 3008, i16 3009 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.98, i8 5, i8 -28, i8 -16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 803, i16 804, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.99, i8 5, i8 -11, i8 0, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1027, i16 1028, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.100, i8 6, i8 5, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1156, i16 1157, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.101, i8 6, i8 21, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 3168, i16 3169, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.102, i8 6, i8 37, i8 64, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1060, i16 1059, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.103, i8 -122, i8 53, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 431, i16 432, i16 433, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.104, i8 -122, i8 69, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 3104, i16 3105, i16 3106, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.105, i8 -122, i8 85, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 291, i16 292, i16 293, i16 0, i16 322, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.106, i8 -122, i8 101, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 288, i16 289, i16 0, i16 290, i16 0, i16 320, i16 321 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.107, i8 -122, i8 117, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 800, i16 802, i16 0, i16 801, i16 0, i16 928, i16 929 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.108, i8 -122, i8 -123, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 608, i16 609, i16 610, i16 611, i16 704, i16 705, i16 706 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.109, i8 -122, i8 -107, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 612, i16 613, i16 614, i16 615, i16 707, i16 708, i16 709 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.110, i8 -122, i8 -91, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 864, i16 865, i16 866, i16 867, i16 960, i16 961, i16 962 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.111, i8 -122, i8 -75, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 896, i16 897, i16 898, i16 899, i16 992, i16 993, i16 994 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.112, i8 -122, i8 -59, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 530, i16 531, i16 532, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.113, i8 -122, i8 -43, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 533, i16 534, i16 535, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.114, i8 -122, i8 -27, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 553, i16 554, i16 555, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.115, i8 -122, i8 -11, i8 16, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1152, i16 1154, i16 0, i16 1153, i16 0, i16 1216, i16 1217 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.116, i8 -121, i8 5, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 425, i16 426, i16 427, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.117, i8 -121, i8 21, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 428, i16 429, i16 430, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.118, i8 -121, i8 37, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1952, i16 1953, i16 1954, i16 0, i16 2848, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.119, i8 -121, i8 53, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 356, i16 357, i16 358, i16 0, i16 387, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.120, i8 -121, i8 69, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 352, i16 353, i16 354, i16 355, i16 384, i16 385, i16 386 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.121, i8 -121, i8 85, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 640, i16 641, i16 642, i16 643, i16 736, i16 737, i16 738 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.122, i8 -121, i8 101, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1964, i16 1965, i16 0, i16 1966, i16 0, i16 2852, i16 2853 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.123, i8 -121, i8 117, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 556, i16 557, i16 558, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.124, i8 -121, i8 -123, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 559, i16 560, i16 561, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.125, i8 -121, i8 -107, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1958, i16 1959, i16 1960, i16 0, i16 2850, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.126, i8 -121, i8 -91, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1961, i16 1962, i16 1963, i16 0, i16 2851, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.127, i8 -121, i8 -75, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 672, i16 673, i16 674, i16 675, i16 768, i16 769, i16 770 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.128, i8 -121, i8 -59, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1152, i16 1153, i16 1154, i16 1155, i16 1216, i16 1217, i16 1218 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.129, i8 -121, i8 -43, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2720, i16 2721, i16 2722, i16 0, i16 2944, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.130, i8 -121, i8 -27, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2560, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.131, i8 -121, i8 -11, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 96, i16 97, i16 98, i16 99, i16 128, i16 129, i16 130 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.132, i8 -120, i8 5, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1600, i16 1601, i16 1602, i16 1603, i16 1632, i16 1633, i16 1634 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.133, i8 -120, i8 21, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 1955, i16 1956, i16 1957, i16 0, i16 2849, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.134, i8 -120, i8 37, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 512, i16 513, i16 514, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.135, i8 -120, i8 53, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 515, i16 516, i16 517, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.136, i8 -120, i8 69, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 518, i16 519, i16 520, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.137, i8 -120, i8 85, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 521, i16 522, i16 523, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.138, i8 -120, i8 101, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 524, i16 525, i16 526, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.139, i8 -120, i8 117, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 527, i16 528, i16 529, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.140, i8 -120, i8 -123, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 2432, i16 0, i16 2433, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.141, i8 -120, i8 -107, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 3136, i16 3137, i16 3138, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.142, i8 -120, i8 -91, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 416, i16 417, i16 418, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.143, i8 -120, i8 -75, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 419, i16 420, i16 421, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.144, i8 -120, i8 -59, i8 48, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 422, i16 423, i16 424, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.145, i8 -120, i8 -43, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 536, i16 537, i16 538, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.146, i8 -120, i8 -27, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 539, i16 540, i16 541, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.147, i8 -120, i8 -11, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 544, i16 545, i16 546, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.148, i8 -119, i8 5, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 547, i16 548, i16 549, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.r9a06g032_gate, [2 x i8] } } { ptr @.str.149, i8 -119, i8 21, i8 32, { %struct.r9a06g032_gate, [2 x i8] } { %struct.r9a06g032_gate { i16 550, i16 551, i16 552, i16 0, i16 0, i16 0, i16 0 }, [2 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.150, i8 57, i8 -95, i8 -96, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 0, i16 1912, i16 0, i16 0, i16 0, i16 0 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.151, i8 57, i8 -80, i8 -16, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 -128, i16 446, i16 0, i16 0, i16 0, i16 0 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.152, i8 73, i8 41, i8 -80, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 0, i16 0, i16 434, i16 435, i16 436, i16 437 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.153, i8 73, i8 57, i8 -80, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 16, i16 0, i16 438, i16 439, i16 440, i16 441 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.154, i8 73, i8 73, i8 -80, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 32, i16 0, i16 442, i16 443, i16 444, i16 445 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.155, i8 73, i8 89, i8 -64, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 -128, i16 0, i16 1888, i16 1889, i16 1890, i16 1891 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.156, i8 73, i8 105, i8 -64, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 -112, i16 0, i16 1892, i16 1893, i16 1894, i16 1895 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.157, i8 73, i8 121, i8 -64, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 -96, i16 0, i16 1896, i16 1897, i16 1898, i16 1899 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.158, i8 73, i8 -119, i8 -64, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 -80, i16 0, i16 1900, i16 1901, i16 1902, i16 1903 }, [4 x i8] undef } }, { ptr, i8, i8, i8, { %struct.anon.46, [4 x i8] } } { ptr @.str.159, i8 73, i8 -103, i8 -64, { %struct.anon.46, [4 x i8] } { %struct.anon.46 { i8 -64, i16 0, i16 1904, i16 1905, i16 1906, i16 1907 }, [4 x i8] undef } } }>, [928 x i8] zeroinitializer }, align 32
@r9a06g032_clk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_clk_gate_enable, ptr @r9a06g032_clk_gate_disable, ptr @r9a06g032_clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@r9a06g032_register_gate.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.162, ptr @.str.3, ptr @.str.163, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r9a06g032_clocks\00", [47 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r9a06g032_register_gate\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s was enabled, making read-only\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@r9a06g032_clk_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_div_recalc_rate, ptr null, ptr @r9a06g032_div_determine_rate, ptr null, ptr null, ptr @r9a06g032_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_bitselect_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_clk_mux_set_parent, ptr @r9a06g032_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@r9a06g032_clk_dualgate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @r9a06g032_clk_dualgate_enable, ptr @r9a06g032_clk_dualgate_disable, ptr @r9a06g032_clk_dualgate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@r9a06g032_register_dualgate.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.161, ptr @.str.164, ptr @.str.3, ptr @.str.163, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"r9a06g032_register_dualgate\00", [36 x i8] zeroinitializer }, align 32
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 14, i64 25]
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"r9a06g032_clock_driver\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 974, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 976, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"r9a06g032_match\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 969, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 913, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 918, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 923, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 133, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 134, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 135, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 136, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 137, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 138, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 139, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 140, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 141, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 142, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 143, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 144, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 145, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 146, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 147, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 148, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 149, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 150, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 151, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 152, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 153, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 154, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 155, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 156, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 157, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 158, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 159, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 160, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 161, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 162, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 163, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 164, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 165, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 166, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 167, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 168, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 169, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 170, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 171, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 172, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 173, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 174, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 175, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 176, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 177, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 178, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 179, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 180, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 181, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 182, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 183, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 184, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 185, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 186, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 187, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 188, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 189, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 190, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 191, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 192, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 193, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 194, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 195, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 196, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 197, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 198, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 199, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 200, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 201, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 202, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 203, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 204, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 205, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 206, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 207, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 208, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 209, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 210, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 211, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 212, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 213, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 214, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 215, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 216, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 217, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 218, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 219, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 220, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 221, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 222, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 223, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 224, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 225, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 226, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 227, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 228, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 229, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 230, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 231, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 232, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 233, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 234, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 235, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 236, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 237, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 238, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 239, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 240, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 241, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 242, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 243, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 244, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 245, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 246, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 247, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 248, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 249, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 250, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 251, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 252, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 253, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 254, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 255, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 256, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 257, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 258, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 259, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 260, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 261, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 262, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 263, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 264, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 265, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 266, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 267, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 268, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 269, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 270, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 271, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 272, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 273, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 274, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 275, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 276, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 277, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 278, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 286, i32 11 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 295, i32 11 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 302, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 303, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 304, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 305, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 306, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 307, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 308, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 309, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [17 x i8] c"r9a06g032_clocks\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 132, i32 39 }
@___asan_gen_.660 = private unnamed_addr constant [23 x i8] c"r9a06g032_clk_gate_ops\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 494, i32 29 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 531, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant [22 x i8] c"r9a06g032_clk_div_ops\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 665, i32 29 }
@___asan_gen_.675 = private unnamed_addr constant [18 x i8] c"clk_bitselect_ops\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 750, i32 29 }
@___asan_gen_.678 = private unnamed_addr constant [27 x i8] c"r9a06g032_clk_dualgate_ops\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 839, i32 29 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 880, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 389, i32 41 }
@___asan_gen_.687 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.688 = private constant [42 x i8] c"../drivers/clk/renesas/r9a06g032-clocks.c\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 389, i32 51 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @__initcall__kmod_r9a06g032_clocks__185_987_r9a06g032_clocks_init4, ptr @r9a06g032_clock_driver, ptr @.str, ptr @r9a06g032_match, ptr @r9a06g032_clocks_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @r9a06g032_clocks, ptr @r9a06g032_clk_gate_ops, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @r9a06g032_clk_div_ops, ptr @clk_bitselect_ops, ptr @r9a06g032_clk_dualgate_ops, ptr @.str.164, ptr @.str.165, ptr @.str.166], section "llvm.metadata"
@0 = internal global [174 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_clock_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_clocks_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_clocks to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_clk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_clk_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_bitselect_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r9a06g032_clk_dualgate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clocks_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @r9a06g032_clock_driver, ptr noundef nonnull @r9a06g032_clocks_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clocks_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %init.i142 = alloca %struct.clk_init_data, align 4
  %names.i = alloca [2 x ptr], align 4
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %uart_group_sel = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uart_group_sel) #6
  %2 = ptrtoint ptr %uart_group_sel to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %uart_group_sel, align 2, !annotation !358
  %3 = getelementptr inbounds [2 x i16], ptr %uart_group_sel, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !358
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #6
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 624, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  %tobool3.not = icmp eq ptr %call5.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.r9a06g032_priv, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @r9a06g032_clocks_probe.__key, i16 noundef signext 3) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %call.i, align 4
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 156, ptr %clk_num, align 4
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %call12 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #6
  %reg = getelementptr inbounds %struct.r9a06g032_priv, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %reg, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end27, label %for.cond.preheader, !prof !359

for.cond.preheader:                               ; preds = %if.end11
  %9 = getelementptr inbounds i8, ptr %init.i142, i32 12
  %10 = getelementptr inbounds [2 x ptr], ptr %names.i, i32 0, i32 1
  %ops.i145 = getelementptr inbounds %struct.clk_init_data, ptr %init.i142, i32 0, i32 1
  %flags.i146 = getelementptr inbounds %struct.clk_init_data, ptr %init.i142, i32 0, i32 6
  %parent_names.i147 = getelementptr inbounds %struct.clk_init_data, ptr %init.i142, i32 0, i32 2
  %num_parents.i148 = getelementptr inbounds %struct.clk_init_data, ptr %init.i142, i32 0, i32 5
  %11 = getelementptr inbounds i8, ptr %init.i, i32 12
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  br label %for.body

do.end27:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 923, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.cond.preheader
  %i.0163 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163
  %source = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 1
  %12 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load i32, ptr %source, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %tobool43.not = icmp eq i32 %bf.clear, 0
  br i1 %tobool43.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %sub = add nsw i32 %bf.clear, -1
  %arrayidx50 = getelementptr ptr, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %call7.sink = phi ptr [ %16, %cond.true ], [ %call7, %for.body.cond.end_crit_edge ]
  %call52 = call ptr @__clk_get_name(ptr noundef %call7.sink) #6
  %bf.lshr54 = lshr i32 %bf.load, 28
  %bf.clear55 = and i32 %bf.lshr54, 7
  %17 = zext i32 %bf.clear55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear55, label %cond.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb58
    i32 2, label %sw.bb60
    i32 3, label %sw.bb62
    i32 4, label %sw.bb67
  ]

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2
  %mul = getelementptr inbounds %struct.anon.45, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %mul to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mul, align 2
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %20, align 4
  %conv56 = zext i16 %24 to i32
  %call57 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %19, ptr noundef %call52, i32 noundef 0, i32 noundef %conv, i32 noundef %conv56) #6
  br label %sw.epilog

sw.bb58:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = call fastcc ptr @r9a06g032_register_gate(ptr noundef nonnull %call.i, ptr noundef %call52, ptr noundef %arrayidx)
  br label %sw.epilog

sw.bb60:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %25 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call52, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %26 = call ptr @memset(ptr %11, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 44) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb60.r9a06g032_register_div.exit_crit_edge, label %if.end.i

sw.bb60.r9a06g032_register_div.exit_crit_edge:    ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_register_div.exit

if.end.i:                                         ; preds = %sw.bb60
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %init.i, align 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @r9a06g032_clk_div_ops, ptr %ops.i, align 4
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %flags.i, align 4
  %33 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool2.not.i = icmp eq ptr %34, null
  %parent_name.addr..i = select i1 %tobool2.not.i, ptr null, ptr %parent_name.addr.i
  %35 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool3.not.i = icmp ne ptr %34, null
  %conv.i = zext i1 %tobool3.not.i to i8
  %36 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %clocks5.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %clocks5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %clocks5.i, align 4
  %38 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i = load i32, ptr %source, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 20
  %39 = trunc i32 %bf.lshr.i to i16
  %conv6.i = and i16 %39, 255
  %index7.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %index7.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i, ptr %index7.i, align 8
  %41 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load8.i = load i32, ptr %41, align 4
  %43 = trunc i32 %bf.load8.i to i16
  %44 = lshr i16 %43, 2
  %conv11.i = and i16 %44, 1023
  %reg.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv11.i, ptr %reg.i, align 2
  %init12.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %init12.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %init.i, ptr %init12.i, align 8
  %bf.lshr14.i = lshr i32 %bf.load8.i, 22
  %conv15.i = trunc i32 %bf.lshr14.i to i16
  %min.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv15.i, ptr %min.i, align 4
  %bf.lshr17.i = lshr i32 %bf.load8.i, 12
  %48 = trunc i32 %bf.lshr17.i to i16
  %conv19.i = and i16 %48, 1023
  %max.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv19.i, ptr %max.i, align 2
  %table_size.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 6
  %arrayidx.i = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2, i32 0, i32 1, i32 0
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool24.not.i = icmp eq i16 %51, 0
  br i1 %tobool24.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i
  %52 = ptrtoint ptr %table_size.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %table_size.i, align 8
  %inc.i = add i8 %53, 1
  store i8 %inc.i, ptr %table_size.i, align 8
  %idxprom.i = zext i8 %53 to i32
  %arrayidx27.i = getelementptr %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 7, i32 %idxprom.i
  %54 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %51, ptr %arrayidx27.i, align 2
  %arrayidx.1.i = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool24.not.1.i = icmp eq i16 %56, 0
  br i1 %tobool24.not.1.i, label %for.body.i.for.end.i_crit_edge, label %for.body.1.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.1.i:                                     ; preds = %for.body.i
  %inc.1.i = add i8 %53, 2
  %57 = ptrtoint ptr %table_size.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %inc.1.i, ptr %table_size.i, align 8
  %idxprom.1.i = zext i8 %inc.i to i32
  %arrayidx27.1.i = getelementptr %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 7, i32 %idxprom.1.i
  %58 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %56, ptr %arrayidx27.1.i, align 2
  %arrayidx.2.i = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool24.not.2.i = icmp eq i16 %60, 0
  br i1 %tobool24.not.2.i, label %for.body.1.i.for.end.i_crit_edge, label %for.body.2.i

for.body.1.i.for.end.i_crit_edge:                 ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.2.i:                                     ; preds = %for.body.1.i
  %inc.2.i = add i8 %53, 3
  %61 = ptrtoint ptr %table_size.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %inc.2.i, ptr %table_size.i, align 8
  %idxprom.2.i = zext i8 %inc.1.i to i32
  %arrayidx27.2.i = getelementptr %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 7, i32 %idxprom.2.i
  %62 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %60, ptr %arrayidx27.2.i, align 2
  %arrayidx.3.i = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool24.not.3.i = icmp eq i16 %64, 0
  br i1 %tobool24.not.3.i, label %for.body.2.i.for.end.i_crit_edge, label %for.body.3.i

for.body.2.i.for.end.i_crit_edge:                 ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.3.i:                                     ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.3.i = add i8 %53, 4
  %65 = ptrtoint ptr %table_size.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %inc.3.i, ptr %table_size.i, align 8
  %idxprom.3.i = zext i8 %inc.2.i to i32
  %arrayidx27.3.i = getelementptr %struct.r9a06g032_clk_div, ptr %call7.i.i.i, i32 0, i32 7, i32 %idxprom.3.i
  %66 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %64, ptr %arrayidx27.3.i, align 2
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.3.i, %for.body.2.i.for.end.i_crit_edge, %for.body.1.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %call30.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #6
  %cmp.i.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then32.i, label %for.end.i.r9a06g032_register_div.exit_crit_edge

for.end.i.r9a06g032_register_div.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_register_div.exit

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %r9a06g032_register_div.exit

r9a06g032_register_div.exit:                      ; preds = %if.then32.i, %for.end.i.r9a06g032_register_div.exit_crit_edge, %sw.bb60.r9a06g032_register_div.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then32.i ], [ null, %sw.bb60.r9a06g032_register_div.exit_crit_edge ], [ %call30.i, %for.end.i.r9a06g032_register_div.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %sw.epilog

sw.bb62:                                          ; preds = %cond.end
  %67 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2
  %sel = getelementptr inbounds %struct.anon.46, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %sel to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sel, align 2
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load63 = load i8, ptr %67, align 4
  %bf.lshr64 = lshr i8 %bf.load63, 7
  %idxprom = zext i8 %bf.lshr64 to i32
  %arrayidx65 = getelementptr [2 x i16], ptr %uart_group_sel, i32 0, i32 %idxprom
  %71 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %69, ptr %arrayidx65, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i142) #6
  %72 = call ptr @memset(ptr %9, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %names.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i143 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not.i144 = icmp eq ptr %call7.i.i.i143, null
  br i1 %tobool.not.i144, label %sw.bb62.r9a06g032_register_bitsel.exit_crit_edge, label %if.end.i154

sw.bb62.r9a06g032_register_bitsel.exit_crit_edge: ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_register_bitsel.exit

if.end.i154:                                      ; preds = %sw.bb62
  %74 = ptrtoint ptr %names.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call52, ptr %names.i, align 4
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.5, ptr %10, align 4
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx, align 4
  %78 = ptrtoint ptr %init.i142 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %init.i142, align 4
  %79 = ptrtoint ptr %ops.i145 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @clk_bitselect_ops, ptr %ops.i145, align 4
  %80 = ptrtoint ptr %flags.i146 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %flags.i146, align 4
  %81 = ptrtoint ptr %parent_names.i147 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %names.i, ptr %parent_names.i147, align 4
  %82 = ptrtoint ptr %num_parents.i148 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 2, ptr %num_parents.i148, align 4
  %clocks3.i = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %call7.i.i.i143, i32 0, i32 1
  %83 = ptrtoint ptr %clocks3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %clocks3.i, align 4
  %84 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load.i150 = load i32, ptr %source, align 4
  %bf.lshr.i151 = lshr i32 %bf.load.i150, 20
  %85 = trunc i32 %bf.lshr.i151 to i16
  %conv.i152 = and i16 %85, 255
  %index4.i = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %call7.i.i.i143, i32 0, i32 2
  %86 = ptrtoint ptr %index4.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i152, ptr %index4.i, align 8
  %87 = ptrtoint ptr %sel to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sel, align 2
  %selector.i = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %call7.i.i.i143, i32 0, i32 3
  %89 = ptrtoint ptr %selector.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %selector.i, align 2
  %init5.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i143, i32 0, i32 2
  %90 = ptrtoint ptr %init5.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %init.i142, ptr %init5.i, align 8
  %call7.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i143) #6
  %cmp.i.i153 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i153, label %if.then9.i, label %if.end.i154.r9a06g032_register_bitsel.exit_crit_edge

if.end.i154.r9a06g032_register_bitsel.exit_crit_edge: ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_register_bitsel.exit

if.then9.i:                                       ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i143) #6
  br label %r9a06g032_register_bitsel.exit

r9a06g032_register_bitsel.exit:                   ; preds = %if.then9.i, %if.end.i154.r9a06g032_register_bitsel.exit_crit_edge, %sw.bb62.r9a06g032_register_bitsel.exit_crit_edge
  %retval.0.i155 = phi ptr [ null, %if.then9.i ], [ null, %sw.bb62.r9a06g032_register_bitsel.exit_crit_edge ], [ %call7.i, %if.end.i154.r9a06g032_register_bitsel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %names.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i142) #6
  br label %sw.epilog

sw.bb67:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %91 = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %i.0163, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load68 = load i8, ptr %91, align 4
  %bf.lshr69 = lshr i8 %bf.load68, 7
  %idxprom71 = zext i8 %bf.lshr69 to i32
  %arrayidx72 = getelementptr [2 x i16], ptr %uart_group_sel, i32 0, i32 %idxprom71
  %93 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx72, align 2
  %call73 = call fastcc ptr @r9a06g032_register_dualgate(ptr noundef nonnull %call.i, ptr noundef %call52, ptr noundef %arrayidx, i16 noundef zeroext %94)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb67, %r9a06g032_register_bitsel.exit, %r9a06g032_register_div.exit, %sw.bb58, %sw.bb, %cond.end.sw.epilog_crit_edge
  %clk.0 = phi ptr [ null, %cond.end.sw.epilog_crit_edge ], [ %call73, %sw.bb67 ], [ %retval.0.i155, %r9a06g032_register_bitsel.exit ], [ %retval.0.i, %r9a06g032_register_div.exit ], [ %call59, %sw.bb58 ], [ %call57, %sw.bb ]
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %bf.lshr77 = lshr i32 %bf.load, 20
  %bf.clear78 = and i32 %bf.lshr77, 255
  %arrayidx79 = getelementptr ptr, ptr %96, i32 %bf.clear78
  %97 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %clk.0, ptr %arrayidx79, align 4
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, 156
  br i1 %exitcond.not, label %for.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  %call81 = call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end84:                                         ; preds = %for.end
  %call.i156 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @r9a06g032_clocks_del_clk_provider, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %if.end88, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_clk_del_provider(ptr noundef %1) #6
  br label %cleanup

if.end88:                                         ; preds = %if.end84
  %98 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node, align 8
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1352, i32 noundef 3520) #6
  %tobool.not.i159 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i159, label %if.end88.cleanup_crit_edge, label %if.end.i161

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i161:                                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %name1.i = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 10
  %102 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %name1.i, align 8
  %flags.i160 = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 32
  %103 = ptrtoint ptr %flags.i160 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 13, ptr %flags.i160, align 4
  %attach_dev.i = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 30
  %104 = ptrtoint ptr %attach_dev.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @r9a06g032_attach_dev, ptr %attach_dev.i, align 4
  %detach_dev.i = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 31
  %105 = ptrtoint ptr %detach_dev.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @r9a06g032_detach_dev, ptr %detach_dev.i, align 8
  %call2.i = call i32 @pm_genpd_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #6
  %call3.i = call i32 @of_genpd_add_provider_simple(ptr noundef %99, ptr noundef nonnull %call.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i161, %if.end88.cleanup_crit_edge, %devm_add_action_or_reset.exit, %for.end.cleanup_crit_edge, %do.end27, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ -12, %do.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %call81, %for.end.cleanup_crit_edge ], [ %call.i156, %devm_add_action_or_reset.exit ], [ 0, %if.end.i161 ], [ -12, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uart_group_sel) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @r9a06g032_register_gate(ptr noundef %clocks, ptr noundef %parent_name, ptr nocapture noundef readonly %desc) unnamed_addr #3 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @r9a06g032_clk_gate_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flags, align 4
  %9 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_name.addr, align 4
  %tobool2.not = icmp eq ptr %10, null
  %parent_name.addr. = select i1 %tobool2.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool3.not = icmp ne ptr %10, null
  %conv = zext i1 %tobool3.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %num_parents, align 4
  %clocks5 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %clocks5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clocks, ptr %clocks5, align 4
  %index = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %index, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %15 = trunc i32 %bf.lshr to i16
  %conv6 = and i16 %15, 255
  %index7 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %index7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6, ptr %index7, align 8
  %gate = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %call7.i.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 2
  %18 = call ptr @memcpy(ptr %gate, ptr %17, i32 14)
  %init8 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %init8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init, ptr %init8, align 8
  %reset.i = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %call7.i.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %reset.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end.r9a06g032_clk_gate_is_enabled.exit_crit_edge, label %land.lhs.true.i

if.end.r9a06g032_clk_gate_is_enabled.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_clk_gate_is_enabled.exit

land.lhs.true.i:                                  ; preds = %if.end
  %reg1.i.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %clocks, i32 0, i32 2
  %22 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg1.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %24 = lshr i32 %conv.i.i, 3
  %mul.i.i = and i32 %24, 8188
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %mul.i.i
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !360
  %26 = call i32 @llvm.bswap.i32(i32 %25) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i.i = and i32 %conv.i.i, 31
  %27 = shl nuw i32 1, %and.i.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end21_crit_edge, label %land.lhs.true.i.r9a06g032_clk_gate_is_enabled.exit_crit_edge

land.lhs.true.i.r9a06g032_clk_gate_is_enabled.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_clk_gate_is_enabled.exit

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

r9a06g032_clk_gate_is_enabled.exit:               ; preds = %land.lhs.true.i.r9a06g032_clk_gate_is_enabled.exit_crit_edge, %if.end.r9a06g032_clk_gate_is_enabled.exit_crit_edge
  %29 = ptrtoint ptr %clocks5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clocks5, align 4
  %31 = ptrtoint ptr %gate to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %gate, align 2
  %reg1.i12.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %reg1.i12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg1.i12.i, align 4
  %conv.i13.i = zext i16 %32 to i32
  %35 = lshr i32 %conv.i13.i, 3
  %mul.i14.i = and i32 %35, 8188
  %add.ptr.i15.i = getelementptr i8, ptr %34, i32 %mul.i14.i
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #6, !srcloc !360
  %37 = call i32 @llvm.bswap.i32(i32 %36) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i16.i = and i32 %conv.i13.i, 31
  %38 = shl nuw i32 1, %and.i16.i
  %39 = and i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool11.not = icmp eq i32 %39, 0
  br i1 %tobool11.not, label %r9a06g032_clk_gate_is_enabled.exit.if.end21_crit_edge, label %if.then12

r9a06g032_clk_gate_is_enabled.exit.if.end21_crit_edge: ; preds = %r9a06g032_clk_gate_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then12:                                        ; preds = %r9a06g032_clk_gate_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or = or i32 %41, 2048
  store i32 %or, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r9a06g032_register_gate.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r9a06g032_register_gate, %if.then18)) #6
          to label %if.end21 [label %if.then18], !srcloc !362

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r9a06g032_register_gate.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.163, ptr noundef %43) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then12, %r9a06g032_clk_gate_is_enabled.exit.if.end21_crit_edge, %land.lhs.true.i.if.end21_crit_edge
  %call23 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then25 ], [ null, %entry.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @r9a06g032_register_dualgate(ptr noundef %clocks, ptr noundef %parent_name, ptr nocapture noundef readonly %desc, i16 noundef zeroext %sel) unnamed_addr #3 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clocks1 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %clocks1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %clocks, ptr %clocks1, align 4
  %index = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %index, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %6 = trunc i32 %bf.lshr to i16
  %conv = and i16 %6, 255
  %index2 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %index2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %index2, align 8
  %selector = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %selector to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %sel, ptr %selector, align 2
  %g1 = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %g1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %g1, align 4
  %gate = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %gate to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %gate, align 4
  %r1 = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 2, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %r1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %r1, align 2
  %reset = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %reset, align 2
  %g2 = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 2, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %g2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %g2, align 4
  %arrayidx7 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx7, align 2
  %r2 = getelementptr inbounds %struct.r9a06g032_clkdesc, ptr %desc, i32 0, i32 2, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %r2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %r2, align 2
  %reset11 = getelementptr %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %reset11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %reset11, align 4
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc, align 4
  %23 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @r9a06g032_clk_dualgate_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %26 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %27 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %num_parents, align 4
  %init13 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %init13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init, ptr %init13, align 8
  %reg1.i.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %clocks, i32 0, i32 2
  %29 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg1.i.i, align 4
  %conv.i.i = zext i16 %sel to i32
  %31 = lshr i32 %conv.i.i, 3
  %mul.i.i = and i32 %31, 8188
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %mul.i.i
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !360
  %33 = call i32 @llvm.bswap.i32(i32 %32) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i.i = and i32 %conv.i.i, 31
  %34 = lshr i32 %33, %and.i.i
  %35 = and i32 %34, 1
  %arrayidx.i = getelementptr %struct.r9a06g032_clk_dualgate, ptr %call7.i.i, i32 0, i32 4, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i, align 2
  %38 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg1.i.i, align 4
  %conv.i8.i = zext i16 %37 to i32
  %40 = lshr i32 %conv.i8.i, 3
  %mul.i9.i = and i32 %40, 8188
  %add.ptr.i10.i = getelementptr i8, ptr %39, i32 %mul.i9.i
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #6, !srcloc !360
  %42 = call i32 @llvm.bswap.i32(i32 %41) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i11.i = and i32 %conv.i8.i, 31
  %43 = shl nuw i32 1, %and.i11.i
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool16.not = icmp eq i32 %44, 0
  br i1 %tobool16.not, label %if.end.if.end26_crit_edge, label %if.then17

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %or = or i32 %46, 2048
  store i32 %or, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r9a06g032_register_dualgate.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r9a06g032_register_dualgate, %if.then23)) #6
          to label %if.end26 [label %if.then23], !srcloc !362

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r9a06g032_register_dualgate.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.163, ptr noundef %48) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then17, %if.end.if.end26_crit_edge
  %call28 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then30 ], [ null, %entry.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r9a06g032_clocks_del_clk_provider(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_clk_del_provider(ptr noundef %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_gate_is_enabled(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gate = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 3
  %reset = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clocks, align 4
  %reg1.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %conv.i = zext i16 %1 to i32
  %6 = lshr i32 %conv.i, 3
  %mul.i = and i32 %6, 8188
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i = and i32 %conv.i, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clocks4 = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %clocks4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clocks4, align 4
  %13 = ptrtoint ptr %gate to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gate, align 2
  %reg1.i12 = getelementptr inbounds %struct.r9a06g032_priv, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %reg1.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1.i12, align 4
  %conv.i13 = zext i16 %14 to i32
  %17 = lshr i32 %conv.i13, 3
  %mul.i14 = and i32 %17, 8188
  %add.ptr.i15 = getelementptr i8, ptr %16, i32 %mul.i14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #6, !srcloc !360
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i16 = and i32 %conv.i13, 31
  %20 = lshr i32 %19, %and.i16
  %21 = and i32 %20, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_gate_enable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %gate = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 3
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %1, ptr noundef %gate, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r9a06g032_clk_gate_disable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %gate = getelementptr inbounds %struct.r9a06g032_clk_gate, ptr %hw, i32 0, i32 3
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %1, ptr noundef %gate, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r9a06g032_clk_gate_set(ptr noundef %clocks, ptr nocapture noundef readonly %g, i32 noundef %on) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %g to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %g, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !359

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 440, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.r9a06g032_priv, ptr %clocks, i32 0, i32 1
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = ptrtoint ptr %g to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %g, align 2
  %reg1.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %clocks, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %conv.i = zext i16 %3 to i32
  %6 = lshr i32 %conv.i, 3
  %mul.i = and i32 %6, 8188
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  %and.i = and i32 %conv.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %and4.i = and i32 %8, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.i = icmp ne i32 %on, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %shl8.i = shl nuw i32 %lnot.ext.i, %and.i
  %or.i = or i32 %and4.i, %shl8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #6, !srcloc !365
  %reset = getelementptr inbounds %struct.r9a06g032_gate, ptr %g, i32 0, i32 1
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool30.not = icmp eq i16 %11, 0
  br i1 %tobool30.not, label %if.end.if.end33_crit_edge, label %if.then31

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg1.i, align 4
  %conv.i92 = zext i16 %11 to i32
  %14 = lshr i32 %conv.i92, 3
  %mul.i93 = and i32 %14, 8188
  %add.ptr.i94 = getelementptr i8, ptr %13, i32 %mul.i93
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #6, !srcloc !360
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  %and.i95 = and i32 %conv.i92, 31
  %shl.i96 = shl nuw i32 1, %and.i95
  %or.i100 = or i32 %16, %shl.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i100) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %17) #6, !srcloc !365
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #6
  %ready = getelementptr inbounds %struct.r9a06g032_gate, ptr %g, i32 0, i32 2
  %19 = ptrtoint ptr %ready to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool36.not = icmp eq i16 %20, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.end33.do.body41_crit_edge

if.end33.do.body41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

lor.lhs.false:                                    ; preds = %if.end33
  %midle = getelementptr inbounds %struct.r9a06g032_gate, ptr %g, i32 0, i32 3
  %21 = ptrtoint ptr %midle to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %midle, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool38.not = icmp eq i16 %22, 0
  br i1 %tobool38.not, label %lor.lhs.false.if.end68_crit_edge, label %lor.lhs.false.do.body41_crit_edge

lor.lhs.false.do.body41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

lor.lhs.false.if.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.body41:                                        ; preds = %lor.lhs.false.do.body41_crit_edge, %if.end33.do.body41_crit_edge
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %23 = ptrtoint ptr %ready to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ready, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool55.not = icmp eq i16 %24, 0
  br i1 %tobool55.not, label %do.body41.if.end58_crit_edge, label %if.then56

do.body41.if.end58_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg1.i, align 4
  %conv.i102 = zext i16 %24 to i32
  %27 = lshr i32 %conv.i102, 3
  %mul.i103 = and i32 %27, 8188
  %add.ptr.i104 = getelementptr i8, ptr %26, i32 %mul.i103
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #6, !srcloc !360
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  %and.i105 = and i32 %conv.i102, 31
  %shl.i106 = shl nuw i32 1, %and.i105
  %neg.i107 = xor i32 %shl.i106, -1
  %and4.i108 = and i32 %29, %neg.i107
  %shl8.i111 = shl nuw i32 %lnot.ext.i, %and.i105
  %or.i112 = or i32 %and4.i108, %shl8.i111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i112) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %30) #6, !srcloc !365
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %do.body41.if.end58_crit_edge
  %midle59 = getelementptr inbounds %struct.r9a06g032_gate, ptr %g, i32 0, i32 3
  %31 = ptrtoint ptr %midle59 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %midle59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool60.not = icmp eq i16 %32, 0
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool63.not = icmp eq i32 %on, 0
  %33 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg1.i, align 4
  %conv.i114 = zext i16 %32 to i32
  %35 = lshr i32 %conv.i114, 3
  %mul.i115 = and i32 %35, 8188
  %add.ptr.i116 = getelementptr i8, ptr %34, i32 %mul.i115
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !360
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  %and.i117 = and i32 %conv.i114, 31
  %shl.i118 = shl nuw i32 1, %and.i117
  %neg.i119 = xor i32 %shl.i118, -1
  %and4.i120 = and i32 %37, %neg.i119
  %lnot.ext.i121 = zext i1 %tobool63.not to i32
  %shl8.i122 = shl nuw i32 %lnot.ext.i121, %and.i117
  %or.i123 = or i32 %and4.i120, %shl8.i122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i123) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %38) #6, !srcloc !365
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call49) #6
  br label %if.end68

if.end68:                                         ; preds = %if.end66, %lor.lhs.false.if.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %reg1 = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg1, align 4
  %reg2 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg2, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr3 = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !360
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !366
  %min = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %min, align 4
  %conv6 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv6)
  %cmp = icmp ult i32 %7, %conv6
  br i1 %cmp, label %entry.if.end16_crit_edge, label %if.else

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max, align 2
  %conv10 = zext i16 %11 to i32
  %12 = tail call i32 @llvm.umin.i32(i32 %7, i32 %conv10)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %entry.if.end16_crit_edge
  %div.0 = phi i32 [ %conv6, %entry.if.end16_crit_edge ], [ %12, %if.else ]
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %div.0
  %div17 = udiv i32 %sub, %div.0
  ret i32 %div17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_div_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %best_parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  %add.i = add i32 %3, 1
  %sub.i = add i32 %3, %1
  %div3.i = udiv i32 %sub.i, %add.i
  %min.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %min.i, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %div3.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.r9a06g032_div_clamp_div.exit_crit_edge

entry.r9a06g032_div_clamp_div.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_div_clamp_div.exit

if.end.i:                                         ; preds = %entry
  %max.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 5
  %6 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max.i, align 2
  %conv7.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %conv7.i)
  %cmp8.not.i = icmp ult i32 %div3.i, %conv7.i
  br i1 %cmp8.not.i, label %for.cond.preheader.i, label %if.end.i.r9a06g032_div_clamp_div.exit_crit_edge

if.end.i.r9a06g032_div_clamp_div.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_div_clamp_div.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %table_size.i = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 6
  %8 = ptrtoint ptr %table_size.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp ne i8 %9, 0
  %conv14.i = zext i8 %9 to i32
  %sub17.i = add nsw i32 %conv14.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp1896.i = icmp ugt i8 %9, 1
  br i1 %cmp1896.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.r9a06g032_div_clamp_div.exit_crit_edge

for.cond.preheader.i.r9a06g032_div_clamp_div.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_div_clamp_div.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.098.i = phi i32 [ %.pre.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 7, i32 %i.098.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  %conv20.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %conv20.i)
  %cmp21.not.i = icmp ult i32 %div3.i, %conv20.i
  %.pre.i = add nuw nsw i32 %i.098.i, 1
  br i1 %cmp21.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx25.i = getelementptr %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 7, i32 %.pre.i
  %12 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx25.i, align 2
  %conv26.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %conv26.i)
  %cmp27.not.i = icmp ugt i32 %div3.i, %conv26.i
  br i1 %cmp27.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then29.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i.le = zext i16 %11 to i32
  %conv26.i.le = zext i16 %13 to i32
  %add33.i = add i32 %1, -1
  %sub34.i = add i32 %add33.i, %conv20.i.le
  %div38.i = udiv i32 %sub34.i, %conv20.i.le
  %sub39.i = sub i32 %3, %div38.i
  %sub45.i = add i32 %add33.i, %conv26.i.le
  %div50.i = udiv i32 %sub45.i, %conv26.i.le
  %sub51.i = sub i32 %div50.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51.i, i32 %sub39.i)
  %cmp52.not.i = icmp ult i32 %sub51.i, %sub39.i
  %conv26.conv20.i = select i1 %cmp52.not.i, i32 %conv26.i.le, i32 %conv20.i.le
  br label %r9a06g032_div_clamp_div.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre.i, i32 %sub17.i)
  %cmp18.i = icmp slt i32 %.pre.i, %sub17.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp18.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.r9a06g032_div_clamp_div.exit_crit_edge

for.inc.i.r9a06g032_div_clamp_div.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r9a06g032_div_clamp_div.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

r9a06g032_div_clamp_div.exit:                     ; preds = %for.inc.i.r9a06g032_div_clamp_div.exit_crit_edge, %if.then29.i, %for.cond.preheader.i.r9a06g032_div_clamp_div.exit_crit_edge, %if.end.i.r9a06g032_div_clamp_div.exit_crit_edge, %entry.r9a06g032_div_clamp_div.exit_crit_edge
  %retval.0.i = phi i32 [ %conv26.conv20.i, %if.then29.i ], [ %conv.i, %entry.r9a06g032_div_clamp_div.exit_crit_edge ], [ %conv7.i, %if.end.i.r9a06g032_div_clamp_div.exit_crit_edge ], [ %div3.i, %for.cond.preheader.i.r9a06g032_div_clamp_div.exit_crit_edge ], [ %div3.i, %for.inc.i.r9a06g032_div_clamp_div.exit_crit_edge ]
  %index = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %15, label %if.end [
    i16 25, label %r9a06g032_div_clamp_div.exit.if.then_crit_edge
    i16 14, label %r9a06g032_div_clamp_div.exit.if.then_crit_edge46
  ]

r9a06g032_div_clamp_div.exit.if.then_crit_edge46: ; preds = %r9a06g032_div_clamp_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

r9a06g032_div_clamp_div.exit.if.then_crit_edge:   ; preds = %r9a06g032_div_clamp_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %r9a06g032_div_clamp_div.exit.if.then_crit_edge, %r9a06g032_div_clamp_div.exit.if.then_crit_edge46
  %clk13 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %clk13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk13, align 4
  %call14 = tail call i32 @clk_get_rate(ptr noundef %18) #6
  br label %cleanup

if.end:                                           ; preds = %r9a06g032_div_clamp_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add17 = add i32 %1, -1
  %sub18 = add i32 %add17, %retval.0.i
  %div19 = udiv i32 %sub18, %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %storemerge = phi i32 [ %div19, %if.end ], [ %call14, %if.then ]
  %19 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %req, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %rate, 1
  %sub = add i32 %parent_rate, %rate
  %div3 = udiv i32 %sub, %add
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %reg4 = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg4, align 4
  %reg5 = getelementptr inbounds %struct.r9a06g032_clk_div, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %reg5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg5, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr6 = getelementptr i8, ptr %3, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !367
  tail call void @arm_heavy_mb() #6
  %or = or i32 %div3, -2147483648
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #6, !srcloc !365
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %selector = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %selector to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %selector, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool = icmp ne i8 %index, 0
  %reg1.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %conv.i = zext i16 %3 to i32
  %6 = lshr i32 %conv.i, 3
  %mul.i = and i32 %6, 8188
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !363
  %and.i = and i32 %conv.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %and4.i = and i32 %8, %neg.i
  %lnot.ext.i = zext i1 %tobool to i32
  %shl8.i = shl nuw i32 %lnot.ext.i, %and.i
  %or.i = or i32 %and4.i, %shl8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !364
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #6, !srcloc !365
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @r9a06g032_clk_mux_get_parent(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %selector = getelementptr inbounds %struct.r9a06g032_clk_bitsel, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %selector to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %selector, align 2
  %reg1.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %conv.i = zext i16 %3 to i32
  %6 = lshr i32 %conv.i, 3
  %mul.i = and i32 %6, 8188
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i = and i32 %conv.i, 31
  %9 = lshr i32 %8, %and.i
  %10 = trunc i32 %9 to i8
  %conv = and i8 %10, 1
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_dualgate_is_enabled(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %selector = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %selector to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %selector, align 2
  %reg1.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %conv.i = zext i16 %3 to i32
  %6 = lshr i32 %conv.i, 3
  %mul.i = and i32 %6, 8188
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i = and i32 %conv.i, 31
  %9 = lshr i32 %8, %and.i
  %10 = and i32 %9, 1
  %11 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clocks, align 4
  %arrayidx = getelementptr %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 4, i32 %10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %reg1.i7 = getelementptr inbounds %struct.r9a06g032_priv, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %reg1.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1.i7, align 4
  %conv.i8 = zext i16 %14 to i32
  %17 = lshr i32 %conv.i8, 3
  %mul.i9 = and i32 %17, 8188
  %add.ptr.i10 = getelementptr i8, ptr %16, i32 %mul.i9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #6, !srcloc !360
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i11 = and i32 %conv.i8, 31
  %20 = lshr i32 %19, %and.i11
  %21 = and i32 %20, 1
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_clk_dualgate_enable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks.i = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks.i, align 4
  %selector.i = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %selector.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %selector.i, align 2
  %reg1.i.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %6 = lshr i32 %conv.i.i, 3
  %mul.i.i = and i32 %6, 8188
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i.i = and i32 %conv.i.i, 31
  %9 = lshr i32 %8, %and.i.i
  %10 = and i32 %9, 1
  %11 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clocks.i, align 4
  %13 = xor i32 %10, 1
  %arrayidx.i = getelementptr %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 4, i32 %13
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %12, ptr noundef %arrayidx.i, i32 noundef 0) #6
  %14 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clocks.i, align 4
  %arrayidx4.i = getelementptr %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 4, i32 %10
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %15, ptr noundef %arrayidx4.i, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r9a06g032_clk_dualgate_disable(ptr nocapture noundef readonly %hw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks.i = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks.i, align 4
  %selector.i = getelementptr inbounds %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %selector.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %selector.i, align 2
  %reg1.i.i = getelementptr inbounds %struct.r9a06g032_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %6 = lshr i32 %conv.i.i, 3
  %mul.i.i = and i32 %6, 8188
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !360
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !361
  %and.i.i = and i32 %conv.i.i, 31
  %9 = lshr i32 %8, %and.i.i
  %10 = and i32 %9, 1
  %11 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clocks.i, align 4
  %13 = xor i32 %10, 1
  %arrayidx.i = getelementptr %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 4, i32 %13
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %12, ptr noundef %arrayidx.i, i32 noundef 0) #6
  %14 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clocks.i, align 4
  %arrayidx4.i = getelementptr %struct.r9a06g032_clk_dualgate, ptr %hw, i32 0, i32 4, i32 %10
  tail call fastcc void @r9a06g032_clk_gate_set(ptr noundef %15, ptr noundef %arrayidx4.i, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r9a06g032_attach_dev(ptr nocapture noundef readonly %pd, ptr noundef %dev) #3 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #6
  %2 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %of_node3 = getelementptr inbounds %struct.device, ptr %pd, i32 0, i32 27
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end13, %entry
  %i.0.ph = phi i32 [ %inc, %if.end13 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, i32 noundef -1, i32 noundef %i.0.ph, ptr noundef nonnull %clkspec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %3 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkspec, align 4
  %5 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node3, align 8
  %cmp.not = icmp eq ptr %4, %6
  br i1 %cmp.not, label %if.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 156, i32 %8)
  %cmp4 = icmp slt i32 %8, 156
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %managed = getelementptr [156 x %struct.r9a06g032_clkdesc], ptr @r9a06g032_clocks, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %managed to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %managed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool6.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool6.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %call.i22 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #6
  %cmp.i.i = icmp ugt ptr %call.i22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %create_add_module_clock.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then7
  %call3.i = call i32 @pm_clk_create(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.create_add_module_clock.exit.thread_crit_edge

if.end.i.create_add_module_clock.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_add_module_clock.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @pm_clk_add_clk(ptr noundef %dev, ptr noundef %call.i22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %create_add_module_clock.exit.thread25, label %if.then8.i

create_add_module_clock.exit.thread25:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %11) #6
  br label %if.end13

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @pm_clk_destroy(ptr noundef %dev) #6
  br label %create_add_module_clock.exit.thread

create_add_module_clock.exit.thread:              ; preds = %if.then8.i, %if.end.i.create_add_module_clock.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %if.then8.i ], [ %call3.i, %if.end.i.create_add_module_clock.exit.thread_crit_edge ]
  call void @clk_put(ptr noundef %call.i22) #6
  br label %cleanup.sink.split

create_add_module_clock.exit:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i22 to i32
  br label %cleanup.sink.split

if.end13:                                         ; preds = %create_add_module_clock.exit.thread25, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %inc = add i32 %i.0.ph, 1
  br label %while.cond.outer

cleanup.sink.split:                               ; preds = %create_add_module_clock.exit, %create_add_module_clock.exit.thread
  %retval.0.ph = phi i32 [ %retval.0.i.ph, %create_add_module_clock.exit.thread ], [ %12, %create_add_module_clock.exit ]
  %13 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.sink.split ], [ 0, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r9a06g032_detach_dev(ptr nocapture noundef readnone %unused, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %0 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys_data.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %pm_clk_no_clocks.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_clk_no_clocks.exit:                            ; preds = %land.lhs.true.i
  %clock_list.i = getelementptr inbounds %struct.pm_subsys_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clock_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %clock_list.i, align 4
  %cmp.i.i = icmp eq ptr %3, %clock_list.i
  br i1 %cmp.i.i, label %pm_clk_no_clocks.exit.if.end_crit_edge, label %pm_clk_no_clocks.exit.if.then_crit_edge

pm_clk_no_clocks.exit.if.then_crit_edge:          ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_clk_no_clocks.exit.if.end_crit_edge:           ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pm_clk_no_clocks.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @pm_clk_destroy(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_clk_no_clocks.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !332, !333, !334, !336, !338, !340, !342, !343, !345, !347}
!llvm.module.flags = !{!349, !350, !351, !352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !{ptr @__initcall__kmod_r9a06g032_clocks__185_987_r9a06g032_clocks_init4, !1, !"__initcall__kmod_r9a06g032_clocks__185_987_r9a06g032_clocks_init4", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 987, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 976, i32 11}
!4 = !{ptr @r9a06g032_clock_driver, !5, !"r9a06g032_clock_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 974, i32 31}
!6 = !{ptr @r9a06g032_match, !7, !"r9a06g032_match", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 969, i32 34}
!8 = !{ptr @r9a06g032_clocks_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 913, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 918, i32 27}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 923, i32 6}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 133, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 134, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 135, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 136, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 137, i32 2}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 138, i32 2}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 139, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 140, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 141, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 142, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 143, i32 2}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 144, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 145, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 146, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 147, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 148, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 149, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 150, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 151, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 152, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 153, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 154, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 155, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 156, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 157, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 158, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 159, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 160, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 161, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 162, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 163, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 164, i32 2}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 165, i32 2}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 166, i32 2}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 167, i32 2}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 168, i32 2}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 169, i32 2}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 170, i32 2}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 171, i32 2}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 172, i32 2}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 173, i32 2}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 174, i32 2}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 175, i32 2}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 176, i32 2}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 177, i32 2}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 178, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 179, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 180, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 181, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 182, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 183, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 184, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 185, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 186, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 187, i32 2}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 188, i32 2}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 189, i32 2}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 190, i32 2}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 191, i32 2}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 192, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 193, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 194, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 195, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 196, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 197, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 198, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 199, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 200, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 201, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 202, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 203, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 204, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 205, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 206, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 207, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 208, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 209, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 210, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 211, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 212, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 213, i32 2}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 214, i32 2}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 215, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 216, i32 2}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 217, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 218, i32 2}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 219, i32 2}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 220, i32 2}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 221, i32 2}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 222, i32 2}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 223, i32 2}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 224, i32 2}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 225, i32 2}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 226, i32 2}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 227, i32 2}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 228, i32 2}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 229, i32 2}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 230, i32 2}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 231, i32 2}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 232, i32 2}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 233, i32 2}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 234, i32 2}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 235, i32 2}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 236, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 237, i32 2}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 238, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 239, i32 2}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 240, i32 2}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 241, i32 2}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 242, i32 2}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 243, i32 2}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 244, i32 2}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 245, i32 2}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 246, i32 2}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 247, i32 2}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 248, i32 2}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 249, i32 2}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 250, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 251, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 252, i32 2}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 253, i32 2}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 254, i32 2}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 255, i32 2}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 256, i32 2}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 257, i32 2}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 258, i32 2}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 259, i32 2}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 260, i32 2}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 261, i32 2}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 262, i32 2}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 263, i32 2}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 264, i32 2}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 265, i32 2}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 266, i32 2}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 267, i32 2}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 268, i32 2}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 269, i32 2}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 270, i32 2}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 271, i32 2}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 272, i32 2}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 273, i32 2}
!297 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 274, i32 2}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 275, i32 2}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 276, i32 2}
!303 = !{ptr @.str.148, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 277, i32 2}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 278, i32 2}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 286, i32 11}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 295, i32 11}
!311 = !{ptr @.str.152, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 302, i32 2}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 303, i32 2}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 304, i32 2}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 305, i32 2}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 306, i32 2}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 307, i32 2}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 308, i32 2}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 309, i32 2}
!327 = !{ptr @r9a06g032_clocks, !328, !"r9a06g032_clocks", i1 false, i1 false}
!328 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 132, i32 39}
!329 = !{ptr @.str.161, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 531, i32 3}
!331 = !{ptr @.str.162, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.163, !330, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @r9a06g032_register_gate.__UNIQUE_ID_ddebug183, !330, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!334 = !{ptr @r9a06g032_clk_gate_ops, !335, !"r9a06g032_clk_gate_ops", i1 false, i1 false}
!335 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 494, i32 29}
!336 = !{ptr @r9a06g032_clk_div_ops, !337, !"r9a06g032_clk_div_ops", i1 false, i1 false}
!337 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 665, i32 29}
!338 = !{ptr @clk_bitselect_ops, !339, !"clk_bitselect_ops", i1 false, i1 false}
!339 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 750, i32 29}
!340 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 880, i32 3}
!342 = !{ptr @r9a06g032_register_dualgate.__UNIQUE_ID_ddebug184, !341, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!343 = !{ptr @r9a06g032_clk_dualgate_ops, !344, !"r9a06g032_clk_dualgate_ops", i1 false, i1 false}
!344 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 839, i32 29}
!345 = !{ptr @.str.165, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 389, i32 41}
!347 = !{ptr @.str.166, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/renesas/r9a06g032-clocks.c", i32 389, i32 51}
!349 = !{i32 1, !"wchar_size", i32 2}
!350 = !{i32 1, !"min_enum_size", i32 4}
!351 = !{i32 8, !"branch-target-enforcement", i32 0}
!352 = !{i32 8, !"sign-return-address", i32 0}
!353 = !{i32 8, !"sign-return-address-all", i32 0}
!354 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!355 = !{i32 7, !"uwtable", i32 1}
!356 = !{i32 7, !"frame-pointer", i32 2}
!357 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!358 = !{!"auto-init"}
!359 = !{!"branch_weights", i32 1, i32 2000}
!360 = !{i64 4613955}
!361 = !{i64 2153067261}
!362 = !{i64 2148754132, i64 2148754137, i64 2148754150, i64 2148754194, i64 2148754228, i64 2148754249}
!363 = !{i64 2153066470}
!364 = !{i64 2153066670}
!365 = !{i64 4613537}
!366 = !{i64 2153077436}
!367 = !{i64 2153090549}
