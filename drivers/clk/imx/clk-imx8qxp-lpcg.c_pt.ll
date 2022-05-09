; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx8qxp-lpcg.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx8qxp-lpcg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx8qxp_ss_lpcg = type { ptr, i8, i8 }
%struct.imx8qxp_lpcg_data = type { i32, ptr, ptr, i32, i32, i8, i8 }
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_imx_lpcg_scu__184_373_imx8qxp_lpcg_clk_driver_init6 = internal global ptr @imx8qxp_lpcg_clk_driver_init, section ".initcall6.init", align 4
@imx8qxp_lpcg_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8qxp_lpcg_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx8qxp_lpcg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_clk_lpcg_scu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8qxp_lpcg_clk_driver_exit = internal global ptr @imx8qxp_lpcg_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [60 x i8] c"clk_imx_lpcg_scu.author=Aisheng Dong <aisheng.dong@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [60 x i8] c"clk_imx_lpcg_scu.description=NXP i.MX8QXP LPCG clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [55 x i8] c"clk_imx_lpcg_scu.file=drivers/clk/imx/clk-imx-lpcg-scu\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [32 x i8] c"clk_imx_lpcg_scu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx8qxp-lpcg-clk\00", [47 x i8] zeroinitializer }, align 32
@imx8qxp_lpcg_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-lpcg-adma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_ss_adma }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-lpcg-conn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_ss_conn }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-lpcg-lsio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_ss_lsio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-lpcg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@imx_clk_lpcg_scu_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@imx8qxp_lpcg_clk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014i.MX clk %u: register failed with %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx8qxp_lpcg_clk_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/imx/clk-imx8qxp-lpcg.c\00", [61 x i8] zeroinitializer }, align 32
@imx8qxp_lpcg_clk_probe._entry_ptr = internal global ptr @imx8qxp_lpcg_clk_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx8qxp-lpcg\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-indices\00", [18 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 203, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to count clocks\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imx_lpcg_parse_clks_from_dt\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry_ptr = internal global ptr @imx_lpcg_parse_clks_from_dt._entry, section ".printk_index", align 4
@imx_lpcg_parse_clks_from_dt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.3, i32 226, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read clock-indices\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry_ptr.12 = internal global ptr @imx_lpcg_parse_clks_from_dt._entry.10, section ".printk_index", align 4
@imx_lpcg_parse_clks_from_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.3, i32 232, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get clock parent names\0A\00", [62 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry_ptr.15 = internal global ptr @imx_lpcg_parse_clks_from_dt._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.3, i32 239, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read clock-output-names\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry_ptr.19 = internal global ptr @imx_lpcg_parse_clks_from_dt._entry.17, section ".printk_index", align 4
@imx_lpcg_parse_clks_from_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.3, i32 253, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid bit offset of clock %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry_ptr.23 = internal global ptr @imx_lpcg_parse_clks_from_dt._entry.20, section ".printk_index", align 4
@imx_lpcg_parse_clks_from_dt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.3, i32 263, ptr @.str.22, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register clock %d\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_lpcg_parse_clks_from_dt._entry_ptr.26 = internal global ptr @imx_lpcg_parse_clks_from_dt._entry.24, section ".printk_index", align 4
@imx_lpcg_of_clk_src_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_lpcg_of_clk_src_get\00", [40 x i8] zeroinitializer }, align 32
@imx_lpcg_of_clk_src_get._entry_ptr = internal global ptr @imx_lpcg_of_clk_src_get._entry, section ".printk_index", align 4
@imx8qxp_ss_adma = internal constant { %struct.imx8qxp_ss_lpcg, [24 x i8] } { %struct.imx8qxp_ss_lpcg { ptr @imx8qxp_lpcg_adma, i8 20, i8 45 }, [24 x i8] zeroinitializer }, align 32
@imx8qxp_ss_conn = internal constant { %struct.imx8qxp_ss_lpcg, [24 x i8] } { %struct.imx8qxp_ss_lpcg { ptr @imx8qxp_lpcg_conn, i8 19, i8 24 }, [24 x i8] zeroinitializer }, align 32
@imx8qxp_ss_lsio = internal constant { %struct.imx8qxp_ss_lpcg, [24 x i8] } { %struct.imx8qxp_ss_lpcg { ptr @imx8qxp_lpcg_lsio, i8 35, i8 73 }, [24 x i8] zeroinitializer }, align 32
@imx8qxp_lpcg_adma = internal constant { [20 x %struct.imx8qxp_lpcg_data], [96 x i8] } { [20 x %struct.imx8qxp_lpcg_data] [%struct.imx8qxp_lpcg_data { i32 0, ptr @.str.29, ptr @.str.30, i32 0, i32 21364736, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 1, ptr @.str.31, ptr @.str.32, i32 0, i32 21364736, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 2, ptr @.str.33, ptr @.str.30, i32 0, i32 21430272, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 3, ptr @.str.34, ptr @.str.35, i32 0, i32 21430272, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 4, ptr @.str.36, ptr @.str.30, i32 0, i32 21495808, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 5, ptr @.str.37, ptr @.str.38, i32 0, i32 21495808, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 6, ptr @.str.39, ptr @.str.30, i32 0, i32 21561344, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 7, ptr @.str.40, ptr @.str.41, i32 0, i32 21561344, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 29, ptr @.str.42, ptr @.str.30, i32 0, i32 29360128, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 25, ptr @.str.43, ptr @.str.44, i32 0, i32 29360128, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 30, ptr @.str.45, ptr @.str.30, i32 0, i32 29425664, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 26, ptr @.str.46, ptr @.str.47, i32 0, i32 29425664, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 31, ptr @.str.48, ptr @.str.30, i32 0, i32 29491200, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 27, ptr @.str.49, ptr @.str.50, i32 0, i32 29491200, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 32, ptr @.str.51, ptr @.str.30, i32 0, i32 29556736, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 28, ptr @.str.52, ptr @.str.53, i32 0, i32 29556736, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 43, ptr @.str.54, ptr @.str.30, i32 0, i32 5767168, i8 28, i8 0 }, %struct.imx8qxp_lpcg_data { i32 42, ptr @.str.55, ptr @.str.30, i32 0, i32 5767168, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 41, ptr @.str.56, ptr @.str.30, i32 0, i32 5767168, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 44, ptr @.str.57, ptr @.str.30, i32 0, i32 5832704, i8 16, i8 0 }], [96 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uart0_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_ipg_clk_root\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uart0_lpcg_baud_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uart1_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uart1_lpcg_baud_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uart2_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uart2_lpcg_baud_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uart3_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uart3_lpcg_baud_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uart3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c0_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c0_lpcg_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c1_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c1_lpcg_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c2_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c2_lpcg_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c3_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c3_lpcg_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsp_lpcg_core_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_lpcg_ipg_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_lpcg_adb_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ocram_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@imx8qxp_lpcg_conn = internal constant { [19 x %struct.imx8qxp_lpcg_data], [120 x i8] } { [19 x %struct.imx8qxp_lpcg_data] [%struct.imx8qxp_lpcg_data { i32 1, ptr @.str.58, ptr @.str.59, i32 0, i32 0, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 0, ptr @.str.60, ptr @.str.61, i32 0, i32 0, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 2, ptr @.str.62, ptr @.str.63, i32 0, i32 0, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 4, ptr @.str.64, ptr @.str.65, i32 0, i32 65536, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 3, ptr @.str.66, ptr @.str.61, i32 0, i32 65536, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 5, ptr @.str.67, ptr @.str.63, i32 0, i32 65536, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 7, ptr @.str.68, ptr @.str.69, i32 0, i32 131072, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 6, ptr @.str.70, ptr @.str.61, i32 0, i32 131072, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 8, ptr @.str.71, ptr @.str.63, i32 0, i32 131072, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 14, ptr @.str.72, ptr @.str.73, i32 0, i32 196608, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 15, ptr @.str.74, ptr @.str.73, i32 0, i32 196608, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 16, ptr @.str.75, ptr @.str.63, i32 0, i32 196608, i8 8, i8 0 }, %struct.imx8qxp_lpcg_data { i32 17, ptr @.str.76, ptr @.str.61, i32 0, i32 196608, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 18, ptr @.str.77, ptr @.str.76, i32 0, i32 196608, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 19, ptr @.str.78, ptr @.str.79, i32 0, i32 262144, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 20, ptr @.str.80, ptr @.str.79, i32 0, i32 262144, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 21, ptr @.str.81, ptr @.str.63, i32 0, i32 262144, i8 8, i8 0 }, %struct.imx8qxp_lpcg_data { i32 22, ptr @.str.82, ptr @.str.61, i32 0, i32 262144, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 23, ptr @.str.83, ptr @.str.76, i32 0, i32 262144, i8 16, i8 0 }], [120 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc0_lpcg_per_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhc0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc0_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn_ipg_clk_root\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc0_lpcg_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn_axi_clk_root\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc1_lpcg_per_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhc1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc1_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc1_lpcg_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc2_lpcg_per_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhc2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc2_lpcg_ipg_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhc2_lpcg_ahb_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enet0_ipg_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enet0_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet0_tx_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enet0_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enet0_ipg_s_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enet0_ipg_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enet1_ipg_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enet1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet1_tx_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enet1_ahb_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enet1_ipg_s_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"enet1_ipg_clk\00", [18 x i8] zeroinitializer }, align 32
@imx8qxp_lpcg_lsio = internal constant { [35 x %struct.imx8qxp_lpcg_data], [216 x i8] } { [35 x %struct.imx8qxp_lpcg_data] [%struct.imx8qxp_lpcg_data { i32 0, ptr @.str.84, ptr @.str.85, i32 0, i32 0, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 2, ptr @.str.86, ptr @.str.85, i32 0, i32 0, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 1, ptr @.str.87, ptr @.str.85, i32 0, i32 0, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 3, ptr @.str.88, ptr @.str.89, i32 0, i32 0, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 4, ptr @.str.90, ptr @.str.85, i32 0, i32 0, i8 24, i8 0 }, %struct.imx8qxp_lpcg_data { i32 5, ptr @.str.91, ptr @.str.92, i32 0, i32 65536, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 7, ptr @.str.93, ptr @.str.92, i32 0, i32 65536, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 6, ptr @.str.94, ptr @.str.92, i32 0, i32 65536, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 8, ptr @.str.95, ptr @.str.89, i32 0, i32 65536, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 9, ptr @.str.96, ptr @.str.92, i32 0, i32 65536, i8 24, i8 0 }, %struct.imx8qxp_lpcg_data { i32 10, ptr @.str.97, ptr @.str.98, i32 0, i32 131072, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 12, ptr @.str.99, ptr @.str.98, i32 0, i32 131072, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 11, ptr @.str.100, ptr @.str.98, i32 0, i32 131072, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 13, ptr @.str.101, ptr @.str.89, i32 0, i32 131072, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 14, ptr @.str.102, ptr @.str.98, i32 0, i32 131072, i8 24, i8 0 }, %struct.imx8qxp_lpcg_data { i32 15, ptr @.str.103, ptr @.str.104, i32 0, i32 196608, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 17, ptr @.str.105, ptr @.str.104, i32 0, i32 196608, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 16, ptr @.str.106, ptr @.str.104, i32 0, i32 196608, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 18, ptr @.str.107, ptr @.str.89, i32 0, i32 196608, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 19, ptr @.str.108, ptr @.str.104, i32 0, i32 196608, i8 24, i8 0 }, %struct.imx8qxp_lpcg_data { i32 20, ptr @.str.109, ptr @.str.110, i32 0, i32 262144, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 22, ptr @.str.111, ptr @.str.110, i32 0, i32 262144, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 21, ptr @.str.112, ptr @.str.110, i32 0, i32 262144, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 23, ptr @.str.113, ptr @.str.89, i32 0, i32 262144, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 24, ptr @.str.114, ptr @.str.110, i32 0, i32 262144, i8 24, i8 0 }, %struct.imx8qxp_lpcg_data { i32 25, ptr @.str.115, ptr @.str.116, i32 0, i32 327680, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 27, ptr @.str.117, ptr @.str.116, i32 0, i32 327680, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 26, ptr @.str.118, ptr @.str.116, i32 0, i32 327680, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 28, ptr @.str.119, ptr @.str.89, i32 0, i32 327680, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 29, ptr @.str.120, ptr @.str.116, i32 0, i32 327680, i8 24, i8 0 }, %struct.imx8qxp_lpcg_data { i32 30, ptr @.str.121, ptr @.str.122, i32 0, i32 393216, i8 0, i8 0 }, %struct.imx8qxp_lpcg_data { i32 32, ptr @.str.123, ptr @.str.122, i32 0, i32 393216, i8 4, i8 0 }, %struct.imx8qxp_lpcg_data { i32 31, ptr @.str.124, ptr @.str.122, i32 0, i32 393216, i8 16, i8 0 }, %struct.imx8qxp_lpcg_data { i32 33, ptr @.str.125, ptr @.str.89, i32 0, i32 393216, i8 20, i8 0 }, %struct.imx8qxp_lpcg_data { i32 34, ptr @.str.126, ptr @.str.122, i32 0, i32 393216, i8 24, i8 0 }], [216 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm0_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm0_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm0_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm0_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm0_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lsio_bus_clk_root\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm0_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm1_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm1_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm1_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm1_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm2_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm2_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm2_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm2_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm3_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm3_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm3_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm3_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm4_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm4_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm4_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm4_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm4_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm5_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm5_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm5_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm5_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm5_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm5_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm6_lpcg_ipg_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm6_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm6_lpcg_ipg_hf_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pwm6_lpcg_ipg_s_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm6_lpcg_ipg_slv_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm6_lpcg_ipg_mstr_clk\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.127 = private unnamed_addr constant [24 x i8] c"imx8qxp_lpcg_clk_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 363, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 365, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"imx8qxp_lpcg_match\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 355, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 348, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 193, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 201, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 203, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 226, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 232, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 236, i32 42 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 239, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 252, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 262, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 171, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [16 x i8] c"imx8qxp_ss_adma\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 84, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant [16 x i8] c"imx8qxp_ss_conn\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 112, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"imx8qxp_ss_lsio\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 156, i32 37 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"imx8qxp_lpcg_adma\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 60, i32 39 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 61, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 61, i32 55 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 62, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 62, i32 57 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 63, i32 33 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 64, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 64, i32 57 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 65, i32 33 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 66, i32 34 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 66, i32 57 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 67, i32 33 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 68, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 68, i32 57 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 69, i32 32 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 70, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 70, i32 45 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 71, i32 32 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 72, i32 28 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 72, i32 45 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 73, i32 32 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 74, i32 28 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 74, i32 45 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 75, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 76, i32 28 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 76, i32 45 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 78, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 79, i32 31 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 80, i32 31 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 81, i32 33 }
@___asan_gen_.313 = private unnamed_addr constant [18 x i8] c"imx8qxp_lpcg_conn\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 90, i32 39 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 91, i32 33 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 91, i32 55 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 92, i32 33 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 92, i32 55 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 93, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 93, i32 52 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 94, i32 33 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 94, i32 55 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 95, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 96, i32 30 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 97, i32 33 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 97, i32 55 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 98, i32 33 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 99, i32 30 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 100, i32 34 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 100, i32 56 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 101, i32 32 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 102, i32 33 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 103, i32 35 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 104, i32 33 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 105, i32 34 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 105, i32 56 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 106, i32 32 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 107, i32 33 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 108, i32 35 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 109, i32 33 }
@___asan_gen_.394 = private unnamed_addr constant [18 x i8] c"imx8qxp_lpcg_lsio\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 118, i32 39 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 119, i32 32 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 119, i32 53 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 120, i32 35 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 121, i32 34 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 122, i32 36 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 122, i32 61 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 123, i32 37 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 124, i32 32 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 124, i32 53 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 125, i32 35 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 126, i32 34 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 127, i32 36 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 128, i32 37 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 129, i32 32 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 129, i32 53 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 130, i32 35 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 131, i32 34 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 132, i32 36 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 133, i32 37 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 134, i32 32 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 134, i32 53 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 135, i32 35 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 136, i32 34 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 137, i32 36 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 138, i32 37 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 139, i32 32 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 139, i32 53 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 140, i32 35 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 141, i32 34 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 142, i32 36 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 143, i32 37 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 144, i32 32 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 144, i32 53 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 145, i32 35 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 146, i32 34 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 147, i32 36 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 148, i32 37 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 149, i32 32 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 149, i32 53 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 150, i32 35 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 151, i32 34 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 152, i32 36 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [38 x i8] c"../drivers/clk/imx/clk-imx8qxp-lpcg.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 153, i32 37 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_imx8qxp_lpcg_clk_driver_exit, ptr @__initcall__kmod_clk_imx_lpcg_scu__184_373_imx8qxp_lpcg_clk_driver_init6, ptr @imx8qxp_lpcg_clk_driver_exit, ptr @imx8qxp_lpcg_clk_probe._entry, ptr @imx8qxp_lpcg_clk_probe._entry_ptr, ptr @imx_lpcg_of_clk_src_get._entry, ptr @imx_lpcg_of_clk_src_get._entry_ptr, ptr @imx_lpcg_parse_clks_from_dt._entry, ptr @imx_lpcg_parse_clks_from_dt._entry.10, ptr @imx_lpcg_parse_clks_from_dt._entry.13, ptr @imx_lpcg_parse_clks_from_dt._entry.17, ptr @imx_lpcg_parse_clks_from_dt._entry.20, ptr @imx_lpcg_parse_clks_from_dt._entry.24, ptr @imx_lpcg_parse_clks_from_dt._entry_ptr, ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.12, ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.15, ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.19, ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.23, ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.26, ptr @imx8qxp_lpcg_clk_driver, ptr @.str, ptr @imx8qxp_lpcg_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @imx8qxp_ss_adma, ptr @imx8qxp_ss_conn, ptr @imx8qxp_ss_lsio, ptr @imx8qxp_lpcg_adma, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @imx8qxp_lpcg_conn, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @imx8qxp_lpcg_lsio, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_lpcg_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_lpcg_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_lpcg_clk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_parse_clks_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_parse_clks_from_dt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_parse_clks_from_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_parse_clks_from_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_parse_clks_from_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_parse_clks_from_dt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_lpcg_of_clk_src_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_ss_adma to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_ss_conn to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_ss_lsio to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_lpcg_adma to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_lpcg_conn to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_lpcg_lsio to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8qxp_lpcg_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8qxp_lpcg_clk_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8qxp_lpcg_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8qxp_lpcg_clk_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8qxp_lpcg_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %output_names.i = alloca [8 x ptr], align 4
  %parent_names.i = alloca [8 x ptr], align 4
  %bit_offset.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %output_names.i) #6
  %2 = call ptr @memset(ptr %output_names.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent_names.i) #6
  %3 = call ptr @memset(ptr %parent_names.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bit_offset.i) #6
  %4 = call ptr @memset(ptr %bit_offset.i, i32 255, i32 32)
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.imx_lpcg_parse_clks_from_dt.exit.thread_crit_edge, label %if.end.i

entry.imx_lpcg_parse_clks_from_dt.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_lpcg_parse_clks_from_dt.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call2.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call1.i) #6
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %imx_lpcg_parse_clks_from_dt.exit.thread110, label %if.end6.i

imx_lpcg_parse_clks_from_dt.exit.thread110:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bit_offset.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_names.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %output_names.i) #6
  br label %if.end

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #9
  br label %imx_lpcg_parse_clks_from_dt.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %call.i160.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #6
  %tobool14.not.i = icmp eq ptr %call.i160.i, null
  br i1 %tobool14.not.i, label %if.end10.i.imx_lpcg_parse_clks_from_dt.exit.thread_crit_edge, label %if.end16.i

if.end10.i.imx_lpcg_parse_clks_from_dt.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_lpcg_parse_clks_from_dt.exit.thread

if.end16.i:                                       ; preds = %if.end10.i
  %5 = ptrtoint ptr %call.i160.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %call.i160.i, align 4
  %hws.i = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i160.i, i32 0, i32 1
  %call.i161.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %bit_offset.i, i32 noundef %call.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %cmp19.i = icmp slt i32 %call.i161.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %imx_lpcg_parse_clks_from_dt.exit.thread

if.end25.i:                                       ; preds = %if.end16.i
  %call27.i = call i32 @of_clk_parent_fill(ptr noundef %1, ptr noundef nonnull %parent_names.i, i32 noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i, i32 %call.i.i)
  %cmp28.not.i = icmp eq i32 %call27.i, %call.i.i
  br i1 %cmp28.not.i, label %if.end34.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %imx_lpcg_parse_clks_from_dt.exit

if.end34.i:                                       ; preds = %if.end25.i
  %call.i162.i = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %output_names.i, i32 noundef %call.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i162.i, i32 %call.i.i)
  %cmp37.not.i = icmp eq i32 %call.i162.i, %call.i.i
  br i1 %cmp37.not.i, label %if.end43.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %imx_lpcg_parse_clks_from_dt.exit.thread

