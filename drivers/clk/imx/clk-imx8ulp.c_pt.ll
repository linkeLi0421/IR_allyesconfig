; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx8ulp.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx8ulp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.pcc_reset_dev = type { ptr, %struct.reset_controller_dev, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_clk_imx8ulp__183_566_imx8ulp_clk_driver_init6 = internal global ptr @imx8ulp_clk_driver_init, section ".initcall6.init", align 4
@imx8ulp_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8ulp_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx8ulp_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8ulp_clk_driver_exit = internal global ptr @imx8ulp_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [47 x i8] c"clk_imx8ulp.author=Peng Fan <peng.fan@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [50 x i8] c"clk_imx8ulp.description=NXP i.MX8ULP clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [45 x i8] c"clk_imx8ulp.file=drivers/clk/imx/clk-imx8ulp\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [27 x i8] c"clk_imx8ulp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_imx8ulp\00", [20 x i8] zeroinitializer }, align 32
@imx8ulp_clk_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-pcc3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8ulp_clk_pcc3_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-pcc4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8ulp_clk_pcc4_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-pcc5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8ulp_clk_pcc5_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-cgc2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8ulp_clk_cgc2_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-cgc1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8ulp_clk_cgc1_init }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/imx/clk-imx8ulp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog3\00", [26 x i8] zeroinitializer }, align 32
@pcc3_periph_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog4\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lpit1\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tpm4\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tpm5\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"flexio1\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i3c2\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c4\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c5\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart4\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart5\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpspi4\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpspi5\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcc_dma1_mp\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xbar_ad_divplat\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch0\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch1\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch2\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch3\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch4\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch5\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch6\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch7\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch8\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma1_ch9\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch10\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch11\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch12\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch13\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch14\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch15\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch16\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch17\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch18\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch19\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch20\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch21\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch22\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch23\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch24\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch25\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch26\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch27\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch28\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch29\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch30\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma1_ch31\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mu0_b\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mu3_a\00", [26 x i8] zeroinitializer }, align 32
@pcc3_resets = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 168, i32 172, i32 200, i32 204, i32 208, i32 212, i32 216, i32 220, i32 224, i32 228, i32 232, i32 236, i32 240], [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lposc\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sosc_div2\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"frosc_div2\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xbar_divbus\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd1_div1\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd0_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd0_div1\00", [16 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@imx8ulp_pcc_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @imx8ulp_pcc_assert, ptr @imx8ulp_pcc_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flexspi2\00", [23 x i8] zeroinitializer }, align 32
@pcc4_periph_plat_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.51, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tpm6\00", [27 x i8] zeroinitializer }, align 32
@pcc4_periph_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.51, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.89, ptr @.str.58], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tpm7\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c6\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpi2c7\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart6\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lpuart7\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai4\00", [27 x i8] zeroinitializer }, align 32
@xbar_divbus = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.55], [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai5\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pctle\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pctlf\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc0\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@nic_per_divplat = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.80], [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb0_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb1\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb1_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb_xbar\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rgpioe\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nic_per_divplat\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rgpiof\00", [25 x i8] zeroinitializer }, align 32
@pcc4_resets = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 84], [60 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sosc_div1\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"frosc_div1\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd3_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd3_div1\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd2_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd2_div1\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spll3_pfd1_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spll3_vcodiv\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcc_dma2_mp\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpav_axi_div\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch0\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch1\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch2\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch3\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch4\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch5\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch6\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch7\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch8\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcc_dma2_ch9\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch10\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch11\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch12\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch13\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch14\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch15\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch16\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch17\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch18\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch19\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch20\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch21\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch22\00", [18 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch23\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch24\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch25\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch26\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch27\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch28\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch29\00", [18 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch30\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcc_dma2_ch31\00", [18 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"avd_sim\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpav_bus_div\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tpm8\00", [27 x i8] zeroinitializer }, align 32
@pcc5_periph_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.51, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.146, ptr @.str.147, ptr @.str.148], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mu2_b\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mu3_b\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai6\00", [27 x i8] zeroinitializer }, align 32
@lpav_bus_div = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.125], [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai7\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isi\00", [28 x i8] zeroinitializer }, align 32
@lpav_axi_div = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.91], [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi_regs\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@pcc5_periph_plat_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.51, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wdog5\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"epdc\00", [27 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxp\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu2d\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu3d\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dc_nano\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csi_clk_ui\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csi_clk_esc\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rgpiod\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mipi_dsi_tx_esc\00", [16 x i8] zeroinitializer }, align 32
@pcc5_resets = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 160, i32 164, i32 168, i32 172, i32 176, i32 180, i32 188, i32 192, i32 200, i32 204, i32 208, i32 240, i32 244, i32 248], [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpav_bus_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll4_vcodiv\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd3_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd3_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd2_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd2_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd1_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd1_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd0_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll4_pfd0_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll4_pre_sel\00", [19 x i8] zeroinitializer }, align 32
@pll_pre_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.178, ptr @.str.185], [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hifi_sel\00", [23 x i8] zeroinitializer }, align 32
@hifi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.185, ptr @.str.157, ptr @.str.165, ptr @.str.178, ptr @.str.196, ptr @.str.51, ptr @.str.51, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hifi_core_div\00", [18 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hifi_plat_div\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_sel\00", [24 x i8] zeroinitializer }, align 32
@ddr_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.185, ptr @.str.166, ptr @.str.178, ptr @.str.196, ptr @.str.157, ptr @.str.157, ptr @.str.157, ptr @.str.157], [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_div\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lpav_sel\00", [23 x i8] zeroinitializer }, align 32
@lpav_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.185, ptr @.str.166, ptr @.str.178, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpav_ahb_div\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll4_pfd0\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll4_pfd1\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll4_pfd2\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll4_pfd3\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd0_div1_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd0_div2_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd1_div1_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd1_div2_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd2_div1_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd2_div2_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd3_div1_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pll4_pfd3_div2_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cgc2_sosc_div1_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sosc\00", [27 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cgc2_sosc_div2_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cgc2_sosc_div3_gate\00", [44 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cgc2_sosc_div1\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cgc2_sosc_div2\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cgc2_sosc_div3\00", [17 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cgc2_frosc_div1_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"frosc\00", [26 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cgc2_frosc_div2_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cgc2_frosc_div3_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cgc2_frosc_div1\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cgc2_frosc_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cgc2_frosc_div3\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud_clk2\00", [23 x i8] zeroinitializer }, align 32
@aud_clk2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.51, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai6_sel\00", [23 x i8] zeroinitializer }, align 32
@sai67_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.203, ptr @.str.56, ptr @.str.204, ptr @.str.205, ptr @.str.191, ptr @.str.178, ptr @.str.51, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai7_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvds\00", [27 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ext_aud_mclk3\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai6_rx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai6_tx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai7_rx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai7_tx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spll1_pfd2_div\00", [17 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud_clk0\00", [23 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud_clk1\00", [23 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spll2_pre_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spll3_pre_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spll2\00", [26 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spll3\00", [26 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spll3_pfd0\00", [21 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spll3_pfd1\00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spll3_pfd2\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spll3_pfd3\00", [21 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd0_div1_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd0_div2_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd1_div1_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd1_div2_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd2_div1_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd2_div2_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd3_div1_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spll3_pfd3_div2_gate\00", [43 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a35_sel\00", [24 x i8] zeroinitializer }, align 32
@a35_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.185, ptr @.str.208, ptr @.str.178, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a35_div\00", [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nic_sel\00", [24 x i8] zeroinitializer }, align 32
@nic_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.185, ptr @.str.210, ptr @.str.178, ptr @.str.196], [16 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nic_ad_divplat\00", [17 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xbar_ad_slow\00", [19 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sosc_div1_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sosc_div2_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sosc_div3_gate\00", [17 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sosc_div3\00", [22 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frosc_div1_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frosc_div2_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frosc_div3_gate\00", [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"frosc_div3\00", [21 x i8] zeroinitializer }, align 32
@aud_clk1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.51, ptr @.str.51, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai4_sel\00", [23 x i8] zeroinitializer }, align 32
@sai45_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.205, ptr @.str.191, ptr @.str.178], [16 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sai5_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enet_ts\00", [24 x i8] zeroinitializer }, align 32
@enet_ts_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.178, ptr @.str.51, ptr @.str.51, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ext_aud_mclk2\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai4_rx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai4_tx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai5_rx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai5_tx_bclk\00", [19 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_rmii_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ext_ts_clk\00", [21 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rosc\00", [27 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ext_aud_mclk\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.247 = private unnamed_addr constant [19 x i8] c"imx8ulp_clk_driver\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 558, i32 31 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 561, i32 12 }
@___asan_gen_.253 = private unnamed_addr constant [19 x i8] c"imx8ulp_clk_dt_ids\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 548, i32 34 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 329, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 332, i32 53 }
@___asan_gen_.262 = private unnamed_addr constant [21 x i8] c"pcc3_periph_bus_sels\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 20, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 333, i32 53 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 334, i32 53 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 335, i32 52 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 336, i32 52 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 337, i32 55 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 338, i32 52 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 339, i32 54 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 340, i32 54 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 341, i32 55 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 342, i32 55 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 343, i32 54 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 344, i32 54 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 346, i32 30 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 347, i32 31 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 348, i32 31 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 349, i32 31 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 350, i32 31 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 351, i32 31 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 352, i32 31 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 353, i32 31 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 354, i32 31 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 355, i32 31 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 356, i32 31 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 357, i32 32 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 358, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 359, i32 32 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 360, i32 32 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 361, i32 32 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 362, i32 32 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 363, i32 32 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 364, i32 32 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 365, i32 32 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 366, i32 32 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 367, i32 32 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 368, i32 32 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 369, i32 32 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 370, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 371, i32 32 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 372, i32 32 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 373, i32 32 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 374, i32 32 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 375, i32 32 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 376, i32 32 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 377, i32 32 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 378, i32 32 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 379, i32 28 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 380, i32 28 }
@___asan_gen_.409 = private unnamed_addr constant [12 x i8] c"pcc3_resets\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 63, i32 18 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 20, i32 54 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 20, i32 63 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 20, i32 72 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 21, i32 12 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 21, i32 26 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 21, i32 41 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 22, i32 12 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 22, i32 31 }
@___asan_gen_.436 = private unnamed_addr constant [22 x i8] c"imx8ulp_pcc_reset_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 118, i32 39 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 415, i32 56 }
@___asan_gen_.442 = private unnamed_addr constant [22 x i8] c"pcc4_periph_plat_sels\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 26, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 416, i32 52 }
@___asan_gen_.448 = private unnamed_addr constant [21 x i8] c"pcc4_periph_bus_sels\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 23, i32 27 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 417, i32 52 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 418, i32 54 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 419, i32 54 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 420, i32 55 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 421, i32 55 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 422, i32 52 }
@___asan_gen_.469 = private unnamed_addr constant [12 x i8] c"xbar_divbus\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 47, i32 27 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 423, i32 52 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 424, i32 28 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 425, i32 28 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 426, i32 54 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 427, i32 54 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 428, i32 54 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 429, i32 52 }
@___asan_gen_.493 = private unnamed_addr constant [16 x i8] c"nic_per_divplat\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 48, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 430, i32 56 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 431, i32 52 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 432, i32 56 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 433, i32 31 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 434, i32 52 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 435, i32 29 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 436, i32 29 }
@___asan_gen_.520 = private unnamed_addr constant [12 x i8] c"pcc4_resets\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 69, i32 18 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 26, i32 64 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 26, i32 77 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 27, i32 13 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 27, i32 32 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 28, i32 13 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 28, i32 32 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 29, i32 13 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 25, i32 12 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 470, i32 30 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 471, i32 31 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 472, i32 31 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 473, i32 31 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 474, i32 31 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 475, i32 31 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 476, i32 31 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 477, i32 31 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 478, i32 31 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 479, i32 31 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 480, i32 31 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 481, i32 32 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 482, i32 32 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 483, i32 32 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 484, i32 32 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 485, i32 32 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 486, i32 32 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 487, i32 32 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 488, i32 32 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 489, i32 32 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 490, i32 32 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 491, i32 32 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 492, i32 32 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 493, i32 32 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 494, i32 32 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 495, i32 32 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 496, i32 32 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 497, i32 32 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 498, i32 32 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 499, i32 32 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 500, i32 32 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 501, i32 32 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 502, i32 32 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 504, i32 30 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 505, i32 52 }
@___asan_gen_.658 = private unnamed_addr constant [21 x i8] c"pcc5_periph_bus_sels\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 30, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 506, i32 28 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 507, i32 28 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 508, i32 52 }
@___asan_gen_.670 = private unnamed_addr constant [13 x i8] c"lpav_bus_div\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 50, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 509, i32 52 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 510, i32 53 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 511, i32 51 }
@___asan_gen_.682 = private unnamed_addr constant [13 x i8] c"lpav_axi_div\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 49, i32 27 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 512, i32 56 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 513, i32 51 }
@___asan_gen_.691 = private unnamed_addr constant [22 x i8] c"pcc5_periph_plat_sels\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 33, i32 27 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 514, i32 51 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 515, i32 53 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 516, i32 52 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 517, i32 51 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 518, i32 53 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 519, i32 53 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 520, i32 55 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 521, i32 58 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 522, i32 59 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 523, i32 29 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 524, i32 57 }
@___asan_gen_.727 = private unnamed_addr constant [12 x i8] c"pcc5_resets\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 76, i32 18 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 31, i32 39 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 32, i32 12 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 32, i32 27 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 33, i32 64 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 33, i32 82 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 34, i32 13 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 34, i32 31 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 35, i32 13 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 35, i32 31 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 36, i32 13 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 249, i32 35 }
@___asan_gen_.763 = private unnamed_addr constant [13 x i8] c"pll_pre_sels\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 17, i32 27 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 251, i32 63 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 254, i32 31 }
@___asan_gen_.772 = private unnamed_addr constant [10 x i8] c"hifi_sels\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 37, i32 27 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 255, i32 35 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 256, i32 35 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 258, i32 30 }
@___asan_gen_.784 = private unnamed_addr constant [9 x i8] c"ddr_sels\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 39, i32 27 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 259, i32 30 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 260, i32 35 }
@___asan_gen_.793 = private unnamed_addr constant [10 x i8] c"lpav_sels\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 41, i32 27 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 262, i32 35 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 265, i32 68 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 266, i32 68 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 267, i32 68 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 268, i32 68 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 270, i32 42 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 271, i32 42 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 272, i32 42 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 273, i32 42 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 274, i32 42 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 275, i32 42 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 276, i32 42 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 277, i32 42 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 287, i32 42 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 288, i32 42 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 289, i32 42 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 290, i32 37 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 291, i32 37 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 292, i32 37 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 294, i32 43 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 295, i32 43 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 296, i32 43 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 297, i32 38 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 298, i32 38 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 299, i32 38 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 300, i32 32 }
@___asan_gen_.880 = private unnamed_addr constant [14 x i8] c"aud_clk2_sels\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 27 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 301, i32 32 }
@___asan_gen_.886 = private unnamed_addr constant [11 x i8] c"sai67_sels\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 43, i32 27 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 302, i32 32 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 303, i32 32 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 304, i32 51 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 38, i32 7 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 47 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 64 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 80 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 96 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 112 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 45, i32 128 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 43, i32 44 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 43, i32 81 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 43, i32 93 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 167, i32 36 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 168, i32 36 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 170, i32 64 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 171, i32 64 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 174, i32 69 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 175, i32 69 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 176, i32 69 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 177, i32 69 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 179, i32 43 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 180, i32 43 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 181, i32 43 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 182, i32 43 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 183, i32 43 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 184, i32 43 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 185, i32 43 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 186, i32 43 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 196, i32 30 }
@___asan_gen_.979 = private unnamed_addr constant [9 x i8] c"a35_sels\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 18, i32 27 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 197, i32 30 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 199, i32 30 }
@___asan_gen_.988 = private unnamed_addr constant [9 x i8] c"nic_sels\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 19, i32 27 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 200, i32 37 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 204, i32 35 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 206, i32 37 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 207, i32 37 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 208, i32 37 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 211, i32 32 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 213, i32 38 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 214, i32 38 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 215, i32 38 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 218, i32 33 }
@___asan_gen_.1021 = private unnamed_addr constant [14 x i8] c"aud_clk1_sels\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 44, i32 27 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 220, i32 31 }
@___asan_gen_.1027 = private unnamed_addr constant [11 x i8] c"sai45_sels\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 42, i32 27 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 221, i32 31 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 222, i32 34 }
@___asan_gen_.1036 = private unnamed_addr constant [13 x i8] c"enet_ts_sels\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 46, i32 27 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 44, i32 47 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 44, i32 64 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 44, i32 80 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 44, i32 96 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 44, i32 112 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 46, i32 46 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 46, i32 62 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 46, i32 76 }
@___asan_gen_.1063 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1064 = private constant [33 x i8] c"../drivers/clk/imx/clk-imx8ulp.c\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1064, i32 46, i32 84 }
@llvm.compiler.used = appending global [280 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx8ulp_clk_driver_exit, ptr @__initcall__kmod_clk_imx8ulp__183_566_imx8ulp_clk_driver_init6, ptr @imx8ulp_clk_driver_exit, ptr @imx8ulp_clk_driver, ptr @.str, ptr @imx8ulp_clk_dt_ids, ptr @.str.1, ptr @.str.2, ptr @pcc3_periph_bus_sels, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @pcc3_resets, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @imx8ulp_pcc_reset_ops, ptr @.str.59, ptr @pcc4_periph_plat_sels, ptr @.str.60, ptr @pcc4_periph_bus_sels, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @xbar_divbus, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @nic_per_divplat, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @pcc4_resets, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @pcc5_periph_bus_sels, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @lpav_bus_div, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @lpav_axi_div, ptr @.str.133, ptr @.str.134, ptr @pcc5_periph_plat_sels, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @pcc5_resets, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @pll_pre_sels, ptr @.str.157, ptr @.str.158, ptr @hifi_sels, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @ddr_sels, ptr @.str.162, ptr @.str.163, ptr @lpav_sels, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @aud_clk2_sels, ptr @.str.192, ptr @sai67_sels, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @a35_sels, ptr @.str.223, ptr @.str.224, ptr @nic_sels, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @aud_clk1_sels, ptr @.str.235, ptr @sai45_sels, ptr @.str.236, ptr @.str.237, ptr @enet_ts_sels, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246], section "llvm.metadata"
@0 = internal global [273 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8ulp_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8ulp_clk_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc3_periph_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc3_resets to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8ulp_pcc_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc4_periph_plat_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc4_periph_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbar_divbus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_per_divplat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc4_resets to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc5_periph_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpav_bus_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpav_axi_div to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc5_periph_plat_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc5_resets to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_pre_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddr_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpav_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_clk2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai67_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a35_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nic_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_clk1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai45_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enet_ts_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8ulp_clk_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8ulp_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8ulp_clk_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 %call(ptr noundef %pdev) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_pcc3_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 48, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end29, !prof !559

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 9, ptr noundef null) #3
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call3, i32 168
  %call30 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.2, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr, i1 noundef zeroext true) #3
  %2 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call30, ptr %hws, align 4
  %add.ptr31 = getelementptr i8, ptr %call3, i32 172
  %call32 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.3, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr31, i1 noundef zeroext true) #3
  %arrayidx33 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 2
  %3 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call32, ptr %arrayidx33, align 4
  %add.ptr34 = getelementptr i8, ptr %call3, i32 200
  %call35 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.4, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr34, i1 noundef zeroext true) #3
  %arrayidx36 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 3
  %4 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call35, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %call3, i32 204
  %call38 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.5, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr37, i1 noundef zeroext true) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 4
  %5 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38, ptr %arrayidx39, align 4
  %add.ptr40 = getelementptr i8, ptr %call3, i32 208
  %call41 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.6, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr40, i1 noundef zeroext true) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 5
  %6 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call41, ptr %arrayidx42, align 4
  %add.ptr43 = getelementptr i8, ptr %call3, i32 212
  %call44 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.7, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr43, i1 noundef zeroext true) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 6
  %7 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call44, ptr %arrayidx45, align 4
  %add.ptr46 = getelementptr i8, ptr %call3, i32 216
  %call47 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.8, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr46, i1 noundef zeroext true) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 7
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call47, ptr %arrayidx48, align 4
  %add.ptr49 = getelementptr i8, ptr %call3, i32 220
  %call50 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.9, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr49, i1 noundef zeroext true) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 8
  %9 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call50, ptr %arrayidx51, align 4
  %add.ptr52 = getelementptr i8, ptr %call3, i32 224
  %call53 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.10, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr52, i1 noundef zeroext true) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 9
  %10 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call53, ptr %arrayidx54, align 4
  %add.ptr55 = getelementptr i8, ptr %call3, i32 228
  %call56 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.11, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr55, i1 noundef zeroext true) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 10
  %11 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call56, ptr %arrayidx57, align 4
  %add.ptr58 = getelementptr i8, ptr %call3, i32 232
  %call59 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.12, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr58, i1 noundef zeroext true) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 11
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call59, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %call3, i32 236
  %call62 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.13, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr61, i1 noundef zeroext true) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 12
  %13 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call62, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %call3, i32 240
  %call65 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.14, ptr noundef nonnull @pcc3_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr64, i1 noundef zeroext true) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 13
  %14 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call65, ptr %arrayidx66, align 4
  %add.ptr67 = getelementptr i8, ptr %call3, i32 4
  %call.i289 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr67, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 14
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i289, ptr %arrayidx69, align 4
  %add.ptr70 = getelementptr i8, ptr %call3, i32 8
  %call.i290 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr70, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 15
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i290, ptr %arrayidx72, align 4
  %add.ptr73 = getelementptr i8, ptr %call3, i32 12
  %call.i291 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr73, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 16
  %17 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i291, ptr %arrayidx75, align 4
  %add.ptr76 = getelementptr i8, ptr %call3, i32 16
  %call.i292 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx78 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 17
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i292, ptr %arrayidx78, align 4
  %add.ptr79 = getelementptr i8, ptr %call3, i32 20
  %call.i293 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr79, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx81 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 18
  %19 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i293, ptr %arrayidx81, align 4
  %add.ptr82 = getelementptr i8, ptr %call3, i32 24
  %call.i294 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr82, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx84 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 19
  %20 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i294, ptr %arrayidx84, align 4
  %add.ptr85 = getelementptr i8, ptr %call3, i32 28
  %call.i295 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr85, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 20
  %21 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i295, ptr %arrayidx87, align 4
  %add.ptr88 = getelementptr i8, ptr %call3, i32 32
  %call.i296 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx90 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 21
  %22 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i296, ptr %arrayidx90, align 4
  %add.ptr91 = getelementptr i8, ptr %call3, i32 36
  %call.i297 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr91, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx93 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 22
  %23 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i297, ptr %arrayidx93, align 4
  %add.ptr94 = getelementptr i8, ptr %call3, i32 40
  %call.i298 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr94, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx96 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 23
  %24 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i298, ptr %arrayidx96, align 4
  %add.ptr97 = getelementptr i8, ptr %call3, i32 44
  %call.i299 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr97, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx99 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 24
  %25 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i299, ptr %arrayidx99, align 4
  %add.ptr100 = getelementptr i8, ptr %call3, i32 48
  %call.i300 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr100, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx102 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 25
  %26 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i300, ptr %arrayidx102, align 4
  %add.ptr103 = getelementptr i8, ptr %call3, i32 52
  %call.i301 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr103, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx105 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 26
  %27 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i301, ptr %arrayidx105, align 4
  %add.ptr106 = getelementptr i8, ptr %call3, i32 56
  %call.i302 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr106, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx108 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 27
  %28 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i302, ptr %arrayidx108, align 4
  %add.ptr109 = getelementptr i8, ptr %call3, i32 60
  %call.i303 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr109, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx111 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 28
  %29 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i303, ptr %arrayidx111, align 4
  %add.ptr112 = getelementptr i8, ptr %call3, i32 64
  %call.i304 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr112, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx114 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 29
  %30 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i304, ptr %arrayidx114, align 4
  %add.ptr115 = getelementptr i8, ptr %call3, i32 68
  %call.i305 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr115, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx117 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 30
  %31 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i305, ptr %arrayidx117, align 4
  %add.ptr118 = getelementptr i8, ptr %call3, i32 72
  %call.i306 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr118, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx120 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 31
  %32 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i306, ptr %arrayidx120, align 4
  %add.ptr121 = getelementptr i8, ptr %call3, i32 76
  %call.i307 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr121, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx123 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 32
  %33 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i307, ptr %arrayidx123, align 4
  %add.ptr124 = getelementptr i8, ptr %call3, i32 80
  %call.i308 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx126 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 33
  %34 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i308, ptr %arrayidx126, align 4
  %add.ptr127 = getelementptr i8, ptr %call3, i32 84
  %call.i309 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr127, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx129 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 34
  %35 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i309, ptr %arrayidx129, align 4
  %add.ptr130 = getelementptr i8, ptr %call3, i32 88
  %call.i310 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr130, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx132 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 35
  %36 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i310, ptr %arrayidx132, align 4
  %add.ptr133 = getelementptr i8, ptr %call3, i32 92
  %call.i311 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx135 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 36
  %37 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i311, ptr %arrayidx135, align 4
  %add.ptr136 = getelementptr i8, ptr %call3, i32 96
  %call.i312 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx138 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 37
  %38 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i312, ptr %arrayidx138, align 4
  %add.ptr139 = getelementptr i8, ptr %call3, i32 100
  %call.i313 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr139, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx141 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 38
  %39 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i313, ptr %arrayidx141, align 4
  %add.ptr142 = getelementptr i8, ptr %call3, i32 104
  %call.i314 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx144 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 39
  %40 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i314, ptr %arrayidx144, align 4
  %add.ptr145 = getelementptr i8, ptr %call3, i32 108
  %call.i315 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr145, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx147 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 40
  %41 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i315, ptr %arrayidx147, align 4
  %add.ptr148 = getelementptr i8, ptr %call3, i32 112
  %call.i316 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr148, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx150 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 41
  %42 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i316, ptr %arrayidx150, align 4
  %add.ptr151 = getelementptr i8, ptr %call3, i32 116
  %call.i317 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr151, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx153 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 42
  %43 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i317, ptr %arrayidx153, align 4
  %add.ptr154 = getelementptr i8, ptr %call3, i32 120
  %call.i318 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr154, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx156 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 43
  %44 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i318, ptr %arrayidx156, align 4
  %add.ptr157 = getelementptr i8, ptr %call3, i32 124
  %call.i319 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr157, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx159 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 44
  %45 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i319, ptr %arrayidx159, align 4
  %add.ptr160 = getelementptr i8, ptr %call3, i32 128
  %call.i320 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr160, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx162 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 45
  %46 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i320, ptr %arrayidx162, align 4
  %add.ptr163 = getelementptr i8, ptr %call3, i32 132
  %call.i321 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr163, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx165 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 46
  %47 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i321, ptr %arrayidx165, align 4
  %add.ptr166 = getelementptr i8, ptr %call3, i32 136
  %call.i322 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr166, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx168 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 48
  %48 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i322, ptr %arrayidx168, align 4
  %add.ptr169 = getelementptr i8, ptr %call3, i32 140
  %call.i323 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr169, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx171 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 47
  %49 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i323, ptr %arrayidx171, align 4
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 4
  tail call void @imx_check_clk_hws(ptr noundef %hws, i32 noundef %51) #3
  %call173 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end176:                                        ; preds = %if.end29
  tail call void @imx_register_uart_clocks(i32 noundef 1) #3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %52 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #3
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end176.cleanup_crit_edge, label %if.end.i

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call3, ptr %call.i.i, align 4
  %lock.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @imx_ccm_lock, ptr %lock.i, align 4
  %resets4.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %resets4.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @pcc3_resets, ptr %resets4.i, align 4
  %rcdev.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1
  %owner.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %owner.i, align 4
  %nr_resets6.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 8
  %58 = ptrtoint ptr %nr_resets6.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 13, ptr %nr_resets6.i, align 4
  %59 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @imx8ulp_pcc_reset_ops, ptr %rcdev.i, align 4
  %of_node9.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 5
  %60 = ptrtoint ptr %of_node9.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %53, ptr %of_node9.i, align 4
  %call11.i = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end176.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call173, %if.end29.cleanup_crit_edge ], [ %call11.i, %if.end.i ], [ -12, %if.end176.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_pcc4_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 96, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 23, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end29, !prof !559

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 9, ptr noundef null) #3
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call3, i32 4
  %call30 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.59, ptr noundef nonnull @pcc4_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr, i1 noundef zeroext true) #3
  %2 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call30, ptr %hws, align 4
  %add.ptr31 = getelementptr i8, ptr %call3, i32 8
  %call32 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.60, ptr noundef nonnull @pcc4_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr31, i1 noundef zeroext true) #3
  %arrayidx33 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 2
  %3 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call32, ptr %arrayidx33, align 4
  %add.ptr34 = getelementptr i8, ptr %call3, i32 12
  %call35 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.61, ptr noundef nonnull @pcc4_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr34, i1 noundef zeroext true) #3
  %arrayidx36 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 3
  %4 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call35, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %call3, i32 16
  %call38 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.62, ptr noundef nonnull @pcc4_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr37, i1 noundef zeroext true) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 4
  %5 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38, ptr %arrayidx39, align 4
  %add.ptr40 = getelementptr i8, ptr %call3, i32 20
  %call41 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.63, ptr noundef nonnull @pcc4_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr40, i1 noundef zeroext true) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 5
  %6 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call41, ptr %arrayidx42, align 4
  %add.ptr43 = getelementptr i8, ptr %call3, i32 24
  %call44 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.64, ptr noundef nonnull @pcc4_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr43, i1 noundef zeroext true) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 6
  %7 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call44, ptr %arrayidx45, align 4
  %add.ptr46 = getelementptr i8, ptr %call3, i32 28
  %call47 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.65, ptr noundef nonnull @pcc4_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr46, i1 noundef zeroext true) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 7
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call47, ptr %arrayidx48, align 4
  %add.ptr49 = getelementptr i8, ptr %call3, i32 32
  %call50 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.66, ptr noundef nonnull @xbar_divbus, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr49, i1 noundef zeroext true) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 8
  %9 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call50, ptr %arrayidx51, align 4
  %add.ptr52 = getelementptr i8, ptr %call3, i32 36
  %call53 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.67, ptr noundef nonnull @xbar_divbus, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr52, i1 noundef zeroext true) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 9
  %10 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call53, ptr %arrayidx54, align 4
  %add.ptr55 = getelementptr i8, ptr %call3, i32 40
  %call.i159 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.55, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr55, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 10
  %11 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i159, ptr %arrayidx57, align 4
  %add.ptr58 = getelementptr i8, ptr %call3, i32 44
  %call.i160 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.55, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr58, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 11
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i160, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %call3, i32 52
  %call62 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.70, ptr noundef nonnull @pcc4_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr61, i1 noundef zeroext true) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 12
  %13 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call62, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %call3, i32 56
  %call65 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.71, ptr noundef nonnull @pcc4_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr64, i1 noundef zeroext true) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 13
  %14 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call65, ptr %arrayidx66, align 4
  %add.ptr67 = getelementptr i8, ptr %call3, i32 60
  %call68 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.72, ptr noundef nonnull @pcc4_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr67, i1 noundef zeroext true) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 14
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call68, ptr %arrayidx69, align 4
  %add.ptr70 = getelementptr i8, ptr %call3, i32 64
  %call71 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.73, ptr noundef nonnull @nic_per_divplat, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr70, i1 noundef zeroext true) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 15
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call71, ptr %arrayidx72, align 4
  %add.ptr73 = getelementptr i8, ptr %call3, i32 68
  %call74 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.74, ptr noundef nonnull @xbar_divbus, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr73, i1 noundef zeroext true) #3
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 16
  %17 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call74, ptr %arrayidx75, align 4
  %add.ptr76 = getelementptr i8, ptr %call3, i32 72
  %call77 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.75, ptr noundef nonnull @nic_per_divplat, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr76, i1 noundef zeroext true) #3
  %arrayidx78 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 17
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call77, ptr %arrayidx78, align 4
  %add.ptr79 = getelementptr i8, ptr %call3, i32 76
  %call80 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.76, ptr noundef nonnull @xbar_divbus, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr79, i1 noundef zeroext true) #3
  %arrayidx81 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 18
  %19 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call80, ptr %arrayidx81, align 4
  %add.ptr82 = getelementptr i8, ptr %call3, i32 80
  %call.i161 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.55, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr82, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx84 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 19
  %20 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i161, ptr %arrayidx84, align 4
  %add.ptr85 = getelementptr i8, ptr %call3, i32 84
  %call86 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.78, ptr noundef nonnull @nic_per_divplat, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr85, i1 noundef zeroext true) #3
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 20
  %21 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call86, ptr %arrayidx87, align 4
  %add.ptr88 = getelementptr i8, ptr %call3, i32 120
  %call.i162 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx90 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 22
  %22 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i162, ptr %arrayidx90, align 4
  %add.ptr91 = getelementptr i8, ptr %call3, i32 124
  %call.i163 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr91, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx93 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 23
  %23 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i163, ptr %arrayidx93, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i, align 4
  tail call void @imx_check_clk_hws(ptr noundef %hws, i32 noundef %25) #3
  %call95 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end98:                                         ; preds = %if.end29
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #3
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end98.cleanup_crit_edge, label %if.end.i

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3, ptr %call.i.i, align 4
  %lock.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @imx_ccm_lock, ptr %lock.i, align 4
  %resets4.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %resets4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pcc4_resets, ptr %resets4.i, align 4
  %rcdev.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1
  %owner.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %owner.i, align 4
  %nr_resets6.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %nr_resets6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 17, ptr %nr_resets6.i, align 4
  %33 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @imx8ulp_pcc_reset_ops, ptr %rcdev.i, align 4
  %of_node9.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %of_node9.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %27, ptr %of_node9.i, align 4
  %call11.i = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end98.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call95, %if.end29.cleanup_crit_edge ], [ %call11.i, %if.end.i ], [ -12, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_pcc5_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 228, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 56, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end29, !prof !559

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 467, i32 noundef 9, ptr noundef null) #3
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %call.i317 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %call3, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 20
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i317, ptr %arrayidx, align 4
  %add.ptr31 = getelementptr i8, ptr %call3, i32 4
  %call.i318 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr31, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx33 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 21
  %3 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i318, ptr %arrayidx33, align 4
  %add.ptr34 = getelementptr i8, ptr %call3, i32 8
  %call.i319 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr34, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx36 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 22
  %4 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i319, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %call3, i32 12
  %call.i320 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr37, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 23
  %5 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i320, ptr %arrayidx39, align 4
  %add.ptr40 = getelementptr i8, ptr %call3, i32 16
  %call.i321 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr40, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 24
  %6 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i321, ptr %arrayidx42, align 4
  %add.ptr43 = getelementptr i8, ptr %call3, i32 20
  %call.i322 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr43, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 25
  %7 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i322, ptr %arrayidx45, align 4
  %add.ptr46 = getelementptr i8, ptr %call3, i32 24
  %call.i323 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr46, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 26
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i323, ptr %arrayidx48, align 4
  %add.ptr49 = getelementptr i8, ptr %call3, i32 28
  %call.i324 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr49, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 27
  %9 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i324, ptr %arrayidx51, align 4
  %add.ptr52 = getelementptr i8, ptr %call3, i32 32
  %call.i325 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr52, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 28
  %10 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i325, ptr %arrayidx54, align 4
  %add.ptr55 = getelementptr i8, ptr %call3, i32 36
  %call.i326 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr55, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 29
  %11 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i326, ptr %arrayidx57, align 4
  %add.ptr58 = getelementptr i8, ptr %call3, i32 40
  %call.i327 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr58, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 30
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i327, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %call3, i32 44
  %call.i328 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr61, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 31
  %13 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i328, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %call3, i32 48
  %call.i329 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr64, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 32
  %14 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i329, ptr %arrayidx66, align 4
  %add.ptr67 = getelementptr i8, ptr %call3, i32 52
  %call.i330 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr67, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 33
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i330, ptr %arrayidx69, align 4
  %add.ptr70 = getelementptr i8, ptr %call3, i32 56
  %call.i331 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr70, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 34
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i331, ptr %arrayidx72, align 4
  %add.ptr73 = getelementptr i8, ptr %call3, i32 60
  %call.i332 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr73, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 35
  %17 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i332, ptr %arrayidx75, align 4
  %add.ptr76 = getelementptr i8, ptr %call3, i32 64
  %call.i333 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx78 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 36
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i333, ptr %arrayidx78, align 4
  %add.ptr79 = getelementptr i8, ptr %call3, i32 68
  %call.i334 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr79, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx81 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 37
  %19 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i334, ptr %arrayidx81, align 4
  %add.ptr82 = getelementptr i8, ptr %call3, i32 72
  %call.i335 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr82, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx84 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 38
  %20 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i335, ptr %arrayidx84, align 4
  %add.ptr85 = getelementptr i8, ptr %call3, i32 76
  %call.i336 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr85, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 39
  %21 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i336, ptr %arrayidx87, align 4
  %add.ptr88 = getelementptr i8, ptr %call3, i32 80
  %call.i337 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx90 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 40
  %22 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i337, ptr %arrayidx90, align 4
  %add.ptr91 = getelementptr i8, ptr %call3, i32 84
  %call.i338 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr91, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx93 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 41
  %23 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i338, ptr %arrayidx93, align 4
  %add.ptr94 = getelementptr i8, ptr %call3, i32 88
  %call.i339 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr94, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx96 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 42
  %24 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i339, ptr %arrayidx96, align 4
  %add.ptr97 = getelementptr i8, ptr %call3, i32 92
  %call.i340 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr97, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx99 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 43
  %25 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i340, ptr %arrayidx99, align 4
  %add.ptr100 = getelementptr i8, ptr %call3, i32 96
  %call.i341 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr100, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx102 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 44
  %26 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i341, ptr %arrayidx102, align 4
  %add.ptr103 = getelementptr i8, ptr %call3, i32 100
  %call.i342 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr103, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx105 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 45
  %27 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i342, ptr %arrayidx105, align 4
  %add.ptr106 = getelementptr i8, ptr %call3, i32 104
  %call.i343 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr106, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx108 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 46
  %28 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i343, ptr %arrayidx108, align 4
  %add.ptr109 = getelementptr i8, ptr %call3, i32 108
  %call.i344 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr109, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx111 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 47
  %29 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i344, ptr %arrayidx111, align 4
  %add.ptr112 = getelementptr i8, ptr %call3, i32 112
  %call.i345 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr112, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx114 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 48
  %30 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i345, ptr %arrayidx114, align 4
  %add.ptr115 = getelementptr i8, ptr %call3, i32 116
  %call.i346 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr115, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx117 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 49
  %31 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i346, ptr %arrayidx117, align 4
  %add.ptr118 = getelementptr i8, ptr %call3, i32 120
  %call.i347 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr118, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx120 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 50
  %32 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i347, ptr %arrayidx120, align 4
  %add.ptr121 = getelementptr i8, ptr %call3, i32 124
  %call.i348 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr121, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx123 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 51
  %33 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i348, ptr %arrayidx123, align 4
  %add.ptr124 = getelementptr i8, ptr %call3, i32 128
  %call.i349 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx126 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 52
  %34 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i349, ptr %arrayidx126, align 4
  %add.ptr127 = getelementptr i8, ptr %call3, i32 148
  %call.i350 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr127, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx129 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 55
  %35 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i350, ptr %arrayidx129, align 4
  %add.ptr130 = getelementptr i8, ptr %call3, i32 160
  %call131 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.126, ptr noundef nonnull @pcc5_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr130, i1 noundef zeroext true) #3
  %36 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call131, ptr %hws, align 4
  %add.ptr133 = getelementptr i8, ptr %call3, i32 132
  %call.i351 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx135 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 53
  %37 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i351, ptr %arrayidx135, align 4
  %add.ptr136 = getelementptr i8, ptr %call3, i32 136
  %call.i352 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx138 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 54
  %38 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i352, ptr %arrayidx138, align 4
  %add.ptr139 = getelementptr i8, ptr %call3, i32 164
  %call140 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.129, ptr noundef nonnull @lpav_bus_div, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr139, i1 noundef zeroext true) #3
  %arrayidx141 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 2
  %39 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call140, ptr %arrayidx141, align 4
  %add.ptr142 = getelementptr i8, ptr %call3, i32 168
  %call143 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.130, ptr noundef nonnull @lpav_bus_div, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr142, i1 noundef zeroext true) #3
  %arrayidx144 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 3
  %40 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call143, ptr %arrayidx144, align 4
  %add.ptr145 = getelementptr i8, ptr %call3, i32 172
  %call146 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.131, ptr noundef nonnull @lpav_bus_div, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr145, i1 noundef zeroext true) #3
  %arrayidx147 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 4
  %41 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call146, ptr %arrayidx147, align 4
  %add.ptr148 = getelementptr i8, ptr %call3, i32 176
  %call149 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.132, ptr noundef nonnull @lpav_axi_div, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr148, i1 noundef zeroext true) #3
  %arrayidx150 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 5
  %42 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call149, ptr %arrayidx150, align 4
  %add.ptr151 = getelementptr i8, ptr %call3, i32 180
  %call152 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.133, ptr noundef nonnull @lpav_bus_div, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr151, i1 noundef zeroext true) #3
  %arrayidx153 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 6
  %43 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call152, ptr %arrayidx153, align 4
  %add.ptr154 = getelementptr i8, ptr %call3, i32 188
  %call155 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.134, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr154, i1 noundef zeroext true) #3
  %arrayidx156 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 8
  %44 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call155, ptr %arrayidx156, align 4
  %add.ptr157 = getelementptr i8, ptr %call3, i32 192
  %call158 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.135, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr157, i1 noundef zeroext true) #3
  %arrayidx159 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 9
  %45 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call158, ptr %arrayidx159, align 4
  %add.ptr160 = getelementptr i8, ptr %call3, i32 200
  %call161 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.136, ptr noundef nonnull @pcc5_periph_bus_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr160, i1 noundef zeroext true) #3
  %arrayidx162 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 10
  %46 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call161, ptr %arrayidx162, align 4
  %add.ptr163 = getelementptr i8, ptr %call3, i32 204
  %call164 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.137, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr163, i1 noundef zeroext true) #3
  %arrayidx165 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 11
  %47 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call164, ptr %arrayidx165, align 4
  %add.ptr166 = getelementptr i8, ptr %call3, i32 208
  %call167 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.138, ptr noundef nonnull @lpav_axi_div, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %add.ptr166, i1 noundef zeroext true) #3
  %arrayidx168 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 12
  %48 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call167, ptr %arrayidx168, align 4
  %add.ptr169 = getelementptr i8, ptr %call3, i32 240
  %call170 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.139, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr169, i1 noundef zeroext true) #3
  %arrayidx171 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 14
  %49 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call170, ptr %arrayidx171, align 4
  %add.ptr172 = getelementptr i8, ptr %call3, i32 244
  %call173 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.140, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr172, i1 noundef zeroext true) #3
  %arrayidx174 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 15
  %50 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call173, ptr %arrayidx174, align 4
  %add.ptr175 = getelementptr i8, ptr %call3, i32 248
  %call176 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.141, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr175, i1 noundef zeroext true) #3
  %arrayidx177 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 16
  %51 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call176, ptr %arrayidx177, align 4
  %add.ptr178 = getelementptr i8, ptr %call3, i32 268
  %call179 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.142, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr178, i1 noundef zeroext true) #3
  %arrayidx180 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 17
  %52 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call179, ptr %arrayidx180, align 4
  %add.ptr181 = getelementptr i8, ptr %call3, i32 272
  %call182 = tail call ptr @imx8ulp_clk_hw_composite(ptr noundef nonnull @.str.143, ptr noundef nonnull @pcc5_periph_plat_sels, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %add.ptr181, i1 noundef zeroext true) #3
  %arrayidx183 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 18
  %53 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call182, ptr %arrayidx183, align 4
  %add.ptr184 = getelementptr i8, ptr %call3, i32 276
  %call.i353 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr184, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx186 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 19
  %54 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i353, ptr %arrayidx186, align 4
  %call.i354 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.135, i32 noundef 4, i32 noundef 1, i32 noundef 4) #3
  %arrayidx188 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 56
  %55 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i354, ptr %arrayidx188, align 4
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i, align 4
  tail call void @imx_check_clk_hws(ptr noundef %hws, i32 noundef %57) #3
  %call190 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end193:                                        ; preds = %if.end29
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %58 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #3
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end193.cleanup_crit_edge, label %if.end.i

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call3, ptr %call.i.i, align 4
  %lock.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @imx_ccm_lock, ptr %lock.i, align 4
  %resets4.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %resets4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @pcc5_resets, ptr %resets4.i, align 4
  %rcdev.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1
  %owner.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %owner.i, align 4
  %nr_resets6.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 8
  %64 = ptrtoint ptr %nr_resets6.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 14, ptr %nr_resets6.i, align 4
  %65 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @imx8ulp_pcc_reset_ops, ptr %rcdev.i, align 4
  %of_node9.i = getelementptr inbounds %struct.pcc_reset_dev, ptr %call.i.i, i32 0, i32 1, i32 5
  %66 = ptrtoint ptr %of_node9.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %59, ptr %of_node9.i, align 4
  %call11.i = tail call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %rcdev.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end193.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call190, %if.end29.cleanup_crit_edge ], [ %call11.i, %if.end.i ], [ -12, %if.end193.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_cgc2_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 49, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end29, !prof !559

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 246, i32 noundef 9, ptr noundef null) #3
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %call3, i32 1552
  %call.i284 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %2 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i284, ptr %hws, align 4
  %add.ptr31 = getelementptr i8, ptr %call3, i32 1536
  %call32 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 1, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.156, ptr noundef %add.ptr31) #3
  %arrayidx33 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 2
  %3 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call32, ptr %arrayidx33, align 4
  %add.ptr34 = getelementptr i8, ptr %call3, i32 1540
  %call.i285 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr34, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx36 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 3
  %4 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i285, ptr %arrayidx36, align 4
  %add.ptr37 = getelementptr i8, ptr %call3, i32 20
  %call.i286 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, i8 noundef zeroext 8, ptr noundef nonnull @hifi_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr37, i8 noundef zeroext 28, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx39 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 46
  %5 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i286, ptr %arrayidx39, align 4
  %call.i287 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr37, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx42 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 47
  %6 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i287, ptr %arrayidx42, align 4
  %call.i288 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.159, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr37, i8 noundef zeroext 14, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx45 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 48
  %7 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i288, ptr %arrayidx45, align 4
  %add.ptr46 = getelementptr i8, ptr %call3, i32 64
  %call.i289 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, i8 noundef zeroext 8, ptr noundef nonnull @ddr_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr46, i8 noundef zeroext 28, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx48 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 4
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i289, ptr %arrayidx48, align 4
  %call.i290 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef %add.ptr46, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx51 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 5
  %9 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i290, ptr %arrayidx51, align 4
  %add.ptr52 = getelementptr i8, ptr %call3, i32 60
  %call.i291 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, i8 noundef zeroext 4, ptr noundef nonnull @lpav_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr52, i8 noundef zeroext 28, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx54 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 6
  %10 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i291, ptr %arrayidx54, align 4
  %call.i292 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef %add.ptr52, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx57 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 7
  %11 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i292, ptr %arrayidx57, align 4
  %call.i293 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef %add.ptr52, i8 noundef zeroext 14, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx60 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 8
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i293, ptr %arrayidx60, align 4
  %call.i294 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef %add.ptr52, i8 noundef zeroext 7, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx63 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 9
  %13 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i294, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %call3, i32 1556
  %call65 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.147, ptr noundef %add.ptr64, i8 noundef zeroext 0) #3
  %arrayidx66 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 10
  %14 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call65, ptr %arrayidx66, align 4
  %call68 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.147, ptr noundef %add.ptr64, i8 noundef zeroext 1) #3
  %arrayidx69 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 11
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call68, ptr %arrayidx69, align 4
  %call71 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.147, ptr noundef %add.ptr64, i8 noundef zeroext 2) #3
  %arrayidx72 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 12
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call71, ptr %arrayidx72, align 4
  %call74 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.147, ptr noundef %add.ptr64, i8 noundef zeroext 3) #3
  %arrayidx75 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 13
  %17 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call74, ptr %arrayidx75, align 4
  %add.ptr76 = getelementptr i8, ptr %call3, i32 1544
  %call.i295 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.165, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx78 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 14
  %18 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i295, ptr %arrayidx78, align 4
  %call.i296 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.165, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx81 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 15
  %19 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i296, ptr %arrayidx81, align 4
  %call.i297 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx84 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 16
  %20 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i297, ptr %arrayidx84, align 4
  %call.i298 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 31, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx87 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 17
  %21 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i298, ptr %arrayidx87, align 4
  %add.ptr88 = getelementptr i8, ptr %call3, i32 1548
  %call.i299 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.167, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx90 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 18
  %22 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i299, ptr %arrayidx90, align 4
  %call.i300 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.167, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx93 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 19
  %23 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i300, ptr %arrayidx93, align 4
  %call.i301 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx96 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 20
  %24 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i301, ptr %arrayidx96, align 4
  %call.i302 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 31, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx99 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 21
  %25 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i302, ptr %arrayidx99, align 4
  %call.i303 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx102 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 22
  %26 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i303, ptr %arrayidx102, align 4
  %call.i304 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx105 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 23
  %27 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i304, ptr %arrayidx105, align 4
  %call.i305 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx108 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 24
  %28 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i305, ptr %arrayidx108, align 4
  %call.i306 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr76, i8 noundef zeroext 24, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx111 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 25
  %29 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i306, ptr %arrayidx111, align 4
  %call.i307 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx114 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 26
  %30 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i307, ptr %arrayidx114, align 4
  %call.i308 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx117 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 27
  %31 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i308, ptr %arrayidx117, align 4
  %call.i309 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx120 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 28
  %32 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i309, ptr %arrayidx120, align 4
  %call.i310 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.176, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 24, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx123 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 29
  %33 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i310, ptr %arrayidx123, align 4
  %add.ptr124 = getelementptr i8, ptr %call3, i32 264
  %call.i311 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx126 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 30
  %34 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i311, ptr %arrayidx126, align 4
  %call.i312 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx129 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 31
  %35 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i312, ptr %arrayidx129, align 4
  %call.i313 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx132 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 32
  %36 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i313, ptr %arrayidx132, align 4
  %call.i314 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.177, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx135 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 33
  %37 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i314, ptr %arrayidx135, align 4
  %call.i315 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.179, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx138 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 34
  %38 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i315, ptr %arrayidx138, align 4
  %call.i316 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx141 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 35
  %39 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i316, ptr %arrayidx141, align 4
  %add.ptr142 = getelementptr i8, ptr %call3, i32 520
  %call.i317 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx144 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 36
  %40 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i317, ptr %arrayidx144, align 4
  %call.i318 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx147 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 37
  %41 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i318, ptr %arrayidx147, align 4
  %call.i319 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx150 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 38
  %42 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i319, ptr %arrayidx150, align 4
  %call.i320 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx153 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 39
  %43 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i320, ptr %arrayidx153, align 4
  %call.i321 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx156 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 40
  %44 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i321, ptr %arrayidx156, align 4
  %call.i322 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr142, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx159 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 41
  %45 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i322, ptr %arrayidx159, align 4
  %add.ptr160 = getelementptr i8, ptr %call3, i32 2304
  %call.i323 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.191, i8 noundef zeroext 8, ptr noundef nonnull @aud_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr160, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx162 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 42
  %46 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i323, ptr %arrayidx162, align 4
  %add.ptr163 = getelementptr i8, ptr %call3, i32 2308
  %call.i324 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.192, i8 noundef zeroext 8, ptr noundef nonnull @sai67_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr163, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx165 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 43
  %47 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i324, ptr %arrayidx165, align 4
  %call.i325 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.193, i8 noundef zeroext 8, ptr noundef nonnull @sai67_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr163, i8 noundef zeroext 8, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx168 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 44
  %48 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i325, ptr %arrayidx168, align 4
  %add.ptr169 = getelementptr i8, ptr %call3, i32 2320
  %call.i326 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.194, i8 noundef zeroext 8, ptr noundef nonnull @sai67_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr169, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx171 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 45
  %49 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i326, ptr %arrayidx171, align 4
  %call.i327 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24000000, i32 noundef 0, i32 noundef 0) #3
  %arrayidx173 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 49
  %50 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i327, ptr %arrayidx173, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call.i, align 4
  tail call void @imx_check_clk_hws(ptr noundef %hws, i32 noundef %52) #3
  %call175 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ %call175, %if.end29 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_clk_cgc1_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 228, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 56, ptr %call.i, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i, i32 0, i32 1
  %call.i289 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %1 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i289, ptr %hws, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end30, !prof !559

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 164, i32 noundef 9, ptr noundef null) #3
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %call4, i32 1296
  %call.i290 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.206, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx32 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 10
  %3 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i290, ptr %arrayidx32, align 4
  %add.ptr33 = getelementptr i8, ptr %call4, i32 1552
  %call.i291 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.207, i8 noundef zeroext 2, ptr noundef nonnull @pll_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 130, ptr noundef %add.ptr33, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx35 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 11
  %4 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i291, ptr %arrayidx35, align 4
  %add.ptr36 = getelementptr i8, ptr %call4, i32 1280
  %call37 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 1, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.206, ptr noundef %add.ptr36) #3
  %arrayidx38 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 6
  %5 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call37, ptr %arrayidx38, align 4
  %add.ptr39 = getelementptr i8, ptr %call4, i32 1536
  %call40 = tail call ptr @imx_clk_hw_pllv4(i32 noundef 1, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.207, ptr noundef %add.ptr39) #3
  %arrayidx41 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 7
  %6 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call40, ptr %arrayidx41, align 4
  %add.ptr42 = getelementptr i8, ptr %call4, i32 1540
  %call.i292 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.209, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr42, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx44 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 37
  %7 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i292, ptr %arrayidx44, align 4
  %add.ptr45 = getelementptr i8, ptr %call4, i32 1556
  %call46 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.89, ptr noundef %add.ptr45, i8 noundef zeroext 0) #3
  %arrayidx47 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 12
  %8 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call46, ptr %arrayidx47, align 4
  %call49 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.89, ptr noundef %add.ptr45, i8 noundef zeroext 1) #3
  %arrayidx50 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 13
  %9 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call49, ptr %arrayidx50, align 4
  %call52 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.89, ptr noundef %add.ptr45, i8 noundef zeroext 2) #3
  %arrayidx53 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 14
  %10 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call52, ptr %arrayidx53, align 4
  %call55 = tail call ptr @imx_clk_hw_pfdv2(i32 noundef 1, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.89, ptr noundef %add.ptr45, i8 noundef zeroext 3) #3
  %arrayidx56 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 15
  %11 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call55, ptr %arrayidx56, align 4
  %add.ptr57 = getelementptr i8, ptr %call4, i32 1544
  %call.i293 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx59 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 38
  %12 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i293, ptr %arrayidx59, align 4
  %call.i294 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx62 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 39
  %13 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i294, ptr %arrayidx62, align 4
  %call.i295 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.211, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx65 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 40
  %14 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i295, ptr %arrayidx65, align 4
  %call.i296 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.211, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 31, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx68 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 41
  %15 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i296, ptr %arrayidx68, align 4
  %add.ptr69 = getelementptr i8, ptr %call4, i32 1548
  %call.i297 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.212, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx71 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 42
  %16 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i297, ptr %arrayidx71, align 4
  %call.i298 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.212, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx74 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 43
  %17 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i298, ptr %arrayidx74, align 4
  %call.i299 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.213, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx77 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 44
  %18 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i299, ptr %arrayidx77, align 4
  %call.i300 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.213, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 31, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx80 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 45
  %19 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i300, ptr %arrayidx80, align 4
  %call.i301 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.214, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx83 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 16
  %20 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i301, ptr %arrayidx83, align 4
  %call.i302 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.215, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx86 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 17
  %21 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i302, ptr %arrayidx86, align 4
  %call.i303 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.216, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx89 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 18
  %22 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i303, ptr %arrayidx89, align 4
  %call.i304 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.217, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr57, i8 noundef zeroext 24, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx92 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 19
  %23 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i304, ptr %arrayidx92, align 4
  %call.i305 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.218, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx95 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 20
  %24 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i305, ptr %arrayidx95, align 4
  %call.i306 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.219, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx98 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 21
  %25 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i306, ptr %arrayidx98, align 4
  %call.i307 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.220, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx101 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 22
  %26 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i307, ptr %arrayidx101, align 4
  %call.i308 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.221, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr69, i8 noundef zeroext 24, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx104 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 23
  %27 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i308, ptr %arrayidx104, align 4
  %add.ptr105 = getelementptr i8, ptr %call4, i32 20
  %call.i309 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.222, i8 noundef zeroext 4, ptr noundef nonnull @a35_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr105, i8 noundef zeroext 28, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx107 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 8
  %28 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i309, ptr %arrayidx107, align 4
  %call.i310 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.222, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr105, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx110 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 9
  %29 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i310, ptr %arrayidx110, align 4
  %add.ptr111 = getelementptr i8, ptr %call4, i32 52
  %call.i311 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.224, i8 noundef zeroext 4, ptr noundef nonnull @nic_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr111, i8 noundef zeroext 28, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx113 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 24
  %30 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i311, ptr %arrayidx113, align 4
  %call.i312 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.224, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr111, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx116 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 25
  %31 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i312, ptr %arrayidx116, align 4
  %call.i313 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr111, i8 noundef zeroext 14, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx119 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 26
  %32 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i313, ptr %arrayidx119, align 4
  %add.ptr120 = getelementptr i8, ptr %call4, i32 56
  %call.i314 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr120, i8 noundef zeroext 14, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx122 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 28
  %33 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i314, ptr %arrayidx122, align 4
  %call.i315 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr120, i8 noundef zeroext 7, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx125 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 29
  %34 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i315, ptr %arrayidx125, align 4
  %call.i316 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %add.ptr120, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx128 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 30
  %35 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i316, ptr %arrayidx128, align 4
  %add.ptr129 = getelementptr i8, ptr %call4, i32 264
  %call.i317 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr129, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx131 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 46
  %36 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i317, ptr %arrayidx131, align 4
  %call.i318 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr129, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx134 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 47
  %37 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i318, ptr %arrayidx134, align 4
  %call.i319 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr129, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx137 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 48
  %38 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i319, ptr %arrayidx137, align 4
  %call.i320 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.227, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr129, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx140 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 31
  %39 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i320, ptr %arrayidx140, align 4
  %call.i321 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.228, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr129, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx143 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 32
  %40 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i321, ptr %arrayidx143, align 4
  %call.i322 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.229, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr129, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx146 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 33
  %41 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i322, ptr %arrayidx146, align 4
  %add.ptr147 = getelementptr i8, ptr %call4, i32 520
  %call.i323 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr147, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx149 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 49
  %42 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i323, ptr %arrayidx149, align 4
  %call.i324 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr147, i8 noundef zeroext 15, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx152 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 50
  %43 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i324, ptr %arrayidx152, align 4
  %call.i325 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr147, i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx155 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 51
  %44 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i325, ptr %arrayidx155, align 4
  %call.i326 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr147, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx158 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 34
  %45 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i326, ptr %arrayidx158, align 4
  %call.i327 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr147, i8 noundef zeroext 8, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx161 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 35
  %46 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i327, ptr %arrayidx161, align 4
  %call.i328 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.233, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr147, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx164 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 36
  %47 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i328, ptr %arrayidx164, align 4
  %add.ptr165 = getelementptr i8, ptr %call4, i32 2304
  %call.i329 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.205, i8 noundef zeroext 8, ptr noundef nonnull @aud_clk1_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr165, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx167 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 54
  %48 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i329, ptr %arrayidx167, align 4
  %add.ptr168 = getelementptr i8, ptr %call4, i32 2308
  %call.i330 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.235, i8 noundef zeroext 4, ptr noundef nonnull @sai45_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr168, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx170 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 52
  %49 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i330, ptr %arrayidx170, align 4
  %call.i331 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.236, i8 noundef zeroext 4, ptr noundef nonnull @sai45_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr168, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx173 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 53
  %50 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i331, ptr %arrayidx173, align 4
  %add.ptr174 = getelementptr i8, ptr %call4, i32 1792
  %call.i332 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.237, i8 noundef zeroext 8, ptr noundef nonnull @enet_ts_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr174, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %arrayidx176 = getelementptr %struct.clk_hw_onecell_data, ptr %call.i, i32 56
  %51 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i332, ptr %arrayidx176, align 4
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i, align 4
  tail call void @imx_check_clk_hws(ptr noundef %hws, i32 noundef %53) #3
  %call178 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end ], [ %call178, %if.end30 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx8ulp_clk_hw_composite(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_pcc_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %resets = getelementptr i8, ptr %rcdev, i32 44
  %0 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %lock = getelementptr i8, ptr %rcdev, i32 48
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !561
  %9 = and i32 %8, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !562
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %9) #3, !srcloc !563
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call3) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_pcc_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -4
  %resets = getelementptr i8, ptr %rcdev, i32 44
  %0 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %lock = getelementptr i8, ptr %rcdev, i32 48
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !560
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !564
  %9 = or i32 %8, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !565
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %9) #3, !srcloc !563
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call3) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv4(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfdv2(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !393, !395, !397, !399, !401, !403, !405, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548}
!llvm.module.flags = !{!550, !551, !552, !553, !554, !555, !556, !557}
!llvm.ident = !{!558}

!0 = !{ptr @__initcall__kmod_clk_imx8ulp__183_566_imx8ulp_clk_driver_init6, !1, !"__initcall__kmod_clk_imx8ulp__183_566_imx8ulp_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 566, i32 1}
!2 = !{ptr @__exitcall_imx8ulp_clk_driver_exit, !1, !"__exitcall_imx8ulp_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 568, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 569, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 570, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 561, i32 12}
!12 = !{ptr @imx8ulp_clk_driver, !13, !"imx8ulp_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 558, i32 31}
!14 = !{ptr @imx8ulp_clk_dt_ids, !15, !"imx8ulp_clk_dt_ids", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 548, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 329, i32 6}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 332, i32 53}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 333, i32 53}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 334, i32 53}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 335, i32 52}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 336, i32 52}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 337, i32 55}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 338, i32 52}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 339, i32 54}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 340, i32 54}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 341, i32 55}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 342, i32 55}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 343, i32 54}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 344, i32 54}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 346, i32 30}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 347, i32 31}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 348, i32 31}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 349, i32 31}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 350, i32 31}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 351, i32 31}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 352, i32 31}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 353, i32 31}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 354, i32 31}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 355, i32 31}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 356, i32 31}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 357, i32 32}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 358, i32 32}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 359, i32 32}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 360, i32 32}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 361, i32 32}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 362, i32 32}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 363, i32 32}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 364, i32 32}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 365, i32 32}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 366, i32 32}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 367, i32 32}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 368, i32 32}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 369, i32 32}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 370, i32 32}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 371, i32 32}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 372, i32 32}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 373, i32 32}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 374, i32 32}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 375, i32 32}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 376, i32 32}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 377, i32 32}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 378, i32 32}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 379, i32 28}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 380, i32 28}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 20, i32 54}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 20, i32 63}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 20, i32 72}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 21, i32 12}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 21, i32 26}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 21, i32 41}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 22, i32 12}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 22, i32 31}
!131 = !{ptr @pcc3_periph_bus_sels, !132, !"pcc3_periph_bus_sels", i1 false, i1 false}
!132 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 20, i32 27}
!133 = !{ptr @imx8ulp_pcc_reset_ops, !134, !"imx8ulp_pcc_reset_ops", i1 false, i1 false}
!134 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 118, i32 39}
!135 = !{ptr @pcc3_resets, !136, !"pcc3_resets", i1 false, i1 false}
!136 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 63, i32 18}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 415, i32 56}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 416, i32 52}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 417, i32 52}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 418, i32 54}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 419, i32 54}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 420, i32 55}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 421, i32 55}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 422, i32 52}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 423, i32 52}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 424, i32 28}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 425, i32 28}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 426, i32 54}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 427, i32 54}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 428, i32 54}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 429, i32 52}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 430, i32 56}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 431, i32 52}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 432, i32 56}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 433, i32 31}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 434, i32 52}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 435, i32 29}
!179 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 436, i32 29}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 26, i32 64}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 26, i32 77}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 27, i32 13}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 27, i32 32}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 28, i32 13}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 28, i32 32}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 29, i32 13}
!196 = !{ptr @pcc4_periph_plat_sels, !197, !"pcc4_periph_plat_sels", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 26, i32 27}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 25, i32 12}
!200 = !{ptr @pcc4_periph_bus_sels, !201, !"pcc4_periph_bus_sels", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 23, i32 27}
!202 = !{ptr @xbar_divbus, !203, !"xbar_divbus", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 47, i32 27}
!204 = !{ptr @nic_per_divplat, !205, !"nic_per_divplat", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 48, i32 27}
!206 = !{ptr @pcc4_resets, !207, !"pcc4_resets", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 69, i32 18}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 470, i32 30}
!210 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 471, i32 31}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 472, i32 31}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 473, i32 31}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 474, i32 31}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 475, i32 31}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 476, i32 31}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 477, i32 31}
!225 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 478, i32 31}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 479, i32 31}
!229 = !{ptr @.str.101, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 480, i32 31}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 481, i32 32}
!233 = !{ptr @.str.103, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 482, i32 32}
!235 = !{ptr @.str.104, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 483, i32 32}
!237 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 484, i32 32}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 485, i32 32}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 486, i32 32}
!243 = !{ptr @.str.108, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 487, i32 32}
!245 = !{ptr @.str.109, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 488, i32 32}
!247 = !{ptr @.str.110, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 489, i32 32}
!249 = !{ptr @.str.111, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 490, i32 32}
!251 = !{ptr @.str.112, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 491, i32 32}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 492, i32 32}
!255 = !{ptr @.str.114, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 493, i32 32}
!257 = !{ptr @.str.115, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 494, i32 32}
!259 = !{ptr @.str.116, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 495, i32 32}
!261 = !{ptr @.str.117, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 496, i32 32}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 497, i32 32}
!265 = !{ptr @.str.119, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 498, i32 32}
!267 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 499, i32 32}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 500, i32 32}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 501, i32 32}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 502, i32 32}
!275 = !{ptr @.str.124, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 504, i32 30}
!277 = !{ptr @.str.125, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.126, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 505, i32 52}
!280 = !{ptr @.str.127, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 506, i32 28}
!282 = !{ptr @.str.128, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 507, i32 28}
!284 = !{ptr @.str.129, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 508, i32 52}
!286 = !{ptr @.str.130, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 509, i32 52}
!288 = !{ptr @.str.131, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 510, i32 53}
!290 = !{ptr @.str.132, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 511, i32 51}
!292 = !{ptr @.str.133, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 512, i32 56}
!294 = !{ptr @.str.134, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 513, i32 51}
!296 = !{ptr @.str.135, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 514, i32 51}
!298 = !{ptr @.str.136, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 515, i32 53}
!300 = !{ptr @.str.137, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 516, i32 52}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 517, i32 51}
!304 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 518, i32 53}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 519, i32 53}
!308 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 520, i32 55}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 521, i32 58}
!312 = !{ptr @.str.143, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 522, i32 59}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 523, i32 29}
!316 = !{ptr @.str.145, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 524, i32 57}
!318 = !{ptr @.str.146, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 31, i32 39}
!320 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 32, i32 12}
!322 = !{ptr @.str.148, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 32, i32 27}
!324 = !{ptr @pcc5_periph_bus_sels, !325, !"pcc5_periph_bus_sels", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 30, i32 27}
!326 = !{ptr @lpav_bus_div, !327, !"lpav_bus_div", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 50, i32 27}
!328 = !{ptr @lpav_axi_div, !329, !"lpav_axi_div", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 49, i32 27}
!330 = !{ptr @.str.149, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 33, i32 64}
!332 = !{ptr @.str.150, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 33, i32 82}
!334 = !{ptr @.str.151, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 34, i32 13}
!336 = !{ptr @.str.152, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 34, i32 31}
!338 = !{ptr @.str.153, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 35, i32 13}
!340 = !{ptr @.str.154, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 35, i32 31}
!342 = !{ptr @.str.155, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 36, i32 13}
!344 = !{ptr @pcc5_periph_plat_sels, !345, !"pcc5_periph_plat_sels", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 33, i32 27}
!346 = !{ptr @pcc5_resets, !347, !"pcc5_resets", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 76, i32 18}
!348 = !{ptr @.str.156, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 249, i32 35}
!350 = !{ptr @.str.157, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 251, i32 63}
!352 = !{ptr @.str.158, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 254, i32 31}
!354 = !{ptr @.str.159, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 255, i32 35}
!356 = !{ptr @.str.160, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 256, i32 35}
!358 = !{ptr @.str.161, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 258, i32 30}
!360 = !{ptr @.str.162, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 259, i32 30}
!362 = !{ptr @.str.163, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 260, i32 35}
!364 = !{ptr @.str.164, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 262, i32 35}
!366 = !{ptr @.str.165, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 265, i32 68}
!368 = !{ptr @.str.166, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 266, i32 68}
!370 = !{ptr @.str.167, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 267, i32 68}
!372 = !{ptr @.str.168, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 268, i32 68}
!374 = !{ptr @.str.169, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 270, i32 42}
!376 = !{ptr @.str.170, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 271, i32 42}
!378 = !{ptr @.str.171, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 272, i32 42}
!380 = !{ptr @.str.172, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 273, i32 42}
!382 = !{ptr @.str.173, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 274, i32 42}
!384 = !{ptr @.str.174, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 275, i32 42}
!386 = !{ptr @.str.175, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 276, i32 42}
!388 = !{ptr @.str.176, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 277, i32 42}
!390 = !{ptr @.str.177, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 287, i32 42}
!392 = !{ptr @.str.178, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.179, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 288, i32 42}
!395 = !{ptr @.str.180, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 289, i32 42}
!397 = !{ptr @.str.181, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 290, i32 37}
!399 = !{ptr @.str.182, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 291, i32 37}
!401 = !{ptr @.str.183, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 292, i32 37}
!403 = !{ptr @.str.184, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 294, i32 43}
!405 = !{ptr @.str.185, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.186, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 295, i32 43}
!408 = !{ptr @.str.187, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 296, i32 43}
!410 = !{ptr @.str.188, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 297, i32 38}
!412 = !{ptr @.str.189, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 298, i32 38}
!414 = !{ptr @.str.190, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 299, i32 38}
!416 = !{ptr @.str.191, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 300, i32 32}
!418 = !{ptr @.str.192, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 301, i32 32}
!420 = !{ptr @.str.193, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 302, i32 32}
!422 = !{ptr @.str.194, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 303, i32 32}
!424 = !{ptr @.str.195, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 304, i32 51}
!426 = !{ptr @pll_pre_sels, !427, !"pll_pre_sels", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 17, i32 27}
!428 = !{ptr @.str.196, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 38, i32 7}
!430 = !{ptr @hifi_sels, !431, !"hifi_sels", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 37, i32 27}
!432 = !{ptr @ddr_sels, !433, !"ddr_sels", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 39, i32 27}
!434 = !{ptr @lpav_sels, !435, !"lpav_sels", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 41, i32 27}
!436 = !{ptr @.str.197, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 47}
!438 = !{ptr @.str.198, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 64}
!440 = !{ptr @.str.199, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 80}
!442 = !{ptr @.str.200, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 96}
!444 = !{ptr @.str.201, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 112}
!446 = !{ptr @.str.202, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 128}
!448 = !{ptr @aud_clk2_sels, !449, !"aud_clk2_sels", i1 false, i1 false}
!449 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 45, i32 27}
!450 = !{ptr @.str.203, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 43, i32 44}
!452 = !{ptr @.str.204, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 43, i32 81}
!454 = !{ptr @.str.205, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 43, i32 93}
!456 = !{ptr @sai67_sels, !457, !"sai67_sels", i1 false, i1 false}
!457 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 43, i32 27}
!458 = !{ptr @.str.206, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 167, i32 36}
!460 = !{ptr @.str.207, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 168, i32 36}
!462 = !{ptr @.str.208, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 170, i32 64}
!464 = !{ptr @.str.209, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 171, i32 64}
!466 = !{ptr @.str.210, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 174, i32 69}
!468 = !{ptr @.str.211, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 175, i32 69}
!470 = !{ptr @.str.212, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 176, i32 69}
!472 = !{ptr @.str.213, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 177, i32 69}
!474 = !{ptr @.str.214, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 179, i32 43}
!476 = !{ptr @.str.215, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 180, i32 43}
!478 = !{ptr @.str.216, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 181, i32 43}
!480 = !{ptr @.str.217, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 182, i32 43}
!482 = !{ptr @.str.218, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 183, i32 43}
!484 = !{ptr @.str.219, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 184, i32 43}
!486 = !{ptr @.str.220, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 185, i32 43}
!488 = !{ptr @.str.221, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 186, i32 43}
!490 = !{ptr @.str.222, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 196, i32 30}
!492 = !{ptr @.str.223, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 197, i32 30}
!494 = !{ptr @.str.224, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 199, i32 30}
!496 = !{ptr @.str.225, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 200, i32 37}
!498 = !{ptr @.str.226, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 204, i32 35}
!500 = !{ptr @.str.227, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 206, i32 37}
!502 = !{ptr @.str.228, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 207, i32 37}
!504 = !{ptr @.str.229, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 208, i32 37}
!506 = !{ptr @.str.230, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 211, i32 32}
!508 = !{ptr @.str.231, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 213, i32 38}
!510 = !{ptr @.str.232, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 214, i32 38}
!512 = !{ptr @.str.233, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 215, i32 38}
!514 = !{ptr @.str.234, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 218, i32 33}
!516 = !{ptr @.str.235, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 220, i32 31}
!518 = !{ptr @.str.236, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 221, i32 31}
!520 = !{ptr @.str.237, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 222, i32 34}
!522 = !{ptr @a35_sels, !523, !"a35_sels", i1 false, i1 false}
!523 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 18, i32 27}
!524 = !{ptr @nic_sels, !525, !"nic_sels", i1 false, i1 false}
!525 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 19, i32 27}
!526 = !{ptr @.str.238, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 44, i32 47}
!528 = !{ptr @.str.239, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 44, i32 64}
!530 = !{ptr @.str.240, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 44, i32 80}
!532 = !{ptr @.str.241, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 44, i32 96}
!534 = !{ptr @.str.242, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 44, i32 112}
!536 = !{ptr @aud_clk1_sels, !537, !"aud_clk1_sels", i1 false, i1 false}
!537 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 44, i32 27}
!538 = !{ptr @sai45_sels, !539, !"sai45_sels", i1 false, i1 false}
!539 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 42, i32 27}
!540 = !{ptr @.str.243, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 46, i32 46}
!542 = !{ptr @.str.244, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 46, i32 62}
!544 = !{ptr @.str.245, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 46, i32 76}
!546 = !{ptr @.str.246, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 46, i32 84}
!548 = !{ptr @enet_ts_sels, !549, !"enet_ts_sels", i1 false, i1 false}
!549 = !{!"../drivers/clk/imx/clk-imx8ulp.c", i32 46, i32 27}
!550 = !{i32 1, !"wchar_size", i32 2}
!551 = !{i32 1, !"min_enum_size", i32 4}
!552 = !{i32 8, !"branch-target-enforcement", i32 0}
!553 = !{i32 8, !"sign-return-address", i32 0}
!554 = !{i32 8, !"sign-return-address-all", i32 0}
!555 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!556 = !{i32 7, !"uwtable", i32 1}
!557 = !{i32 7, !"frame-pointer", i32 2}
!558 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!559 = !{!"branch_weights", i32 1, i32 2000}
!560 = !{i64 727470}
!561 = !{i64 2153013773}
!562 = !{i64 2153014078}
!563 = !{i64 727052}
!564 = !{i64 2153016395}
!565 = !{i64 2153016700}
