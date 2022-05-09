; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi3670.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3670.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
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

@__initcall__kmod_clk_hi3670__170_1016_hi3670_clk_init1 = internal global ptr @hi3670_clk_init, section ".initcall1.init", align 4
@hi3670_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3670_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3670_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hi3670-clk\00", [21 x i8] zeroinitializer }, align 32
@hi3670_clk_match_table = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-crgctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_crgctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-pctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_pctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-pmuctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_pmuctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-sctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_sctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-iomcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_iomcu_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-media1-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_media1_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3670-media2-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3670_clk_media2_init }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@hi3670_fixed_rate_clks = internal constant { [20 x %struct.hisi_fixed_rate_clock], [112 x i8] } { [20 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str.1, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.2, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.3, ptr null, i32 0, i32 134400000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.4, ptr null, i32 0, i32 1660000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.5, ptr null, i32 0, i32 1866000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.6, ptr null, i32 0, i32 1920000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.7, ptr null, i32 0, i32 1200000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.8, ptr null, i32 0, i32 900000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.9, ptr null, i32 0, i32 393216000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.10, ptr null, i32 0, i32 1008000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.11, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.12, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.13, ptr null, i32 0, i32 245760000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.14, ptr null, i32 0, i32 20000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.15, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.16, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.17, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.18, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 18, ptr @.str.19, ptr null, i32 0, i32 480000000 }, %struct.hisi_fixed_rate_clock { i32 19, ptr @.str.20, ptr null, i32 0, i32 10000000 }], [112 x i8] zeroinitializer }, align 32
@hi3670_crgctrl_gate_sep_clks = internal constant { [107 x %struct.hisi_gate_clock], [748 x i8] } { [107 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 114, ptr @.str.21, ptr @.str.5, i32 4, i32 0, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 115, ptr @.str.22, ptr @.str.6, i32 4, i32 0, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 116, ptr @.str.23, ptr @.str.7, i32 4, i32 0, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 117, ptr @.str.24, ptr @.str.5, i32 4, i32 1120, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 118, ptr @.str.25, ptr @.str.6, i32 4, i32 1120, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 119, ptr @.str.26, ptr @.str.7, i32 4, i32 1120, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 120, ptr @.str.27, ptr @.str.6, i32 4, i32 1040, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 121, ptr @.str.28, ptr @.str.7, i32 4, i32 1040, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 122, ptr @.str.29, ptr @.str.8, i32 4, i32 1040, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 123, ptr @.str.30, ptr @.str.9, i32 4, i32 1040, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 124, ptr @.str.31, ptr @.str.10, i32 4, i32 1040, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 125, ptr @.str.32, ptr @.str.33, i32 4, i32 16, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 126, ptr @.str.34, ptr @.str.33, i32 4, i32 16, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 127, ptr @.str.35, ptr @.str.33, i32 4, i32 16, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 128, ptr @.str.36, ptr @.str.33, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 129, ptr @.str.37, ptr @.str.33, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 130, ptr @.str.38, ptr @.str.33, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 131, ptr @.str.39, ptr @.str.33, i32 4, i32 16, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 132, ptr @.str.40, ptr @.str.33, i32 4, i32 16, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 133, ptr @.str.41, ptr @.str.33, i32 4, i32 16, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 134, ptr @.str.42, ptr @.str.33, i32 4, i32 16, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 135, ptr @.str.43, ptr @.str.33, i32 4, i32 16, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 136, ptr @.str.44, ptr @.str.33, i32 4, i32 16, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 137, ptr @.str.45, ptr @.str.33, i32 4, i32 16, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 138, ptr @.str.46, ptr @.str.33, i32 4, i32 16, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 139, ptr @.str.47, ptr @.str.33, i32 4, i32 16, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 140, ptr @.str.48, ptr @.str.33, i32 4, i32 16, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 141, ptr @.str.49, ptr @.str.33, i32 4, i32 16, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 142, ptr @.str.50, ptr @.str.33, i32 4, i32 16, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 143, ptr @.str.51, ptr @.str.33, i32 4, i32 16, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 144, ptr @.str.52, ptr @.str.33, i32 4, i32 16, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 145, ptr @.str.53, ptr @.str.33, i32 4, i32 80, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 146, ptr @.str.54, ptr @.str.33, i32 4, i32 80, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 147, ptr @.str.55, ptr @.str.56, i32 4, i32 0, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 148, ptr @.str.57, ptr @.str.58, i32 4, i32 64, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 149, ptr @.str.59, ptr @.str.56, i32 4, i32 0, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 150, ptr @.str.60, ptr @.str.61, i32 4, i32 1056, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 151, ptr @.str.62, ptr @.str.63, i32 4, i32 1056, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 152, ptr @.str.63, ptr @.str.64, i32 4, i32 48, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 153, ptr @.str.65, ptr @.str.66, i32 4, i32 64, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 154, ptr @.str.67, ptr @.str.61, i32 4, i32 1056, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 155, ptr @.str.68, ptr @.str.56, i32 4, i32 48, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 156, ptr @.str.69, ptr @.str.70, i32 4, i32 0, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 157, ptr @.str.71, ptr @.str.72, i32 4, i32 556, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 158, ptr @.str.73, ptr @.str.72, i32 4, i32 80, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 159, ptr @.str.74, ptr @.str.75, i32 4, i32 64, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 160, ptr @.str.76, ptr @.str.56, i32 4, i32 0, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 161, ptr @.str.77, ptr @.str.78, i32 4, i32 64, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 162, ptr @.str.79, ptr @.str.80, i32 4, i32 80, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 163, ptr @.str.81, ptr @.str.80, i32 4, i32 80, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 164, ptr @.str.82, ptr @.str.80, i32 4, i32 1152, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 165, ptr @.str.83, ptr @.str.80, i32 4, i32 1152, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 166, ptr @.str.84, ptr @.str.80, i32 4, i32 1152, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 167, ptr @.str.85, ptr @.str.80, i32 4, i32 80, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 168, ptr @.str.86, ptr @.str.80, i32 4, i32 80, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 169, ptr @.str.87, ptr @.str.80, i32 4, i32 80, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 170, ptr @.str.88, ptr @.str.89, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 171, ptr @.str.90, ptr @.str.89, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 172, ptr @.str.91, ptr @.str.89, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 173, ptr @.str.92, ptr @.str.89, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 174, ptr @.str.93, ptr @.str.94, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 175, ptr @.str.95, ptr @.str.94, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 176, ptr @.str.96, ptr @.str.94, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 177, ptr @.str.97, ptr @.str.94, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 178, ptr @.str.98, ptr @.str.99, i32 4, i32 32, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 179, ptr @.str.100, ptr @.str.101, i32 4, i32 32, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 180, ptr @.str.102, ptr @.str.101, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 181, ptr @.str.103, ptr @.str.101, i32 4, i32 16, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 182, ptr @.str.104, ptr @.str.101, i32 4, i32 32, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 183, ptr @.str.105, ptr @.str.101, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 184, ptr @.str.106, ptr @.str.101, i32 4, i32 16, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 185, ptr @.str.107, ptr @.str.108, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 186, ptr @.str.109, ptr @.str.108, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 187, ptr @.str.110, ptr @.str.108, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 188, ptr @.str.111, ptr @.str.108, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 189, ptr @.str.112, ptr @.str.1, i32 4, i32 64, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 190, ptr @.str.113, ptr @.str.1, i32 4, i32 1040, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 191, ptr @.str.114, ptr @.str.1, i32 4, i32 1056, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 192, ptr @.str.115, ptr @.str.116, i32 4, i32 1056, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 193, ptr @.str.116, ptr @.str.117, i32 4, i32 80, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 194, ptr @.str.118, ptr @.str.11, i32 4, i32 1136, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 195, ptr @.str.119, ptr @.str.11, i32 4, i32 1136, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 196, ptr @.str.120, ptr @.str.11, i32 4, i32 1136, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 197, ptr @.str.121, ptr @.str.11, i32 4, i32 1136, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 198, ptr @.str.122, ptr @.str.123, i32 4, i32 0, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 199, ptr @.str.124, ptr @.str.125, i32 4, i32 32, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 200, ptr @.str.126, ptr @.str.127, i32 4, i32 48, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 201, ptr @.str.128, ptr @.str.129, i32 4, i32 48, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 202, ptr @.str.130, ptr @.str.125, i32 4, i32 32, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 203, ptr @.str.131, ptr @.str.132, i32 4, i32 48, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 204, ptr @.str.133, ptr @.str.132, i32 4, i32 48, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 205, ptr @.str.134, ptr @.str.131, i32 4, i32 48, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 206, ptr @.str.135, ptr @.str.133, i32 4, i32 64, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 207, ptr @.str.136, ptr @.str.137, i32 4, i32 0, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 208, ptr @.str.138, ptr @.str.1, i32 4, i32 0, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 209, ptr @.str.139, ptr @.str.1, i32 4, i32 0, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 210, ptr @.str.140, ptr @.str.141, i32 4, i32 80, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 211, ptr @.str.142, ptr @.str.143, i32 4, i32 80, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 212, ptr @.str.144, ptr @.str.145, i32 4, i32 80, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 213, ptr @.str.146, ptr @.str.147, i32 4, i32 48, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 214, ptr @.str.148, ptr @.str.147, i32 4, i32 48, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 215, ptr @.str.149, ptr @.str.147, i32 4, i32 48, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 216, ptr @.str.150, ptr @.str.1, i32 4, i32 48, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 217, ptr @.str.151, ptr @.str.1, i32 4, i32 48, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 218, ptr @.str.152, ptr @.str.1, i32 4, i32 48, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 219, ptr @.str.153, ptr @.str.1, i32 4, i32 48, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 220, ptr @.str.154, ptr @.str.1, i32 4, i32 64, i8 6, i8 0, ptr null }], [748 x i8] zeroinitializer }, align 32
@hi3670_crgctrl_gate_clks = internal constant { [28 x %struct.hisi_gate_clock], [208 x i8] } { [28 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 38, ptr @.str.155, ptr @.str.56, i32 4, i32 1028, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.58, ptr @.str.155, i32 4, i32 1028, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.156, ptr @.str.157, i32 4, i32 248, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 41, ptr @.str.158, ptr @.str.159, i32 4, i32 240, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 42, ptr @.str.160, ptr @.str.161, i32 4, i32 244, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 43, ptr @.str.162, ptr @.str.1, i32 4, i32 244, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 44, ptr @.str.163, ptr @.str.164, i32 4, i32 244, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 45, ptr @.str.165, ptr @.str.1, i32 4, i32 244, i8 6, i8 2, ptr null }, %struct.hisi_gate_clock { i32 46, ptr @.str.166, ptr @.str.167, i32 4, i32 244, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 47, ptr @.str.168, ptr @.str.169, i32 4, i32 248, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 48, ptr @.str.170, ptr @.str.157, i32 4, i32 244, i8 11, i8 2, ptr null }, %struct.hisi_gate_clock { i32 49, ptr @.str.171, ptr @.str.157, i32 4, i32 244, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.172, ptr @.str.157, i32 4, i32 244, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 51, ptr @.str.173, ptr @.str.157, i32 4, i32 244, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 52, ptr @.str.174, ptr @.str.175, i32 4, i32 252, i8 15, i8 2, ptr null }, %struct.hisi_gate_clock { i32 53, ptr @.str.176, ptr @.str.177, i32 4, i32 244, i8 4, i8 2, ptr null }, %struct.hisi_gate_clock { i32 54, ptr @.str.178, ptr @.str.6, i32 4, i32 244, i8 14, i8 2, ptr null }, %struct.hisi_gate_clock { i32 55, ptr @.str.179, ptr @.str.6, i32 4, i32 244, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 56, ptr @.str.180, ptr @.str.157, i32 4, i32 248, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 57, ptr @.str.181, ptr @.str.4, i32 4, i32 240, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 58, ptr @.str.182, ptr @.str.4, i32 4, i32 240, i8 11, i8 2, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.183, ptr @.str.9, i32 4, i32 248, i8 15, i8 2, ptr null }, %struct.hisi_gate_clock { i32 60, ptr @.str.184, ptr @.str.185, i32 4, i32 240, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 61, ptr @.str.186, ptr @.str.187, i32 4, i32 240, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 62, ptr @.str.188, ptr @.str.80, i32 4, i32 264, i8 2, i8 2, ptr null }, %struct.hisi_gate_clock { i32 63, ptr @.str.189, ptr @.str.80, i32 4, i32 240, i8 12, i8 2, ptr null }, %struct.hisi_gate_clock { i32 64, ptr @.str.190, ptr @.str.191, i32 4, i32 240, i8 14, i8 2, ptr null }, %struct.hisi_gate_clock { i32 65, ptr @.str.192, ptr @.str.155, i32 4, i32 1028, i8 3, i8 2, ptr null }], [208 x i8] zeroinitializer }, align 32
@hi3670_crgctrl_mux_clks = internal constant { [22 x %struct.hisi_mux_clock], [200 x i8] } { [22 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 66, ptr @.str.193, ptr @clk_mux_sysbus_p, i8 2, i32 4, i32 172, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 67, ptr @.str.159, ptr @clk_mux_vcodecbus_p, i8 16, i32 4, i32 200, i8 0, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 68, ptr @.str.75, ptr @clk_mux_sd_sys_p, i8 2, i32 4, i32 184, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 69, ptr @.str.161, ptr @clk_mux_sd_pll_p, i8 4, i32 4, i32 184, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 70, ptr @.str.78, ptr @clk_mux_sdio_sys_p, i8 2, i32 4, i32 192, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 71, ptr @.str.164, ptr @clk_mux_sdio_pll_p, i8 4, i32 4, i32 192, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 72, ptr @.str.167, ptr @clk_mux_a53hpm_p, i8 2, i32 4, i32 212, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 73, ptr @.str.169, ptr @clk_mux_320m_p, i8 2, i32 4, i32 256, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 74, ptr @.str.89, ptr @clk_mux_uarth_p, i8 2, i32 4, i32 172, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 75, ptr @.str.94, ptr @clk_mux_uartl_p, i8 2, i32 4, i32 172, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 76, ptr @.str.99, ptr @clk_mux_uart0_p, i8 2, i32 4, i32 172, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 77, ptr @.str.101, ptr @clk_mux_i2c_p, i8 2, i32 4, i32 172, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 78, ptr @.str.108, ptr @clk_mux_spi_p, i8 2, i32 4, i32 172, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 79, ptr @.str.175, ptr @clk_mux_pcieaxi_p, i8 2, i32 4, i32 180, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 80, ptr @.str.177, ptr @clk_mux_ao_asp_p, i8 2, i32 4, i32 256, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 81, ptr @.str.185, ptr @clk_mux_vdec_p, i8 16, i32 4, i32 200, i8 8, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 82, ptr @.str.187, ptr @clk_mux_venc_p, i8 16, i32 4, i32 200, i8 4, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 83, ptr @.str.141, ptr @clk_isp_snclk_mux0_p, i8 2, i32 4, i32 264, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 84, ptr @.str.143, ptr @clk_isp_snclk_mux1_p, i8 2, i32 4, i32 268, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 85, ptr @.str.145, ptr @clk_isp_snclk_mux2_p, i8 2, i32 4, i32 268, i8 10, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 86, ptr @.str.147, ptr @clk_mux_rxdphy_cfg_p, i8 2, i32 4, i32 196, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 87, ptr @.str.191, ptr @clk_mux_ics_p, i8 16, i32 4, i32 200, i8 12, i8 4, i8 4, ptr null, ptr null }], [200 x i8] zeroinitializer }, align 32
@hi3670_crg_fixed_factor_clks = internal constant { [18 x %struct.hisi_fixed_factor_clock], [112 x i8] } { [18 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 20, ptr @.str.56, ptr @.str.193, i32 1, i32 7, i32 0 }, %struct.hisi_fixed_factor_clock { i32 21, ptr @.str.207, ptr @.str.1, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 22, ptr @.str.194, ptr @.str.162, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 23, ptr @.str.196, ptr @.str.165, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 24, ptr @.str.80, ptr @.str.166, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 25, ptr @.str.157, ptr @.str.168, i32 1, i32 5, i32 0 }, %struct.hisi_fixed_factor_clock { i32 26, ptr @.str.208, ptr @.str.94, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 27, ptr @.str.209, ptr @.str.99, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 28, ptr @.str.210, ptr @.str.4, i32 1, i32 60, i32 0 }, %struct.hisi_fixed_factor_clock { i32 29, ptr @.str.211, ptr @.str.212, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 30, ptr @.str.213, ptr @.str.1, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 31, ptr @.str.214, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 32, ptr @.str.215, ptr @.str.139, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 33, ptr @.str.216, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 34, ptr @.str.217, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 35, ptr @.str.218, ptr @.str.138, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 36, ptr @.str.219, ptr @.str.188, i32 1, i32 10, i32 0 }, %struct.hisi_fixed_factor_clock { i32 37, ptr @.str.206, ptr @.str.189, i32 1, i32 6, i32 0 }], [112 x i8] zeroinitializer }, align 32
@hi3670_crgctrl_divider_clks = internal constant { [26 x %struct.hisi_divider_clock], [192 x i8] } { [26 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 88, ptr @.str.33, ptr @.str.56, i32 4, i32 236, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 89, ptr @.str.66, ptr @.str.58, i32 4, i32 236, i8 2, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 90, ptr @.str.61, ptr @.str.56, i32 4, i32 236, i8 3, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 91, ptr @.str.64, ptr @.str.156, i32 4, i32 180, i8 6, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 92, ptr @.str.70, ptr @.str.158, i32 4, i32 188, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 93, ptr @.str.195, ptr @.str.160, i32 4, i32 184, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 94, ptr @.str.197, ptr @.str.163, i32 4, i32 192, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 95, ptr @.str.198, ptr @.str.170, i32 4, i32 176, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 96, ptr @.str.199, ptr @.str.171, i32 4, i32 176, i8 8, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 97, ptr @.str.200, ptr @.str.172, i32 4, i32 176, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 98, ptr @.str.201, ptr @.str.157, i32 4, i32 232, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 99, ptr @.str.202, ptr @.str.173, i32 4, i32 196, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 100, ptr @.str.117, ptr @.str.174, i32 4, i32 180, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 101, ptr @.str.123, ptr @.str.176, i32 4, i32 264, i8 6, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 102, ptr @.str.127, ptr @.str.178, i32 4, i32 212, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 103, ptr @.str.129, ptr @.str.179, i32 4, i32 212, i8 10, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 104, ptr @.str.125, ptr @.str.180, i32 4, i32 216, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 105, ptr @.str.220, ptr @.str.181, i32 4, i32 224, i8 4, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 106, ptr @.str.221, ptr @.str.182, i32 4, i32 224, i8 10, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 107, ptr @.str.137, ptr @.str.183, i32 4, i32 188, i8 11, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 108, ptr @.str.222, ptr @.str.184, i32 4, i32 196, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 109, ptr @.str.223, ptr @.str.186, i32 4, i32 192, i8 8, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 110, ptr @.str.203, ptr @.str.219, i32 4, i32 264, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 111, ptr @.str.204, ptr @.str.219, i32 4, i32 268, i8 14, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 112, ptr @.str.205, ptr @.str.219, i32 4, i32 268, i8 11, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 113, ptr @.str.224, ptr @.str.190, i32 4, i32 228, i8 9, i8 6, i8 8, ptr null, ptr null }], [192 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkin_sys\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkin_ref\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_fll_src\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll0\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll1\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll2\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll3\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll4\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll6\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll7\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_ppll_pcie\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_pciepll_rev\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_scpll\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_uart0_dbg\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart6\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc19m\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_480m\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_invalid\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppll1_en_acpu\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppll2_en_acpu\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppll3_en_acpu\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppll1_gt_cpu\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppll2_gt_cpu\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppll3_gt_cpu\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ppll2_media\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ppll3_media\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ppll4_media\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ppll6_media\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ppll7_media\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio0\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_cfgbus\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio1\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio2\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio3\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio4\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio5\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio6\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio7\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio8\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio9\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio10\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio11\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio12\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio13\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio14\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio15\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio16\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio17\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio20\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio21\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_dsi0\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_dsi1\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclk_gate_usb3otg\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_sysbus\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aclk_gate_usb3dvfs\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autodiv_emmc0bus\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclk_gate_sdio\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_gate_pcie_sys\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_mmc1bus\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_gate_pcie_phy\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pclk_gate_mmc1_pcie\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_div_mmc1_pcie\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_gate_mmc0_ioc\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_mmc0bus\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_gate_mmc1_ioc\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_dmac\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_gate_vcodecbus2ddr\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_div_vcodecbus\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_cci400_bypass\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_ddrc_freq\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_cci400\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_gate_sd\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_sd_sys\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_gate_sd\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_sdio\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mux_sdio_sys\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_a57hpm\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_a53hpm\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_a53hpm\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_pa_a53\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_pa_a57\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_pa_g3d\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_gpuhpm\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_perihpm\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_aohpm\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart1\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mux_uarth\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart4\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_uart1\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_uart4\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart2\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mux_uartl\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart5\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_uart2\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_uart5\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart0\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mux_uart0\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c3\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mux_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c4\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c7\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_i2c3\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_i2c4\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_i2c7\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi1\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mux_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi4\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_spi1\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_spi4\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_usb3otg_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_usb2phy_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_pcieaux\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_gate_pcie\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_gate_mmc1_pcieaxi\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_pcieaxi\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_pciephy_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_gate_pcie_debounce\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_pcieio\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_pcie_hp\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_ao_asp\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_ao_asp\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_pctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_ptp\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_csi_trans_gt\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_div_csi_trans\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_dsi_trans_gt\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_div_dsi_trans\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_gate_pwm\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"abb_audio_en0\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_abb_192\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"abb_audio_en1\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abb_audio_gt_en0\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abb_audio_gt_en1\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_gate_dp_audio_pll_ao\00", [39 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkdiv_dp_audio_pll_ao\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_volt_hold\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"peri_volt_middle\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_isp_snclk0\00", [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_mux0\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_isp_snclk1\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_mux1\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_isp_snclk2\00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_mux2\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_rxdphy0_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_mux_rxdphy_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_rxdphy1_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_rxdphy2_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy0_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy0_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy1_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy1_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_media_tcxo\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"autodiv_sysbus\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pclk_andgt_mmc1_pcie\00", [43 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_320m\00", [19 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_gate_vcodecbus_gt\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_mux_vcodecbus\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_andgt_sd\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_sd_pll\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_sd_sys_gt\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_sdio\00", [17 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mux_sdio_pll\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_sdio_sys_gt\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_a53hpm_andgt\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_a53hpm\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_320m_pll_gt\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_320m\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_andgt_uarth\00", [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_andgt_uartl\00", [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_andgt_uart0\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_andgt_spi\00", [18 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_andgt_pcieaxi\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_pcieaxi\00", [16 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_div_ao_asp_gt\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_ao_asp\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_gate_csi_trans\00", [45 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_gate_dsi_trans\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_andgt_ptp\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_out0\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_out1\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clkgt_dp_audio_pll_ao\00", [42 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_vdec\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_vdec\00", [19 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_venc\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_venc\00", [19 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_angt\00", [45 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_andgt_rxdphy\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_andgt_ics\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mux_ics\00", [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"autodiv_dmabus\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_sysbus\00", [17 x i8] zeroinitializer }, align 32
@clk_mux_sysbus_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.5, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@clk_mux_vcodecbus_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.7, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_mux_sd_sys_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.194, ptr @.str.195], [24 x i8] zeroinitializer }, align 32
@clk_mux_sd_pll_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.7, ptr @.str.6, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@clk_mux_sdio_sys_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.196, ptr @.str.197], [24 x i8] zeroinitializer }, align 32
@clk_mux_sdio_pll_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.7, ptr @.str.6, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@clk_mux_a53hpm_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@clk_mux_320m_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@clk_mux_uarth_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.198], [24 x i8] zeroinitializer }, align 32
@clk_mux_uartl_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.199], [24 x i8] zeroinitializer }, align 32
@clk_mux_uart0_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.200], [24 x i8] zeroinitializer }, align 32
@clk_mux_i2c_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.201], [24 x i8] zeroinitializer }, align 32
@clk_mux_spi_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.202], [24 x i8] zeroinitializer }, align 32
@clk_mux_pcieaxi_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@clk_mux_ao_asp_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@clk_mux_vdec_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_mux_venc_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_isp_snclk_mux0_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.203], [24 x i8] zeroinitializer }, align 32
@clk_isp_snclk_mux1_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.204], [24 x i8] zeroinitializer }, align 32
@clk_isp_snclk_mux2_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.205], [24 x i8] zeroinitializer }, align 32
@clk_mux_rxdphy_cfg_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.206, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@clk_mux_ics_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.8, ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.7, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_sd_sys\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_div_sd\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_sdio_sys\00", [19 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_sdio\00", [19 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_uarth\00", [18 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_uartl\00", [18 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_uart0\00", [18 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_div0\00", [45 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_div1\00", [45 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_div2\00", [45 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_factor_rxdphy\00", [46 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_factor_mmc\00", [17 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_uart0\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_factor_uart0\00", [47 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_factor_usb3phy_pll\00", [41 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_abb_usb\00", [47 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_usb_tcxo_en\00", [43 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_ufsphy_ref\00", [44 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ics_volt_high\00", [18 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ics_volt_middle\00", [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"venc_volt_hold\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdec_volt_hold\00", [17 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edc_volt_hold\00", [18 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_isp_snclk_fac\00", [46 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_div_clkout0_pll\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_div_clkout1_pll\00", [44 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_vdec\00", [19 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_venc\00", [19 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_ics\00", [20 x i8] zeroinitializer }, align 32
@hi3670_pctrl_gate_clks = internal constant { [2 x %struct.hisi_gate_clock], [40 x i8] } { [2 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.225, ptr @.str.132, i32 4, i32 16, i8 0, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.212, ptr @.str.132, i32 4, i32 16, i8 1, i8 2, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ufs_tcxo_en\00", [43 x i8] zeroinitializer }, align 32
@hi3670_pmu_gate_clks = internal constant { [1 x %struct.hisi_gate_clock], [36 x i8] } { [1 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.132, ptr @.str.1, i32 4, i32 220, i8 0, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@hi3670_sctrl_gate_sep_clks = internal constant { [24 x %struct.hisi_gate_clock], [160 x i8] } { [24 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 15, ptr @.str.226, ptr @.str.4, i32 4, i32 400, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 16, ptr @.str.227, ptr @.str.4, i32 4, i32 400, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.228, ptr @.str.4, i32 4, i32 432, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.229, ptr @.str.230, i32 4, i32 432, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.231, ptr @.str.230, i32 4, i32 432, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.232, ptr @.str.233, i32 4, i32 432, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.234, ptr @.str.233, i32 4, i32 432, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.235, ptr @.str.236, i32 4, i32 432, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.237, ptr @.str.1, i32 4, i32 432, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.238, ptr @.str.230, i32 4, i32 352, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.239, ptr @.str.230, i32 4, i32 352, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.240, ptr @.str.230, i32 4, i32 352, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.241, ptr @.str.230, i32 4, i32 352, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.242, ptr @.str.230, i32 4, i32 352, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.243, ptr @.str.230, i32 4, i32 352, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.244, ptr @.str.230, i32 4, i32 352, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.245, ptr @.str.246, i32 4, i32 352, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.247, ptr @.str.248, i32 4, i32 352, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.249, ptr @.str.230, i32 4, i32 352, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.250, ptr @.str.1, i32 4, i32 352, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.251, ptr @.str.252, i32 4, i32 368, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.253, ptr @.str.254, i32 4, i32 368, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.255, ptr @.str.1, i32 4, i32 352, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.256, ptr @.str.136, i32 4, i32 432, i8 7, i8 0, ptr null }], [160 x i8] zeroinitializer }, align 32
@hi3670_sctrl_gate_clks = internal constant { [3 x %struct.hisi_gate_clock], [44 x i8] } { [3 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.257, ptr @.str.4, i32 4, i32 624, i8 6, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.258, ptr @.str.4, i32 4, i32 616, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.259, ptr @.str.4, i32 4, i32 600, i8 0, i8 2, ptr null }], [44 x i8] zeroinitializer }, align 32
@hi3670_sctrl_mux_clks = internal constant { [5 x %struct.hisi_mux_clock], [44 x i8] } { [5 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 3, ptr @.str.260, ptr @clk_mux_ufs_subsys_p, i8 2, i32 4, i32 628, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 4, ptr @.str.246, ptr @clk_mux_clkout0_p, i8 4, i32 4, i32 596, i8 12, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 5, ptr @.str.248, ptr @clk_mux_clkout1_p, i8 4, i32 4, i32 596, i8 14, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 6, ptr @.str.252, ptr @clk_mux_asp_subsys_peri_p, i8 2, i32 4, i32 616, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 7, ptr @.str.254, ptr @clk_mux_asp_pll_p, i8 4, i32 4, i32 616, i8 9, i8 2, i8 4, ptr null, ptr null }], [44 x i8] zeroinitializer }, align 32
@hi3670_sctrl_divider_clks = internal constant { [7 x %struct.hisi_divider_clock], [32 x i8] } { [7 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 8, ptr @.str.230, ptr @.str.4, i32 4, i32 596, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 9, ptr @.str.236, ptr @.str.260, i32 4, i32 628, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 10, ptr @.str.233, ptr @.str.257, i32 4, i32 624, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 11, ptr @.str.261, ptr @.str.1, i32 4, i32 596, i8 6, i8 3, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 12, ptr @.str.262, ptr @.str.1, i32 4, i32 596, i8 9, i8 3, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 13, ptr @.str.263, ptr @.str.258, i32 4, i32 616, i8 0, i8 3, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 14, ptr @.str.264, ptr @.str.259, i32 4, i32 592, i8 0, i8 3, i8 8, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppll0_en_acpu\00", [18 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ppll0_gt_cpu\00", [19 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ppll0_media\00", [43 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio18\00", [20 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_aobus\00", [18 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio19\00", [20 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_gate_spi\00", [19 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_ioperi\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_gate_spi\00", [18 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_ufs_subsys\00", [44 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_div_ufs_subsys\00", [45 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_gate_ufsio_ref\00", [45 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio0\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio1\00", [18 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio2\00", [18 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio3\00", [18 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio4\00", [18 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio5\00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio6\00", [18 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_out0\00", [18 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_clkout0\00", [16 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_out1\00", [18 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_clkout1\00", [16 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pclk_gate_syscnt\00", [47 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_gate_syscnt\00", [16 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_gate_asp_subsys_peri\00", [39 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_mux_asp_subsys_peri\00", [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_asp_subsys\00", [44 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_asp_pll\00", [16 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_gate_asp_tcxo\00", [46 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_gate_dp_audio_pll\00", [42 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_andgt_ioperi\00", [47 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clkandgt_asp_subsys_peri\00", [39 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_angt_asp_subsys\00", [44 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_mux_ufs_subsys\00", [45 x i8] zeroinitializer }, align 32
@clk_mux_ufs_subsys_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@clk_mux_clkout0_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.261, ptr @.str.220, ptr @.str.220], [16 x i8] zeroinitializer }, align 32
@clk_mux_clkout1_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.262, ptr @.str.221, ptr @.str.221], [16 x i8] zeroinitializer }, align 32
@clk_mux_asp_subsys_peri_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@clk_mux_asp_pll_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.3, ptr @.str.122, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_div_clkout0_tcxo\00", [43 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_div_clkout1_tcxo\00", [43 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_asp_subsys_peri_div\00", [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_div_asp_subsys\00", [45 x i8] zeroinitializer }, align 32
@hi3670_iomcu_gate_sep_clks = internal constant { [7 x %struct.hisi_gate_clock], [60 x i8] } { [7 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 6, ptr @.str.265, ptr @.str.3, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.266, ptr @.str.3, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.267, ptr @.str.3, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.268, ptr @.str.3, i32 4, i32 16, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.269, ptr @.str.3, i32 4, i32 16, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.270, ptr @.str.271, i32 4, i32 16, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.271, ptr @.str.4, i32 4, i32 144, i8 0, i8 0, ptr null }], [60 x i8] zeroinitializer }, align 32
@hi3670_iomcu_fixed_factor_clks = internal constant { [6 x %struct.hisi_fixed_factor_clock], [48 x i8] } { [6 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 0, ptr @.str.272, ptr @.str.265, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 1, ptr @.str.273, ptr @.str.266, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 2, ptr @.str.274, ptr @.str.267, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 3, ptr @.str.275, ptr @.str.268, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 4, ptr @.str.276, ptr @.str.269, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 5, ptr @.str.277, ptr @.str.270, i32 1, i32 16, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_i2c0_gate_iomcu\00", [44 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_i2c1_gate_iomcu\00", [44 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_i2c2_gate_iomcu\00", [44 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_spi0_gate_iomcu\00", [44 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_spi2_gate_iomcu\00", [44 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_uart3_gate_iomcu\00", [43 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_iomcu_peri0\00", [43 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c0\00", [18 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c1\00", [18 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c2\00", [18 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi0\00", [18 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi2\00", [18 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart3\00", [17 x i8] zeroinitializer }, align 32
@hi3670_media1_gate_sep_clks = internal constant { [17 x %struct.hisi_gate_clock], [100 x i8] } { [17 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 17, ptr @.str.278, ptr @.str.279, i32 4, i32 16, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.280, ptr @.str.281, i32 4, i32 16, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.282, ptr @.str.281, i32 4, i32 32, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.281, ptr @.str.56, i32 4, i32 16, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.279, ptr @.str.283, i32 4, i32 16, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.284, ptr @.str.281, i32 4, i32 0, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.285, ptr @.str.279, i32 4, i32 0, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.283, ptr @.str.286, i32 4, i32 0, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.287, ptr @.str.288, i32 4, i32 0, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.289, ptr @.str.290, i32 4, i32 0, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.291, ptr @.str.292, i32 4, i32 0, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.293, ptr @.str.294, i32 4, i32 0, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.295, ptr @.str.296, i32 4, i32 32, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.297, ptr @.str.296, i32 4, i32 32, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.296, ptr @.str.298, i32 4, i32 32, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.299, ptr @.str.300, i32 4, i32 32, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.301, ptr @.str.286, i32 4, i32 16, i8 1, i8 0, ptr null }], [100 x i8] zeroinitializer }, align 32
@hi3670_media1_gate_clks = internal constant { [6 x %struct.hisi_gate_clock], [56 x i8] } { [6 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.302, ptr @.str.303, i32 4, i32 132, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.304, ptr @.str.305, i32 4, i32 132, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.306, ptr @.str.307, i32 4, i32 132, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.308, ptr @.str.309, i32 4, i32 132, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.310, ptr @.str.311, i32 4, i32 132, i8 14, i8 2, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.312, ptr @.str.298, i32 4, i32 132, i8 15, i8 2, ptr null }], [56 x i8] zeroinitializer }, align 32
@hi3670_media1_mux_clks = internal constant { [5 x %struct.hisi_mux_clock], [44 x i8] } { [5 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 6, ptr @.str.303, ptr @clk_mux_vivobus_p, i8 16, i32 4, i32 116, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 7, ptr @.str.305, ptr @clk_mux_edc0_p, i8 16, i32 4, i32 104, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 8, ptr @.str.307, ptr @clk_mux_ldi0_p, i8 16, i32 4, i32 96, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 9, ptr @.str.309, ptr @clk_mux_ldi1_p, i8 16, i32 4, i32 100, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 10, ptr @.str.311, ptr @clk_sw_mmbuf_p, i8 16, i32 4, i32 136, i8 0, i8 4, i8 4, ptr null, ptr null }], [44 x i8] zeroinitializer }, align 32
@hi3670_media1_divider_clks = internal constant { [6 x %struct.hisi_divider_clock], [32 x i8] } { [6 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 11, ptr @.str.286, ptr @.str.302, i32 4, i32 116, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 12, ptr @.str.288, ptr @.str.304, i32 4, i32 104, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 13, ptr @.str.290, ptr @.str.306, i32 4, i32 96, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 14, ptr @.str.292, ptr @.str.308, i32 4, i32 100, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 15, ptr @.str.298, ptr @.str.310, i32 4, i32 124, i8 10, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 16, ptr @.str.300, ptr @.str.312, i32 4, i32 120, i8 0, i8 2, i8 8, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aclk_gate_noc_dss\00", [46 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aclk_gate_disp_noc_subsys\00", [38 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pclk_gate_noc_dss_cfg\00", [42 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pclk_gate_disp_noc_subsys\00", [38 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pclk_gate_mmbuf_cfg\00", [44 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_vivobusfreq\00", [43 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_gate_dss\00", [18 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_gate_dss\00", [18 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_vivobus\00", [16 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_edc0\00", [18 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_edc0\00", [19 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_ldi0\00", [18 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_ldi0\00", [19 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_gate_ldi1freq\00", [46 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_ldi1\00", [19 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_gate_brg\00", [19 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_media_common_div\00", [43 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_gate_asc\00", [18 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_mmbuf\00", [17 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_dss_axi_mm\00", [44 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_div_mmbuf\00", [17 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_mmbuf\00", [16 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_div_mmbuf\00", [17 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_atdiv_vivo\00", [44 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_gate_vivobus_andgt\00", [41 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_vivobus\00", [16 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_edc0\00", [17 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_edc0\00", [19 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_ldi0\00", [17 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_ldi0\00", [19 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_ldi1\00", [17 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_ldi1\00", [19 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_mmbuf_pll_andgt\00", [44 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_sw_mmbuf\00", [19 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pclk_mmbuf_andgt\00", [47 x i8] zeroinitializer }, align 32
@clk_mux_vivobus_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.20, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_mux_edc0_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.20, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_mux_ldi0_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.31, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_mux_ldi1_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.31, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@clk_sw_mmbuf_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.20, ptr @.str.20, ptr @.str.228, ptr @.str.20, ptr @.str.27, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.28, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20, ptr @.str.20], [32 x i8] zeroinitializer }, align 32
@hi3670_media2_gate_sep_clks = internal constant { [3 x %struct.hisi_gate_clock], [44 x i8] } { [3 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.313, ptr @.str.222, i32 4, i32 0, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.314, ptr @.str.223, i32 4, i32 0, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.315, ptr @.str.224, i32 4, i32 0, i8 2, i8 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_gate_vdecfreq\00", [46 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_gate_vencfreq\00", [46 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_icsfreq\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.316 = private unnamed_addr constant [18 x i8] c"hi3670_clk_driver\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 1004, i32 31 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 1007, i32 13 }
@___asan_gen_.322 = private unnamed_addr constant [23 x i8] c"hi3670_clk_match_table\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 971, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant [23 x i8] c"hi3670_fixed_rate_clks\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 16, i32 43 }
@___asan_gen_.328 = private unnamed_addr constant [29 x i8] c"hi3670_crgctrl_gate_sep_clks\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 79, i32 37 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"hi3670_crgctrl_gate_clks\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 296, i32 37 }
@___asan_gen_.334 = private unnamed_addr constant [24 x i8] c"hi3670_crgctrl_mux_clks\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 417, i32 36 }
@___asan_gen_.337 = private unnamed_addr constant [29 x i8] c"hi3670_crg_fixed_factor_clks\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 40, i32 45 }
@___asan_gen_.340 = private unnamed_addr constant [28 x i8] c"hi3670_crgctrl_divider_clks\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 486, i32 40 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 17, i32 22 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 18, i32 22 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 19, i32 24 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 20, i32 22 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 21, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 22, i32 22 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 23, i32 22 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 24, i32 22 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 25, i32 22 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 26, i32 22 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 27, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 28, i32 28 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 29, i32 22 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 30, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 31, i32 26 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 32, i32 22 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 33, i32 19 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 34, i32 19 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 35, i32 21 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 36, i32 24 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 80, i32 26 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 82, i32 26 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 84, i32 26 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 86, i32 25 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 88, i32 25 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 90, i32 25 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 92, i32 33 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 94, i32 33 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 96, i32 33 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 98, i32 33 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 100, i32 33 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 102, i32 23 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 102, i32 37 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 104, i32 23 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 106, i32 23 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 108, i32 23 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 110, i32 23 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 112, i32 23 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 114, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 116, i32 23 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 118, i32 23 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 120, i32 23 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 122, i32 24 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 124, i32 24 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 126, i32 24 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 128, i32 24 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 130, i32 24 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 132, i32 24 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 134, i32 24 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 136, i32 24 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 138, i32 24 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 140, i32 24 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 142, i32 27 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 144, i32 27 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 146, i32 30 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 146, i32 51 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 148, i32 31 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 148, i32 53 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 150, i32 27 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 152, i32 31 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 152, i32 53 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 154, i32 31 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 154, i32 53 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 156, i32 55 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 158, i32 31 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 158, i32 53 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 160, i32 31 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 162, i32 26 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 164, i32 35 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 164, i32 61 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 166, i32 30 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 166, i32 51 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 168, i32 28 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 170, i32 24 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 170, i32 39 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 172, i32 25 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 174, i32 26 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 174, i32 43 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 176, i32 28 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 176, i32 47 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 178, i32 28 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 180, i32 28 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 182, i32 28 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 184, i32 28 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 186, i32 28 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 188, i32 29 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 190, i32 27 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 192, i32 27 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 192, i32 45 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 194, i32 27 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 196, i32 28 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 198, i32 28 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 200, i32 27 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 200, i32 45 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 202, i32 27 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 204, i32 28 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 206, i32 28 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 208, i32 27 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 208, i32 45 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 210, i32 26 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 210, i32 43 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 212, i32 26 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 214, i32 26 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 216, i32 27 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 218, i32 27 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 220, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 222, i32 26 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 222, i32 43 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 224, i32 26 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 226, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 228, i32 27 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 230, i32 33 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 232, i32 33 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 234, i32 29 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 236, i32 27 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 236, i32 45 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 238, i32 59 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 240, i32 33 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 242, i32 35 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 244, i32 28 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 246, i32 29 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 248, i32 28 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 248, i32 47 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 250, i32 28 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 250, i32 47 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 252, i32 29 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 252, i32 49 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 254, i32 29 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 254, i32 49 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 256, i32 25 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 258, i32 26 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 258, i32 43 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 260, i32 26 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 262, i32 29 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 264, i32 29 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 266, i32 37 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 266, i32 65 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 268, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 270, i32 29 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 272, i32 32 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 272, i32 55 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 274, i32 32 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 274, i32 55 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 276, i32 32 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 276, i32 55 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 278, i32 33 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 278, i32 57 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 280, i32 33 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 282, i32 33 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 284, i32 33 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 286, i32 33 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 288, i32 33 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 290, i32 33 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 292, i32 32 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 297, i32 27 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 301, i32 33 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 301, i32 57 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 303, i32 34 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 303, i32 59 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 305, i32 25 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 305, i32 41 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 307, i32 26 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 309, i32 27 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 309, i32 45 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 311, i32 28 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 313, i32 29 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 313, i32 49 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 315, i32 28 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 315, i32 47 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 317, i32 28 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 319, i32 28 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 321, i32 28 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 323, i32 26 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 325, i32 30 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 325, i32 51 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 327, i32 30 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 327, i32 51 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 329, i32 31 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 331, i32 31 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 333, i32 26 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 335, i32 27 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 337, i32 27 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 339, i32 34 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 341, i32 27 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 341, i32 45 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 343, i32 27 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 343, i32 45 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 345, i32 31 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 347, i32 29 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 349, i32 26 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 349, i32 43 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 351, i32 27 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 418, i32 27 }
@___asan_gen_.922 = private unnamed_addr constant [17 x i8] c"clk_mux_sysbus_p\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 356, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant [20 x i8] c"clk_mux_vcodecbus_p\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 358, i32 1 }
@___asan_gen_.928 = private unnamed_addr constant [17 x i8] c"clk_mux_sd_sys_p\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 365, i32 1 }
@___asan_gen_.931 = private unnamed_addr constant [17 x i8] c"clk_mux_sd_pll_p\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 367, i32 1 }
@___asan_gen_.934 = private unnamed_addr constant [19 x i8] c"clk_mux_sdio_sys_p\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 369, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant [19 x i8] c"clk_mux_sdio_pll_p\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 371, i32 1 }
@___asan_gen_.940 = private unnamed_addr constant [17 x i8] c"clk_mux_a53hpm_p\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 373, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant [15 x i8] c"clk_mux_320m_p\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 375, i32 1 }
@___asan_gen_.946 = private unnamed_addr constant [16 x i8] c"clk_mux_uarth_p\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 377, i32 1 }
@___asan_gen_.949 = private unnamed_addr constant [16 x i8] c"clk_mux_uartl_p\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 379, i32 1 }
@___asan_gen_.952 = private unnamed_addr constant [16 x i8] c"clk_mux_uart0_p\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 381, i32 1 }
@___asan_gen_.955 = private unnamed_addr constant [14 x i8] c"clk_mux_i2c_p\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 383, i32 1 }
@___asan_gen_.958 = private unnamed_addr constant [14 x i8] c"clk_mux_spi_p\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 385, i32 1 }
@___asan_gen_.961 = private unnamed_addr constant [18 x i8] c"clk_mux_pcieaxi_p\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 387, i32 1 }
@___asan_gen_.964 = private unnamed_addr constant [17 x i8] c"clk_mux_ao_asp_p\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 389, i32 1 }
@___asan_gen_.967 = private unnamed_addr constant [15 x i8] c"clk_mux_vdec_p\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 391, i32 1 }
@___asan_gen_.970 = private unnamed_addr constant [15 x i8] c"clk_mux_venc_p\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 397, i32 1 }
@___asan_gen_.973 = private unnamed_addr constant [21 x i8] c"clk_isp_snclk_mux0_p\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 403, i32 1 }
@___asan_gen_.976 = private unnamed_addr constant [21 x i8] c"clk_isp_snclk_mux1_p\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 405, i32 1 }
@___asan_gen_.979 = private unnamed_addr constant [21 x i8] c"clk_isp_snclk_mux2_p\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 407, i32 1 }
@___asan_gen_.982 = private unnamed_addr constant [21 x i8] c"clk_mux_rxdphy_cfg_p\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 409, i32 1 }
@___asan_gen_.985 = private unnamed_addr constant [14 x i8] c"clk_mux_ics_p\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 411, i32 1 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 365, i32 24 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 365, i32 38 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 369, i32 26 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 369, i32 42 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 377, i32 36 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 379, i32 36 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 381, i32 36 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 383, i32 34 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 385, i32 34 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 403, i32 41 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 405, i32 41 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 407, i32 41 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 409, i32 28 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 43, i32 27 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 53, i32 28 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 55, i32 29 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 57, i32 35 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 59, i32 29 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 59, i32 49 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 61, i32 32 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 63, i32 26 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 65, i32 28 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 67, i32 27 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 69, i32 27 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 71, i32 26 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 73, i32 30 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 521, i32 32 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 523, i32 32 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 527, i32 25 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 529, i32 25 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 537, i32 24 }
@___asan_gen_.1081 = private unnamed_addr constant [23 x i8] c"hi3670_pctrl_gate_clks\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 548, i32 37 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 549, i32 29 }
@___asan_gen_.1087 = private unnamed_addr constant [21 x i8] c"hi3670_pmu_gate_clks\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 542, i32 37 }
@___asan_gen_.1090 = private unnamed_addr constant [27 x i8] c"hi3670_sctrl_gate_sep_clks\00", align 1
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 556, i32 37 }
@___asan_gen_.1093 = private unnamed_addr constant [23 x i8] c"hi3670_sctrl_gate_clks\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 609, i32 37 }
@___asan_gen_.1096 = private unnamed_addr constant [22 x i8] c"hi3670_sctrl_mux_clks\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 633, i32 36 }
@___asan_gen_.1099 = private unnamed_addr constant [26 x i8] c"hi3670_sctrl_divider_clks\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 651, i32 40 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 557, i32 26 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 559, i32 25 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 561, i32 33 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 563, i32 24 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 563, i32 39 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 565, i32 24 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 567, i32 25 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 567, i32 41 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 569, i32 26 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 571, i32 32 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 571, i32 55 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 573, i32 31 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 575, i32 26 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 577, i32 26 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 579, i32 26 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 581, i32 26 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 583, i32 26 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 585, i32 26 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 587, i32 26 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 589, i32 26 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 589, i32 43 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 591, i32 26 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 591, i32 43 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 593, i32 29 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 595, i32 28 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 597, i32 37 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 598, i32 4 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 600, i32 32 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 600, i32 55 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 602, i32 30 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 604, i32 34 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 610, i32 29 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 612, i32 37 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 615, i32 32 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 634, i32 31 }
@___asan_gen_.1207 = private unnamed_addr constant [21 x i8] c"clk_mux_ufs_subsys_p\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 620, i32 1 }
@___asan_gen_.1210 = private unnamed_addr constant [18 x i8] c"clk_mux_clkout0_p\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 622, i32 1 }
@___asan_gen_.1213 = private unnamed_addr constant [18 x i8] c"clk_mux_clkout1_p\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 625, i32 1 }
@___asan_gen_.1216 = private unnamed_addr constant [26 x i8] c"clk_mux_asp_subsys_peri_p\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 628, i32 1 }
@___asan_gen_.1219 = private unnamed_addr constant [18 x i8] c"clk_mux_asp_pll_p\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 630, i32 1 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 622, i32 38 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 625, i32 38 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 662, i32 36 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 664, i32 31 }
@___asan_gen_.1234 = private unnamed_addr constant [27 x i8] c"hi3670_iomcu_gate_sep_clks\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 678, i32 37 }
@___asan_gen_.1237 = private unnamed_addr constant [31 x i8] c"hi3670_iomcu_fixed_factor_clks\00", align 1
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 669, i32 45 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 679, i32 32 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 681, i32 32 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 683, i32 32 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 685, i32 32 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 687, i32 32 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 689, i32 33 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 689, i32 57 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 670, i32 26 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 671, i32 26 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 672, i32 26 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 673, i32 26 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 674, i32 26 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 675, i32 27 }
@___asan_gen_.1279 = private unnamed_addr constant [28 x i8] c"hi3670_media1_gate_sep_clks\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 696, i32 37 }
@___asan_gen_.1282 = private unnamed_addr constant [24 x i8] c"hi3670_media1_gate_clks\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 733, i32 37 }
@___asan_gen_.1285 = private unnamed_addr constant [23 x i8] c"hi3670_media1_mux_clks\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 782, i32 36 }
@___asan_gen_.1288 = private unnamed_addr constant [27 x i8] c"hi3670_media1_divider_clks\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 800, i32 40 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 697, i32 30 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 697, i32 51 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 699, i32 34 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 699, i32 59 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 701, i32 32 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 705, i32 67 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 707, i32 26 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 709, i32 26 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 711, i32 57 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 713, i32 26 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 713, i32 43 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 715, i32 26 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 715, i32 43 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 717, i32 30 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 717, i32 51 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 719, i32 25 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 719, i32 41 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 721, i32 26 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 721, i32 43 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 723, i32 32 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 725, i32 45 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 727, i32 28 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 727, i32 47 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 729, i32 32 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 734, i32 35 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 734, i32 61 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 736, i32 27 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 736, i32 45 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 738, i32 27 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 738, i32 45 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 740, i32 27 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 740, i32 45 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 742, i32 32 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 742, i32 55 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 744, i32 29 }
@___asan_gen_.1396 = private unnamed_addr constant [18 x i8] c"clk_mux_vivobus_p\00", align 1
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 749, i32 1 }
@___asan_gen_.1399 = private unnamed_addr constant [15 x i8] c"clk_mux_edc0_p\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 756, i32 1 }
@___asan_gen_.1402 = private unnamed_addr constant [15 x i8] c"clk_mux_ldi0_p\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 762, i32 1 }
@___asan_gen_.1405 = private unnamed_addr constant [15 x i8] c"clk_mux_ldi1_p\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 769, i32 1 }
@___asan_gen_.1408 = private unnamed_addr constant [15 x i8] c"clk_sw_mmbuf_p\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 776, i32 1 }
@___asan_gen_.1411 = private unnamed_addr constant [28 x i8] c"hi3670_media2_gate_sep_clks\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 816, i32 37 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 817, i32 30 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 819, i32 30 }
@___asan_gen_.1420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1421 = private constant [38 x i8] c"../drivers/clk/hisilicon/clk-hi3670.c\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1421, i32 821, i32 29 }
@llvm.compiler.used = appending global [370 x ptr] [ptr @__initcall__kmod_clk_hi3670__170_1016_hi3670_clk_init1, ptr @hi3670_clk_driver, ptr @.str, ptr @hi3670_clk_match_table, ptr @hi3670_fixed_rate_clks, ptr @hi3670_crgctrl_gate_sep_clks, ptr @hi3670_crgctrl_gate_clks, ptr @hi3670_crgctrl_mux_clks, ptr @hi3670_crg_fixed_factor_clks, ptr @hi3670_crgctrl_divider_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @clk_mux_sysbus_p, ptr @clk_mux_vcodecbus_p, ptr @clk_mux_sd_sys_p, ptr @clk_mux_sd_pll_p, ptr @clk_mux_sdio_sys_p, ptr @clk_mux_sdio_pll_p, ptr @clk_mux_a53hpm_p, ptr @clk_mux_320m_p, ptr @clk_mux_uarth_p, ptr @clk_mux_uartl_p, ptr @clk_mux_uart0_p, ptr @clk_mux_i2c_p, ptr @clk_mux_spi_p, ptr @clk_mux_pcieaxi_p, ptr @clk_mux_ao_asp_p, ptr @clk_mux_vdec_p, ptr @clk_mux_venc_p, ptr @clk_isp_snclk_mux0_p, ptr @clk_isp_snclk_mux1_p, ptr @clk_isp_snclk_mux2_p, ptr @clk_mux_rxdphy_cfg_p, ptr @clk_mux_ics_p, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @hi3670_pctrl_gate_clks, ptr @.str.225, ptr @hi3670_pmu_gate_clks, ptr @hi3670_sctrl_gate_sep_clks, ptr @hi3670_sctrl_gate_clks, ptr @hi3670_sctrl_mux_clks, ptr @hi3670_sctrl_divider_clks, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @clk_mux_ufs_subsys_p, ptr @clk_mux_clkout0_p, ptr @clk_mux_clkout1_p, ptr @clk_mux_asp_subsys_peri_p, ptr @clk_mux_asp_pll_p, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @hi3670_iomcu_gate_sep_clks, ptr @hi3670_iomcu_fixed_factor_clks, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @hi3670_media1_gate_sep_clks, ptr @hi3670_media1_gate_clks, ptr @hi3670_media1_mux_clks, ptr @hi3670_media1_divider_clks, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @clk_mux_vivobus_p, ptr @clk_mux_edc0_p, ptr @clk_mux_ldi0_p, ptr @clk_mux_ldi1_p, ptr @clk_sw_mmbuf_p, ptr @hi3670_media2_gate_sep_clks, ptr @.str.313, ptr @.str.314, ptr @.str.315], section "llvm.metadata"
@0 = internal global [369 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_clk_match_table to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_fixed_rate_clks to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_crgctrl_gate_sep_clks to i32), i32 2996, i32 3744, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_crgctrl_gate_clks to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_crgctrl_mux_clks to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_crg_fixed_factor_clks to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_crgctrl_divider_clks to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sysbus_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_vcodecbus_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sd_sys_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sd_pll_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sdio_sys_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sdio_pll_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_a53hpm_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_320m_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_uarth_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_uartl_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_uart0_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_i2c_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_spi_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_pcieaxi_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ao_asp_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_vdec_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_venc_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_isp_snclk_mux0_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_isp_snclk_mux1_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_isp_snclk_mux2_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_rxdphy_cfg_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ics_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pctrl_gate_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_pmu_gate_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_sctrl_gate_sep_clks to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_sctrl_gate_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_sctrl_mux_clks to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_sctrl_divider_clks to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ufs_subsys_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_clkout0_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_clkout1_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_asp_subsys_peri_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_asp_pll_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_iomcu_gate_sep_clks to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_iomcu_fixed_factor_clks to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_media1_gate_sep_clks to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_media1_gate_clks to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_media1_mux_clks to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_media1_divider_clks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_vivobus_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_edc0_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ldi0_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ldi1_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sw_mmbuf_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3670_media2_gate_sep_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3670_clk_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3670_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %call(ptr noundef %1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_crgctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 221) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3670_fixed_rate_clks, i32 noundef 20, ptr noundef nonnull %call) #3
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_crgctrl_gate_sep_clks, i32 noundef 107, ptr noundef nonnull %call) #3
  %call2 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_crgctrl_gate_clks, i32 noundef 28, ptr noundef nonnull %call) #3
  %call3 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3670_crgctrl_mux_clks, i32 noundef 22, ptr noundef nonnull %call) #3
  %call4 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3670_crg_fixed_factor_clks, i32 noundef 18, ptr noundef nonnull %call) #3
  %call5 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3670_crgctrl_divider_clks, i32 noundef 26, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_pctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 2) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_pctrl_gate_clks, i32 noundef 2, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_pmuctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 1) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_pmu_gate_clks, i32 noundef 1, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_sctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 39) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_sctrl_gate_sep_clks, i32 noundef 24, ptr noundef nonnull %call) #3
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_sctrl_gate_clks, i32 noundef 3, ptr noundef nonnull %call) #3
  %call2 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3670_sctrl_mux_clks, i32 noundef 5, ptr noundef nonnull %call) #3
  %call3 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3670_sctrl_divider_clks, i32 noundef 7, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_iomcu_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 13) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_iomcu_gate_sep_clks, i32 noundef 7, ptr noundef nonnull %call) #3
  %call2 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3670_iomcu_fixed_factor_clks, i32 noundef 6, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_media1_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 34) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_media1_gate_sep_clks, i32 noundef 17, ptr noundef nonnull %call) #3
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3670_media1_gate_clks, i32 noundef 6, ptr noundef nonnull %call) #3
  %call2 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3670_media1_mux_clks, i32 noundef 5, ptr noundef nonnull %call) #3
  %call3 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3670_media1_divider_clks, i32 noundef 6, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3670_clk_media2_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 3) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3670_media2_gate_sep_clks, i32 noundef 3, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 369)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 369)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738}
!llvm.module.flags = !{!740, !741, !742, !743, !744, !745, !746, !747}
!llvm.ident = !{!748}

!0 = !{ptr @__initcall__kmod_clk_hi3670__170_1016_hi3670_clk_init1, !1, !"__initcall__kmod_clk_hi3670__170_1016_hi3670_clk_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 1016, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 1007, i32 13}
!4 = !{ptr @hi3670_clk_driver, !5, !"hi3670_clk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 1004, i32 31}
!6 = !{ptr @hi3670_clk_match_table, !7, !"hi3670_clk_match_table", i1 false, i1 false}
!7 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 971, i32 34}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 17, i32 22}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 18, i32 22}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 19, i32 24}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 20, i32 22}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 21, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 22, i32 22}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 23, i32 22}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 24, i32 22}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 25, i32 22}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 26, i32 22}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 27, i32 26}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 28, i32 28}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 29, i32 22}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 30, i32 17}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 31, i32 26}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 32, i32 22}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 33, i32 19}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 34, i32 19}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 35, i32 21}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 36, i32 24}
!48 = !{ptr @hi3670_fixed_rate_clks, !49, !"hi3670_fixed_rate_clks", i1 false, i1 false}
!49 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 16, i32 43}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 80, i32 26}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 82, i32 26}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 84, i32 26}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 86, i32 25}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 88, i32 25}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 90, i32 25}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 92, i32 33}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 94, i32 33}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 96, i32 33}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 98, i32 33}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 100, i32 33}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 102, i32 23}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 102, i32 37}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 104, i32 23}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 106, i32 23}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 108, i32 23}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 110, i32 23}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 112, i32 23}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 114, i32 23}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 116, i32 23}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 118, i32 23}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 120, i32 23}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 122, i32 24}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 124, i32 24}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 126, i32 24}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 128, i32 24}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 130, i32 24}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 132, i32 24}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 134, i32 24}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 136, i32 24}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 138, i32 24}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 140, i32 24}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 142, i32 27}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 144, i32 27}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 146, i32 30}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 146, i32 51}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 148, i32 31}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 148, i32 53}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 150, i32 27}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 152, i32 31}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 152, i32 53}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 154, i32 31}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 154, i32 53}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 156, i32 55}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 158, i32 31}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 158, i32 53}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 160, i32 31}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 162, i32 26}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 164, i32 35}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 164, i32 61}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 166, i32 30}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 166, i32 51}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 168, i32 28}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 170, i32 24}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 170, i32 39}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 172, i32 25}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 174, i32 26}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 174, i32 43}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 176, i32 28}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 176, i32 47}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 178, i32 28}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 180, i32 28}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 182, i32 28}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 184, i32 28}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 186, i32 28}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 188, i32 29}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 190, i32 27}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 192, i32 27}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 192, i32 45}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 194, i32 27}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 196, i32 28}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 198, i32 28}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 200, i32 27}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 200, i32 45}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 202, i32 27}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 204, i32 28}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 206, i32 28}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 208, i32 27}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 208, i32 45}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 210, i32 26}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 210, i32 43}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 212, i32 26}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 214, i32 26}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 216, i32 27}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 218, i32 27}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 220, i32 27}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 222, i32 26}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 222, i32 43}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 224, i32 26}
!228 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 226, i32 27}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 228, i32 27}
!232 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 230, i32 33}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 232, i32 33}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 234, i32 29}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 236, i32 27}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 236, i32 45}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 238, i32 59}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 240, i32 33}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 242, i32 35}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 244, i32 28}
!250 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 246, i32 29}
!252 = !{ptr @.str.122, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 248, i32 28}
!254 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 248, i32 47}
!256 = !{ptr @.str.124, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 250, i32 28}
!258 = !{ptr @.str.125, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 250, i32 47}
!260 = !{ptr @.str.126, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 252, i32 29}
!262 = !{ptr @.str.127, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 252, i32 49}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 254, i32 29}
!266 = !{ptr @.str.129, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 254, i32 49}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 256, i32 25}
!270 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 258, i32 26}
!272 = !{ptr @.str.132, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 258, i32 43}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 260, i32 26}
!276 = !{ptr @.str.134, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 262, i32 29}
!278 = !{ptr @.str.135, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 264, i32 29}
!280 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 266, i32 37}
!282 = !{ptr @.str.137, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 266, i32 65}
!284 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 268, i32 27}
!286 = !{ptr @.str.139, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 270, i32 29}
!288 = !{ptr @.str.140, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 272, i32 32}
!290 = !{ptr @.str.141, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 272, i32 55}
!292 = !{ptr @.str.142, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 274, i32 32}
!294 = !{ptr @.str.143, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 274, i32 55}
!296 = !{ptr @.str.144, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 276, i32 32}
!298 = !{ptr @.str.145, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 276, i32 55}
!300 = !{ptr @.str.146, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 278, i32 33}
!302 = !{ptr @.str.147, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 278, i32 57}
!304 = !{ptr @.str.148, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 280, i32 33}
!306 = !{ptr @.str.149, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 282, i32 33}
!308 = !{ptr @.str.150, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 284, i32 33}
!310 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 286, i32 33}
!312 = !{ptr @.str.152, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 288, i32 33}
!314 = !{ptr @.str.153, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 290, i32 33}
!316 = !{ptr @.str.154, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 292, i32 32}
!318 = !{ptr @hi3670_crgctrl_gate_sep_clks, !319, !"hi3670_crgctrl_gate_sep_clks", i1 false, i1 false}
!319 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 79, i32 37}
!320 = !{ptr @.str.155, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 297, i32 27}
!322 = !{ptr @.str.156, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 301, i32 33}
!324 = !{ptr @.str.157, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 301, i32 57}
!326 = !{ptr @.str.158, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 303, i32 34}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 303, i32 59}
!330 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 305, i32 25}
!332 = !{ptr @.str.161, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 305, i32 41}
!334 = !{ptr @.str.162, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 307, i32 26}
!336 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 309, i32 27}
!338 = !{ptr @.str.164, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 309, i32 45}
!340 = !{ptr @.str.165, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 311, i32 28}
!342 = !{ptr @.str.166, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 313, i32 29}
!344 = !{ptr @.str.167, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 313, i32 49}
!346 = !{ptr @.str.168, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 315, i32 28}
!348 = !{ptr @.str.169, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 315, i32 47}
!350 = !{ptr @.str.170, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 317, i32 28}
!352 = !{ptr @.str.171, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 319, i32 28}
!354 = !{ptr @.str.172, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 321, i32 28}
!356 = !{ptr @.str.173, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 323, i32 26}
!358 = !{ptr @.str.174, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 325, i32 30}
!360 = !{ptr @.str.175, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 325, i32 51}
!362 = !{ptr @.str.176, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 327, i32 30}
!364 = !{ptr @.str.177, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 327, i32 51}
!366 = !{ptr @.str.178, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 329, i32 31}
!368 = !{ptr @.str.179, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 331, i32 31}
!370 = !{ptr @.str.180, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 333, i32 26}
!372 = !{ptr @.str.181, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 335, i32 27}
!374 = !{ptr @.str.182, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 337, i32 27}
!376 = !{ptr @.str.183, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 339, i32 34}
!378 = !{ptr @.str.184, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 341, i32 27}
!380 = !{ptr @.str.185, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 341, i32 45}
!382 = !{ptr @.str.186, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 343, i32 27}
!384 = !{ptr @.str.187, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 343, i32 45}
!386 = !{ptr @.str.188, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 345, i32 31}
!388 = !{ptr @.str.189, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 347, i32 29}
!390 = !{ptr @.str.190, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 349, i32 26}
!392 = !{ptr @.str.191, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 349, i32 43}
!394 = !{ptr @.str.192, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 351, i32 27}
!396 = !{ptr @hi3670_crgctrl_gate_clks, !397, !"hi3670_crgctrl_gate_clks", i1 false, i1 false}
!397 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 296, i32 37}
!398 = !{ptr @.str.193, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 418, i32 27}
!400 = !{ptr @hi3670_crgctrl_mux_clks, !401, !"hi3670_crgctrl_mux_clks", i1 false, i1 false}
!401 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 417, i32 36}
!402 = !{ptr @clk_mux_sysbus_p, !403, !"clk_mux_sysbus_p", i1 false, i1 false}
!403 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 356, i32 1}
!404 = !{ptr @clk_mux_vcodecbus_p, !405, !"clk_mux_vcodecbus_p", i1 false, i1 false}
!405 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 358, i32 1}
!406 = !{ptr @.str.194, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 365, i32 24}
!408 = !{ptr @.str.195, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 365, i32 38}
!410 = !{ptr @clk_mux_sd_sys_p, !411, !"clk_mux_sd_sys_p", i1 false, i1 false}
!411 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 365, i32 1}
!412 = !{ptr @clk_mux_sd_pll_p, !413, !"clk_mux_sd_pll_p", i1 false, i1 false}
!413 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 367, i32 1}
!414 = !{ptr @.str.196, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 369, i32 26}
!416 = !{ptr @.str.197, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 369, i32 42}
!418 = !{ptr @clk_mux_sdio_sys_p, !419, !"clk_mux_sdio_sys_p", i1 false, i1 false}
!419 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 369, i32 1}
!420 = !{ptr @clk_mux_sdio_pll_p, !421, !"clk_mux_sdio_pll_p", i1 false, i1 false}
!421 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 371, i32 1}
!422 = !{ptr @clk_mux_a53hpm_p, !423, !"clk_mux_a53hpm_p", i1 false, i1 false}
!423 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 373, i32 1}
!424 = !{ptr @clk_mux_320m_p, !425, !"clk_mux_320m_p", i1 false, i1 false}
!425 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 375, i32 1}
!426 = !{ptr @.str.198, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 377, i32 36}
!428 = !{ptr @clk_mux_uarth_p, !429, !"clk_mux_uarth_p", i1 false, i1 false}
!429 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 377, i32 1}
!430 = !{ptr @.str.199, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 379, i32 36}
!432 = !{ptr @clk_mux_uartl_p, !433, !"clk_mux_uartl_p", i1 false, i1 false}
!433 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 379, i32 1}
!434 = !{ptr @.str.200, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 381, i32 36}
!436 = !{ptr @clk_mux_uart0_p, !437, !"clk_mux_uart0_p", i1 false, i1 false}
!437 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 381, i32 1}
!438 = !{ptr @.str.201, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 383, i32 34}
!440 = !{ptr @clk_mux_i2c_p, !441, !"clk_mux_i2c_p", i1 false, i1 false}
!441 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 383, i32 1}
!442 = !{ptr @.str.202, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 385, i32 34}
!444 = !{ptr @clk_mux_spi_p, !445, !"clk_mux_spi_p", i1 false, i1 false}
!445 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 385, i32 1}
!446 = !{ptr @clk_mux_pcieaxi_p, !447, !"clk_mux_pcieaxi_p", i1 false, i1 false}
!447 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 387, i32 1}
!448 = !{ptr @clk_mux_ao_asp_p, !449, !"clk_mux_ao_asp_p", i1 false, i1 false}
!449 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 389, i32 1}
!450 = !{ptr @clk_mux_vdec_p, !451, !"clk_mux_vdec_p", i1 false, i1 false}
!451 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 391, i32 1}
!452 = !{ptr @clk_mux_venc_p, !453, !"clk_mux_venc_p", i1 false, i1 false}
!453 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 397, i32 1}
!454 = !{ptr @.str.203, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 403, i32 41}
!456 = !{ptr @clk_isp_snclk_mux0_p, !457, !"clk_isp_snclk_mux0_p", i1 false, i1 false}
!457 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 403, i32 1}
!458 = !{ptr @.str.204, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 405, i32 41}
!460 = !{ptr @clk_isp_snclk_mux1_p, !461, !"clk_isp_snclk_mux1_p", i1 false, i1 false}
!461 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 405, i32 1}
!462 = !{ptr @.str.205, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 407, i32 41}
!464 = !{ptr @clk_isp_snclk_mux2_p, !465, !"clk_isp_snclk_mux2_p", i1 false, i1 false}
!465 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 407, i32 1}
!466 = !{ptr @.str.206, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 409, i32 28}
!468 = !{ptr @clk_mux_rxdphy_cfg_p, !469, !"clk_mux_rxdphy_cfg_p", i1 false, i1 false}
!469 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 409, i32 1}
!470 = !{ptr @clk_mux_ics_p, !471, !"clk_mux_ics_p", i1 false, i1 false}
!471 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 411, i32 1}
!472 = !{ptr @.str.207, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 43, i32 27}
!474 = !{ptr @.str.208, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 53, i32 28}
!476 = !{ptr @.str.209, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 55, i32 29}
!478 = !{ptr @.str.210, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 57, i32 35}
!480 = !{ptr @.str.211, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 59, i32 29}
!482 = !{ptr @.str.212, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 59, i32 49}
!484 = !{ptr @.str.213, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 61, i32 32}
!486 = !{ptr @.str.214, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 63, i32 26}
!488 = !{ptr @.str.215, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 65, i32 28}
!490 = !{ptr @.str.216, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 67, i32 27}
!492 = !{ptr @.str.217, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 69, i32 27}
!494 = !{ptr @.str.218, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 71, i32 26}
!496 = !{ptr @.str.219, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 73, i32 30}
!498 = !{ptr @hi3670_crg_fixed_factor_clks, !499, !"hi3670_crg_fixed_factor_clks", i1 false, i1 false}
!499 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 40, i32 45}
!500 = !{ptr @.str.220, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 521, i32 32}
!502 = !{ptr @.str.221, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 523, i32 32}
!504 = !{ptr @.str.222, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 527, i32 25}
!506 = !{ptr @.str.223, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 529, i32 25}
!508 = !{ptr @.str.224, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 537, i32 24}
!510 = !{ptr @hi3670_crgctrl_divider_clks, !511, !"hi3670_crgctrl_divider_clks", i1 false, i1 false}
!511 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 486, i32 40}
!512 = !{ptr @.str.225, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 549, i32 29}
!514 = !{ptr @hi3670_pctrl_gate_clks, !515, !"hi3670_pctrl_gate_clks", i1 false, i1 false}
!515 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 548, i32 37}
!516 = !{ptr @hi3670_pmu_gate_clks, !517, !"hi3670_pmu_gate_clks", i1 false, i1 false}
!517 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 542, i32 37}
!518 = !{ptr @.str.226, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 557, i32 26}
!520 = !{ptr @.str.227, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 559, i32 25}
!522 = !{ptr @.str.228, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 561, i32 33}
!524 = !{ptr @.str.229, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 563, i32 24}
!526 = !{ptr @.str.230, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 563, i32 39}
!528 = !{ptr @.str.231, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 565, i32 24}
!530 = !{ptr @.str.232, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 567, i32 25}
!532 = !{ptr @.str.233, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 567, i32 41}
!534 = !{ptr @.str.234, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 569, i32 26}
!536 = !{ptr @.str.235, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 571, i32 32}
!538 = !{ptr @.str.236, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 571, i32 55}
!540 = !{ptr @.str.237, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 573, i32 31}
!542 = !{ptr @.str.238, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 575, i32 26}
!544 = !{ptr @.str.239, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 577, i32 26}
!546 = !{ptr @.str.240, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 579, i32 26}
!548 = !{ptr @.str.241, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 581, i32 26}
!550 = !{ptr @.str.242, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 583, i32 26}
!552 = !{ptr @.str.243, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 585, i32 26}
!554 = !{ptr @.str.244, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 587, i32 26}
!556 = !{ptr @.str.245, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 589, i32 26}
!558 = !{ptr @.str.246, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 589, i32 43}
!560 = !{ptr @.str.247, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 591, i32 26}
!562 = !{ptr @.str.248, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 591, i32 43}
!564 = !{ptr @.str.249, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 593, i32 29}
!566 = !{ptr @.str.250, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 595, i32 28}
!568 = !{ptr @.str.251, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 597, i32 37}
!570 = !{ptr @.str.252, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 598, i32 4}
!572 = !{ptr @.str.253, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 600, i32 32}
!574 = !{ptr @.str.254, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 600, i32 55}
!576 = !{ptr @.str.255, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 602, i32 30}
!578 = !{ptr @.str.256, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 604, i32 34}
!580 = !{ptr @hi3670_sctrl_gate_sep_clks, !581, !"hi3670_sctrl_gate_sep_clks", i1 false, i1 false}
!581 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 556, i32 37}
!582 = !{ptr @.str.257, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 610, i32 29}
!584 = !{ptr @.str.258, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 612, i32 37}
!586 = !{ptr @.str.259, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 615, i32 32}
!588 = !{ptr @hi3670_sctrl_gate_clks, !589, !"hi3670_sctrl_gate_clks", i1 false, i1 false}
!589 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 609, i32 37}
!590 = !{ptr @.str.260, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 634, i32 31}
!592 = !{ptr @hi3670_sctrl_mux_clks, !593, !"hi3670_sctrl_mux_clks", i1 false, i1 false}
!593 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 633, i32 36}
!594 = !{ptr @clk_mux_ufs_subsys_p, !595, !"clk_mux_ufs_subsys_p", i1 false, i1 false}
!595 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 620, i32 1}
!596 = !{ptr @.str.261, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 622, i32 38}
!598 = !{ptr @clk_mux_clkout0_p, !599, !"clk_mux_clkout0_p", i1 false, i1 false}
!599 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 622, i32 1}
!600 = !{ptr @.str.262, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 625, i32 38}
!602 = !{ptr @clk_mux_clkout1_p, !603, !"clk_mux_clkout1_p", i1 false, i1 false}
!603 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 625, i32 1}
!604 = !{ptr @clk_mux_asp_subsys_peri_p, !605, !"clk_mux_asp_subsys_peri_p", i1 false, i1 false}
!605 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 628, i32 1}
!606 = !{ptr @clk_mux_asp_pll_p, !607, !"clk_mux_asp_pll_p", i1 false, i1 false}
!607 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 630, i32 1}
!608 = !{ptr @.str.263, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 662, i32 36}
!610 = !{ptr @.str.264, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 664, i32 31}
!612 = !{ptr @hi3670_sctrl_divider_clks, !613, !"hi3670_sctrl_divider_clks", i1 false, i1 false}
!613 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 651, i32 40}
!614 = !{ptr @.str.265, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 679, i32 32}
!616 = !{ptr @.str.266, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 681, i32 32}
!618 = !{ptr @.str.267, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 683, i32 32}
!620 = !{ptr @.str.268, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 685, i32 32}
!622 = !{ptr @.str.269, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 687, i32 32}
!624 = !{ptr @.str.270, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 689, i32 33}
!626 = !{ptr @.str.271, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 689, i32 57}
!628 = !{ptr @hi3670_iomcu_gate_sep_clks, !629, !"hi3670_iomcu_gate_sep_clks", i1 false, i1 false}
!629 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 678, i32 37}
!630 = !{ptr @.str.272, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 670, i32 26}
!632 = !{ptr @.str.273, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 671, i32 26}
!634 = !{ptr @.str.274, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 672, i32 26}
!636 = !{ptr @.str.275, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 673, i32 26}
!638 = !{ptr @.str.276, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 674, i32 26}
!640 = !{ptr @.str.277, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 675, i32 27}
!642 = !{ptr @hi3670_iomcu_fixed_factor_clks, !643, !"hi3670_iomcu_fixed_factor_clks", i1 false, i1 false}
!643 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 669, i32 45}
!644 = !{ptr @.str.278, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 697, i32 30}
!646 = !{ptr @.str.279, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 697, i32 51}
!648 = !{ptr @.str.280, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 699, i32 34}
!650 = !{ptr @.str.281, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 699, i32 59}
!652 = !{ptr @.str.282, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 701, i32 32}
!654 = !{ptr @.str.283, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 705, i32 67}
!656 = !{ptr @.str.284, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 707, i32 26}
!658 = !{ptr @.str.285, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 709, i32 26}
!660 = !{ptr @.str.286, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 711, i32 57}
!662 = !{ptr @.str.287, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 713, i32 26}
!664 = !{ptr @.str.288, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 713, i32 43}
!666 = !{ptr @.str.289, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 715, i32 26}
!668 = !{ptr @.str.290, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 715, i32 43}
!670 = !{ptr @.str.291, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 717, i32 30}
!672 = !{ptr @.str.292, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 717, i32 51}
!674 = !{ptr @.str.293, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 719, i32 25}
!676 = !{ptr @.str.294, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 719, i32 41}
!678 = !{ptr @.str.295, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 721, i32 26}
!680 = !{ptr @.str.296, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 721, i32 43}
!682 = !{ptr @.str.297, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 723, i32 32}
!684 = !{ptr @.str.298, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 725, i32 45}
!686 = !{ptr @.str.299, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 727, i32 28}
!688 = !{ptr @.str.300, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 727, i32 47}
!690 = !{ptr @.str.301, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 729, i32 32}
!692 = !{ptr @hi3670_media1_gate_sep_clks, !693, !"hi3670_media1_gate_sep_clks", i1 false, i1 false}
!693 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 696, i32 37}
!694 = !{ptr @.str.302, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 734, i32 35}
!696 = !{ptr @.str.303, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 734, i32 61}
!698 = !{ptr @.str.304, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 736, i32 27}
!700 = !{ptr @.str.305, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 736, i32 45}
!702 = !{ptr @.str.306, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 738, i32 27}
!704 = !{ptr @.str.307, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 738, i32 45}
!706 = !{ptr @.str.308, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 740, i32 27}
!708 = !{ptr @.str.309, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 740, i32 45}
!710 = !{ptr @.str.310, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 742, i32 32}
!712 = !{ptr @.str.311, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 742, i32 55}
!714 = !{ptr @.str.312, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 744, i32 29}
!716 = !{ptr @hi3670_media1_gate_clks, !717, !"hi3670_media1_gate_clks", i1 false, i1 false}
!717 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 733, i32 37}
!718 = !{ptr @hi3670_media1_mux_clks, !719, !"hi3670_media1_mux_clks", i1 false, i1 false}
!719 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 782, i32 36}
!720 = !{ptr @clk_mux_vivobus_p, !721, !"clk_mux_vivobus_p", i1 false, i1 false}
!721 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 749, i32 1}
!722 = !{ptr @clk_mux_edc0_p, !723, !"clk_mux_edc0_p", i1 false, i1 false}
!723 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 756, i32 1}
!724 = !{ptr @clk_mux_ldi0_p, !725, !"clk_mux_ldi0_p", i1 false, i1 false}
!725 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 762, i32 1}
!726 = !{ptr @clk_mux_ldi1_p, !727, !"clk_mux_ldi1_p", i1 false, i1 false}
!727 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 769, i32 1}
!728 = !{ptr @clk_sw_mmbuf_p, !729, !"clk_sw_mmbuf_p", i1 false, i1 false}
!729 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 776, i32 1}
!730 = !{ptr @hi3670_media1_divider_clks, !731, !"hi3670_media1_divider_clks", i1 false, i1 false}
!731 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 800, i32 40}
!732 = !{ptr @.str.313, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 817, i32 30}
!734 = !{ptr @.str.314, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 819, i32 30}
!736 = !{ptr @.str.315, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 821, i32 29}
!738 = !{ptr @hi3670_media2_gate_sep_clks, !739, !"hi3670_media2_gate_sep_clks", i1 false, i1 false}
!739 = !{!"../drivers/clk/hisilicon/clk-hi3670.c", i32 816, i32 37}
!740 = !{i32 1, !"wchar_size", i32 2}
!741 = !{i32 1, !"min_enum_size", i32 4}
!742 = !{i32 8, !"branch-target-enforcement", i32 0}
!743 = !{i32 8, !"sign-return-address", i32 0}
!744 = !{i32 8, !"sign-return-address-all", i32 0}
!745 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!746 = !{i32 7, !"uwtable", i32 1}
!747 = !{i32 7, !"frame-pointer", i32 2}
!748 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