if.end43.i:                                       ; preds = %if.end34.i
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %6 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !278
  %call.i163.i = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 500) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  call void @pm_runtime_enable(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp50172.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp50172.not.i, label %if.end43.i.for.end.i_crit_edge, label %if.end43.i.for.body.i_crit_edge

if.end43.i.for.body.i_crit_edge:                  ; preds = %if.end43.i
  br label %for.body.i

if.end43.i.for.end.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end43.i.for.body.i_crit_edge
  %i.0173.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end43.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr %bit_offset.i, i32 0, i32 %i.0173.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %8)
  %cmp51.i = icmp ugt i32 %8, 35
  br i1 %cmp51.i, label %do.end55.i, label %if.end57.i

do.end55.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %i.0173.i) #9
  br label %unreg.i

if.end57.i:                                       ; preds = %for.body.i
  %div159.i = lshr i32 %8, 2
  %arrayidx59.i = getelementptr [8 x ptr], ptr %output_names.i, i32 0, i32 %i.0173.i
  %9 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx59.i, align 4
  %arrayidx60.i = getelementptr [8 x ptr], ptr %parent_names.i, i32 0, i32 %i.0173.i
  %11 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx60.i, align 4
  %conv.i = trunc i32 %8 to i8
  %call.i164.i = call ptr @__imx_clk_lpcg_scu(ptr noundef %dev1, ptr noundef %10, ptr noundef %12, i32 noundef 0, ptr noundef %call2.i, i8 noundef zeroext %conv.i, i1 noundef zeroext false) #6
  %arrayidx63.i = getelementptr ptr, ptr %hws.i, i32 %div159.i
  %13 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i164.i, ptr %arrayidx63.i, align 4
  %cmp.i165.i = icmp ugt ptr %call.i164.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165.i, label %do.end69.i, label %for.inc.i

