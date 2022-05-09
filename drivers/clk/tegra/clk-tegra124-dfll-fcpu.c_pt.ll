; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra124-dfll-fcpu.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dfll_fcpu_data = type { ptr, i32, ptr, i32 }
%struct.cvb_table_freq_entry = type { i32, %struct.cvb_coefficients }
%struct.cvb_coefficients = type { i32, i32, i32 }
%struct.cvb_cpu_dfll_data = type { i32, i32, i32, i32 }
%struct.rail_alignment = type { i32, i32 }
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
%struct.tegra_dfll_soc_data = type { ptr, i32, ptr, %struct.rail_alignment, ptr, ptr, ptr }

@__initcall__kmod_clk_tegra124_dfll_fcpu__288_646_tegra124_dfll_fcpu_driver_init6 = internal global ptr @tegra124_dfll_fcpu_driver_init, section ".initcall6.init", align 4
@tegra124_dfll_fcpu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra124_dfll_fcpu_probe, ptr @tegra124_dfll_fcpu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra124_dfll_fcpu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra124_dfll_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra124-dfll\00", [18 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dfll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_dfll_fcpu_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dfll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dfll_fcpu_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra124_dfll_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_dfll_suspend, ptr @tegra_dfll_resume, ptr @tegra_dfll_suspend, ptr @tegra_dfll_resume, ptr @tegra_dfll_suspend, ptr @tegra_dfll_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dfll_runtime_suspend, ptr @tegra_dfll_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra124_dfll_fcpu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unknown max CPU freq for speedo_id=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra124_dfll_fcpu_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/clk/tegra/clk-tegra124-dfll-fcpu.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_probe._entry_ptr = internal global ptr @tegra124_dfll_fcpu_probe._entry, section ".printk_index", align 4
@tegra124_dfll_fcpu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no CPU0 device\0A\00", [16 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_probe._entry_ptr.8 = internal global ptr @tegra124_dfll_fcpu_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,pwm-to-pmic\00", [45 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't add OPP table: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_probe._entry_ptr.12 = internal global ptr @tegra124_dfll_fcpu_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nvidia,pwm-voltage-step-microvolts\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,pwm-min-microvolts\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-cpu\00", [24 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to unregister DFLL: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra124_dfll_fcpu_remove\00", [38 x i8] zeroinitializer }, align 32
@tegra124_dfll_fcpu_remove._entry_ptr = internal global ptr @tegra124_dfll_fcpu_remove._entry, section ".printk_index", align 4
@tegra124_dfll_fcpu_data = internal constant { %struct.dfll_fcpu_data, [16 x i8] } { %struct.dfll_fcpu_data { ptr @tegra124_cpu_max_freq_table, i32 4, ptr @tegra124_cpu_cvb_tables, i32 1 }, [16 x i8] zeroinitializer }, align 32
@tegra210_dfll_fcpu_data = internal constant { %struct.dfll_fcpu_data, [16 x i8] } { %struct.dfll_fcpu_data { ptr @tegra210_cpu_max_freq_table, i32 11, ptr @tegra210_cpu_cvb_tables, i32 21 }, [16 x i8] zeroinitializer }, align 32
@tegra124_cpu_max_freq_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2014500000, i32 -1974467296, i32 2116500000, i32 -1770467296], [16 x i8] zeroinitializer }, align 32
@tegra124_cpu_cvb_tables = internal constant { [1 x { i32, i32, i32, i32, i32, i32, <{ [24 x %struct.cvb_table_freq_entry], [16 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }], [184 x i8] } { [1 x { i32, i32, i32, i32, i32, i32, <{ [24 x %struct.cvb_table_freq_entry], [16 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }] [{ i32, i32, i32, i32, i32, i32, <{ [24 x %struct.cvb_table_freq_entry], [16 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 -1, i32 -1, i32 900, i32 1260, i32 100, i32 1000, <{ [24 x %struct.cvb_table_freq_entry], [16 x %struct.cvb_table_freq_entry] }> <{ [24 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1112619, i32 -29295, i32 402 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1150460, i32 -30585, i32 402 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1190122, i32 -31865, i32 402 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1231606, i32 -33155, i32 402 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1274912, i32 -34435, i32 402 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1320040, i32 -35725, i32 402 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1366990, i32 -37005, i32 402 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1415762, i32 -38295, i32 402 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1466355, i32 -39575, i32 402 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1518771, i32 -40865, i32 402 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1573009, i32 -42145, i32 402 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1629068, i32 -43435, i32 402 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1686950, i32 -44715, i32 402 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1746653, i32 -46005, i32 402 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1808179, i32 -47285, i32 402 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1871526, i32 -48575, i32 402 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1936696, i32 -49855, i32 402 } }, %struct.cvb_table_freq_entry { i32 1938000000, %struct.cvb_coefficients { i32 2003687, i32 -51145, i32 402 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 2054787, i32 -52095, i32 402 } }, %struct.cvb_table_freq_entry { i32 2116500000, %struct.cvb_coefficients { i32 2124957, i32 -53385, i32 402 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 2196950, i32 -54665, i32 402 } }, %struct.cvb_table_freq_entry { i32 -1974467296, %struct.cvb_coefficients { i32 2270765, i32 -55955, i32 402 } }, %struct.cvb_table_freq_entry { i32 -1872467296, %struct.cvb_coefficients { i32 2346401, i32 -57235, i32 402 } }, %struct.cvb_table_freq_entry { i32 -1770467296, %struct.cvb_coefficients { i32 2437299, i32 -58535, i32 402 } }], [16 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 5251327, i32 5259519, i32 96, i32 0 } }], [184 x i8] zeroinitializer }, align 32
@tegra210_cpu_max_freq_table = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1912500000, i32 1912500000, i32 -2076467296, i32 1785000000, i32 1632000000, i32 1912500000, i32 2014500000, i32 1734000000, i32 1683000000, i32 1555500000, i32 1504500000], [52 x i8] zeroinitializer }, align 32
@tegra210_cpu_cvb_tables = internal global { <{ { i32, i32, i32, i32, i32, i32, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } }>, [3576 x i8] } { <{ { i32, i32, i32, i32, i32, i32, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } }> <{ { i32, i32, i32, i32, i32, i32, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 10, i32 0, i32 840, i32 1120, i32 100, i32 1000, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }> <{ [14 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 742283, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 776249, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 810215, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 844181, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 878147, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 912113, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 946079, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 980045, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1014011, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1047977, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1081943, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1479000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1504500000, %struct.cvb_coefficients { i32 1120000, i32 0, i32 0 } }], [26 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 10, i32 1, i32 840, i32 1120, i32 100, i32 1000, <{ [14 x %struct.cvb_table_freq_entry], [26 x %struct.cvb_table_freq_entry] }> <{ [14 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 742283, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 776249, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 810215, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 844181, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 878147, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 912113, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 946079, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 980045, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1014011, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1047977, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1081943, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1479000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1504500000, %struct.cvb_coefficients { i32 1120000, i32 0, i32 0 } }], [26 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 9, i32 0, i32 900, i32 1162, i32 100, i32 1000, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }> <{ [15 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 742283, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 776249, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 810215, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 844181, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 878147, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 912113, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 946079, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 980045, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1014011, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1047977, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1081943, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1479000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1555500000, %struct.cvb_coefficients { i32 1162000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1683000000, %struct.cvb_coefficients { i32 1195000, i32 0, i32 0 } }], [25 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 9, i32 1, i32 900, i32 1162, i32 100, i32 1000, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }> <{ [15 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 742283, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 776249, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 810215, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 844181, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 878147, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 912113, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 946079, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 980045, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1014011, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1047977, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1081943, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1479000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1555500000, %struct.cvb_coefficients { i32 1162000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1683000000, %struct.cvb_coefficients { i32 1195000, i32 0, i32 0 } }], [25 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 8, i32 0, i32 900, i32 1195, i32 100, i32 1000, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }> <{ [15 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 742283, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 776249, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 810215, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 844181, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 878147, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 912113, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 946079, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 980045, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1014011, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1047977, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1081943, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1479000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1555500000, %struct.cvb_coefficients { i32 1162000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1683000000, %struct.cvb_coefficients { i32 1195000, i32 0, i32 0 } }], [25 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 8, i32 1, i32 900, i32 1195, i32 100, i32 1000, <{ [15 x %struct.cvb_table_freq_entry], [25 x %struct.cvb_table_freq_entry] }> <{ [15 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 742283, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 776249, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 810215, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 844181, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 878147, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 912113, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 946079, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 980045, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1014011, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1047977, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1081943, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1479000000, %struct.cvb_coefficients { i32 1090000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1555500000, %struct.cvb_coefficients { i32 1162000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1683000000, %struct.cvb_coefficients { i32 1195000, i32 0, i32 0 } }], [25 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 7, i32 0, i32 841, i32 1227, i32 100, i32 1000, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }> <{ [16 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 734429, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 768191, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 801953, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 835715, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 869477, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 903239, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 937001, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 970763, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1004525, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1038287, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1072049, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1105811, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1130000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1555500000, %struct.cvb_coefficients { i32 1130000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1170000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1227500, i32 0, i32 0 } }], [24 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 7, i32 1, i32 841, i32 1227, i32 100, i32 1000, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }> <{ [16 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 734429, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 768191, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 801953, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 835715, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 869477, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 903239, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 937001, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 970763, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1004525, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1038287, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1072049, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1105811, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1130000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1555500000, %struct.cvb_coefficients { i32 1130000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1170000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1227500, i32 0, i32 0 } }], [24 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 6, i32 0, i32 870, i32 1150, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 0, i32 33591769, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 6, i32 1, i32 870, i32 1150, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 0, i32 39125456, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 5, i32 0, i32 818, i32 1227, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 5, i32 1, i32 818, i32 1227, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 39125456, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 4, i32 -1, i32 918, i32 1113, i32 100, i32 1000, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }> <{ [16 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1250024, i32 -39785, i32 565 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1297556, i32 -41145, i32 565 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1346718, i32 -42505, i32 565 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1397511, i32 -43855, i32 565 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1449933, i32 -45215, i32 565 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1503986, i32 -46575, i32 565 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1559669, i32 -47935, i32 565 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1616982, i32 -49295, i32 565 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1675926, i32 -50645, i32 565 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1736500, i32 -52005, i32 565 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1798704, i32 -53365, i32 565 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1862538, i32 -54725, i32 565 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1928003, i32 -56085, i32 565 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1995097, i32 -57435, i32 565 } }, %struct.cvb_table_freq_entry { i32 1606500000, %struct.cvb_coefficients { i32 2046149, i32 -58445, i32 565 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 2063822, i32 -58795, i32 565 } }], [24 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 0, i32 24580541, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 3, i32 0, i32 825, i32 1227, i32 100, i32 1000, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }> <{ [16 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 721094, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 754040, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 786986, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 819932, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 852878, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 885824, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 918770, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 915716, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 984662, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1017608, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1050554, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1083500, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1116446, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1581000000, %struct.cvb_coefficients { i32 1130000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1683000000, %struct.cvb_coefficients { i32 1168000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1785000000, %struct.cvb_coefficients { i32 1227500, i32 0, i32 0 } }], [24 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 3, i32 1, i32 825, i32 1227, i32 100, i32 1000, <{ [16 x %struct.cvb_table_freq_entry], [24 x %struct.cvb_table_freq_entry] }> <{ [16 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 721094, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 754040, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 786986, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 819932, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 852878, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 885824, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 918770, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 915716, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 984662, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1017608, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1050554, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1083500, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1116446, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1581000000, %struct.cvb_coefficients { i32 1130000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1683000000, %struct.cvb_coefficients { i32 1168000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 1785000000, %struct.cvb_coefficients { i32 1227500, i32 0, i32 0 } }], [24 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 39125456, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 2, i32 0, i32 870, i32 1227, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 0, i32 33591769, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 2, i32 1, i32 870, i32 1227, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 0, i32 39125456, i32 0 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 1, i32 0, i32 837, i32 1227, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 1, i32 1, i32 837, i32 1227, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 39125456, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 0, i32 0, i32 850, i32 1170, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 33591769, i32 864 } }, { i32, i32, i32, i32, i32, i32, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }>, %struct.cvb_cpu_dfll_data } { i32 0, i32 1, i32 850, i32 1170, i32 100, i32 1000, <{ [20 x %struct.cvb_table_freq_entry], [20 x %struct.cvb_table_freq_entry] }> <{ [20 x %struct.cvb_table_freq_entry] [%struct.cvb_table_freq_entry { i32 204000000, %struct.cvb_coefficients { i32 1007452, i32 -23865, i32 370 } }, %struct.cvb_table_freq_entry { i32 306000000, %struct.cvb_coefficients { i32 1052709, i32 -24875, i32 370 } }, %struct.cvb_table_freq_entry { i32 408000000, %struct.cvb_coefficients { i32 1099069, i32 -25895, i32 370 } }, %struct.cvb_table_freq_entry { i32 510000000, %struct.cvb_coefficients { i32 1146534, i32 -26905, i32 370 } }, %struct.cvb_table_freq_entry { i32 612000000, %struct.cvb_coefficients { i32 1195102, i32 -27915, i32 370 } }, %struct.cvb_table_freq_entry { i32 714000000, %struct.cvb_coefficients { i32 1244773, i32 -28925, i32 370 } }, %struct.cvb_table_freq_entry { i32 816000000, %struct.cvb_coefficients { i32 1295549, i32 -29935, i32 370 } }, %struct.cvb_table_freq_entry { i32 918000000, %struct.cvb_coefficients { i32 1347428, i32 -30955, i32 370 } }, %struct.cvb_table_freq_entry { i32 1020000000, %struct.cvb_coefficients { i32 1400411, i32 -31965, i32 370 } }, %struct.cvb_table_freq_entry { i32 1122000000, %struct.cvb_coefficients { i32 1454497, i32 -32975, i32 370 } }, %struct.cvb_table_freq_entry { i32 1224000000, %struct.cvb_coefficients { i32 1509687, i32 -33985, i32 370 } }, %struct.cvb_table_freq_entry { i32 1326000000, %struct.cvb_coefficients { i32 1565981, i32 -35005, i32 370 } }, %struct.cvb_table_freq_entry { i32 1428000000, %struct.cvb_coefficients { i32 1623379, i32 -36015, i32 370 } }, %struct.cvb_table_freq_entry { i32 1530000000, %struct.cvb_coefficients { i32 1681880, i32 -37025, i32 370 } }, %struct.cvb_table_freq_entry { i32 1632000000, %struct.cvb_coefficients { i32 1741485, i32 -38035, i32 370 } }, %struct.cvb_table_freq_entry { i32 1734000000, %struct.cvb_coefficients { i32 1802194, i32 -39055, i32 370 } }, %struct.cvb_table_freq_entry { i32 1836000000, %struct.cvb_coefficients { i32 1864006, i32 -40065, i32 370 } }, %struct.cvb_table_freq_entry { i32 1912500000, %struct.cvb_coefficients { i32 1910780, i32 -40815, i32 370 } }, %struct.cvb_table_freq_entry { i32 2014500000, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }, %struct.cvb_table_freq_entry { i32 -2076467296, %struct.cvb_coefficients { i32 1227000, i32 0, i32 0 } }], [20 x %struct.cvb_table_freq_entry] zeroinitializer }>, %struct.cvb_cpu_dfll_data { i32 -1388289, i32 -1388289, i32 39125456, i32 864 } } }>, [3576 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [26 x i8] c"tegra124_dfll_fcpu_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 637, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 641, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"tegra124_dfll_fcpu_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 511, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"tegra124_dfll_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 631, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 569, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 580, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 584, i32 47 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 601, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 527, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 532, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 540, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 621, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"tegra124_dfll_fcpu_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 497, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"tegra210_dfll_fcpu_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 504, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"tegra124_cpu_max_freq_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 32, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"tegra124_cpu_cvb_tables\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 39, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"tegra210_cpu_max_freq_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 82, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"tegra210_cpu_cvb_tables\00", align 1
@___asan_gen_.99 = private constant [46 x i8] c"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 235, i32 25 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_clk_tegra124_dfll_fcpu__288_646_tegra124_dfll_fcpu_driver_init6, ptr @tegra124_dfll_fcpu_probe._entry, ptr @tegra124_dfll_fcpu_probe._entry.10, ptr @tegra124_dfll_fcpu_probe._entry.6, ptr @tegra124_dfll_fcpu_probe._entry_ptr, ptr @tegra124_dfll_fcpu_probe._entry_ptr.12, ptr @tegra124_dfll_fcpu_probe._entry_ptr.8, ptr @tegra124_dfll_fcpu_remove._entry, ptr @tegra124_dfll_fcpu_remove._entry_ptr, ptr @tegra124_dfll_fcpu_driver, ptr @.str, ptr @tegra124_dfll_fcpu_of_match, ptr @tegra124_dfll_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @tegra124_dfll_fcpu_data, ptr @tegra210_dfll_fcpu_data, ptr @tegra124_cpu_max_freq_table, ptr @tegra124_cpu_cvb_tables, ptr @tegra210_cpu_max_freq_table, ptr @tegra210_cpu_cvb_tables], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dfll_fcpu_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_dfll_fcpu_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_cpu_max_freq_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_cpu_cvb_tables to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_cpu_max_freq_table to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_cpu_cvb_tables to i32), i32 14280, i32 17856, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_dfll_fcpu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra124_dfll_fcpu_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_dfll_fcpu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %align = alloca %struct.rail_alignment, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %align) #5
  %0 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %align, align 8, !annotation !60
  %1 = getelementptr inbounds %struct.rail_alignment, ptr %align, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !60
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 3) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 3), align 4
  %cpu_max_freq_table_size = getelementptr inbounds %struct.dfll_fcpu_data, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_max_freq_table_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_max_freq_table_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp.not = icmp ult i32 %4, %7
  br i1 %cmp.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %4) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = tail call ptr @get_cpu_device(i32 noundef 0) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %call.i, align 4
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i89 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i89, null
  br i1 %tobool.i.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef %1, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then21.if.end.i_crit_edge, label %if.then.i

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %1, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then21.if.end.i_crit_edge
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i12.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull %align, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i12.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i12.i, -1
  br i1 %tobool4.not.i, label %if.end.i.if.end28_crit_edge, label %if.then5.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %align, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end18
  %call.i90 = tail call ptr @regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #5
  %cmp.i.i = icmp ugt ptr %call.i90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_alignment_from_regulator.exit, label %get_alignment_from_regulator.exit.thread

get_alignment_from_regulator.exit.thread:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @regulator_list_voltage(ptr noundef %call.i90, i32 noundef 0) #5
  %17 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3.i, ptr %align, align 8
  %call4.i = tail call i32 @regulator_get_linear_step(ptr noundef %call.i90) #5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call4.i, ptr %1, align 4
  tail call void @regulator_put(ptr noundef %call.i90) #5
  br label %if.end28

get_alignment_from_regulator.exit:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call.i90 to i32
  br label %cleanup

if.end28:                                         ; preds = %get_alignment_from_regulator.exit.thread, %if.then5.i, %if.end.i.if.end28_crit_edge
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr i32, ptr %21, i32 %4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %max_freq = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_freq, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %cpu_cvb_tables = getelementptr inbounds %struct.dfll_fcpu_data, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %cpu_cvb_tables to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpu_cvb_tables, align 4
  %cpu_cvb_tables_size = getelementptr inbounds %struct.dfll_fcpu_data, ptr %call, i32 0, i32 3
  %29 = ptrtoint ptr %cpu_cvb_tables_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu_cvb_tables_size, align 4
  %call31 = call ptr @tegra_cvb_add_opp_table(ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef nonnull %align, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %23) #5
  %cvb = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %cvb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31, ptr %cvb, align 4
  %alignment = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %align to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %align, align 8
  %34 = ptrtoint ptr %alignment to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %alignment, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end43

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %call31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %35) #8
  %36 = ptrtoint ptr %cvb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cvb, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %call44 = call i32 @tegra_dfll_register(ptr noundef %pdev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %41 = ptrtoint ptr %cvb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cvb, align 4
  %43 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_freq, align 4
  call void @tegra_cvb_remove_opp_table(ptr noundef %40, ptr noundef %42, i32 noundef %44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end43.cleanup_crit_edge, %do.end37, %get_alignment_from_regulator.exit, %do.end16, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %38, %do.end37 ], [ %call44, %if.then46 ], [ -19, %do.end16 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %19, %get_alignment_from_regulator.exit ], [ 0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %align) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_dfll_fcpu_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_dfll_unregister(ptr noundef %pdev) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %cvb = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %cvb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cvb, align 4
  %max_freq = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_freq, align 4
  tail call void @tegra_cvb_remove_opp_table(ptr noundef %2, ptr noundef %4, i32 noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_cvb_add_opp_table(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dfll_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cvb_remove_opp_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_linear_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_dfll_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dfll_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dfll_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dfll_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dfll_runtime_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_clk_tegra124_dfll_fcpu__288_646_tegra124_dfll_fcpu_driver_init6, !1, !"__initcall__kmod_clk_tegra124_dfll_fcpu__288_646_tegra124_dfll_fcpu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 646, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 641, i32 11}
!4 = !{ptr @tegra124_dfll_fcpu_driver, !5, !"tegra124_dfll_fcpu_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 637, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 569, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tegra124_dfll_fcpu_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra124_dfll_fcpu_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 580, i32 3}
!16 = !{ptr @tegra124_dfll_fcpu_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra124_dfll_fcpu_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 584, i32 47}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 601, i32 3}
!22 = !{ptr @tegra124_dfll_fcpu_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra124_dfll_fcpu_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 527, i32 6}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 532, i32 6}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 540, i32 45}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 621, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra124_dfll_fcpu_remove._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra124_dfll_fcpu_remove._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @tegra124_dfll_fcpu_of_match, !36, !"tegra124_dfll_fcpu_of_match", i1 false, i1 false}
!36 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 511, i32 34}
!37 = !{ptr @tegra124_dfll_fcpu_data, !38, !"tegra124_dfll_fcpu_data", i1 false, i1 false}
!38 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 497, i32 36}
!39 = !{ptr @tegra124_cpu_max_freq_table, !40, !"tegra124_cpu_max_freq_table", i1 false, i1 false}
!40 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 32, i32 28}
!41 = !{ptr @tegra124_cpu_cvb_tables, !42, !"tegra124_cpu_cvb_tables", i1 false, i1 false}
!42 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 39, i32 31}
!43 = !{ptr @tegra210_dfll_fcpu_data, !44, !"tegra210_dfll_fcpu_data", i1 false, i1 false}
!44 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 504, i32 36}
!45 = !{ptr @tegra210_cpu_max_freq_table, !46, !"tegra210_cpu_max_freq_table", i1 false, i1 false}
!46 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 82, i32 28}
!47 = !{ptr @tegra210_cpu_cvb_tables, !48, !"tegra210_cpu_cvb_tables", i1 false, i1 false}
!48 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 235, i32 25}
!49 = !{ptr @tegra124_dfll_pm_ops, !50, !"tegra124_dfll_pm_ops", i1 false, i1 false}
!50 = !{!"../drivers/clk/tegra/clk-tegra124-dfll-fcpu.c", i32 631, i32 32}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