do.end69.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx63.i.le = getelementptr ptr, ptr %hws.i, i32 %div159.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %div159.i) #9
  %14 = ptrtoint ptr %arrayidx63.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx63.i.le, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %unreg.i

for.inc.i:                                        ; preds = %if.end57.i
  %inc.i = add nuw nsw i32 %i.0173.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end43.i.for.end.i_crit_edge
  %call75.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @imx_lpcg_of_clk_src_get, ptr noundef nonnull %call.i160.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %imx_lpcg_parse_clks_from_dt.exit.thread92, label %for.end.i.unreg.i_crit_edge

for.end.i.unreg.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unreg.i

imx_lpcg_parse_clks_from_dt.exit.thread92:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i166.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i166.i, ptr %last_busy.i.i, align 8
  %call.i167.i = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bit_offset.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_names.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %output_names.i) #6
  br label %cleanup

unreg.i:                                          ; preds = %for.end.i.unreg.i_crit_edge, %do.end69.i, %do.end55.i
  %i.0170.i = phi i32 [ %i.0173.i, %do.end55.i ], [ %i.0173.i, %do.end69.i ], [ %call.i.i, %for.end.i.unreg.i_crit_edge ]
  %ret.0.i = phi i32 [ -22, %do.end55.i ], [ %16, %do.end69.i ], [ %call75.i, %for.end.i.unreg.i_crit_edge ]
  %dec174.i = add i32 %i.0170.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec174.i)
  %cmp82175.i = icmp sgt i32 %dec174.i, -1
  br i1 %cmp82175.i, label %unreg.i.while.body.i_crit_edge, label %unreg.i.while.end.i_crit_edge

unreg.i.while.end.i_crit_edge:                    ; preds = %unreg.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

unreg.i.while.body.i_crit_edge:                   ; preds = %unreg.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end90.i.while.body.i_crit_edge, %unreg.i.while.body.i_crit_edge
  %dec176.i = phi i32 [ %dec.i, %if.end90.i.while.body.i_crit_edge ], [ %dec174.i, %unreg.i.while.body.i_crit_edge ]
  %arrayidx84.i = getelementptr [8 x i32], ptr %bit_offset.i, i32 0, i32 %dec176.i
  %18 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx84.i, align 4
  %div85158.i = lshr i32 %19, 2
  %arrayidx86.i = getelementptr ptr, ptr %hws.i, i32 %div85158.i
  %20 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx86.i, align 4
  %tobool87.not.i = icmp eq ptr %21, null
  br i1 %tobool87.not.i, label %while.body.i.if.end90.i_crit_edge, label %if.then88.i

while.body.i.if.end90.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.then88.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @imx_clk_lpcg_scu_unregister(ptr noundef nonnull %21) #6
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then88.i, %while.body.i.if.end90.i_crit_edge
  %dec.i = add nsw i32 %dec176.i, -1
  %cmp82.i = icmp sgt i32 %dec176.i, 0
  br i1 %cmp82.i, label %if.end90.i.while.body.i_crit_edge, label %if.end90.i.while.end.i_crit_edge

if.end90.i.while.end.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end90.i.while.body.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end90.i.while.end.i_crit_edge, %unreg.i.while.end.i_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %imx_lpcg_parse_clks_from_dt.exit

imx_lpcg_parse_clks_from_dt.exit.thread:          ; preds = %do.end41.i, %do.end23.i, %if.end10.i.imx_lpcg_parse_clks_from_dt.exit.thread_crit_edge, %do.end.i, %entry.imx_lpcg_parse_clks_from_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bit_offset.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_names.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %output_names.i) #6
  br label %if.end

imx_lpcg_parse_clks_from_dt.exit:                 ; preds = %while.end.i, %do.end32.i
  %retval.0.i = phi i32 [ %call.i.i, %do.end32.i ], [ %ret.0.i, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bit_offset.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent_names.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %output_names.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %imx_lpcg_parse_clks_from_dt.exit.cleanup_crit_edge, label %imx_lpcg_parse_clks_from_dt.exit.if.end_crit_edge

imx_lpcg_parse_clks_from_dt.exit.if.end_crit_edge: ; preds = %imx_lpcg_parse_clks_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

imx_lpcg_parse_clks_from_dt.exit.cleanup_crit_edge: ; preds = %imx_lpcg_parse_clks_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %imx_lpcg_parse_clks_from_dt.exit.if.end_crit_edge, %imx_lpcg_parse_clks_from_dt.exit.thread, %imx_lpcg_parse_clks_from_dt.exit.thread110
  %call2 = call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %22 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %23
  %add.i = add i32 %sub.i, %25
  %call11 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %23, i32 noundef %add.i) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %num_max = getelementptr inbounds %struct.imx8qxp_ss_lpcg, ptr %call2, i32 0, i32 2
  %26 = ptrtoint ptr %num_max to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_max, align 1
  %conv = zext i8 %27 to i32
  %28 = shl nuw nsw i32 %conv, 2
  %spec.select.i95 = add nuw nsw i32 %28, 4
  %call.i87 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i95, i32 noundef 3520) #6
  %tobool18.not = icmp eq ptr %call.i87, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %29 = ptrtoint ptr %num_max to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_max, align 1
  %conv22 = zext i8 %30 to i32
  %31 = ptrtoint ptr %call.i87 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv22, ptr %call.i87, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i87, i32 0, i32 1
  %num_lpcg = getelementptr inbounds %struct.imx8qxp_ss_lpcg, ptr %call2, i32 0, i32 1
  %32 = ptrtoint ptr %num_lpcg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_lpcg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp102.not = icmp eq i8 %33, 0
  br i1 %cmp102.not, label %if.end20.for.cond29.preheader_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

if.end20.for.cond29.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond29.preheader

for.cond29.preheaderthread-pre-split:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call.i87 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %call.i87, align 4
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.cond29.preheaderthread-pre-split, %if.end20.for.cond29.preheader_crit_edge
  %35 = phi i32 [ %.pr, %for.cond29.preheaderthread-pre-split ], [ %conv22, %if.end20.for.cond29.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp31104.not = icmp eq i32 %35, 0
  br i1 %cmp31104.not, label %for.cond29.preheader.for.end43_crit_edge, label %for.cond29.preheader.for.body33_crit_edge

for.cond29.preheader.for.body33_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body33

for.cond29.preheader.for.end43_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end20.for.body_crit_edge
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end20.for.body_crit_edge ]
  %36 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call2, align 4
  %add.ptr = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103
  %name = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103, i32 1
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  %parent = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103, i32 2
  %40 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent, align 4
  %flags = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103, i32 3
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %offset = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103, i32 4
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %add.ptr26 = getelementptr i8, ptr %call11, i32 %45
  %bit_idx = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103, i32 5
  %46 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bit_idx, align 4
  %hw_gate = getelementptr %struct.imx8qxp_lpcg_data, ptr %37, i32 %i.0103, i32 6
  %48 = ptrtoint ptr %hw_gate to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hw_gate, align 1, !range !279
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool27 = icmp ne i8 %49, 0
  %call.i88 = call ptr @__imx_clk_lpcg_scu(ptr noundef null, ptr noundef %39, ptr noundef %41, i32 noundef %43, ptr noundef %add.ptr26, i8 noundef zeroext %47, i1 noundef zeroext %tobool27) #6
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr, align 4
  %arrayidx = getelementptr ptr, ptr %hws, i32 %51
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i88, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0103, 1
  %53 = ptrtoint ptr %num_lpcg to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_lpcg, align 4
  %conv23 = zext i8 %54 to i32
  %cmp = icmp ult i32 %inc, %conv23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond29.preheaderthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body33:                                       ; preds = %for.inc41.for.body33_crit_edge, %for.cond29.preheader.for.body33_crit_edge
  %i.1105 = phi i32 [ %inc42, %for.inc41.for.body33_crit_edge ], [ 0, %for.cond29.preheader.for.body33_crit_edge ]
  %arrayidx34 = getelementptr ptr, ptr %hws, i32 %i.1105
  %55 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx34, align 4
  %cmp.i89 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %do.end, label %for.body33.for.inc41_crit_edge

for.body33.for.inc41_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc41

do.end:                                           ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %56 to i32
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.1105, i32 noundef %57) #9
  br label %for.inc41

for.inc41:                                        ; preds = %do.end, %for.body33.for.inc41_crit_edge
  %inc42 = add nuw i32 %i.1105, 1
  %58 = ptrtoint ptr %call.i87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call.i87, align 4
  %cmp31 = icmp ult i32 %inc42, %59
  br i1 %cmp31, label %for.inc41.for.body33_crit_edge, label %for.inc41.for.end43_crit_edge

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end43

for.inc41.for.body33_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %for.cond29.preheader.for.end43_crit_edge
  %call44 = call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i87) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %imx_lpcg_parse_clks_from_dt.exit.cleanup_crit_edge, %imx_lpcg_parse_clks_from_dt.exit.thread92
  %retval.0 = phi i32 [ %call44, %for.end43 ], [ 0, %imx_lpcg_parse_clks_from_dt.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %imx_lpcg_parse_clks_from_dt.exit.thread92 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx_lpcg_of_clk_src_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %div7 = lshr i32 %1, 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %3)
  %cmp.not = icmp ult i32 %div7, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %div7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr %struct.clk_hw_onecell_data, ptr %data, i32 0, i32 1, i32 %div7
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %5, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_clk_lpcg_scu_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__imx_clk_lpcg_scu(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275, !276}
!llvm.ident = !{!277}

!0 = !{ptr @__initcall__kmod_clk_imx_lpcg_scu__184_373_imx8qxp_lpcg_clk_driver_init6, !1, !"__initcall__kmod_clk_imx_lpcg_scu__184_373_imx8qxp_lpcg_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 373, i32 1}
!2 = !{ptr @__exitcall_imx8qxp_lpcg_clk_driver_exit, !1, !"__exitcall_imx8qxp_lpcg_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author185, !4, !"__UNIQUE_ID_author185", i1 false, i1 false}
!4 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 375, i32 1}
!5 = !{ptr @__UNIQUE_ID_description186, !6, !"__UNIQUE_ID_description186", i1 false, i1 false}
!6 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 376, i32 1}
!7 = !{ptr @__UNIQUE_ID_file187, !8, !"__UNIQUE_ID_file187", i1 false, i1 false}
!8 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 377, i32 1}
!9 = !{ptr @__UNIQUE_ID_license188, !8, !"__UNIQUE_ID_license188", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 365, i32 11}
!12 = !{ptr @imx8qxp_lpcg_clk_driver, !13, !"imx8qxp_lpcg_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 363, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 348, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @imx8qxp_lpcg_clk_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @imx8qxp_lpcg_clk_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 193, i32 35}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 201, i32 42}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 203, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx_lpcg_parse_clks_from_dt._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx_lpcg_parse_clks_from_dt._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 226, i32 3}
!33 = !{ptr @imx_lpcg_parse_clks_from_dt._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 232, i32 3}
!37 = !{ptr @imx_lpcg_parse_clks_from_dt._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 236, i32 42}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 239, i32 3}
!43 = !{ptr @imx_lpcg_parse_clks_from_dt._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 252, i32 4}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @imx_lpcg_parse_clks_from_dt._entry.20, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 262, i32 4}
!52 = !{ptr @imx_lpcg_parse_clks_from_dt._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_lpcg_parse_clks_from_dt._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 171, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @imx_lpcg_of_clk_src_get._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @imx_lpcg_of_clk_src_get._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @imx8qxp_lpcg_match, !60, !"imx8qxp_lpcg_match", i1 false, i1 false}
!60 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 355, i32 34}
!61 = !{ptr @imx8qxp_ss_adma, !62, !"imx8qxp_ss_adma", i1 false, i1 false}
!62 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 84, i32 37}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 61, i32 33}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 61, i32 55}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 62, i32 34}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 62, i32 57}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 63, i32 33}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 64, i32 34}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 64, i32 57}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 65, i32 33}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 66, i32 34}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 66, i32 57}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 67, i32 33}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 68, i32 34}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 68, i32 57}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 69, i32 32}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 70, i32 28}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 70, i32 45}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 71, i32 32}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 72, i32 28}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 72, i32 45}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 73, i32 32}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 74, i32 28}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 74, i32 45}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 75, i32 32}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 76, i32 28}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 76, i32 45}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 78, i32 32}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 79, i32 31}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 80, i32 31}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 81, i32 33}
!121 = !{ptr @imx8qxp_lpcg_adma, !122, !"imx8qxp_lpcg_adma", i1 false, i1 false}
!122 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 60, i32 39}
!123 = !{ptr @imx8qxp_ss_conn, !124, !"imx8qxp_ss_conn", i1 false, i1 false}
!124 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 112, i32 37}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 91, i32 33}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 91, i32 55}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 92, i32 33}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 92, i32 55}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 93, i32 30}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 93, i32 52}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 94, i32 33}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 94, i32 55}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 95, i32 33}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 96, i32 30}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 97, i32 33}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 97, i32 55}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 98, i32 33}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 99, i32 30}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 100, i32 34}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 100, i32 56}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 101, i32 32}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 102, i32 33}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 103, i32 35}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 104, i32 33}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 105, i32 34}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 105, i32 56}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 106, i32 32}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 107, i32 33}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 108, i32 35}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 109, i32 33}
!177 = !{ptr @imx8qxp_lpcg_conn, !178, !"imx8qxp_lpcg_conn", i1 false, i1 false}
!178 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 90, i32 39}
!179 = !{ptr @imx8qxp_ss_lsio, !180, !"imx8qxp_ss_lsio", i1 false, i1 false}
!180 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 156, i32 37}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 119, i32 32}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 119, i32 53}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 120, i32 35}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 121, i32 34}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 122, i32 36}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 122, i32 61}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 123, i32 37}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 124, i32 32}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 124, i32 53}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 125, i32 35}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 126, i32 34}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 127, i32 36}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 128, i32 37}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 129, i32 32}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 129, i32 53}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 130, i32 35}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 131, i32 34}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 132, i32 36}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 133, i32 37}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 134, i32 32}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 134, i32 53}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 135, i32 35}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 136, i32 34}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 137, i32 36}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 138, i32 37}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 139, i32 32}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 139, i32 53}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 140, i32 35}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 141, i32 34}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 142, i32 36}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 143, i32 37}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 144, i32 32}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 144, i32 53}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 145, i32 35}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 146, i32 34}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 147, i32 36}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 148, i32 37}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 149, i32 32}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 149, i32 53}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 150, i32 35}
!261 = !{ptr @.str.124, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 151, i32 34}
!263 = !{ptr @.str.125, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 152, i32 36}
!265 = !{ptr @.str.126, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 153, i32 37}
!267 = !{ptr @imx8qxp_lpcg_lsio, !268, !"imx8qxp_lpcg_lsio", i1 false, i1 false}
!268 = !{!"../drivers/clk/imx/clk-imx8qxp-lpcg.c", i32 118, i32 39}
!269 = !{i32 1, !"wchar_size", i32 2}
!270 = !{i32 1, !"min_enum_size", i32 4}
!271 = !{i32 8, !"branch-target-enforcement", i32 0}
!272 = !{i32 8, !"sign-return-address", i32 0}
!273 = !{i32 8, !"sign-return-address-all", i32 0}
!274 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!275 = !{i32 7, !"uwtable", i32 1}
!276 = !{i32 7, !"frame-pointer", i32 2}
!277 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!278 = !{i64 2148281238, i64 2148281264, i64 2148281293, i64 2148281327, i64 2148281358, i64 2148281381}
!279 = !{i8 0, i8 2}
