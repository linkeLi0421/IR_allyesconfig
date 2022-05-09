; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx8mq.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx8mq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_imx8mq__183_634_imx8mq_clk_driver_init6 = internal global ptr @imx8mq_clk_driver_init, section ".initcall6.init", align 4
@imx8mq_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8mq_clocks_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx8mq_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8mq_clk_driver_exit = internal global ptr @imx8mq_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [48 x i8] c"clk_imx8mq.author=Abel Vesa <abel.vesa@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [48 x i8] c"clk_imx8mq.description=NXP i.MX8MQ clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"clk_imx8mq.file=drivers/clk/imx/clk-imx8mq\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"clk_imx8mq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx8mq-ccm\00", [21 x i8] zeroinitializer }, align 32
@imx8mq_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/imx/clk-imx8mq.c\00", [35 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ckil\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_25m\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_27m\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext1\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext2\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext3\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext4\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx8mq-anatop\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@pll_ref_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.2], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll1_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll2_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_pll1_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys3_pll1_ref_sel\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dram_pll1_ref_sel\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"video2_pll1_ref_sel\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_pll_ref_div\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu_pll_ref_div\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_pll_ref_div\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll1_ref_div\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll2_ref_div\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_pll1_ref_div\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pll1\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pll2\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_pll1\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@arm_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@gpu_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpu_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@vpu_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_pll1_bypass\00", [46 x i8] zeroinitializer }, align 32
@audio_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_pll2_bypass\00", [46 x i8] zeroinitializer }, align 32
@audio_pll2_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"video_pll1_bypass\00", [46 x i8] zeroinitializer }, align 32
@video_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.31, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpu_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll1_out\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll2_out\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video_pll1_out\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys1_pll_out\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys2_pll_out\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys3_pll_out\00", [19 x i8] zeroinitializer }, align 32
@sys3_pll_out_sels = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dram_pll_out\00", [19 x i8] zeroinitializer }, align 32
@dram_pll_out_sels = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video2_pll_out\00", [17 x i8] zeroinitializer }, align 32
@video2_pll_out_sels = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.19], [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys1_pll_40m\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys1_pll_80m\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_133m\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_160m\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_200m\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_266m\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_400m\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys1_pll_800m\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys2_pll_50m\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_166m\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_200m\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_250m\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_333m\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys2_pll_500m\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys2_pll_1000m\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audio_pll1_out_monitor\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audio_pll2_out_monitor\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"video_pll1_out_monitor\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpu_pll_out_monitor\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vpu_pll_out_monitor\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm_pll_out_monitor\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_pll1_out_monitor\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_pll2_out_monitor\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_pll3_out_monitor\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dram_pll_out_monitor\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"video_pll2_out_monitor\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pllout_monitor_sel\00", [45 x i8] zeroinitializer }, align 32
@pllout_monitor_sels = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pllout_monitor_clk2\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_a53_div\00", [20 x i8] zeroinitializer }, align 32
@imx8mq_a53_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.38, ptr @.str.65, ptr @.str.66, ptr @.str.57, ptr @.str.56, ptr @.str.41, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_m4_core\00", [20 x i8] zeroinitializer }, align 32
@imx8mq_arm_m4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.63, ptr @.str.55, ptr @.str.57, ptr @.str.41, ptr @.str.43, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vpu_core\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_vpu_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.38, ptr @.str.65, ptr @.str.66, ptr @.str.57, ptr @.str.56, ptr @.str.41, ptr @.str.40], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpu_core\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_gpu_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.39, ptr @.str.57, ptr @.str.46, ptr @.str.66, ptr @.str.41, ptr @.str.43, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_shader\00", [21 x i8] zeroinitializer }, align 32
@imx8mq_gpu_shader_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.39, ptr @.str.57, ptr @.str.46, ptr @.str.66, ptr @.str.41, ptr @.str.43, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_a53_core\00", [19 x i8] zeroinitializer }, align 32
@imx8mq_a53_core_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.38], [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_main_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.57, ptr @.str.63, ptr @.str.66, ptr @.str.41, ptr @.str.43, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_enet_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.57, ptr @.str.63, ptr @.str.62, ptr @.str.41, ptr @.str.43, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nand_usdhc_bus\00", [17 x i8] zeroinitializer }, align 32
@imx8mq_nand_usdhc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.57, ptr @.str.62, ptr @.str.52, ptr @.str.46, ptr @.str.63, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_bus\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_vpu_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.40, ptr @.str.42, ptr @.str.46, ptr @.str.66, ptr @.str.62, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_disp_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.57, ptr @.str.46, ptr @.str.56, ptr @.str.42, ptr @.str.6, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_apb\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_disp_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.57, ptr @.str.46, ptr @.str.49, ptr @.str.42, ptr @.str.6, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp_rtrm\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_disp_rtrm_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.62, ptr @.str.56, ptr @.str.41, ptr @.str.43, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_bus\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_usb_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.7, ptr @.str.9, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_axi\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_gpu_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.39, ptr @.str.46, ptr @.str.66, ptr @.str.41, ptr @.str.43, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_ahb\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_gpu_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.39, ptr @.str.46, ptr @.str.66, ptr @.str.41, ptr @.str.43, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"noc\00", [28 x i8] zeroinitializer }, align 32
@imx8mq_noc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.46, ptr @.str.66, ptr @.str.65, ptr @.str.41, ptr @.str.43, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noc_apb\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_noc_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.56, ptr @.str.46, ptr @.str.64, ptr @.str.62, ptr @.str.57, ptr @.str.41, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@imx8mq_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.52, ptr @.str.57, ptr @.str.56, ptr @.str.60, ptr @.str.46, ptr @.str.41, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_ahb\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_audio_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.57, ptr @.str.66, ptr @.str.61, ptr @.str.46, ptr @.str.41, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipg_root\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipg_audio_root\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dram_core_clk\00", [18 x i8] zeroinitializer }, align 32
@imx8mq_dram_core_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.232], [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_alt\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_dram_alt_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.51, ptr @.str.65, ptr @.str.63, ptr @.str.56, ptr @.str.41, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_apb\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_dram_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.49, ptr @.str.53, ptr @.str.57, ptr @.str.46, ptr @.str.63, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu_g1\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_vpu_g1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.57, ptr @.str.66, ptr @.str.51, ptr @.str.60, ptr @.str.46, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu_g2\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_vpu_g2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.57, ptr @.str.66, ptr @.str.51, ptr @.str.60, ptr @.str.46, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disp_dtrc\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_disp_dtrc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.57, ptr @.str.66, ptr @.str.53, ptr @.str.59, ptr @.str.46, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disp_dc8000\00", [20 x i8] zeroinitializer }, align 32
@imx8mq_disp_dc8000_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.57, ptr @.str.66, ptr @.str.53, ptr @.str.59, ptr @.str.46, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie1_ctrl\00", [21 x i8] zeroinitializer }, align 32
@imx8mq_pcie1_ctrl_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.62, ptr @.str.55, ptr @.str.57, ptr @.str.65, ptr @.str.64, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie1_phy\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_pcie1_phy_sels = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.65, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie1_aux\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_pcie1_aux_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.58, ptr @.str.46, ptr @.str.59, ptr @.str.50, ptr @.str.53, ptr @.str.54], [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dc_pixel\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_dc_pixel_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.43, ptr @.str.42, ptr @.str.41, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lcdif_pixel\00", [20 x i8] zeroinitializer }, align 32
@imx8mq_lcdif_pixel_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.43, ptr @.str.42, ptr @.str.41, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_sai1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.6, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_sai2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_sai3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai4\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_sai4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.6, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai5\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_sai5_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai6\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_sai6_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spdif1\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_spdif1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spdif2\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_spdif2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.5, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_enet_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.65, ptr @.str.59, ptr @.str.53, ptr @.str.41, ptr @.str.43, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enet_timer\00", [21 x i8] zeroinitializer }, align 32
@imx8mq_enet_timer_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.41, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_phy\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_enet_phy_sels = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.60, ptr @.str.65, ptr @.str.41, ptr @.str.43, ptr @.str.42], [36 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_nand_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.41, ptr @.str.56, ptr @.str.42, ptr @.str.46, ptr @.str.63, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_qspi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.56, ptr @.str.57, ptr @.str.65, ptr @.str.42, ptr @.str.55, ptr @.str.46, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_usdhc1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.56, ptr @.str.57, ptr @.str.65, ptr @.str.46, ptr @.str.55, ptr @.str.42, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_usdhc2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.56, ptr @.str.57, ptr @.str.65, ptr @.str.46, ptr @.str.55, ptr @.str.42, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_i2c1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.53, ptr @.str.58, ptr @.str.46, ptr @.str.41, ptr @.str.43, ptr @.str.42, ptr @.str.52], [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_i2c2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.53, ptr @.str.58, ptr @.str.46, ptr @.str.41, ptr @.str.43, ptr @.str.42, ptr @.str.52], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_i2c3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.53, ptr @.str.58, ptr @.str.46, ptr @.str.41, ptr @.str.43, ptr @.str.42, ptr @.str.52], [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_i2c4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.53, ptr @.str.58, ptr @.str.46, ptr @.str.41, ptr @.str.43, ptr @.str.42, ptr @.str.52], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_uart1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.50, ptr @.str.62, ptr @.str.59, ptr @.str.46, ptr @.str.7, ptr @.str.9, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_uart2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.50, ptr @.str.62, ptr @.str.59, ptr @.str.46, ptr @.str.7, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_uart3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.50, ptr @.str.62, ptr @.str.59, ptr @.str.46, ptr @.str.7, ptr @.str.9, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_uart4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.50, ptr @.str.62, ptr @.str.59, ptr @.str.46, ptr @.str.7, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_core_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mq_usb_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.51, ptr @.str.49, ptr @.str.59, ptr @.str.62, ptr @.str.7, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@imx8mq_usb_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.51, ptr @.str.49, ptr @.str.59, ptr @.str.62, ptr @.str.7, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gic\00", [28 x i8] zeroinitializer }, align 32
@imx8mq_gic_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.49, ptr @.str.59, ptr @.str.62, ptr @.str.7, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_ecspi1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.49, ptr @.str.53, ptr @.str.57, ptr @.str.46, ptr @.str.63, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_ecspi2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.49, ptr @.str.53, ptr @.str.57, ptr @.str.46, ptr @.str.63, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_pwm1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.53, ptr @.str.49, ptr @.str.46, ptr @.str.6, ptr @.str.50, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_pwm2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.53, ptr @.str.49, ptr @.str.46, ptr @.str.6, ptr @.str.50, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_pwm3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.53, ptr @.str.49, ptr @.str.46, ptr @.str.7, ptr @.str.50, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_pwm4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.53, ptr @.str.49, ptr @.str.46, ptr @.str.7, ptr @.str.50, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt1\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_gpt1_sels = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.56, ptr @.str.49, ptr @.str.50, ptr @.str.41, ptr @.str.6], [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdog\00", [27 x i8] zeroinitializer }, align 32
@imx8mq_wdog_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.52, ptr @.str.53, ptr @.str.40, ptr @.str.60, ptr @.str.46, ptr @.str.50, ptr @.str.61], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wrclk\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_wrclk_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.40, ptr @.str.46, ptr @.str.62, ptr @.str.55, ptr @.str.65, ptr @.str.51], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clko1\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_clko1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.5, ptr @.str.54, ptr @.str.42, ptr @.str.65, ptr @.str.40, ptr @.str.50], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clko2\00", [26 x i8] zeroinitializer }, align 32
@imx8mq_clko2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.56, ptr @.str.61, ptr @.str.46, ptr @.str.41, ptr @.str.43, ptr @.str.3], [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi_core\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_dsi_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.63, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@imx8mq_dsi_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.59, ptr @.str.57, ptr @.str.66, ptr @.str.7, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_dbi\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_dsi_dbi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.59, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_esc\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_dsi_esc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.50, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_ahb\00", [24 x i8] zeroinitializer }, align 32
@imx8mq_dsi_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.50, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi_ipg_div\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csi1_core\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_csi1_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.63, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi1_phy_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mq_csi1_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.59, ptr @.str.57, ptr @.str.66, ptr @.str.7, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi1_esc\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_csi1_esc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.50, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"csi2_core\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_csi2_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.63, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi2_phy_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mq_csi2_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.59, ptr @.str.57, ptr @.str.66, ptr @.str.7, ptr @.str.42, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_esc\00", [23 x i8] zeroinitializer }, align 32
@imx8mq_csi2_esc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.50, ptr @.str.57, ptr @.str.66, ptr @.str.46, ptr @.str.8, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie2_ctrl\00", [21 x i8] zeroinitializer }, align 32
@imx8mq_pcie2_ctrl_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.62, ptr @.str.55, ptr @.str.57, ptr @.str.65, ptr @.str.64, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie2_phy\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_pcie2_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.65, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie2_aux\00", [22 x i8] zeroinitializer }, align 32
@imx8mq_pcie2_aux_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.58, ptr @.str.46, ptr @.str.59, ptr @.str.50, ptr @.str.53, ptr @.str.54], [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@imx8mq_ecspi3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.62, ptr @.str.49, ptr @.str.53, ptr @.str.57, ptr @.str.46, ptr @.str.63, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi3_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enet1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio4_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio5_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mu_root_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocotp_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcie1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcie2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qspi_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_nand = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nand_usdhc_rawnand_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai1_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai2_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.197 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai3_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai4_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai5_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai5_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai6_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai6_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snvs_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart4_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb1_ctrl_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb2_ctrl_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb1_phy_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb2_phy_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_g1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_g2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disp_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_dcss = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.222 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disp_axi_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disp_apb_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"disp_rtrm_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vpu_dec_root_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csi1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csi2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpt_3m\00", [25 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dram_alt_root\00", [18 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@imx8mq_clocks_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.1, i32 601, ptr @.str.236, ptr @.str.237 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register hws for i.MX8MQ\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx8mq_clocks_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8mq_clocks_probe._entry_ptr = internal global ptr @imx8mq_clocks_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"imx8mq_clk_driver\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 622, i32 31 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 625, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"imx8mq_clk_of_match\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 615, i32 34 }
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 281, i32 36 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 293, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 282, i32 24 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 299, i32 43 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 300, i32 52 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 301, i32 52 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 302, i32 52 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 303, i32 53 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 304, i32 53 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 305, i32 53 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 306, i32 53 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 308, i32 43 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 314, i32 32 }
@___asan_gen_.286 = private unnamed_addr constant [13 x i8] c"pll_ref_sels\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 28, i32 27 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 315, i32 32 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 316, i32 32 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 317, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 318, i32 35 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 319, i32 35 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 320, i32 34 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 321, i32 34 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 322, i32 36 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 324, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 325, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 326, i32 32 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 327, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 328, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 329, i32 35 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 331, i32 44 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 332, i32 44 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 333, i32 44 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 334, i32 47 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 335, i32 47 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 336, i32 47 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 339, i32 31 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c"arm_pll_bypass_sels\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 29, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 340, i32 31 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c"gpu_pll_bypass_sels\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 30, i32 27 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 341, i32 31 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c"vpu_pll_bypass_sels\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 31, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 342, i32 34 }
@___asan_gen_.370 = private unnamed_addr constant [23 x i8] c"audio_pll1_bypass_sels\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 32, i32 27 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 343, i32 34 }
@___asan_gen_.376 = private unnamed_addr constant [23 x i8] c"audio_pll2_bypass_sels\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 33, i32 27 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 344, i32 34 }
@___asan_gen_.382 = private unnamed_addr constant [23 x i8] c"video_pll1_bypass_sels\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 34, i32 27 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 347, i32 28 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 348, i32 28 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 349, i32 28 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 350, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 351, i32 31 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 352, i32 31 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 354, i32 46 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 355, i32 46 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 356, i32 49 }
@___asan_gen_.412 = private unnamed_addr constant [18 x i8] c"sys3_pll_out_sels\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 36, i32 27 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 357, i32 49 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"dram_pll_out_sels\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 37, i32 27 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 358, i32 51 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c"video2_pll_out_sels\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 38, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 361, i32 53 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 362, i32 53 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 363, i32 54 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 364, i32 54 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 365, i32 54 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 366, i32 54 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 367, i32 54 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 368, i32 54 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 369, i32 54 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 372, i32 53 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 373, i32 54 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 374, i32 54 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 375, i32 54 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 376, i32 54 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 377, i32 54 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 378, i32 54 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 379, i32 54 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 380, i32 55 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 382, i32 39 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 383, i32 39 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 384, i32 39 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 385, i32 36 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 386, i32 36 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 387, i32 36 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 388, i32 37 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 389, i32 37 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 390, i32 37 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 391, i32 37 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 392, i32 39 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 393, i32 28 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c"pllout_monitor_sels\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 273, i32 27 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 394, i32 33 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 402, i32 28 }
@___asan_gen_.526 = private unnamed_addr constant [16 x i8] c"imx8mq_a53_sels\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 41, i32 27 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 406, i32 28 }
@___asan_gen_.532 = private unnamed_addr constant [19 x i8] c"imx8mq_arm_m4_sels\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 46, i32 27 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 407, i32 29 }
@___asan_gen_.538 = private unnamed_addr constant [16 x i8] c"imx8mq_vpu_sels\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 49, i32 27 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 408, i32 29 }
@___asan_gen_.544 = private unnamed_addr constant [21 x i8] c"imx8mq_gpu_core_sels\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 52, i32 27 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 409, i32 31 }
@___asan_gen_.550 = private unnamed_addr constant [23 x i8] c"imx8mq_gpu_shader_sels\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 55, i32 27 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 425, i32 29 }
@___asan_gen_.556 = private unnamed_addr constant [21 x i8] c"imx8mq_a53_core_sels\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 44, i32 27 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 428, i32 29 }
@___asan_gen_.562 = private unnamed_addr constant [21 x i8] c"imx8mq_main_axi_sels\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 58, i32 27 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 429, i32 29 }
@___asan_gen_.568 = private unnamed_addr constant [21 x i8] c"imx8mq_enet_axi_sels\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 61, i32 27 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 430, i32 35 }
@___asan_gen_.574 = private unnamed_addr constant [23 x i8] c"imx8mq_nand_usdhc_sels\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 64, i32 27 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 431, i32 28 }
@___asan_gen_.580 = private unnamed_addr constant [20 x i8] c"imx8mq_vpu_bus_sels\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 67, i32 27 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 432, i32 29 }
@___asan_gen_.586 = private unnamed_addr constant [21 x i8] c"imx8mq_disp_axi_sels\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 69, i32 27 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 433, i32 29 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c"imx8mq_disp_apb_sels\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 71, i32 27 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 434, i32 30 }
@___asan_gen_.598 = private unnamed_addr constant [22 x i8] c"imx8mq_disp_rtrm_sels\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 74, i32 27 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 435, i32 28 }
@___asan_gen_.604 = private unnamed_addr constant [20 x i8] c"imx8mq_usb_bus_sels\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 77, i32 27 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 436, i32 28 }
@___asan_gen_.610 = private unnamed_addr constant [20 x i8] c"imx8mq_gpu_axi_sels\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 80, i32 27 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 437, i32 28 }
@___asan_gen_.616 = private unnamed_addr constant [20 x i8] c"imx8mq_gpu_ahb_sels\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 83, i32 27 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 438, i32 24 }
@___asan_gen_.622 = private unnamed_addr constant [16 x i8] c"imx8mq_noc_sels\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 86, i32 27 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 439, i32 28 }
@___asan_gen_.628 = private unnamed_addr constant [20 x i8] c"imx8mq_noc_apb_sels\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 89, i32 27 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 443, i32 24 }
@___asan_gen_.634 = private unnamed_addr constant [16 x i8] c"imx8mq_ahb_sels\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 92, i32 27 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 444, i32 30 }
@___asan_gen_.640 = private unnamed_addr constant [22 x i8] c"imx8mq_audio_ahb_sels\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 95, i32 27 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 447, i32 29 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 448, i32 35 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 455, i32 30 }
@___asan_gen_.652 = private unnamed_addr constant [22 x i8] c"imx8mq_dram_core_sels\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 266, i32 27 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 456, i32 29 }
@___asan_gen_.658 = private unnamed_addr constant [21 x i8] c"imx8mq_dram_alt_sels\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 101, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 457, i32 29 }
@___asan_gen_.664 = private unnamed_addr constant [21 x i8] c"imx8mq_dram_apb_sels\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 104, i32 27 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 460, i32 27 }
@___asan_gen_.670 = private unnamed_addr constant [19 x i8] c"imx8mq_vpu_g1_sels\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 107, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 461, i32 27 }
@___asan_gen_.676 = private unnamed_addr constant [19 x i8] c"imx8mq_vpu_g2_sels\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 109, i32 27 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 462, i32 30 }
@___asan_gen_.682 = private unnamed_addr constant [22 x i8] c"imx8mq_disp_dtrc_sels\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 111, i32 27 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 463, i32 32 }
@___asan_gen_.688 = private unnamed_addr constant [24 x i8] c"imx8mq_disp_dc8000_sels\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 113, i32 27 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 464, i32 31 }
@___asan_gen_.694 = private unnamed_addr constant [23 x i8] c"imx8mq_pcie1_ctrl_sels\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 115, i32 27 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 465, i32 30 }
@___asan_gen_.700 = private unnamed_addr constant [22 x i8] c"imx8mq_pcie1_phy_sels\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 118, i32 27 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 466, i32 30 }
@___asan_gen_.706 = private unnamed_addr constant [22 x i8] c"imx8mq_pcie1_aux_sels\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 121, i32 27 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 467, i32 29 }
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c"imx8mq_dc_pixel_sels\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 124, i32 27 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 468, i32 32 }
@___asan_gen_.718 = private unnamed_addr constant [24 x i8] c"imx8mq_lcdif_pixel_sels\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 126, i32 27 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 469, i32 25 }
@___asan_gen_.724 = private unnamed_addr constant [17 x i8] c"imx8mq_sai1_sels\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 128, i32 27 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 470, i32 25 }
@___asan_gen_.730 = private unnamed_addr constant [17 x i8] c"imx8mq_sai2_sels\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 130, i32 27 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 471, i32 25 }
@___asan_gen_.736 = private unnamed_addr constant [17 x i8] c"imx8mq_sai3_sels\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 132, i32 27 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 472, i32 25 }
@___asan_gen_.742 = private unnamed_addr constant [17 x i8] c"imx8mq_sai4_sels\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 134, i32 27 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 473, i32 25 }
@___asan_gen_.748 = private unnamed_addr constant [17 x i8] c"imx8mq_sai5_sels\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 136, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 474, i32 25 }
@___asan_gen_.754 = private unnamed_addr constant [17 x i8] c"imx8mq_sai6_sels\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 138, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 475, i32 27 }
@___asan_gen_.760 = private unnamed_addr constant [19 x i8] c"imx8mq_spdif1_sels\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 140, i32 27 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 476, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant [19 x i8] c"imx8mq_spdif2_sels\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 142, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 477, i32 29 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c"imx8mq_enet_ref_sels\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 144, i32 27 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 478, i32 31 }
@___asan_gen_.778 = private unnamed_addr constant [23 x i8] c"imx8mq_enet_timer_sels\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 147, i32 27 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 479, i32 33 }
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c"imx8mq_enet_phy_sels\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 150, i32 27 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 480, i32 25 }
@___asan_gen_.790 = private unnamed_addr constant [17 x i8] c"imx8mq_nand_sels\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 153, i32 27 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 481, i32 25 }
@___asan_gen_.796 = private unnamed_addr constant [17 x i8] c"imx8mq_qspi_sels\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 156, i32 27 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 482, i32 27 }
@___asan_gen_.802 = private unnamed_addr constant [19 x i8] c"imx8mq_usdhc1_sels\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 159, i32 27 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 483, i32 27 }
@___asan_gen_.808 = private unnamed_addr constant [19 x i8] c"imx8mq_usdhc2_sels\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 162, i32 27 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 484, i32 25 }
@___asan_gen_.814 = private unnamed_addr constant [17 x i8] c"imx8mq_i2c1_sels\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 165, i32 27 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 485, i32 25 }
@___asan_gen_.820 = private unnamed_addr constant [17 x i8] c"imx8mq_i2c2_sels\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 168, i32 27 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 486, i32 25 }
@___asan_gen_.826 = private unnamed_addr constant [17 x i8] c"imx8mq_i2c3_sels\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 171, i32 27 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 487, i32 25 }
@___asan_gen_.832 = private unnamed_addr constant [17 x i8] c"imx8mq_i2c4_sels\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 174, i32 27 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 488, i32 26 }
@___asan_gen_.838 = private unnamed_addr constant [18 x i8] c"imx8mq_uart1_sels\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 177, i32 27 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 489, i32 26 }
@___asan_gen_.844 = private unnamed_addr constant [18 x i8] c"imx8mq_uart2_sels\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 180, i32 27 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 490, i32 26 }
@___asan_gen_.850 = private unnamed_addr constant [18 x i8] c"imx8mq_uart3_sels\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 183, i32 27 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 491, i32 26 }
@___asan_gen_.856 = private unnamed_addr constant [18 x i8] c"imx8mq_uart4_sels\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 186, i32 27 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 492, i32 33 }
@___asan_gen_.862 = private unnamed_addr constant [21 x i8] c"imx8mq_usb_core_sels\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 189, i32 27 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 493, i32 32 }
@___asan_gen_.868 = private unnamed_addr constant [20 x i8] c"imx8mq_usb_phy_sels\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 192, i32 27 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 494, i32 24 }
@___asan_gen_.874 = private unnamed_addr constant [16 x i8] c"imx8mq_gic_sels\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 195, i32 27 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 495, i32 27 }
@___asan_gen_.880 = private unnamed_addr constant [19 x i8] c"imx8mq_ecspi1_sels\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 198, i32 27 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 496, i32 27 }
@___asan_gen_.886 = private unnamed_addr constant [19 x i8] c"imx8mq_ecspi2_sels\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 201, i32 27 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 497, i32 25 }
@___asan_gen_.892 = private unnamed_addr constant [17 x i8] c"imx8mq_pwm1_sels\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 204, i32 27 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 498, i32 25 }
@___asan_gen_.898 = private unnamed_addr constant [17 x i8] c"imx8mq_pwm2_sels\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 207, i32 27 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 499, i32 25 }
@___asan_gen_.904 = private unnamed_addr constant [17 x i8] c"imx8mq_pwm3_sels\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 210, i32 27 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 500, i32 25 }
@___asan_gen_.910 = private unnamed_addr constant [17 x i8] c"imx8mq_pwm4_sels\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 213, i32 27 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 501, i32 25 }
@___asan_gen_.916 = private unnamed_addr constant [17 x i8] c"imx8mq_gpt1_sels\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 216, i32 27 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 502, i32 25 }
@___asan_gen_.922 = private unnamed_addr constant [17 x i8] c"imx8mq_wdog_sels\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 219, i32 27 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 503, i32 26 }
@___asan_gen_.928 = private unnamed_addr constant [18 x i8] c"imx8mq_wrclk_sels\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 222, i32 27 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 504, i32 26 }
@___asan_gen_.934 = private unnamed_addr constant [18 x i8] c"imx8mq_clko1_sels\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 268, i32 27 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 505, i32 26 }
@___asan_gen_.940 = private unnamed_addr constant [18 x i8] c"imx8mq_clko2_sels\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 270, i32 27 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 506, i32 29 }
@___asan_gen_.946 = private unnamed_addr constant [21 x i8] c"imx8mq_dsi_core_sels\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 225, i32 27 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 507, i32 32 }
@___asan_gen_.952 = private unnamed_addr constant [20 x i8] c"imx8mq_dsi_phy_sels\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 228, i32 27 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 508, i32 28 }
@___asan_gen_.958 = private unnamed_addr constant [20 x i8] c"imx8mq_dsi_dbi_sels\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 231, i32 27 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 509, i32 28 }
@___asan_gen_.964 = private unnamed_addr constant [20 x i8] c"imx8mq_dsi_esc_sels\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 234, i32 27 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 510, i32 28 }
@___asan_gen_.970 = private unnamed_addr constant [20 x i8] c"imx8mq_dsi_ahb_sels\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 98, i32 27 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 511, i32 32 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 512, i32 30 }
@___asan_gen_.979 = private unnamed_addr constant [22 x i8] c"imx8mq_csi1_core_sels\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 237, i32 27 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 513, i32 33 }
@___asan_gen_.985 = private unnamed_addr constant [21 x i8] c"imx8mq_csi1_phy_sels\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 240, i32 27 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 514, i32 29 }
@___asan_gen_.991 = private unnamed_addr constant [21 x i8] c"imx8mq_csi1_esc_sels\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 243, i32 27 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 515, i32 30 }
@___asan_gen_.997 = private unnamed_addr constant [22 x i8] c"imx8mq_csi2_core_sels\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 246, i32 27 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 516, i32 33 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c"imx8mq_csi2_phy_sels\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 249, i32 27 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 517, i32 29 }
@___asan_gen_.1009 = private unnamed_addr constant [21 x i8] c"imx8mq_csi2_esc_sels\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 252, i32 27 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 518, i32 31 }
@___asan_gen_.1015 = private unnamed_addr constant [23 x i8] c"imx8mq_pcie2_ctrl_sels\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 255, i32 27 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 519, i32 30 }
@___asan_gen_.1021 = private unnamed_addr constant [22 x i8] c"imx8mq_pcie2_phy_sels\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 258, i32 27 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 520, i32 30 }
@___asan_gen_.1027 = private unnamed_addr constant [22 x i8] c"imx8mq_pcie2_aux_sels\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 261, i32 27 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 521, i32 27 }
@___asan_gen_.1033 = private unnamed_addr constant [19 x i8] c"imx8mq_ecspi3_sels\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 264, i32 27 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 523, i32 32 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 524, i32 32 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 525, i32 32 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 526, i32 31 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 527, i32 31 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 528, i32 31 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 529, i32 31 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 530, i32 31 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 531, i32 31 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 532, i32 30 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 533, i32 30 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 534, i32 30 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 535, i32 30 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 536, i32 30 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 537, i32 28 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 538, i32 31 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 539, i32 31 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 540, i32 31 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 541, i32 30 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 542, i32 30 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 543, i32 30 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 544, i32 30 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 545, i32 30 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 546, i32 33 }
@___asan_gen_.1108 = private unnamed_addr constant [17 x i8] c"share_count_nand\00", align 1
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 26, i32 12 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 547, i32 47 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 548, i32 30 }
@___asan_gen_.1117 = private unnamed_addr constant [17 x i8] c"share_count_sai1\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 19, i32 12 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 549, i32 29 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 550, i32 30 }
@___asan_gen_.1126 = private unnamed_addr constant [17 x i8] c"share_count_sai2\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 20, i32 12 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 551, i32 29 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 552, i32 30 }
@___asan_gen_.1135 = private unnamed_addr constant [17 x i8] c"share_count_sai3\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 21, i32 12 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 553, i32 29 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 554, i32 30 }
@___asan_gen_.1144 = private unnamed_addr constant [17 x i8] c"share_count_sai4\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 22, i32 12 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 555, i32 29 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 556, i32 30 }
@___asan_gen_.1153 = private unnamed_addr constant [17 x i8] c"share_count_sai5\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 23, i32 12 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 557, i32 29 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 558, i32 30 }
@___asan_gen_.1162 = private unnamed_addr constant [17 x i8] c"share_count_sai6\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 24, i32 12 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 559, i32 29 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 560, i32 30 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 561, i32 31 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 562, i32 31 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 563, i32 31 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 564, i32 31 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 565, i32 35 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 566, i32 35 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 567, i32 34 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 568, i32 34 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 569, i32 32 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 570, i32 32 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 571, i32 31 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 572, i32 31 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 573, i32 31 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 574, i32 32 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 575, i32 29 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 576, i32 32 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 577, i32 30 }
@___asan_gen_.1222 = private unnamed_addr constant [17 x i8] c"share_count_dcss\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 25, i32 12 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 578, i32 35 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 579, i32 35 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 580, i32 35 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 581, i32 29 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 582, i32 33 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 583, i32 30 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 584, i32 30 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 585, i32 31 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 586, i32 31 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 588, i32 51 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 589, i32 58 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 591, i32 39 }
@___asan_gen_.1261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1274 = private constant [32 x i8] c"../drivers/clk/imx/clk-imx8mq.c\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1274, i32 601, i32 3 }
@llvm.compiler.used = appending global [354 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx8mq_clk_driver_exit, ptr @__initcall__kmod_clk_imx8mq__183_634_imx8mq_clk_driver_init6, ptr @imx8mq_clk_driver_exit, ptr @imx8mq_clocks_probe._entry, ptr @imx8mq_clocks_probe._entry_ptr, ptr @imx8mq_clk_driver, ptr @.str, ptr @imx8mq_clk_of_match, ptr @clk_hw_data, ptr @.str.1, ptr @hws, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @pll_ref_sels, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @arm_pll_bypass_sels, ptr @.str.33, ptr @gpu_pll_bypass_sels, ptr @.str.34, ptr @vpu_pll_bypass_sels, ptr @.str.35, ptr @audio_pll1_bypass_sels, ptr @.str.36, ptr @audio_pll2_bypass_sels, ptr @.str.37, ptr @video_pll1_bypass_sels, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @sys3_pll_out_sels, ptr @.str.47, ptr @dram_pll_out_sels, ptr @.str.48, ptr @video2_pll_out_sels, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @pllout_monitor_sels, ptr @.str.79, ptr @.str.80, ptr @imx8mq_a53_sels, ptr @.str.81, ptr @imx8mq_arm_m4_sels, ptr @.str.82, ptr @imx8mq_vpu_sels, ptr @.str.83, ptr @imx8mq_gpu_core_sels, ptr @.str.84, ptr @imx8mq_gpu_shader_sels, ptr @.str.85, ptr @imx8mq_a53_core_sels, ptr @.str.86, ptr @imx8mq_main_axi_sels, ptr @.str.87, ptr @imx8mq_enet_axi_sels, ptr @.str.88, ptr @imx8mq_nand_usdhc_sels, ptr @.str.89, ptr @imx8mq_vpu_bus_sels, ptr @.str.90, ptr @imx8mq_disp_axi_sels, ptr @.str.91, ptr @imx8mq_disp_apb_sels, ptr @.str.92, ptr @imx8mq_disp_rtrm_sels, ptr @.str.93, ptr @imx8mq_usb_bus_sels, ptr @.str.94, ptr @imx8mq_gpu_axi_sels, ptr @.str.95, ptr @imx8mq_gpu_ahb_sels, ptr @.str.96, ptr @imx8mq_noc_sels, ptr @.str.97, ptr @imx8mq_noc_apb_sels, ptr @.str.98, ptr @imx8mq_ahb_sels, ptr @.str.99, ptr @imx8mq_audio_ahb_sels, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @imx8mq_dram_core_sels, ptr @.str.103, ptr @imx8mq_dram_alt_sels, ptr @.str.104, ptr @imx8mq_dram_apb_sels, ptr @.str.105, ptr @imx8mq_vpu_g1_sels, ptr @.str.106, ptr @imx8mq_vpu_g2_sels, ptr @.str.107, ptr @imx8mq_disp_dtrc_sels, ptr @.str.108, ptr @imx8mq_disp_dc8000_sels, ptr @.str.109, ptr @imx8mq_pcie1_ctrl_sels, ptr @.str.110, ptr @imx8mq_pcie1_phy_sels, ptr @.str.111, ptr @imx8mq_pcie1_aux_sels, ptr @.str.112, ptr @imx8mq_dc_pixel_sels, ptr @.str.113, ptr @imx8mq_lcdif_pixel_sels, ptr @.str.114, ptr @imx8mq_sai1_sels, ptr @.str.115, ptr @imx8mq_sai2_sels, ptr @.str.116, ptr @imx8mq_sai3_sels, ptr @.str.117, ptr @imx8mq_sai4_sels, ptr @.str.118, ptr @imx8mq_sai5_sels, ptr @.str.119, ptr @imx8mq_sai6_sels, ptr @.str.120, ptr @imx8mq_spdif1_sels, ptr @.str.121, ptr @imx8mq_spdif2_sels, ptr @.str.122, ptr @imx8mq_enet_ref_sels, ptr @.str.123, ptr @imx8mq_enet_timer_sels, ptr @.str.124, ptr @imx8mq_enet_phy_sels, ptr @.str.125, ptr @imx8mq_nand_sels, ptr @.str.126, ptr @imx8mq_qspi_sels, ptr @.str.127, ptr @imx8mq_usdhc1_sels, ptr @.str.128, ptr @imx8mq_usdhc2_sels, ptr @.str.129, ptr @imx8mq_i2c1_sels, ptr @.str.130, ptr @imx8mq_i2c2_sels, ptr @.str.131, ptr @imx8mq_i2c3_sels, ptr @.str.132, ptr @imx8mq_i2c4_sels, ptr @.str.133, ptr @imx8mq_uart1_sels, ptr @.str.134, ptr @imx8mq_uart2_sels, ptr @.str.135, ptr @imx8mq_uart3_sels, ptr @.str.136, ptr @imx8mq_uart4_sels, ptr @.str.137, ptr @imx8mq_usb_core_sels, ptr @.str.138, ptr @imx8mq_usb_phy_sels, ptr @.str.139, ptr @imx8mq_gic_sels, ptr @.str.140, ptr @imx8mq_ecspi1_sels, ptr @.str.141, ptr @imx8mq_ecspi2_sels, ptr @.str.142, ptr @imx8mq_pwm1_sels, ptr @.str.143, ptr @imx8mq_pwm2_sels, ptr @.str.144, ptr @imx8mq_pwm3_sels, ptr @.str.145, ptr @imx8mq_pwm4_sels, ptr @.str.146, ptr @imx8mq_gpt1_sels, ptr @.str.147, ptr @imx8mq_wdog_sels, ptr @.str.148, ptr @imx8mq_wrclk_sels, ptr @.str.149, ptr @imx8mq_clko1_sels, ptr @.str.150, ptr @imx8mq_clko2_sels, ptr @.str.151, ptr @imx8mq_dsi_core_sels, ptr @.str.152, ptr @imx8mq_dsi_phy_sels, ptr @.str.153, ptr @imx8mq_dsi_dbi_sels, ptr @.str.154, ptr @imx8mq_dsi_esc_sels, ptr @.str.155, ptr @imx8mq_dsi_ahb_sels, ptr @.str.156, ptr @.str.157, ptr @imx8mq_csi1_core_sels, ptr @.str.158, ptr @imx8mq_csi1_phy_sels, ptr @.str.159, ptr @imx8mq_csi1_esc_sels, ptr @.str.160, ptr @imx8mq_csi2_core_sels, ptr @.str.161, ptr @imx8mq_csi2_phy_sels, ptr @.str.162, ptr @imx8mq_csi2_esc_sels, ptr @.str.163, ptr @imx8mq_pcie2_ctrl_sels, ptr @.str.164, ptr @imx8mq_pcie2_phy_sels, ptr @.str.165, ptr @imx8mq_pcie2_aux_sels, ptr @.str.166, ptr @imx8mq_ecspi3_sels, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @share_count_nand, ptr @.str.191, ptr @.str.192, ptr @share_count_sai1, ptr @.str.193, ptr @.str.194, ptr @share_count_sai2, ptr @.str.195, ptr @.str.196, ptr @share_count_sai3, ptr @.str.197, ptr @.str.198, ptr @share_count_sai4, ptr @.str.199, ptr @.str.200, ptr @share_count_sai5, ptr @.str.201, ptr @.str.202, ptr @share_count_sai6, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @share_count_dcss, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237], section "llvm.metadata"
@0 = internal global [346 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ref_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys3_pll_out_sels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_pll_out_sels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video2_pll_out_sels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllout_monitor_sels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_a53_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_arm_m4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_gpu_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_gpu_shader_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_a53_core_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_main_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_enet_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_nand_usdhc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_disp_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_disp_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_disp_rtrm_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_usb_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_gpu_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_gpu_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_noc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_noc_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_audio_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dram_core_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dram_alt_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dram_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_g1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_g2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_disp_dtrc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_disp_dc8000_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pcie1_ctrl_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pcie1_phy_sels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pcie1_aux_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dc_pixel_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_lcdif_pixel_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_sai1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_sai2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_sai3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_sai4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_sai5_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_sai6_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_spdif1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_spdif2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_enet_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_enet_timer_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_enet_phy_sels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_nand_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_qspi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_usdhc1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_usdhc2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_i2c1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_i2c2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_i2c3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_i2c4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_uart1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_uart2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_uart3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_uart4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_usb_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_usb_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_gic_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_ecspi1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_ecspi2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pwm1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pwm2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pwm3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pwm4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_gpt1_sels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_wdog_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_wrclk_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_clko1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_clko2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dsi_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dsi_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dsi_dbi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dsi_esc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_dsi_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_csi1_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_csi1_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_csi1_esc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_csi2_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_csi2_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_csi2_esc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pcie2_ctrl_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pcie2_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_pcie2_aux_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_ecspi3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_nand to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_dcss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_clocks_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8mq_clk_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8mq_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8mq_clk_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_clocks_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1216) #8
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !708

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 293, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 303, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %4 = load ptr, ptr @hws, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %4, align 4
  %call27 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %6 = load ptr, ptr @hws, align 4
  %arrayidx28 = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %arrayidx28, align 4
  %call29 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %8 = load ptr, ptr @hws, align 4
  %arrayidx30 = getelementptr ptr, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %arrayidx30, align 4
  %call31 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.5) #5
  %10 = load ptr, ptr @hws, align 4
  %arrayidx32 = getelementptr ptr, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call31, ptr %arrayidx32, align 4
  %call33 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.6) #5
  %12 = load ptr, ptr @hws, align 4
  %arrayidx34 = getelementptr ptr, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %arrayidx34, align 4
  %call35 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.7) #5
  %14 = load ptr, ptr @hws, align 4
  %arrayidx36 = getelementptr ptr, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call35, ptr %arrayidx36, align 4
  %call37 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  %16 = load ptr, ptr @hws, align 4
  %arrayidx38 = getelementptr ptr, ptr %16, i32 6
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call37, ptr %arrayidx38, align 4
  %call39 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.9) #5
  %18 = load ptr, ptr @hws, align 4
  %arrayidx40 = getelementptr ptr, ptr %18, i32 7
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call39, ptr %arrayidx40, align 4
  %call41 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #5
  %call42 = tail call ptr @of_iomap(ptr noundef %call41, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef %call41) #5
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %do.end62, label %if.end78, !prof !708

do.end62:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 311, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end78:                                         ; preds = %if.end25
  %add.ptr = getelementptr i8, ptr %call42, i32 40
  %call.i1023 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %20 = load ptr, ptr @hws, align 4
  %arrayidx80 = getelementptr ptr, ptr %20, i32 8
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i1023, ptr %arrayidx80, align 4
  %add.ptr81 = getelementptr i8, ptr %call42, i32 24
  %call.i1024 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr81, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %22 = load ptr, ptr @hws, align 4
  %arrayidx83 = getelementptr ptr, ptr %22, i32 13
  %23 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i1024, ptr %arrayidx83, align 4
  %add.ptr84 = getelementptr i8, ptr %call42, i32 32
  %call.i1025 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr84, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %24 = load ptr, ptr @hws, align 4
  %arrayidx86 = getelementptr ptr, ptr %24, i32 18
  %25 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i1025, ptr %arrayidx86, align 4
  %call.i1026 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call42, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %26 = load ptr, ptr @hws, align 4
  %arrayidx89 = getelementptr ptr, ptr %26, i32 23
  %27 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i1026, ptr %arrayidx89, align 4
  %add.ptr90 = getelementptr i8, ptr %call42, i32 8
  %call.i1027 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr90, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %28 = load ptr, ptr @hws, align 4
  %arrayidx92 = getelementptr ptr, ptr %28, i32 28
  %29 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i1027, ptr %arrayidx92, align 4
  %add.ptr93 = getelementptr i8, ptr %call42, i32 16
  %call.i1028 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr93, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %30 = load ptr, ptr @hws, align 4
  %arrayidx95 = getelementptr ptr, ptr %30, i32 33
  %31 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i1028, ptr %arrayidx95, align 4
  %add.ptr96 = getelementptr i8, ptr %call42, i32 72
  %call.i1029 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr96, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %32 = load ptr, ptr @hws, align 4
  %arrayidx98 = getelementptr ptr, ptr %32, i32 54
  %33 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i1029, ptr %arrayidx98, align 4
  %add.ptr99 = getelementptr i8, ptr %call42, i32 96
  %call.i1030 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr99, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %34 = load ptr, ptr @hws, align 4
  %arrayidx101 = getelementptr ptr, ptr %34, i32 62
  %35 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i1030, ptr %arrayidx101, align 4
  %add.ptr102 = getelementptr i8, ptr %call42, i32 84
  %call.i1031 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr102, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %36 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %36, i32 266
  %37 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i1031, ptr %arrayidx104, align 4
  %call.i1032 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %38 = load ptr, ptr @hws, align 4
  %arrayidx107 = getelementptr ptr, ptr %38, i32 9
  %39 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i1032, ptr %arrayidx107, align 4
  %call.i1033 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %40 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %40, i32 14
  %41 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i1033, ptr %arrayidx110, align 4
  %call.i1034 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %42 = load ptr, ptr @hws, align 4
  %arrayidx113 = getelementptr ptr, ptr %42, i32 19
  %43 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i1034, ptr %arrayidx113, align 4
  %call.i1035 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef nonnull %call42, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %44 = load ptr, ptr @hws, align 4
  %arrayidx116 = getelementptr ptr, ptr %44, i32 24
  %45 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i1035, ptr %arrayidx116, align 4
  %call.i1036 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %46 = load ptr, ptr @hws, align 4
  %arrayidx119 = getelementptr ptr, ptr %46, i32 29
  %47 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i1036, ptr %arrayidx119, align 4
  %call.i1037 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.16, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %48 = load ptr, ptr @hws, align 4
  %arrayidx122 = getelementptr ptr, ptr %48, i32 34
  %49 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i1037, ptr %arrayidx122, align 4
  %call124 = tail call ptr @imx_clk_hw_frac_pll(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, ptr noundef %add.ptr) #5
  %50 = load ptr, ptr @hws, align 4
  %arrayidx125 = getelementptr ptr, ptr %50, i32 10
  %51 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call124, ptr %arrayidx125, align 4
  %call127 = tail call ptr @imx_clk_hw_frac_pll(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, ptr noundef %add.ptr81) #5
  %52 = load ptr, ptr @hws, align 4
  %arrayidx128 = getelementptr ptr, ptr %52, i32 15
  %53 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call127, ptr %arrayidx128, align 4
  %call130 = tail call ptr @imx_clk_hw_frac_pll(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.22, ptr noundef %add.ptr84) #5
  %54 = load ptr, ptr @hws, align 4
  %arrayidx131 = getelementptr ptr, ptr %54, i32 20
  %55 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call130, ptr %arrayidx131, align 4
  %call133 = tail call ptr @imx_clk_hw_frac_pll(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.23, ptr noundef nonnull %call42) #5
  %56 = load ptr, ptr @hws, align 4
  %arrayidx134 = getelementptr ptr, ptr %56, i32 25
  %57 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call133, ptr %arrayidx134, align 4
  %call136 = tail call ptr @imx_clk_hw_frac_pll(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24, ptr noundef %add.ptr90) #5
  %58 = load ptr, ptr @hws, align 4
  %arrayidx137 = getelementptr ptr, ptr %58, i32 30
  %59 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call136, ptr %arrayidx137, align 4
  %call139 = tail call ptr @imx_clk_hw_frac_pll(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.25, ptr noundef %add.ptr93) #5
  %60 = load ptr, ptr @hws, align 4
  %arrayidx140 = getelementptr ptr, ptr %60, i32 35
  %61 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call139, ptr %arrayidx140, align 4
  %call.i1038 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, i8 noundef zeroext 2, ptr noundef nonnull @arm_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %62 = load ptr, ptr @hws, align 4
  %arrayidx143 = getelementptr ptr, ptr %62, i32 11
  %63 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i1038, ptr %arrayidx143, align 4
  %call.i1039 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, i8 noundef zeroext 2, ptr noundef nonnull @gpu_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr81, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %64 = load ptr, ptr @hws, align 4
  %arrayidx146 = getelementptr ptr, ptr %64, i32 16
  %65 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i1039, ptr %arrayidx146, align 4
  %call.i1040 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, i8 noundef zeroext 2, ptr noundef nonnull @vpu_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr84, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %66 = load ptr, ptr @hws, align 4
  %arrayidx149 = getelementptr ptr, ptr %66, i32 21
  %67 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i1040, ptr %arrayidx149, align 4
  %call.i1041 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, i8 noundef zeroext 2, ptr noundef nonnull @audio_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call42, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %68 = load ptr, ptr @hws, align 4
  %arrayidx152 = getelementptr ptr, ptr %68, i32 26
  %69 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i1041, ptr %arrayidx152, align 4
  %call.i1042 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, i8 noundef zeroext 2, ptr noundef nonnull @audio_pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr90, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %70 = load ptr, ptr @hws, align 4
  %arrayidx155 = getelementptr ptr, ptr %70, i32 31
  %71 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i1042, ptr %arrayidx155, align 4
  %call.i1043 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, i8 noundef zeroext 2, ptr noundef nonnull @video_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr93, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %72 = load ptr, ptr @hws, align 4
  %arrayidx158 = getelementptr ptr, ptr %72, i32 36
  %73 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i1043, ptr %arrayidx158, align 4
  %call.i1044 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %74 = load ptr, ptr @hws, align 4
  %arrayidx161 = getelementptr ptr, ptr %74, i32 12
  %75 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i1044, ptr %arrayidx161, align 4
  %call.i1045 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr81, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %76 = load ptr, ptr @hws, align 4
  %arrayidx164 = getelementptr ptr, ptr %76, i32 17
  %77 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i1045, ptr %arrayidx164, align 4
  %call.i1046 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %78 = load ptr, ptr @hws, align 4
  %arrayidx167 = getelementptr ptr, ptr %78, i32 22
  %79 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i1046, ptr %arrayidx167, align 4
  %call.i1047 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef nonnull %call42, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %80 = load ptr, ptr @hws, align 4
  %arrayidx170 = getelementptr ptr, ptr %80, i32 27
  %81 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i1047, ptr %arrayidx170, align 4
  %call.i1048 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr90, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %82 = load ptr, ptr @hws, align 4
  %arrayidx173 = getelementptr ptr, ptr %82, i32 32
  %83 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i1048, ptr %arrayidx173, align 4
  %call.i1049 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr93, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %84 = load ptr, ptr @hws, align 4
  %arrayidx176 = getelementptr ptr, ptr %84, i32 37
  %85 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i1049, ptr %arrayidx176, align 4
  %call.i1050 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 800000000, i32 noundef 0, i32 noundef 0) #5
  %86 = load ptr, ptr @hws, align 4
  %arrayidx178 = getelementptr ptr, ptr %86, i32 231
  %87 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i1050, ptr %arrayidx178, align 4
  %call.i1051 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 1000000000, i32 noundef 0, i32 noundef 0) #5
  %88 = load ptr, ptr @hws, align 4
  %arrayidx180 = getelementptr ptr, ptr %88, i32 232
  %89 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i1051, ptr %arrayidx180, align 4
  %call182 = tail call ptr @imx_clk_hw_sscg_pll(ptr noundef nonnull @.str.46, ptr noundef nonnull @sys3_pll_out_sels, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %add.ptr96, i32 noundef 2048) #5
  %90 = load ptr, ptr @hws, align 4
  %arrayidx183 = getelementptr ptr, ptr %90, i32 233
  %91 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call182, ptr %arrayidx183, align 4
  %call185 = tail call ptr @imx_clk_hw_sscg_pll(ptr noundef nonnull @.str.47, ptr noundef nonnull @dram_pll_out_sels, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %add.ptr99, i32 noundef 2112) #5
  %92 = load ptr, ptr @hws, align 4
  %arrayidx186 = getelementptr ptr, ptr %92, i32 234
  %93 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call185, ptr %arrayidx186, align 4
  %call188 = tail call ptr @imx_clk_hw_sscg_pll(ptr noundef nonnull @.str.48, ptr noundef nonnull @video2_pll_out_sels, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %add.ptr102, i32 noundef 0) #5
  %94 = load ptr, ptr @hws, align 4
  %arrayidx189 = getelementptr ptr, ptr %94, i32 254
  %95 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call188, ptr %arrayidx189, align 4
  %call.i1052 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 20) #5
  %96 = load ptr, ptr @hws, align 4
  %arrayidx191 = getelementptr ptr, ptr %96, i32 70
  %97 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i1052, ptr %arrayidx191, align 4
  %call.i1053 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 10) #5
  %98 = load ptr, ptr @hws, align 4
  %arrayidx193 = getelementptr ptr, ptr %98, i32 71
  %99 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i1053, ptr %arrayidx193, align 4
  %call.i1054 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %100 = load ptr, ptr @hws, align 4
  %arrayidx195 = getelementptr ptr, ptr %100, i32 72
  %101 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i1054, ptr %arrayidx195, align 4
  %call.i1055 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 6) #5
  %102 = load ptr, ptr @hws, align 4
  %arrayidx197 = getelementptr ptr, ptr %102, i32 73
  %103 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i1055, ptr %arrayidx197, align 4
  %call.i1056 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 5) #5
  %104 = load ptr, ptr @hws, align 4
  %arrayidx199 = getelementptr ptr, ptr %104, i32 74
  %105 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i1056, ptr %arrayidx199, align 4
  %call.i1057 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %106 = load ptr, ptr @hws, align 4
  %arrayidx201 = getelementptr ptr, ptr %106, i32 75
  %107 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i1057, ptr %arrayidx201, align 4
  %call.i1058 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 3) #5
  %108 = load ptr, ptr @hws, align 4
  %arrayidx203 = getelementptr ptr, ptr %108, i32 76
  %109 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i1058, ptr %arrayidx203, align 4
  %call.i1059 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %110 = load ptr, ptr @hws, align 4
  %arrayidx205 = getelementptr ptr, ptr %110, i32 77
  %111 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i1059, ptr %arrayidx205, align 4
  %call.i1060 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 1) #5
  %112 = load ptr, ptr @hws, align 4
  %arrayidx207 = getelementptr ptr, ptr %112, i32 78
  %113 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i1060, ptr %arrayidx207, align 4
  %call.i1061 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 20) #5
  %114 = load ptr, ptr @hws, align 4
  %arrayidx209 = getelementptr ptr, ptr %114, i32 79
  %115 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i1061, ptr %arrayidx209, align 4
  %call.i1062 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 10) #5
  %116 = load ptr, ptr @hws, align 4
  %arrayidx211 = getelementptr ptr, ptr %116, i32 80
  %117 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i1062, ptr %arrayidx211, align 4
  %call.i1063 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %118 = load ptr, ptr @hws, align 4
  %arrayidx213 = getelementptr ptr, ptr %118, i32 81
  %119 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i1063, ptr %arrayidx213, align 4
  %call.i1064 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 6) #5
  %120 = load ptr, ptr @hws, align 4
  %arrayidx215 = getelementptr ptr, ptr %120, i32 82
  %121 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i1064, ptr %arrayidx215, align 4
  %call.i1065 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 5) #5
  %122 = load ptr, ptr @hws, align 4
  %arrayidx217 = getelementptr ptr, ptr %122, i32 83
  %123 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i1065, ptr %arrayidx217, align 4
  %call.i1066 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %124 = load ptr, ptr @hws, align 4
  %arrayidx219 = getelementptr ptr, ptr %124, i32 84
  %125 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i1066, ptr %arrayidx219, align 4
  %call.i1067 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 3) #5
  %126 = load ptr, ptr @hws, align 4
  %arrayidx221 = getelementptr ptr, ptr %126, i32 85
  %127 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i1067, ptr %arrayidx221, align 4
  %call.i1068 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %128 = load ptr, ptr @hws, align 4
  %arrayidx223 = getelementptr ptr, ptr %128, i32 86
  %129 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i1068, ptr %arrayidx223, align 4
  %call.i1069 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 1) #5
  %130 = load ptr, ptr @hws, align 4
  %arrayidx225 = getelementptr ptr, ptr %130, i32 87
  %131 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i1069, ptr %arrayidx225, align 4
  %add.ptr226 = getelementptr i8, ptr %call42, i32 120
  %call.i1070 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %132 = load ptr, ptr @hws, align 4
  %arrayidx228 = getelementptr ptr, ptr %132, i32 290
  %133 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i1070, ptr %arrayidx228, align 4
  %call.i1071 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %134 = load ptr, ptr @hws, align 4
  %arrayidx231 = getelementptr ptr, ptr %134, i32 291
  %135 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i1071, ptr %arrayidx231, align 4
  %call.i1072 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %136 = load ptr, ptr @hws, align 4
  %arrayidx234 = getelementptr ptr, ptr %136, i32 292
  %137 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i1072, ptr %arrayidx234, align 4
  %call.i1073 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %138 = load ptr, ptr @hws, align 4
  %arrayidx237 = getelementptr ptr, ptr %138, i32 293
  %139 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i1073, ptr %arrayidx237, align 4
  %call.i1074 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %140 = load ptr, ptr @hws, align 4
  %arrayidx240 = getelementptr ptr, ptr %140, i32 294
  %141 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i1074, ptr %arrayidx240, align 4
  %call.i1075 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr226, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %142 = load ptr, ptr @hws, align 4
  %arrayidx243 = getelementptr ptr, ptr %142, i32 295
  %143 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i1075, ptr %arrayidx243, align 4
  %add.ptr244 = getelementptr i8, ptr %call42, i32 124
  %call.i1076 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.44, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr244, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %144 = load ptr, ptr @hws, align 4
  %arrayidx246 = getelementptr ptr, ptr %144, i32 296
  %145 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i1076, ptr %arrayidx246, align 4
  %call.i1077 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.45, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr244, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %146 = load ptr, ptr @hws, align 4
  %arrayidx249 = getelementptr ptr, ptr %146, i32 297
  %147 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i1077, ptr %arrayidx249, align 4
  %call.i1078 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.46, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr244, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %148 = load ptr, ptr @hws, align 4
  %arrayidx252 = getelementptr ptr, ptr %148, i32 298
  %149 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i1078, ptr %arrayidx252, align 4
  %call.i1079 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.47, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr244, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %150 = load ptr, ptr @hws, align 4
  %arrayidx255 = getelementptr ptr, ptr %150, i32 299
  %151 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i1079, ptr %arrayidx255, align 4
  %call.i1080 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr244, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %152 = load ptr, ptr @hws, align 4
  %arrayidx258 = getelementptr ptr, ptr %152, i32 300
  %153 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i1080, ptr %arrayidx258, align 4
  %add.ptr259 = getelementptr i8, ptr %call42, i32 116
  %call.i1081 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 16, ptr noundef nonnull @pllout_monitor_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr259, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %154 = load ptr, ptr @hws, align 4
  %arrayidx261 = getelementptr ptr, ptr %154, i32 301
  %155 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i1081, ptr %arrayidx261, align 4
  %call.i1082 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr259, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %156 = load ptr, ptr @hws, align 4
  %arrayidx264 = getelementptr ptr, ptr %156, i32 302
  %157 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i1082, ptr %arrayidx264, align 4
  %158 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %of_node, align 8
  %call266 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call266, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end284, label %if.end301, !prof !708

do.end284:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 9, ptr noundef null) #5
  %160 = ptrtoint ptr %call266 to i32
  br label %cleanup

if.end301:                                        ; preds = %if.end78
  %add.ptr302 = getelementptr i8, ptr %call266, i32 32768
  %call303 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.80, ptr noundef nonnull @imx8mq_a53_sels, i32 noundef 8, ptr noundef %add.ptr302, i32 noundef 1, i32 noundef 4224) #5
  %161 = load ptr, ptr @hws, align 4
  %arrayidx304 = getelementptr ptr, ptr %161, i32 90
  %162 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call303, ptr %arrayidx304, align 4
  %arrayidx306 = getelementptr ptr, ptr %161, i32 89
  %163 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call303, ptr %arrayidx306, align 4
  %arrayidx308 = getelementptr ptr, ptr %161, i32 88
  %164 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call303, ptr %arrayidx308, align 4
  %add.ptr309 = getelementptr i8, ptr %call266, i32 32896
  %call310 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.81, ptr noundef nonnull @imx8mq_arm_m4_sels, i32 noundef 8, ptr noundef %add.ptr309, i32 noundef 1, i32 noundef 4224) #5
  %165 = load ptr, ptr @hws, align 4
  %arrayidx311 = getelementptr ptr, ptr %165, i32 287
  %166 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call310, ptr %arrayidx311, align 4
  %add.ptr312 = getelementptr i8, ptr %call266, i32 33024
  %call313 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.82, ptr noundef nonnull @imx8mq_vpu_sels, i32 noundef 8, ptr noundef %add.ptr312, i32 noundef 1, i32 noundef 4224) #5
  %167 = load ptr, ptr @hws, align 4
  %arrayidx314 = getelementptr ptr, ptr %167, i32 288
  %168 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call313, ptr %arrayidx314, align 4
  %add.ptr315 = getelementptr i8, ptr %call266, i32 33152
  %call316 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.83, ptr noundef nonnull @imx8mq_gpu_core_sels, i32 noundef 8, ptr noundef %add.ptr315, i32 noundef 1, i32 noundef 4224) #5
  %169 = load ptr, ptr @hws, align 4
  %arrayidx317 = getelementptr ptr, ptr %169, i32 285
  %170 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call316, ptr %arrayidx317, align 4
  %add.ptr318 = getelementptr i8, ptr %call266, i32 33280
  %call319 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.84, ptr noundef nonnull @imx8mq_gpu_shader_sels, i32 noundef 8, ptr noundef %add.ptr318, i32 noundef 0, i32 noundef 4224) #5
  %171 = load ptr, ptr @hws, align 4
  %arrayidx320 = getelementptr ptr, ptr %171, i32 286
  %172 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call319, ptr %arrayidx320, align 4
  %arrayidx321 = getelementptr ptr, ptr %171, i32 287
  %173 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx321, align 4
  %arrayidx322 = getelementptr ptr, ptr %171, i32 91
  %175 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %arrayidx322, align 4
  %arrayidx324 = getelementptr ptr, ptr %171, i32 92
  %176 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %174, ptr %arrayidx324, align 4
  %arrayidx326 = getelementptr ptr, ptr %171, i32 93
  %177 = ptrtoint ptr %arrayidx326 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %arrayidx326, align 4
  %arrayidx327 = getelementptr ptr, ptr %171, i32 288
  %178 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx327, align 4
  %arrayidx328 = getelementptr ptr, ptr %171, i32 94
  %180 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %arrayidx328, align 4
  %arrayidx330 = getelementptr ptr, ptr %171, i32 95
  %181 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %179, ptr %arrayidx330, align 4
  %arrayidx332 = getelementptr ptr, ptr %171, i32 96
  %182 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %arrayidx332, align 4
  %arrayidx333 = getelementptr ptr, ptr %171, i32 285
  %183 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx333, align 4
  %arrayidx334 = getelementptr ptr, ptr %171, i32 97
  %185 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %184, ptr %arrayidx334, align 4
  %arrayidx336 = getelementptr ptr, ptr %171, i32 98
  %186 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %184, ptr %arrayidx336, align 4
  %arrayidx338 = getelementptr ptr, ptr %171, i32 99
  %187 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %184, ptr %arrayidx338, align 4
  %arrayidx340 = getelementptr ptr, ptr %171, i32 100
  %188 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call319, ptr %arrayidx340, align 4
  %arrayidx342 = getelementptr ptr, ptr %171, i32 101
  %189 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call319, ptr %arrayidx342, align 4
  %arrayidx344 = getelementptr ptr, ptr %171, i32 102
  %190 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call319, ptr %arrayidx344, align 4
  %add.ptr345 = getelementptr i8, ptr %call266, i32 39040
  %call.i1083 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @imx8mq_a53_core_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr345, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %191 = load ptr, ptr @hws, align 4
  %arrayidx347 = getelementptr ptr, ptr %191, i32 289
  %192 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call.i1083, ptr %arrayidx347, align 4
  %add.ptr348 = getelementptr i8, ptr %call266, i32 34816
  %call349 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.86, ptr noundef nonnull @imx8mq_main_axi_sels, i32 noundef 8, ptr noundef %add.ptr348, i32 noundef 2, i32 noundef 6272) #5
  %193 = load ptr, ptr @hws, align 4
  %arrayidx350 = getelementptr ptr, ptr %193, i32 103
  %194 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call349, ptr %arrayidx350, align 4
  %add.ptr351 = getelementptr i8, ptr %call266, i32 34944
  %call352 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.87, ptr noundef nonnull @imx8mq_enet_axi_sels, i32 noundef 8, ptr noundef %add.ptr351, i32 noundef 2, i32 noundef 4224) #5
  %195 = load ptr, ptr @hws, align 4
  %arrayidx353 = getelementptr ptr, ptr %195, i32 104
  %196 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call352, ptr %arrayidx353, align 4
  %add.ptr354 = getelementptr i8, ptr %call266, i32 35072
  %call355 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.88, ptr noundef nonnull @imx8mq_nand_usdhc_sels, i32 noundef 8, ptr noundef %add.ptr354, i32 noundef 2, i32 noundef 4224) #5
  %197 = load ptr, ptr @hws, align 4
  %arrayidx356 = getelementptr ptr, ptr %197, i32 105
  %198 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call355, ptr %arrayidx356, align 4
  %add.ptr357 = getelementptr i8, ptr %call266, i32 35200
  %call358 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.89, ptr noundef nonnull @imx8mq_vpu_bus_sels, i32 noundef 8, ptr noundef %add.ptr357, i32 noundef 2, i32 noundef 4224) #5
  %199 = load ptr, ptr @hws, align 4
  %arrayidx359 = getelementptr ptr, ptr %199, i32 106
  %200 = ptrtoint ptr %arrayidx359 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call358, ptr %arrayidx359, align 4
  %add.ptr360 = getelementptr i8, ptr %call266, i32 35328
  %call361 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.90, ptr noundef nonnull @imx8mq_disp_axi_sels, i32 noundef 8, ptr noundef %add.ptr360, i32 noundef 2, i32 noundef 4224) #5
  %201 = load ptr, ptr @hws, align 4
  %arrayidx362 = getelementptr ptr, ptr %201, i32 107
  %202 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call361, ptr %arrayidx362, align 4
  %add.ptr363 = getelementptr i8, ptr %call266, i32 35456
  %call364 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.91, ptr noundef nonnull @imx8mq_disp_apb_sels, i32 noundef 8, ptr noundef %add.ptr363, i32 noundef 2, i32 noundef 4224) #5
  %203 = load ptr, ptr @hws, align 4
  %arrayidx365 = getelementptr ptr, ptr %203, i32 108
  %204 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call364, ptr %arrayidx365, align 4
  %add.ptr366 = getelementptr i8, ptr %call266, i32 35584
  %call367 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.92, ptr noundef nonnull @imx8mq_disp_rtrm_sels, i32 noundef 8, ptr noundef %add.ptr366, i32 noundef 2, i32 noundef 4224) #5
  %205 = load ptr, ptr @hws, align 4
  %arrayidx368 = getelementptr ptr, ptr %205, i32 109
  %206 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call367, ptr %arrayidx368, align 4
  %add.ptr369 = getelementptr i8, ptr %call266, i32 35712
  %call370 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.93, ptr noundef nonnull @imx8mq_usb_bus_sels, i32 noundef 8, ptr noundef %add.ptr369, i32 noundef 2, i32 noundef 4224) #5
  %207 = load ptr, ptr @hws, align 4
  %arrayidx371 = getelementptr ptr, ptr %207, i32 110
  %208 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call370, ptr %arrayidx371, align 4
  %add.ptr372 = getelementptr i8, ptr %call266, i32 35840
  %call373 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.94, ptr noundef nonnull @imx8mq_gpu_axi_sels, i32 noundef 8, ptr noundef %add.ptr372, i32 noundef 2, i32 noundef 4224) #5
  %209 = load ptr, ptr @hws, align 4
  %arrayidx374 = getelementptr ptr, ptr %209, i32 111
  %210 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call373, ptr %arrayidx374, align 4
  %add.ptr375 = getelementptr i8, ptr %call266, i32 35968
  %call376 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.95, ptr noundef nonnull @imx8mq_gpu_ahb_sels, i32 noundef 8, ptr noundef %add.ptr375, i32 noundef 2, i32 noundef 4224) #5
  %211 = load ptr, ptr @hws, align 4
  %arrayidx377 = getelementptr ptr, ptr %211, i32 112
  %212 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call376, ptr %arrayidx377, align 4
  %add.ptr378 = getelementptr i8, ptr %call266, i32 36096
  %call379 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.96, ptr noundef nonnull @imx8mq_noc_sels, i32 noundef 8, ptr noundef %add.ptr378, i32 noundef 2, i32 noundef 6272) #5
  %213 = load ptr, ptr @hws, align 4
  %arrayidx380 = getelementptr ptr, ptr %213, i32 113
  %214 = ptrtoint ptr %arrayidx380 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call379, ptr %arrayidx380, align 4
  %add.ptr381 = getelementptr i8, ptr %call266, i32 36224
  %call382 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.97, ptr noundef nonnull @imx8mq_noc_apb_sels, i32 noundef 8, ptr noundef %add.ptr381, i32 noundef 2, i32 noundef 6272) #5
  %215 = load ptr, ptr @hws, align 4
  %arrayidx383 = getelementptr ptr, ptr %215, i32 115
  %216 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call382, ptr %arrayidx383, align 4
  %add.ptr384 = getelementptr i8, ptr %call266, i32 36864
  %call385 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.98, ptr noundef nonnull @imx8mq_ahb_sels, i32 noundef 8, ptr noundef %add.ptr384, i32 noundef 2, i32 noundef 6272) #5
  %217 = load ptr, ptr @hws, align 4
  %arrayidx386 = getelementptr ptr, ptr %217, i32 116
  %218 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call385, ptr %arrayidx386, align 4
  %add.ptr387 = getelementptr i8, ptr %call266, i32 37120
  %call388 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.99, ptr noundef nonnull @imx8mq_audio_ahb_sels, i32 noundef 8, ptr noundef %add.ptr387, i32 noundef 2, i32 noundef 4224) #5
  %219 = load ptr, ptr @hws, align 4
  %arrayidx389 = getelementptr ptr, ptr %219, i32 117
  %220 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call388, ptr %arrayidx389, align 4
  %add.ptr390 = getelementptr i8, ptr %call266, i32 36992
  %call.i1084 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %add.ptr390, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %221 = load ptr, ptr @hws, align 4
  %arrayidx392 = getelementptr ptr, ptr %221, i32 236
  %222 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call.i1084, ptr %arrayidx392, align 4
  %add.ptr393 = getelementptr i8, ptr %call266, i32 37248
  %call.i1085 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %add.ptr393, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %223 = load ptr, ptr @hws, align 4
  %arrayidx395 = getelementptr ptr, ptr %223, i32 237
  %224 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call.i1085, ptr %arrayidx395, align 4
  %add.ptr396 = getelementptr i8, ptr %call266, i32 38912
  %call.i1086 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 2, ptr noundef nonnull @imx8mq_dram_core_sels, ptr noundef null, ptr noundef null, i32 noundef 6272, ptr noundef %add.ptr396, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %225 = load ptr, ptr @hws, align 4
  %arrayidx398 = getelementptr ptr, ptr %225, i32 252
  %226 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call.i1086, ptr %arrayidx398, align 4
  %add.ptr399 = getelementptr i8, ptr %call266, i32 40960
  %call400 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.103, ptr noundef nonnull @imx8mq_dram_alt_sels, i32 noundef 8, ptr noundef %add.ptr399, i32 noundef 4, i32 noundef 4288) #5
  %227 = load ptr, ptr @hws, align 4
  %arrayidx401 = getelementptr ptr, ptr %227, i32 118
  %228 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call400, ptr %arrayidx401, align 4
  %add.ptr402 = getelementptr i8, ptr %call266, i32 41088
  %call403 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.104, ptr noundef nonnull @imx8mq_dram_apb_sels, i32 noundef 8, ptr noundef %add.ptr402, i32 noundef 4, i32 noundef 6336) #5
  %229 = load ptr, ptr @hws, align 4
  %arrayidx404 = getelementptr ptr, ptr %229, i32 119
  %230 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call403, ptr %arrayidx404, align 4
  %add.ptr405 = getelementptr i8, ptr %call266, i32 41216
  %call406 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.105, ptr noundef nonnull @imx8mq_vpu_g1_sels, i32 noundef 8, ptr noundef %add.ptr405, i32 noundef 0, i32 noundef 4224) #5
  %231 = load ptr, ptr @hws, align 4
  %arrayidx407 = getelementptr ptr, ptr %231, i32 120
  %232 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call406, ptr %arrayidx407, align 4
  %add.ptr408 = getelementptr i8, ptr %call266, i32 41344
  %call409 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.106, ptr noundef nonnull @imx8mq_vpu_g2_sels, i32 noundef 8, ptr noundef %add.ptr408, i32 noundef 0, i32 noundef 4224) #5
  %233 = load ptr, ptr @hws, align 4
  %arrayidx410 = getelementptr ptr, ptr %233, i32 121
  %234 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call409, ptr %arrayidx410, align 4
  %add.ptr411 = getelementptr i8, ptr %call266, i32 41472
  %call412 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.107, ptr noundef nonnull @imx8mq_disp_dtrc_sels, i32 noundef 8, ptr noundef %add.ptr411, i32 noundef 0, i32 noundef 4224) #5
  %235 = load ptr, ptr @hws, align 4
  %arrayidx413 = getelementptr ptr, ptr %235, i32 122
  %236 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call412, ptr %arrayidx413, align 4
  %add.ptr414 = getelementptr i8, ptr %call266, i32 41600
  %call415 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.108, ptr noundef nonnull @imx8mq_disp_dc8000_sels, i32 noundef 8, ptr noundef %add.ptr414, i32 noundef 0, i32 noundef 4224) #5
  %237 = load ptr, ptr @hws, align 4
  %arrayidx416 = getelementptr ptr, ptr %237, i32 123
  %238 = ptrtoint ptr %arrayidx416 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call415, ptr %arrayidx416, align 4
  %add.ptr417 = getelementptr i8, ptr %call266, i32 41728
  %call418 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.109, ptr noundef nonnull @imx8mq_pcie1_ctrl_sels, i32 noundef 8, ptr noundef %add.ptr417, i32 noundef 0, i32 noundef 4224) #5
  %239 = load ptr, ptr @hws, align 4
  %arrayidx419 = getelementptr ptr, ptr %239, i32 124
  %240 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call418, ptr %arrayidx419, align 4
  %add.ptr420 = getelementptr i8, ptr %call266, i32 41856
  %call421 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.110, ptr noundef nonnull @imx8mq_pcie1_phy_sels, i32 noundef 7, ptr noundef %add.ptr420, i32 noundef 0, i32 noundef 4224) #5
  %241 = load ptr, ptr @hws, align 4
  %arrayidx422 = getelementptr ptr, ptr %241, i32 125
  %242 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call421, ptr %arrayidx422, align 4
  %add.ptr423 = getelementptr i8, ptr %call266, i32 41984
  %call424 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.111, ptr noundef nonnull @imx8mq_pcie1_aux_sels, i32 noundef 8, ptr noundef %add.ptr423, i32 noundef 0, i32 noundef 4224) #5
  %243 = load ptr, ptr @hws, align 4
  %arrayidx425 = getelementptr ptr, ptr %243, i32 126
  %244 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call424, ptr %arrayidx425, align 4
  %add.ptr426 = getelementptr i8, ptr %call266, i32 42112
  %call427 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.112, ptr noundef nonnull @imx8mq_dc_pixel_sels, i32 noundef 8, ptr noundef %add.ptr426, i32 noundef 0, i32 noundef 4224) #5
  %245 = load ptr, ptr @hws, align 4
  %arrayidx428 = getelementptr ptr, ptr %245, i32 127
  %246 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call427, ptr %arrayidx428, align 4
  %add.ptr429 = getelementptr i8, ptr %call266, i32 42240
  %call430 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.113, ptr noundef nonnull @imx8mq_lcdif_pixel_sels, i32 noundef 8, ptr noundef %add.ptr429, i32 noundef 0, i32 noundef 4224) #5
  %247 = load ptr, ptr @hws, align 4
  %arrayidx431 = getelementptr ptr, ptr %247, i32 128
  %248 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call430, ptr %arrayidx431, align 4
  %add.ptr432 = getelementptr i8, ptr %call266, i32 42368
  %call433 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.114, ptr noundef nonnull @imx8mq_sai1_sels, i32 noundef 8, ptr noundef %add.ptr432, i32 noundef 0, i32 noundef 4224) #5
  %249 = load ptr, ptr @hws, align 4
  %arrayidx434 = getelementptr ptr, ptr %249, i32 129
  %250 = ptrtoint ptr %arrayidx434 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call433, ptr %arrayidx434, align 4
  %add.ptr435 = getelementptr i8, ptr %call266, i32 42496
  %call436 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.115, ptr noundef nonnull @imx8mq_sai2_sels, i32 noundef 8, ptr noundef %add.ptr435, i32 noundef 0, i32 noundef 4224) #5
  %251 = load ptr, ptr @hws, align 4
  %arrayidx437 = getelementptr ptr, ptr %251, i32 130
  %252 = ptrtoint ptr %arrayidx437 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call436, ptr %arrayidx437, align 4
  %add.ptr438 = getelementptr i8, ptr %call266, i32 42624
  %call439 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.116, ptr noundef nonnull @imx8mq_sai3_sels, i32 noundef 8, ptr noundef %add.ptr438, i32 noundef 0, i32 noundef 4224) #5
  %253 = load ptr, ptr @hws, align 4
  %arrayidx440 = getelementptr ptr, ptr %253, i32 131
  %254 = ptrtoint ptr %arrayidx440 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call439, ptr %arrayidx440, align 4
  %add.ptr441 = getelementptr i8, ptr %call266, i32 42752
  %call442 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.117, ptr noundef nonnull @imx8mq_sai4_sels, i32 noundef 8, ptr noundef %add.ptr441, i32 noundef 0, i32 noundef 4224) #5
  %255 = load ptr, ptr @hws, align 4
  %arrayidx443 = getelementptr ptr, ptr %255, i32 132
  %256 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call442, ptr %arrayidx443, align 4
  %add.ptr444 = getelementptr i8, ptr %call266, i32 42880
  %call445 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.118, ptr noundef nonnull @imx8mq_sai5_sels, i32 noundef 8, ptr noundef %add.ptr444, i32 noundef 0, i32 noundef 4224) #5
  %257 = load ptr, ptr @hws, align 4
  %arrayidx446 = getelementptr ptr, ptr %257, i32 133
  %258 = ptrtoint ptr %arrayidx446 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call445, ptr %arrayidx446, align 4
  %add.ptr447 = getelementptr i8, ptr %call266, i32 43008
  %call448 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.119, ptr noundef nonnull @imx8mq_sai6_sels, i32 noundef 8, ptr noundef %add.ptr447, i32 noundef 0, i32 noundef 4224) #5
  %259 = load ptr, ptr @hws, align 4
  %arrayidx449 = getelementptr ptr, ptr %259, i32 134
  %260 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %call448, ptr %arrayidx449, align 4
  %add.ptr450 = getelementptr i8, ptr %call266, i32 43136
  %call451 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.120, ptr noundef nonnull @imx8mq_spdif1_sels, i32 noundef 8, ptr noundef %add.ptr450, i32 noundef 0, i32 noundef 4224) #5
  %261 = load ptr, ptr @hws, align 4
  %arrayidx452 = getelementptr ptr, ptr %261, i32 135
  %262 = ptrtoint ptr %arrayidx452 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call451, ptr %arrayidx452, align 4
  %add.ptr453 = getelementptr i8, ptr %call266, i32 43264
  %call454 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.121, ptr noundef nonnull @imx8mq_spdif2_sels, i32 noundef 8, ptr noundef %add.ptr453, i32 noundef 0, i32 noundef 4224) #5
  %263 = load ptr, ptr @hws, align 4
  %arrayidx455 = getelementptr ptr, ptr %263, i32 136
  %264 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call454, ptr %arrayidx455, align 4
  %add.ptr456 = getelementptr i8, ptr %call266, i32 43392
  %call457 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.122, ptr noundef nonnull @imx8mq_enet_ref_sels, i32 noundef 8, ptr noundef %add.ptr456, i32 noundef 0, i32 noundef 4224) #5
  %265 = load ptr, ptr @hws, align 4
  %arrayidx458 = getelementptr ptr, ptr %265, i32 137
  %266 = ptrtoint ptr %arrayidx458 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call457, ptr %arrayidx458, align 4
  %add.ptr459 = getelementptr i8, ptr %call266, i32 43520
  %call460 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.123, ptr noundef nonnull @imx8mq_enet_timer_sels, i32 noundef 8, ptr noundef %add.ptr459, i32 noundef 0, i32 noundef 4224) #5
  %267 = load ptr, ptr @hws, align 4
  %arrayidx461 = getelementptr ptr, ptr %267, i32 138
  %268 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %call460, ptr %arrayidx461, align 4
  %add.ptr462 = getelementptr i8, ptr %call266, i32 43648
  %call463 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.124, ptr noundef nonnull @imx8mq_enet_phy_sels, i32 noundef 7, ptr noundef %add.ptr462, i32 noundef 0, i32 noundef 4224) #5
  %269 = load ptr, ptr @hws, align 4
  %arrayidx464 = getelementptr ptr, ptr %269, i32 139
  %270 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %call463, ptr %arrayidx464, align 4
  %add.ptr465 = getelementptr i8, ptr %call266, i32 43776
  %call466 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.125, ptr noundef nonnull @imx8mq_nand_sels, i32 noundef 8, ptr noundef %add.ptr465, i32 noundef 0, i32 noundef 4224) #5
  %271 = load ptr, ptr @hws, align 4
  %arrayidx467 = getelementptr ptr, ptr %271, i32 140
  %272 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call466, ptr %arrayidx467, align 4
  %add.ptr468 = getelementptr i8, ptr %call266, i32 43904
  %call469 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.126, ptr noundef nonnull @imx8mq_qspi_sels, i32 noundef 8, ptr noundef %add.ptr468, i32 noundef 0, i32 noundef 4224) #5
  %273 = load ptr, ptr @hws, align 4
  %arrayidx470 = getelementptr ptr, ptr %273, i32 141
  %274 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %call469, ptr %arrayidx470, align 4
  %add.ptr471 = getelementptr i8, ptr %call266, i32 44032
  %call472 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.127, ptr noundef nonnull @imx8mq_usdhc1_sels, i32 noundef 8, ptr noundef %add.ptr471, i32 noundef 0, i32 noundef 4224) #5
  %275 = load ptr, ptr @hws, align 4
  %arrayidx473 = getelementptr ptr, ptr %275, i32 142
  %276 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %call472, ptr %arrayidx473, align 4
  %add.ptr474 = getelementptr i8, ptr %call266, i32 44160
  %call475 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.128, ptr noundef nonnull @imx8mq_usdhc2_sels, i32 noundef 8, ptr noundef %add.ptr474, i32 noundef 0, i32 noundef 4224) #5
  %277 = load ptr, ptr @hws, align 4
  %arrayidx476 = getelementptr ptr, ptr %277, i32 143
  %278 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call475, ptr %arrayidx476, align 4
  %add.ptr477 = getelementptr i8, ptr %call266, i32 44288
  %call478 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.129, ptr noundef nonnull @imx8mq_i2c1_sels, i32 noundef 8, ptr noundef %add.ptr477, i32 noundef 0, i32 noundef 4224) #5
  %279 = load ptr, ptr @hws, align 4
  %arrayidx479 = getelementptr ptr, ptr %279, i32 144
  %280 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call478, ptr %arrayidx479, align 4
  %add.ptr480 = getelementptr i8, ptr %call266, i32 44416
  %call481 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.130, ptr noundef nonnull @imx8mq_i2c2_sels, i32 noundef 8, ptr noundef %add.ptr480, i32 noundef 0, i32 noundef 4224) #5
  %281 = load ptr, ptr @hws, align 4
  %arrayidx482 = getelementptr ptr, ptr %281, i32 145
  %282 = ptrtoint ptr %arrayidx482 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call481, ptr %arrayidx482, align 4
  %add.ptr483 = getelementptr i8, ptr %call266, i32 44544
  %call484 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.131, ptr noundef nonnull @imx8mq_i2c3_sels, i32 noundef 8, ptr noundef %add.ptr483, i32 noundef 0, i32 noundef 4224) #5
  %283 = load ptr, ptr @hws, align 4
  %arrayidx485 = getelementptr ptr, ptr %283, i32 146
  %284 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %call484, ptr %arrayidx485, align 4
  %add.ptr486 = getelementptr i8, ptr %call266, i32 44672
  %call487 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.132, ptr noundef nonnull @imx8mq_i2c4_sels, i32 noundef 8, ptr noundef %add.ptr486, i32 noundef 0, i32 noundef 4224) #5
  %285 = load ptr, ptr @hws, align 4
  %arrayidx488 = getelementptr ptr, ptr %285, i32 147
  %286 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call487, ptr %arrayidx488, align 4
  %add.ptr489 = getelementptr i8, ptr %call266, i32 44800
  %call490 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.133, ptr noundef nonnull @imx8mq_uart1_sels, i32 noundef 8, ptr noundef %add.ptr489, i32 noundef 0, i32 noundef 4224) #5
  %287 = load ptr, ptr @hws, align 4
  %arrayidx491 = getelementptr ptr, ptr %287, i32 148
  %288 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %call490, ptr %arrayidx491, align 4
  %add.ptr492 = getelementptr i8, ptr %call266, i32 44928
  %call493 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.134, ptr noundef nonnull @imx8mq_uart2_sels, i32 noundef 8, ptr noundef %add.ptr492, i32 noundef 0, i32 noundef 4224) #5
  %289 = load ptr, ptr @hws, align 4
  %arrayidx494 = getelementptr ptr, ptr %289, i32 149
  %290 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %call493, ptr %arrayidx494, align 4
  %add.ptr495 = getelementptr i8, ptr %call266, i32 45056
  %call496 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.135, ptr noundef nonnull @imx8mq_uart3_sels, i32 noundef 8, ptr noundef %add.ptr495, i32 noundef 0, i32 noundef 4224) #5
  %291 = load ptr, ptr @hws, align 4
  %arrayidx497 = getelementptr ptr, ptr %291, i32 150
  %292 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %call496, ptr %arrayidx497, align 4
  %add.ptr498 = getelementptr i8, ptr %call266, i32 45184
  %call499 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.136, ptr noundef nonnull @imx8mq_uart4_sels, i32 noundef 8, ptr noundef %add.ptr498, i32 noundef 0, i32 noundef 4224) #5
  %293 = load ptr, ptr @hws, align 4
  %arrayidx500 = getelementptr ptr, ptr %293, i32 151
  %294 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call499, ptr %arrayidx500, align 4
  %add.ptr501 = getelementptr i8, ptr %call266, i32 45312
  %call502 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.137, ptr noundef nonnull @imx8mq_usb_core_sels, i32 noundef 8, ptr noundef %add.ptr501, i32 noundef 0, i32 noundef 4224) #5
  %295 = load ptr, ptr @hws, align 4
  %arrayidx503 = getelementptr ptr, ptr %295, i32 152
  %296 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call502, ptr %arrayidx503, align 4
  %add.ptr504 = getelementptr i8, ptr %call266, i32 45440
  %call505 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.138, ptr noundef nonnull @imx8mq_usb_phy_sels, i32 noundef 8, ptr noundef %add.ptr504, i32 noundef 0, i32 noundef 4224) #5
  %297 = load ptr, ptr @hws, align 4
  %arrayidx506 = getelementptr ptr, ptr %297, i32 153
  %298 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %call505, ptr %arrayidx506, align 4
  %add.ptr507 = getelementptr i8, ptr %call266, i32 45568
  %call508 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.139, ptr noundef nonnull @imx8mq_gic_sels, i32 noundef 8, ptr noundef %add.ptr507, i32 noundef 0, i32 noundef 6272) #5
  %299 = load ptr, ptr @hws, align 4
  %arrayidx509 = getelementptr ptr, ptr %299, i32 265
  %300 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %call508, ptr %arrayidx509, align 4
  %add.ptr510 = getelementptr i8, ptr %call266, i32 45696
  %call511 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.140, ptr noundef nonnull @imx8mq_ecspi1_sels, i32 noundef 8, ptr noundef %add.ptr510, i32 noundef 0, i32 noundef 4224) #5
  %301 = load ptr, ptr @hws, align 4
  %arrayidx512 = getelementptr ptr, ptr %301, i32 154
  %302 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %call511, ptr %arrayidx512, align 4
  %add.ptr513 = getelementptr i8, ptr %call266, i32 45824
  %call514 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.141, ptr noundef nonnull @imx8mq_ecspi2_sels, i32 noundef 8, ptr noundef %add.ptr513, i32 noundef 0, i32 noundef 4224) #5
  %303 = load ptr, ptr @hws, align 4
  %arrayidx515 = getelementptr ptr, ptr %303, i32 155
  %304 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %call514, ptr %arrayidx515, align 4
  %add.ptr516 = getelementptr i8, ptr %call266, i32 45952
  %call517 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.142, ptr noundef nonnull @imx8mq_pwm1_sels, i32 noundef 8, ptr noundef %add.ptr516, i32 noundef 0, i32 noundef 4224) #5
  %305 = load ptr, ptr @hws, align 4
  %arrayidx518 = getelementptr ptr, ptr %305, i32 156
  %306 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %call517, ptr %arrayidx518, align 4
  %add.ptr519 = getelementptr i8, ptr %call266, i32 46080
  %call520 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.143, ptr noundef nonnull @imx8mq_pwm2_sels, i32 noundef 8, ptr noundef %add.ptr519, i32 noundef 0, i32 noundef 4224) #5
  %307 = load ptr, ptr @hws, align 4
  %arrayidx521 = getelementptr ptr, ptr %307, i32 157
  %308 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %call520, ptr %arrayidx521, align 4
  %add.ptr522 = getelementptr i8, ptr %call266, i32 46208
  %call523 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.144, ptr noundef nonnull @imx8mq_pwm3_sels, i32 noundef 8, ptr noundef %add.ptr522, i32 noundef 0, i32 noundef 4224) #5
  %309 = load ptr, ptr @hws, align 4
  %arrayidx524 = getelementptr ptr, ptr %309, i32 158
  %310 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %call523, ptr %arrayidx524, align 4
  %add.ptr525 = getelementptr i8, ptr %call266, i32 46336
  %call526 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.145, ptr noundef nonnull @imx8mq_pwm4_sels, i32 noundef 8, ptr noundef %add.ptr525, i32 noundef 0, i32 noundef 4224) #5
  %311 = load ptr, ptr @hws, align 4
  %arrayidx527 = getelementptr ptr, ptr %311, i32 159
  %312 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call526, ptr %arrayidx527, align 4
  %add.ptr528 = getelementptr i8, ptr %call266, i32 46464
  %call529 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.146, ptr noundef nonnull @imx8mq_gpt1_sels, i32 noundef 7, ptr noundef %add.ptr528, i32 noundef 0, i32 noundef 4224) #5
  %313 = load ptr, ptr @hws, align 4
  %arrayidx530 = getelementptr ptr, ptr %313, i32 160
  %314 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %call529, ptr %arrayidx530, align 4
  %add.ptr531 = getelementptr i8, ptr %call266, i32 47360
  %call532 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.147, ptr noundef nonnull @imx8mq_wdog_sels, i32 noundef 8, ptr noundef %add.ptr531, i32 noundef 0, i32 noundef 4224) #5
  %315 = load ptr, ptr @hws, align 4
  %arrayidx533 = getelementptr ptr, ptr %315, i32 161
  %316 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %call532, ptr %arrayidx533, align 4
  %add.ptr534 = getelementptr i8, ptr %call266, i32 47488
  %call535 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.148, ptr noundef nonnull @imx8mq_wrclk_sels, i32 noundef 8, ptr noundef %add.ptr534, i32 noundef 0, i32 noundef 4224) #5
  %317 = load ptr, ptr @hws, align 4
  %arrayidx536 = getelementptr ptr, ptr %317, i32 162
  %318 = ptrtoint ptr %arrayidx536 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %call535, ptr %arrayidx536, align 4
  %add.ptr537 = getelementptr i8, ptr %call266, i32 47616
  %call538 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.149, ptr noundef nonnull @imx8mq_clko1_sels, i32 noundef 8, ptr noundef %add.ptr537, i32 noundef 0, i32 noundef 4224) #5
  %319 = load ptr, ptr @hws, align 4
  %arrayidx539 = getelementptr ptr, ptr %319, i32 257
  %320 = ptrtoint ptr %arrayidx539 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %call538, ptr %arrayidx539, align 4
  %add.ptr540 = getelementptr i8, ptr %call266, i32 47744
  %call541 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.150, ptr noundef nonnull @imx8mq_clko2_sels, i32 noundef 8, ptr noundef %add.ptr540, i32 noundef 0, i32 noundef 4224) #5
  %321 = load ptr, ptr @hws, align 4
  %arrayidx542 = getelementptr ptr, ptr %321, i32 255
  %322 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %call541, ptr %arrayidx542, align 4
  %add.ptr543 = getelementptr i8, ptr %call266, i32 47872
  %call544 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.151, ptr noundef nonnull @imx8mq_dsi_core_sels, i32 noundef 8, ptr noundef %add.ptr543, i32 noundef 0, i32 noundef 4224) #5
  %323 = load ptr, ptr @hws, align 4
  %arrayidx545 = getelementptr ptr, ptr %323, i32 163
  %324 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call544, ptr %arrayidx545, align 4
  %add.ptr546 = getelementptr i8, ptr %call266, i32 48000
  %call547 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.152, ptr noundef nonnull @imx8mq_dsi_phy_sels, i32 noundef 8, ptr noundef %add.ptr546, i32 noundef 0, i32 noundef 4224) #5
  %325 = load ptr, ptr @hws, align 4
  %arrayidx548 = getelementptr ptr, ptr %325, i32 164
  %326 = ptrtoint ptr %arrayidx548 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %call547, ptr %arrayidx548, align 4
  %add.ptr549 = getelementptr i8, ptr %call266, i32 48128
  %call550 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.153, ptr noundef nonnull @imx8mq_dsi_dbi_sels, i32 noundef 8, ptr noundef %add.ptr549, i32 noundef 0, i32 noundef 4224) #5
  %327 = load ptr, ptr @hws, align 4
  %arrayidx551 = getelementptr ptr, ptr %327, i32 165
  %328 = ptrtoint ptr %arrayidx551 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %call550, ptr %arrayidx551, align 4
  %add.ptr552 = getelementptr i8, ptr %call266, i32 48256
  %call553 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.154, ptr noundef nonnull @imx8mq_dsi_esc_sels, i32 noundef 8, ptr noundef %add.ptr552, i32 noundef 0, i32 noundef 4224) #5
  %329 = load ptr, ptr @hws, align 4
  %arrayidx554 = getelementptr ptr, ptr %329, i32 166
  %330 = ptrtoint ptr %arrayidx554 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %call553, ptr %arrayidx554, align 4
  %add.ptr555 = getelementptr i8, ptr %call266, i32 37376
  %call556 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.155, ptr noundef nonnull @imx8mq_dsi_ahb_sels, i32 noundef 8, ptr noundef %add.ptr555, i32 noundef 0, i32 noundef 4224) #5
  %331 = load ptr, ptr @hws, align 4
  %arrayidx557 = getelementptr ptr, ptr %331, i32 244
  %332 = ptrtoint ptr %arrayidx557 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %call556, ptr %arrayidx557, align 4
  %add.ptr558 = getelementptr i8, ptr %call266, i32 37504
  %call.i1087 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.155, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %add.ptr558, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %333 = load ptr, ptr @hws, align 4
  %arrayidx560 = getelementptr ptr, ptr %333, i32 245
  %334 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %call.i1087, ptr %arrayidx560, align 4
  %add.ptr561 = getelementptr i8, ptr %call266, i32 48384
  %call562 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.157, ptr noundef nonnull @imx8mq_csi1_core_sels, i32 noundef 8, ptr noundef %add.ptr561, i32 noundef 0, i32 noundef 4224) #5
  %335 = load ptr, ptr @hws, align 4
  %arrayidx563 = getelementptr ptr, ptr %335, i32 167
  %336 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call562, ptr %arrayidx563, align 4
  %add.ptr564 = getelementptr i8, ptr %call266, i32 48512
  %call565 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.158, ptr noundef nonnull @imx8mq_csi1_phy_sels, i32 noundef 8, ptr noundef %add.ptr564, i32 noundef 0, i32 noundef 4224) #5
  %337 = load ptr, ptr @hws, align 4
  %arrayidx566 = getelementptr ptr, ptr %337, i32 168
  %338 = ptrtoint ptr %arrayidx566 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %call565, ptr %arrayidx566, align 4
  %add.ptr567 = getelementptr i8, ptr %call266, i32 48640
  %call568 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.159, ptr noundef nonnull @imx8mq_csi1_esc_sels, i32 noundef 8, ptr noundef %add.ptr567, i32 noundef 0, i32 noundef 4224) #5
  %339 = load ptr, ptr @hws, align 4
  %arrayidx569 = getelementptr ptr, ptr %339, i32 169
  %340 = ptrtoint ptr %arrayidx569 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %call568, ptr %arrayidx569, align 4
  %add.ptr570 = getelementptr i8, ptr %call266, i32 48768
  %call571 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.160, ptr noundef nonnull @imx8mq_csi2_core_sels, i32 noundef 8, ptr noundef %add.ptr570, i32 noundef 0, i32 noundef 4224) #5
  %341 = load ptr, ptr @hws, align 4
  %arrayidx572 = getelementptr ptr, ptr %341, i32 170
  %342 = ptrtoint ptr %arrayidx572 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %call571, ptr %arrayidx572, align 4
  %add.ptr573 = getelementptr i8, ptr %call266, i32 48896
  %call574 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.161, ptr noundef nonnull @imx8mq_csi2_phy_sels, i32 noundef 8, ptr noundef %add.ptr573, i32 noundef 0, i32 noundef 4224) #5
  %343 = load ptr, ptr @hws, align 4
  %arrayidx575 = getelementptr ptr, ptr %343, i32 171
  %344 = ptrtoint ptr %arrayidx575 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %call574, ptr %arrayidx575, align 4
  %add.ptr576 = getelementptr i8, ptr %call266, i32 49024
  %call577 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.162, ptr noundef nonnull @imx8mq_csi2_esc_sels, i32 noundef 8, ptr noundef %add.ptr576, i32 noundef 0, i32 noundef 4224) #5
  %345 = load ptr, ptr @hws, align 4
  %arrayidx578 = getelementptr ptr, ptr %345, i32 172
  %346 = ptrtoint ptr %arrayidx578 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %call577, ptr %arrayidx578, align 4
  %add.ptr579 = getelementptr i8, ptr %call266, i32 49152
  %call580 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.163, ptr noundef nonnull @imx8mq_pcie2_ctrl_sels, i32 noundef 8, ptr noundef %add.ptr579, i32 noundef 0, i32 noundef 4224) #5
  %347 = load ptr, ptr @hws, align 4
  %arrayidx581 = getelementptr ptr, ptr %347, i32 173
  %348 = ptrtoint ptr %arrayidx581 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %call580, ptr %arrayidx581, align 4
  %add.ptr582 = getelementptr i8, ptr %call266, i32 49280
  %call583 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.164, ptr noundef nonnull @imx8mq_pcie2_phy_sels, i32 noundef 8, ptr noundef %add.ptr582, i32 noundef 0, i32 noundef 4224) #5
  %349 = load ptr, ptr @hws, align 4
  %arrayidx584 = getelementptr ptr, ptr %349, i32 174
  %350 = ptrtoint ptr %arrayidx584 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %call583, ptr %arrayidx584, align 4
  %add.ptr585 = getelementptr i8, ptr %call266, i32 49408
  %call586 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.165, ptr noundef nonnull @imx8mq_pcie2_aux_sels, i32 noundef 8, ptr noundef %add.ptr585, i32 noundef 0, i32 noundef 4224) #5
  %351 = load ptr, ptr @hws, align 4
  %arrayidx587 = getelementptr ptr, ptr %351, i32 175
  %352 = ptrtoint ptr %arrayidx587 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %call586, ptr %arrayidx587, align 4
  %add.ptr588 = getelementptr i8, ptr %call266, i32 49536
  %call589 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.166, ptr noundef nonnull @imx8mq_ecspi3_sels, i32 noundef 8, ptr noundef %add.ptr588, i32 noundef 0, i32 noundef 4224) #5
  %353 = load ptr, ptr @hws, align 4
  %arrayidx590 = getelementptr ptr, ptr %353, i32 176
  %354 = ptrtoint ptr %arrayidx590 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %call589, ptr %arrayidx590, align 4
  %add.ptr591 = getelementptr i8, ptr %call266, i32 16496
  %call.i1088 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.140, i32 noundef 4100, ptr noundef %add.ptr591, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %355 = load ptr, ptr @hws, align 4
  %arrayidx593 = getelementptr ptr, ptr %355, i32 179
  %356 = ptrtoint ptr %arrayidx593 to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %call.i1088, ptr %arrayidx593, align 4
  %add.ptr594 = getelementptr i8, ptr %call266, i32 16512
  %call.i1089 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.141, i32 noundef 4100, ptr noundef %add.ptr594, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %357 = load ptr, ptr @hws, align 4
  %arrayidx596 = getelementptr ptr, ptr %357, i32 180
  %358 = ptrtoint ptr %arrayidx596 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %call.i1089, ptr %arrayidx596, align 4
  %add.ptr597 = getelementptr i8, ptr %call266, i32 16528
  %call.i1090 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.166, i32 noundef 4100, ptr noundef %add.ptr597, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %359 = load ptr, ptr @hws, align 4
  %arrayidx599 = getelementptr ptr, ptr %359, i32 181
  %360 = ptrtoint ptr %arrayidx599 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %call.i1090, ptr %arrayidx599, align 4
  %add.ptr600 = getelementptr i8, ptr %call266, i32 16544
  %call.i1091 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.87, i32 noundef 4100, ptr noundef %add.ptr600, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %361 = load ptr, ptr @hws, align 4
  %arrayidx602 = getelementptr ptr, ptr %361, i32 182
  %362 = ptrtoint ptr %arrayidx602 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %call.i1091, ptr %arrayidx602, align 4
  %add.ptr603 = getelementptr i8, ptr %call266, i32 16560
  %call.i1092 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr603, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %363 = load ptr, ptr @hws, align 4
  %arrayidx605 = getelementptr ptr, ptr %363, i32 259
  %364 = ptrtoint ptr %arrayidx605 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %call.i1092, ptr %arrayidx605, align 4
  %add.ptr606 = getelementptr i8, ptr %call266, i32 16576
  %call.i1093 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr606, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %365 = load ptr, ptr @hws, align 4
  %arrayidx608 = getelementptr ptr, ptr %365, i32 260
  %366 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %call.i1093, ptr %arrayidx608, align 4
  %add.ptr609 = getelementptr i8, ptr %call266, i32 16592
  %call.i1094 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr609, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %367 = load ptr, ptr @hws, align 4
  %arrayidx611 = getelementptr ptr, ptr %367, i32 261
  %368 = ptrtoint ptr %arrayidx611 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %call.i1094, ptr %arrayidx611, align 4
  %add.ptr612 = getelementptr i8, ptr %call266, i32 16608
  %call.i1095 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr612, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %369 = load ptr, ptr @hws, align 4
  %arrayidx614 = getelementptr ptr, ptr %369, i32 262
  %370 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %call.i1095, ptr %arrayidx614, align 4
  %add.ptr615 = getelementptr i8, ptr %call266, i32 16624
  %call.i1096 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr615, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %371 = load ptr, ptr @hws, align 4
  %arrayidx617 = getelementptr ptr, ptr %371, i32 263
  %372 = ptrtoint ptr %arrayidx617 to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %call.i1096, ptr %arrayidx617, align 4
  %add.ptr618 = getelementptr i8, ptr %call266, i32 16640
  %call.i1097 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.146, i32 noundef 4100, ptr noundef %add.ptr618, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %373 = load ptr, ptr @hws, align 4
  %arrayidx620 = getelementptr ptr, ptr %373, i32 183
  %374 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %call.i1097, ptr %arrayidx620, align 4
  %add.ptr621 = getelementptr i8, ptr %call266, i32 16752
  %call.i1098 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.129, i32 noundef 4100, ptr noundef %add.ptr621, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %375 = load ptr, ptr @hws, align 4
  %arrayidx623 = getelementptr ptr, ptr %375, i32 184
  %376 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %call.i1098, ptr %arrayidx623, align 4
  %add.ptr624 = getelementptr i8, ptr %call266, i32 16768
  %call.i1099 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.130, i32 noundef 4100, ptr noundef %add.ptr624, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %377 = load ptr, ptr @hws, align 4
  %arrayidx626 = getelementptr ptr, ptr %377, i32 185
  %378 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %call.i1099, ptr %arrayidx626, align 4
  %add.ptr627 = getelementptr i8, ptr %call266, i32 16784
  %call.i1100 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.131, i32 noundef 4100, ptr noundef %add.ptr627, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %379 = load ptr, ptr @hws, align 4
  %arrayidx629 = getelementptr ptr, ptr %379, i32 186
  %380 = ptrtoint ptr %arrayidx629 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %call.i1100, ptr %arrayidx629, align 4
  %add.ptr630 = getelementptr i8, ptr %call266, i32 16800
  %call.i1101 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.132, i32 noundef 4100, ptr noundef %add.ptr630, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %381 = load ptr, ptr @hws, align 4
  %arrayidx632 = getelementptr ptr, ptr %381, i32 187
  %382 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %call.i1101, ptr %arrayidx632, align 4
  %add.ptr633 = getelementptr i8, ptr %call266, i32 16912
  %call.i1102 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr633, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %383 = load ptr, ptr @hws, align 4
  %arrayidx635 = getelementptr ptr, ptr %383, i32 253
  %384 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %call.i1102, ptr %arrayidx635, align 4
  %add.ptr636 = getelementptr i8, ptr %call266, i32 16928
  %call.i1103 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr636, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %385 = load ptr, ptr @hws, align 4
  %arrayidx638 = getelementptr ptr, ptr %385, i32 250
  %386 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %call.i1103, ptr %arrayidx638, align 4
  %add.ptr639 = getelementptr i8, ptr %call266, i32 16976
  %call.i1104 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.109, i32 noundef 4100, ptr noundef %add.ptr639, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %387 = load ptr, ptr @hws, align 4
  %arrayidx641 = getelementptr ptr, ptr %387, i32 189
  %388 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %call.i1104, ptr %arrayidx641, align 4
  %add.ptr642 = getelementptr i8, ptr %call266, i32 17984
  %call.i1105 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.163, i32 noundef 4100, ptr noundef %add.ptr642, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %389 = load ptr, ptr @hws, align 4
  %arrayidx644 = getelementptr ptr, ptr %389, i32 190
  %390 = ptrtoint ptr %arrayidx644 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %call.i1105, ptr %arrayidx644, align 4
  %add.ptr645 = getelementptr i8, ptr %call266, i32 17024
  %call.i1106 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.142, i32 noundef 4100, ptr noundef %add.ptr645, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %391 = load ptr, ptr @hws, align 4
  %arrayidx647 = getelementptr ptr, ptr %391, i32 191
  %392 = ptrtoint ptr %arrayidx647 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %call.i1106, ptr %arrayidx647, align 4
  %add.ptr648 = getelementptr i8, ptr %call266, i32 17040
  %call.i1107 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.143, i32 noundef 4100, ptr noundef %add.ptr648, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %393 = load ptr, ptr @hws, align 4
  %arrayidx650 = getelementptr ptr, ptr %393, i32 192
  %394 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %call.i1107, ptr %arrayidx650, align 4
  %add.ptr651 = getelementptr i8, ptr %call266, i32 17056
  %call.i1108 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.144, i32 noundef 4100, ptr noundef %add.ptr651, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %395 = load ptr, ptr @hws, align 4
  %arrayidx653 = getelementptr ptr, ptr %395, i32 193
  %396 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %call.i1108, ptr %arrayidx653, align 4
  %add.ptr654 = getelementptr i8, ptr %call266, i32 17072
  %call.i1109 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.145, i32 noundef 4100, ptr noundef %add.ptr654, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %397 = load ptr, ptr @hws, align 4
  %arrayidx656 = getelementptr ptr, ptr %397, i32 194
  %398 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %call.i1109, ptr %arrayidx656, align 4
  %add.ptr657 = getelementptr i8, ptr %call266, i32 17136
  %call.i1110 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.126, i32 noundef 4100, ptr noundef %add.ptr657, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %399 = load ptr, ptr @hws, align 4
  %arrayidx659 = getelementptr ptr, ptr %399, i32 195
  %400 = ptrtoint ptr %arrayidx659 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %call.i1110, ptr %arrayidx659, align 4
  %add.ptr660 = getelementptr i8, ptr %call266, i32 17152
  %call.i1111 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.125, i32 noundef 4100, ptr noundef %add.ptr660, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #5
  %401 = load ptr, ptr @hws, align 4
  %arrayidx662 = getelementptr ptr, ptr %401, i32 226
  %402 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %call.i1111, ptr %arrayidx662, align 4
  %call.i1112 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.88, i32 noundef 4100, ptr noundef %add.ptr660, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #5
  %403 = load ptr, ptr @hws, align 4
  %arrayidx665 = getelementptr ptr, ptr %403, i32 256
  %404 = ptrtoint ptr %arrayidx665 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %call.i1112, ptr %arrayidx665, align 4
  %add.ptr666 = getelementptr i8, ptr %call266, i32 17200
  %call.i1113 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.114, i32 noundef 4100, ptr noundef %add.ptr666, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #5
  %405 = load ptr, ptr @hws, align 4
  %arrayidx668 = getelementptr ptr, ptr %405, i32 196
  %406 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %call.i1113, ptr %arrayidx668, align 4
  %call.i1114 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr666, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #5
  %407 = load ptr, ptr @hws, align 4
  %arrayidx671 = getelementptr ptr, ptr %407, i32 238
  %408 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr %call.i1114, ptr %arrayidx671, align 4
  %add.ptr672 = getelementptr i8, ptr %call266, i32 17216
  %call.i1115 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.115, i32 noundef 4100, ptr noundef %add.ptr672, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #5
  %409 = load ptr, ptr @hws, align 4
  %arrayidx674 = getelementptr ptr, ptr %409, i32 197
  %410 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %call.i1115, ptr %arrayidx674, align 4
  %call.i1116 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr672, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #5
  %411 = load ptr, ptr @hws, align 4
  %arrayidx677 = getelementptr ptr, ptr %411, i32 239
  %412 = ptrtoint ptr %arrayidx677 to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %call.i1116, ptr %arrayidx677, align 4
  %add.ptr678 = getelementptr i8, ptr %call266, i32 17232
  %call.i1117 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.116, i32 noundef 4100, ptr noundef %add.ptr678, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #5
  %413 = load ptr, ptr @hws, align 4
  %arrayidx680 = getelementptr ptr, ptr %413, i32 198
  %414 = ptrtoint ptr %arrayidx680 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %call.i1117, ptr %arrayidx680, align 4
  %call.i1118 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr678, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #5
  %415 = load ptr, ptr @hws, align 4
  %arrayidx683 = getelementptr ptr, ptr %415, i32 240
  %416 = ptrtoint ptr %arrayidx683 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %call.i1118, ptr %arrayidx683, align 4
  %add.ptr684 = getelementptr i8, ptr %call266, i32 17248
  %call.i1119 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.117, i32 noundef 4100, ptr noundef %add.ptr684, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai4) #5
  %417 = load ptr, ptr @hws, align 4
  %arrayidx686 = getelementptr ptr, ptr %417, i32 199
  %418 = ptrtoint ptr %arrayidx686 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %call.i1119, ptr %arrayidx686, align 4
  %call.i1120 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr684, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai4) #5
  %419 = load ptr, ptr @hws, align 4
  %arrayidx689 = getelementptr ptr, ptr %419, i32 241
  %420 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %call.i1120, ptr %arrayidx689, align 4
  %add.ptr690 = getelementptr i8, ptr %call266, i32 17264
  %call.i1121 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.118, i32 noundef 4100, ptr noundef %add.ptr690, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai5) #5
  %421 = load ptr, ptr @hws, align 4
  %arrayidx692 = getelementptr ptr, ptr %421, i32 200
  %422 = ptrtoint ptr %arrayidx692 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %call.i1121, ptr %arrayidx692, align 4
  %call.i1122 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr690, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai5) #5
  %423 = load ptr, ptr @hws, align 4
  %arrayidx695 = getelementptr ptr, ptr %423, i32 242
  %424 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %call.i1122, ptr %arrayidx695, align 4
  %add.ptr696 = getelementptr i8, ptr %call266, i32 17280
  %call.i1123 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.119, i32 noundef 4100, ptr noundef %add.ptr696, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai6) #5
  %425 = load ptr, ptr @hws, align 4
  %arrayidx698 = getelementptr ptr, ptr %425, i32 201
  %426 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %call.i1123, ptr %arrayidx698, align 4
  %call.i1124 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr696, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai6) #5
  %427 = load ptr, ptr @hws, align 4
  %arrayidx701 = getelementptr ptr, ptr %427, i32 243
  %428 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %call.i1124, ptr %arrayidx701, align 4
  %add.ptr702 = getelementptr i8, ptr %call266, i32 17520
  %call.i1125 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr702, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %429 = load ptr, ptr @hws, align 4
  %arrayidx704 = getelementptr ptr, ptr %429, i32 264
  %430 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %call.i1125, ptr %arrayidx704, align 4
  %add.ptr705 = getelementptr i8, ptr %call266, i32 17552
  %call.i1126 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.133, i32 noundef 4100, ptr noundef %add.ptr705, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %431 = load ptr, ptr @hws, align 4
  %arrayidx707 = getelementptr ptr, ptr %431, i32 202
  %432 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %call.i1126, ptr %arrayidx707, align 4
  %add.ptr708 = getelementptr i8, ptr %call266, i32 17568
  %call.i1127 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.134, i32 noundef 4100, ptr noundef %add.ptr708, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %433 = load ptr, ptr @hws, align 4
  %arrayidx710 = getelementptr ptr, ptr %433, i32 203
  %434 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %call.i1127, ptr %arrayidx710, align 4
  %add.ptr711 = getelementptr i8, ptr %call266, i32 17584
  %call.i1128 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.135, i32 noundef 4100, ptr noundef %add.ptr711, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %435 = load ptr, ptr @hws, align 4
  %arrayidx713 = getelementptr ptr, ptr %435, i32 204
  %436 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %call.i1128, ptr %arrayidx713, align 4
  %add.ptr714 = getelementptr i8, ptr %call266, i32 17600
  %call.i1129 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.136, i32 noundef 4100, ptr noundef %add.ptr714, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %437 = load ptr, ptr @hws, align 4
  %arrayidx716 = getelementptr ptr, ptr %437, i32 205
  %438 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %call.i1129, ptr %arrayidx716, align 4
  %add.ptr717 = getelementptr i8, ptr %call266, i32 17616
  %call.i1130 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.93, i32 noundef 4100, ptr noundef %add.ptr717, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %439 = load ptr, ptr @hws, align 4
  %arrayidx719 = getelementptr ptr, ptr %439, i32 206
  %440 = ptrtoint ptr %arrayidx719 to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %call.i1130, ptr %arrayidx719, align 4
  %add.ptr720 = getelementptr i8, ptr %call266, i32 17632
  %call.i1131 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.93, i32 noundef 4100, ptr noundef %add.ptr720, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %441 = load ptr, ptr @hws, align 4
  %arrayidx722 = getelementptr ptr, ptr %441, i32 207
  %442 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %call.i1131, ptr %arrayidx722, align 4
  %add.ptr723 = getelementptr i8, ptr %call266, i32 17648
  %call.i1132 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.138, i32 noundef 4100, ptr noundef %add.ptr723, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %443 = load ptr, ptr @hws, align 4
  %arrayidx725 = getelementptr ptr, ptr %443, i32 208
  %444 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %call.i1132, ptr %arrayidx725, align 4
  %add.ptr726 = getelementptr i8, ptr %call266, i32 17664
  %call.i1133 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.138, i32 noundef 4100, ptr noundef %add.ptr726, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %445 = load ptr, ptr @hws, align 4
  %arrayidx728 = getelementptr ptr, ptr %445, i32 209
  %446 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %call.i1133, ptr %arrayidx728, align 4
  %add.ptr729 = getelementptr i8, ptr %call266, i32 17680
  %call.i1134 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.127, i32 noundef 4100, ptr noundef %add.ptr729, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %447 = load ptr, ptr @hws, align 4
  %arrayidx731 = getelementptr ptr, ptr %447, i32 210
  %448 = ptrtoint ptr %arrayidx731 to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr %call.i1134, ptr %arrayidx731, align 4
  %add.ptr732 = getelementptr i8, ptr %call266, i32 17696
  %call.i1135 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.128, i32 noundef 4100, ptr noundef %add.ptr732, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %449 = load ptr, ptr @hws, align 4
  %arrayidx734 = getelementptr ptr, ptr %449, i32 211
  %450 = ptrtoint ptr %arrayidx734 to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %call.i1135, ptr %arrayidx734, align 4
  %add.ptr735 = getelementptr i8, ptr %call266, i32 17712
  %call.i1136 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.147, i32 noundef 4100, ptr noundef %add.ptr735, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %451 = load ptr, ptr @hws, align 4
  %arrayidx737 = getelementptr ptr, ptr %451, i32 212
  %452 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %call.i1136, ptr %arrayidx737, align 4
  %add.ptr738 = getelementptr i8, ptr %call266, i32 17728
  %call.i1137 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.147, i32 noundef 4100, ptr noundef %add.ptr738, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %453 = load ptr, ptr @hws, align 4
  %arrayidx740 = getelementptr ptr, ptr %453, i32 213
  %454 = ptrtoint ptr %arrayidx740 to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %call.i1137, ptr %arrayidx740, align 4
  %add.ptr741 = getelementptr i8, ptr %call266, i32 17744
  %call.i1138 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.147, i32 noundef 4100, ptr noundef %add.ptr741, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %455 = load ptr, ptr @hws, align 4
  %arrayidx743 = getelementptr ptr, ptr %455, i32 214
  %456 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr %call.i1138, ptr %arrayidx743, align 4
  %add.ptr744 = getelementptr i8, ptr %call266, i32 17760
  %call.i1139 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.105, i32 noundef 4100, ptr noundef %add.ptr744, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %457 = load ptr, ptr @hws, align 4
  %arrayidx746 = getelementptr ptr, ptr %457, i32 229
  %458 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %call.i1139, ptr %arrayidx746, align 4
  %add.ptr747 = getelementptr i8, ptr %call266, i32 17776
  %call.i1140 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.83, i32 noundef 4100, ptr noundef %add.ptr747, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %459 = load ptr, ptr @hws, align 4
  %arrayidx749 = getelementptr ptr, ptr %459, i32 215
  %460 = ptrtoint ptr %arrayidx749 to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %call.i1140, ptr %arrayidx749, align 4
  %add.ptr750 = getelementptr i8, ptr %call266, i32 17824
  %call.i1141 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.106, i32 noundef 4100, ptr noundef %add.ptr750, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %461 = load ptr, ptr @hws, align 4
  %arrayidx752 = getelementptr ptr, ptr %461, i32 230
  %462 = ptrtoint ptr %arrayidx752 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %call.i1141, ptr %arrayidx752, align 4
  %add.ptr753 = getelementptr i8, ptr %call266, i32 17872
  %call.i1142 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.108, i32 noundef 4100, ptr noundef %add.ptr753, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_dcss) #5
  %463 = load ptr, ptr @hws, align 4
  %arrayidx755 = getelementptr ptr, ptr %463, i32 220
  %464 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_store4_noabort(i32 %464)
  store ptr %call.i1142, ptr %arrayidx755, align 4
  %call.i1143 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.90, i32 noundef 4100, ptr noundef %add.ptr753, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_dcss) #5
  %465 = load ptr, ptr @hws, align 4
  %arrayidx758 = getelementptr ptr, ptr %465, i32 247
  %466 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_store4_noabort(i32 %466)
  store ptr %call.i1143, ptr %arrayidx758, align 4
  %call.i1144 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.91, i32 noundef 4100, ptr noundef %add.ptr753, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_dcss) #5
  %467 = load ptr, ptr @hws, align 4
  %arrayidx761 = getelementptr ptr, ptr %467, i32 248
  %468 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr %call.i1144, ptr %arrayidx761, align 4
  %call.i1145 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.92, i32 noundef 4100, ptr noundef %add.ptr753, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_dcss) #5
  %469 = load ptr, ptr @hws, align 4
  %arrayidx764 = getelementptr ptr, ptr %469, i32 249
  %470 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %call.i1145, ptr %arrayidx764, align 4
  %add.ptr765 = getelementptr i8, ptr %call266, i32 17952
  %call.i1146 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr765, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %471 = load ptr, ptr @hws, align 4
  %arrayidx767 = getelementptr ptr, ptr %471, i32 246
  %472 = ptrtoint ptr %arrayidx767 to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %call.i1146, ptr %arrayidx767, align 4
  %add.ptr768 = getelementptr i8, ptr %call266, i32 17968
  %call.i1147 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.89, i32 noundef 4100, ptr noundef %add.ptr768, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %473 = load ptr, ptr @hws, align 4
  %arrayidx770 = getelementptr ptr, ptr %473, i32 223
  %474 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr %call.i1147, ptr %arrayidx770, align 4
  %add.ptr771 = getelementptr i8, ptr %call266, i32 18000
  %call.i1148 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.157, i32 noundef 4100, ptr noundef %add.ptr771, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %475 = load ptr, ptr @hws, align 4
  %arrayidx773 = getelementptr ptr, ptr %475, i32 224
  %476 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_store4_noabort(i32 %476)
  store ptr %call.i1148, ptr %arrayidx773, align 4
  %add.ptr774 = getelementptr i8, ptr %call266, i32 18016
  %call.i1149 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.160, i32 noundef 4100, ptr noundef %add.ptr774, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %477 = load ptr, ptr @hws, align 4
  %arrayidx776 = getelementptr ptr, ptr %477, i32 225
  %478 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr %call.i1149, ptr %arrayidx776, align 4
  %add.ptr777 = getelementptr i8, ptr %call266, i32 17312
  %call.i1150 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.100, i32 noundef 4100, ptr noundef %add.ptr777, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %479 = load ptr, ptr @hws, align 4
  %arrayidx779 = getelementptr ptr, ptr %479, i32 227
  %480 = ptrtoint ptr %arrayidx779 to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %call.i1150, ptr %arrayidx779, align 4
  %add.ptr780 = getelementptr i8, ptr %call266, i32 17328
  %call.i1151 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr780, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %481 = load ptr, ptr @hws, align 4
  %arrayidx782 = getelementptr ptr, ptr %481, i32 228
  %482 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %call.i1151, ptr %arrayidx782, align 4
  %call.i1152 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %483 = load ptr, ptr @hws, align 4
  %arrayidx784 = getelementptr ptr, ptr %483, i32 235
  %484 = ptrtoint ptr %arrayidx784 to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr %call.i1152, ptr %arrayidx784, align 4
  %call.i1153 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.103, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %485 = load ptr, ptr @hws, align 4
  %arrayidx786 = getelementptr ptr, ptr %485, i32 251
  %486 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr %call.i1153, ptr %arrayidx786, align 4
  %arrayidx787 = getelementptr ptr, ptr %485, i32 289
  %487 = ptrtoint ptr %arrayidx787 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %arrayidx787, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %488, i32 0, i32 1
  %489 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %clk, align 4
  %arrayidx790 = getelementptr ptr, ptr %485, i32 12
  %491 = ptrtoint ptr %arrayidx790 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %arrayidx790, align 4
  %clk791 = getelementptr inbounds %struct.clk_hw, ptr %492, i32 0, i32 1
  %493 = ptrtoint ptr %clk791 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %clk791, align 4
  %arrayidx792 = getelementptr ptr, ptr %485, i32 90
  %495 = ptrtoint ptr %arrayidx792 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %arrayidx792, align 4
  %clk793 = getelementptr inbounds %struct.clk_hw, ptr %496, i32 0, i32 1
  %497 = ptrtoint ptr %clk793 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %clk793, align 4
  %call794 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.85, ptr noundef %490, ptr noundef %490, ptr noundef %494, ptr noundef %498) #5
  %499 = load ptr, ptr @hws, align 4
  %arrayidx795 = getelementptr ptr, ptr %499, i32 258
  %500 = ptrtoint ptr %arrayidx795 to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr %call794, ptr %arrayidx795, align 4
  tail call void @imx_check_clk_hws(ptr noundef %499, i32 noundef 303) #5
  %501 = load ptr, ptr @clk_hw_data, align 4
  %call796 = tail call i32 @of_clk_add_hw_provider(ptr noundef %159, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %501) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call796)
  %cmp = icmp slt i32 %call796, 0
  br i1 %cmp, label %do.end800, label %if.end801

do.end800:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.234) #9
  %502 = load ptr, ptr @hws, align 4
  tail call void @imx_unregister_hw_clocks(ptr noundef %502, i32 noundef 303) #5
  br label %cleanup

if.end801:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @imx_register_uart_clocks(i32 noundef 4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end801, %do.end800, %do.end284, %do.end62, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end62 ], [ %160, %do.end284 ], [ %call796, %do.end800 ], [ 0, %if.end801 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_frac_pll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_sscg_pll(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__imx8m_clk_hw_composite(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_cpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_unregister_hw_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 346)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 346)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !483, !484, !485, !486, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697}
!llvm.module.flags = !{!699, !700, !701, !702, !703, !704, !705, !706}
!llvm.ident = !{!707}

!0 = !{ptr @__initcall__kmod_clk_imx8mq__183_634_imx8mq_clk_driver_init6, !1, !"__initcall__kmod_clk_imx8mq__183_634_imx8mq_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 634, i32 1}
!2 = !{ptr @__exitcall_imx8mq_clk_driver_exit, !1, !"__exitcall_imx8mq_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 636, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 637, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 638, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 625, i32 11}
!12 = !{ptr @imx8mq_clk_driver, !13, !"imx8mq_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 622, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 293, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 299, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 300, i32 52}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 301, i32 52}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 302, i32 52}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 303, i32 53}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 304, i32 53}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 305, i32 53}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 306, i32 53}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 308, i32 43}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 314, i32 32}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 315, i32 32}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 316, i32 32}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 317, i32 35}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 318, i32 35}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 319, i32 35}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 320, i32 34}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 321, i32 34}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 322, i32 36}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 324, i32 32}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 325, i32 32}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 326, i32 32}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 327, i32 35}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 328, i32 35}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 329, i32 35}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 331, i32 44}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 332, i32 44}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 333, i32 44}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 334, i32 47}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 335, i32 47}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 336, i32 47}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 339, i32 31}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 340, i32 31}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 341, i32 31}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 342, i32 34}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 343, i32 34}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 344, i32 34}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 347, i32 28}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 348, i32 28}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 349, i32 28}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 350, i32 31}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 351, i32 31}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 352, i32 31}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 354, i32 46}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 355, i32 46}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 356, i32 49}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 357, i32 49}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 358, i32 51}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 361, i32 53}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 362, i32 53}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 363, i32 54}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 364, i32 54}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 365, i32 54}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 366, i32 54}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 367, i32 54}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 368, i32 54}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 369, i32 54}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 372, i32 53}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 373, i32 54}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 374, i32 54}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 375, i32 54}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 376, i32 54}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 377, i32 54}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 378, i32 54}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 379, i32 54}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 380, i32 55}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 382, i32 39}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 383, i32 39}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 384, i32 39}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 385, i32 36}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 386, i32 36}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 387, i32 36}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 388, i32 37}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 389, i32 37}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 390, i32 37}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 391, i32 37}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 392, i32 39}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 393, i32 28}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 394, i32 33}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 402, i32 28}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 406, i32 28}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 407, i32 29}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 408, i32 29}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 409, i32 31}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 425, i32 29}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 428, i32 29}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 429, i32 29}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 430, i32 35}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 431, i32 28}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 432, i32 29}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 433, i32 29}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 434, i32 30}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 435, i32 28}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 436, i32 28}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 437, i32 28}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 438, i32 24}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 439, i32 28}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 443, i32 24}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 444, i32 30}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 447, i32 29}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 448, i32 35}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 455, i32 30}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 456, i32 29}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 457, i32 29}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 460, i32 27}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 461, i32 27}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 462, i32 30}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 463, i32 32}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 464, i32 31}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 465, i32 30}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 466, i32 30}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 467, i32 29}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 468, i32 32}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 469, i32 25}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 470, i32 25}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 471, i32 25}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 472, i32 25}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 473, i32 25}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 474, i32 25}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 475, i32 27}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 476, i32 27}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 477, i32 29}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 478, i32 31}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 479, i32 33}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 480, i32 25}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 481, i32 25}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 482, i32 27}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 483, i32 27}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 484, i32 25}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 485, i32 25}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 486, i32 25}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 487, i32 25}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 488, i32 26}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 489, i32 26}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 490, i32 26}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 491, i32 26}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 492, i32 33}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 493, i32 32}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 494, i32 24}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 495, i32 27}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 496, i32 27}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 497, i32 25}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 498, i32 25}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 499, i32 25}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 500, i32 25}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 501, i32 25}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 502, i32 25}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 503, i32 26}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 504, i32 26}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 505, i32 26}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 506, i32 29}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 507, i32 32}
!318 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 508, i32 28}
!320 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 509, i32 28}
!322 = !{ptr @.str.155, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 510, i32 28}
!324 = !{ptr @.str.156, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 511, i32 32}
!326 = !{ptr @.str.157, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 512, i32 30}
!328 = !{ptr @.str.158, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 513, i32 33}
!330 = !{ptr @.str.159, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 514, i32 29}
!332 = !{ptr @.str.160, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 515, i32 30}
!334 = !{ptr @.str.161, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 516, i32 33}
!336 = !{ptr @.str.162, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 517, i32 29}
!338 = !{ptr @.str.163, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 518, i32 31}
!340 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 519, i32 30}
!342 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 520, i32 30}
!344 = !{ptr @.str.166, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 521, i32 27}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 523, i32 32}
!348 = !{ptr @.str.168, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 524, i32 32}
!350 = !{ptr @.str.169, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 525, i32 32}
!352 = !{ptr @.str.170, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 526, i32 31}
!354 = !{ptr @.str.171, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 527, i32 31}
!356 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 528, i32 31}
!358 = !{ptr @.str.173, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 529, i32 31}
!360 = !{ptr @.str.174, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 530, i32 31}
!362 = !{ptr @.str.175, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 531, i32 31}
!364 = !{ptr @.str.176, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 532, i32 30}
!366 = !{ptr @.str.177, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 533, i32 30}
!368 = !{ptr @.str.178, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 534, i32 30}
!370 = !{ptr @.str.179, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 535, i32 30}
!372 = !{ptr @.str.180, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 536, i32 30}
!374 = !{ptr @.str.181, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 537, i32 28}
!376 = !{ptr @.str.182, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 538, i32 31}
!378 = !{ptr @.str.183, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 539, i32 31}
!380 = !{ptr @.str.184, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 540, i32 31}
!382 = !{ptr @.str.185, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 541, i32 30}
!384 = !{ptr @.str.186, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 542, i32 30}
!386 = !{ptr @.str.187, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 543, i32 30}
!388 = !{ptr @.str.188, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 544, i32 30}
!390 = !{ptr @.str.189, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 545, i32 30}
!392 = !{ptr @.str.190, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 546, i32 33}
!394 = !{ptr @.str.191, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 547, i32 47}
!396 = !{ptr @.str.192, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 548, i32 30}
!398 = !{ptr @.str.193, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 549, i32 29}
!400 = !{ptr @.str.194, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 550, i32 30}
!402 = !{ptr @.str.195, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 551, i32 29}
!404 = !{ptr @.str.196, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 552, i32 30}
!406 = !{ptr @.str.197, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 553, i32 29}
!408 = !{ptr @.str.198, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 554, i32 30}
!410 = !{ptr @.str.199, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 555, i32 29}
!412 = !{ptr @.str.200, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 556, i32 30}
!414 = !{ptr @.str.201, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 557, i32 29}
!416 = !{ptr @.str.202, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 558, i32 30}
!418 = !{ptr @.str.203, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 559, i32 29}
!420 = !{ptr @.str.204, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 560, i32 30}
!422 = !{ptr @.str.205, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 561, i32 31}
!424 = !{ptr @.str.206, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 562, i32 31}
!426 = !{ptr @.str.207, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 563, i32 31}
!428 = !{ptr @.str.208, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 564, i32 31}
!430 = !{ptr @.str.209, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 565, i32 35}
!432 = !{ptr @.str.210, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 566, i32 35}
!434 = !{ptr @.str.211, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 567, i32 34}
!436 = !{ptr @.str.212, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 568, i32 34}
!438 = !{ptr @.str.213, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 569, i32 32}
!440 = !{ptr @.str.214, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 570, i32 32}
!442 = !{ptr @.str.215, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 571, i32 31}
!444 = !{ptr @.str.216, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 572, i32 31}
!446 = !{ptr @.str.217, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 573, i32 31}
!448 = !{ptr @.str.218, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 574, i32 32}
!450 = !{ptr @.str.219, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 575, i32 29}
!452 = !{ptr @.str.220, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 576, i32 32}
!454 = !{ptr @.str.221, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 577, i32 30}
!456 = !{ptr @.str.222, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 578, i32 35}
!458 = !{ptr @.str.223, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 579, i32 35}
!460 = !{ptr @.str.224, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 580, i32 35}
!462 = !{ptr @.str.225, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 581, i32 29}
!464 = !{ptr @.str.226, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 582, i32 33}
!466 = !{ptr @.str.227, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 583, i32 30}
!468 = !{ptr @.str.228, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 584, i32 30}
!470 = !{ptr @.str.229, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 585, i32 31}
!472 = !{ptr @.str.230, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 586, i32 31}
!474 = !{ptr @.str.231, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 588, i32 51}
!476 = !{ptr @.str.232, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 589, i32 58}
!478 = !{ptr @.str.233, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 591, i32 39}
!480 = !{ptr @.str.234, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 601, i32 3}
!482 = !{ptr @.str.235, !481, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.236, !481, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.237, !481, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @imx8mq_clocks_probe._entry, !481, !"_entry", i1 false, i1 false}
!486 = !{ptr @imx8mq_clocks_probe._entry_ptr, !481, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @clk_hw_data, !488, !"clk_hw_data", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 281, i32 36}
!489 = !{ptr @hws, !490, !"hws", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 282, i32 24}
!491 = !{ptr @pll_ref_sels, !492, !"pll_ref_sels", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 28, i32 27}
!493 = !{ptr @arm_pll_bypass_sels, !494, !"arm_pll_bypass_sels", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 29, i32 27}
!495 = !{ptr @gpu_pll_bypass_sels, !496, !"gpu_pll_bypass_sels", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 30, i32 27}
!497 = !{ptr @vpu_pll_bypass_sels, !498, !"vpu_pll_bypass_sels", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 31, i32 27}
!499 = !{ptr @audio_pll1_bypass_sels, !500, !"audio_pll1_bypass_sels", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 32, i32 27}
!501 = !{ptr @audio_pll2_bypass_sels, !502, !"audio_pll2_bypass_sels", i1 false, i1 false}
!502 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 33, i32 27}
!503 = !{ptr @video_pll1_bypass_sels, !504, !"video_pll1_bypass_sels", i1 false, i1 false}
!504 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 34, i32 27}
!505 = !{ptr @sys3_pll_out_sels, !506, !"sys3_pll_out_sels", i1 false, i1 false}
!506 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 36, i32 27}
!507 = !{ptr @dram_pll_out_sels, !508, !"dram_pll_out_sels", i1 false, i1 false}
!508 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 37, i32 27}
!509 = !{ptr @video2_pll_out_sels, !510, !"video2_pll_out_sels", i1 false, i1 false}
!510 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 38, i32 27}
!511 = !{ptr @pllout_monitor_sels, !512, !"pllout_monitor_sels", i1 false, i1 false}
!512 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 273, i32 27}
!513 = !{ptr @imx8mq_a53_sels, !514, !"imx8mq_a53_sels", i1 false, i1 false}
!514 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 41, i32 27}
!515 = !{ptr @imx8mq_arm_m4_sels, !516, !"imx8mq_arm_m4_sels", i1 false, i1 false}
!516 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 46, i32 27}
!517 = !{ptr @imx8mq_vpu_sels, !518, !"imx8mq_vpu_sels", i1 false, i1 false}
!518 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 49, i32 27}
!519 = !{ptr @imx8mq_gpu_core_sels, !520, !"imx8mq_gpu_core_sels", i1 false, i1 false}
!520 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 52, i32 27}
!521 = !{ptr @imx8mq_gpu_shader_sels, !522, !"imx8mq_gpu_shader_sels", i1 false, i1 false}
!522 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 55, i32 27}
!523 = !{ptr @imx8mq_a53_core_sels, !524, !"imx8mq_a53_core_sels", i1 false, i1 false}
!524 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 44, i32 27}
!525 = !{ptr @imx8mq_main_axi_sels, !526, !"imx8mq_main_axi_sels", i1 false, i1 false}
!526 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 58, i32 27}
!527 = !{ptr @imx8mq_enet_axi_sels, !528, !"imx8mq_enet_axi_sels", i1 false, i1 false}
!528 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 61, i32 27}
!529 = !{ptr @imx8mq_nand_usdhc_sels, !530, !"imx8mq_nand_usdhc_sels", i1 false, i1 false}
!530 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 64, i32 27}
!531 = !{ptr @imx8mq_vpu_bus_sels, !532, !"imx8mq_vpu_bus_sels", i1 false, i1 false}
!532 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 67, i32 27}
!533 = !{ptr @imx8mq_disp_axi_sels, !534, !"imx8mq_disp_axi_sels", i1 false, i1 false}
!534 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 69, i32 27}
!535 = !{ptr @imx8mq_disp_apb_sels, !536, !"imx8mq_disp_apb_sels", i1 false, i1 false}
!536 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 71, i32 27}
!537 = !{ptr @imx8mq_disp_rtrm_sels, !538, !"imx8mq_disp_rtrm_sels", i1 false, i1 false}
!538 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 74, i32 27}
!539 = !{ptr @imx8mq_usb_bus_sels, !540, !"imx8mq_usb_bus_sels", i1 false, i1 false}
!540 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 77, i32 27}
!541 = !{ptr @imx8mq_gpu_axi_sels, !542, !"imx8mq_gpu_axi_sels", i1 false, i1 false}
!542 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 80, i32 27}
!543 = !{ptr @imx8mq_gpu_ahb_sels, !544, !"imx8mq_gpu_ahb_sels", i1 false, i1 false}
!544 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 83, i32 27}
!545 = !{ptr @imx8mq_noc_sels, !546, !"imx8mq_noc_sels", i1 false, i1 false}
!546 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 86, i32 27}
!547 = !{ptr @imx8mq_noc_apb_sels, !548, !"imx8mq_noc_apb_sels", i1 false, i1 false}
!548 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 89, i32 27}
!549 = !{ptr @imx8mq_ahb_sels, !550, !"imx8mq_ahb_sels", i1 false, i1 false}
!550 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 92, i32 27}
!551 = !{ptr @imx8mq_audio_ahb_sels, !552, !"imx8mq_audio_ahb_sels", i1 false, i1 false}
!552 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 95, i32 27}
!553 = !{ptr @imx8mq_dram_core_sels, !554, !"imx8mq_dram_core_sels", i1 false, i1 false}
!554 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 266, i32 27}
!555 = !{ptr @imx8mq_dram_alt_sels, !556, !"imx8mq_dram_alt_sels", i1 false, i1 false}
!556 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 101, i32 27}
!557 = !{ptr @imx8mq_dram_apb_sels, !558, !"imx8mq_dram_apb_sels", i1 false, i1 false}
!558 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 104, i32 27}
!559 = !{ptr @imx8mq_vpu_g1_sels, !560, !"imx8mq_vpu_g1_sels", i1 false, i1 false}
!560 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 107, i32 27}
!561 = !{ptr @imx8mq_vpu_g2_sels, !562, !"imx8mq_vpu_g2_sels", i1 false, i1 false}
!562 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 109, i32 27}
!563 = !{ptr @imx8mq_disp_dtrc_sels, !564, !"imx8mq_disp_dtrc_sels", i1 false, i1 false}
!564 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 111, i32 27}
!565 = !{ptr @imx8mq_disp_dc8000_sels, !566, !"imx8mq_disp_dc8000_sels", i1 false, i1 false}
!566 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 113, i32 27}
!567 = !{ptr @imx8mq_pcie1_ctrl_sels, !568, !"imx8mq_pcie1_ctrl_sels", i1 false, i1 false}
!568 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 115, i32 27}
!569 = !{ptr @imx8mq_pcie1_phy_sels, !570, !"imx8mq_pcie1_phy_sels", i1 false, i1 false}
!570 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 118, i32 27}
!571 = !{ptr @imx8mq_pcie1_aux_sels, !572, !"imx8mq_pcie1_aux_sels", i1 false, i1 false}
!572 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 121, i32 27}
!573 = !{ptr @imx8mq_dc_pixel_sels, !574, !"imx8mq_dc_pixel_sels", i1 false, i1 false}
!574 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 124, i32 27}
!575 = !{ptr @imx8mq_lcdif_pixel_sels, !576, !"imx8mq_lcdif_pixel_sels", i1 false, i1 false}
!576 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 126, i32 27}
!577 = !{ptr @imx8mq_sai1_sels, !578, !"imx8mq_sai1_sels", i1 false, i1 false}
!578 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 128, i32 27}
!579 = !{ptr @imx8mq_sai2_sels, !580, !"imx8mq_sai2_sels", i1 false, i1 false}
!580 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 130, i32 27}
!581 = !{ptr @imx8mq_sai3_sels, !582, !"imx8mq_sai3_sels", i1 false, i1 false}
!582 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 132, i32 27}
!583 = !{ptr @imx8mq_sai4_sels, !584, !"imx8mq_sai4_sels", i1 false, i1 false}
!584 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 134, i32 27}
!585 = !{ptr @imx8mq_sai5_sels, !586, !"imx8mq_sai5_sels", i1 false, i1 false}
!586 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 136, i32 27}
!587 = !{ptr @imx8mq_sai6_sels, !588, !"imx8mq_sai6_sels", i1 false, i1 false}
!588 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 138, i32 27}
!589 = !{ptr @imx8mq_spdif1_sels, !590, !"imx8mq_spdif1_sels", i1 false, i1 false}
!590 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 140, i32 27}
!591 = !{ptr @imx8mq_spdif2_sels, !592, !"imx8mq_spdif2_sels", i1 false, i1 false}
!592 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 142, i32 27}
!593 = !{ptr @imx8mq_enet_ref_sels, !594, !"imx8mq_enet_ref_sels", i1 false, i1 false}
!594 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 144, i32 27}
!595 = !{ptr @imx8mq_enet_timer_sels, !596, !"imx8mq_enet_timer_sels", i1 false, i1 false}
!596 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 147, i32 27}
!597 = !{ptr @imx8mq_enet_phy_sels, !598, !"imx8mq_enet_phy_sels", i1 false, i1 false}
!598 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 150, i32 27}
!599 = !{ptr @imx8mq_nand_sels, !600, !"imx8mq_nand_sels", i1 false, i1 false}
!600 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 153, i32 27}
!601 = !{ptr @imx8mq_qspi_sels, !602, !"imx8mq_qspi_sels", i1 false, i1 false}
!602 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 156, i32 27}
!603 = !{ptr @imx8mq_usdhc1_sels, !604, !"imx8mq_usdhc1_sels", i1 false, i1 false}
!604 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 159, i32 27}
!605 = !{ptr @imx8mq_usdhc2_sels, !606, !"imx8mq_usdhc2_sels", i1 false, i1 false}
!606 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 162, i32 27}
!607 = !{ptr @imx8mq_i2c1_sels, !608, !"imx8mq_i2c1_sels", i1 false, i1 false}
!608 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 165, i32 27}
!609 = !{ptr @imx8mq_i2c2_sels, !610, !"imx8mq_i2c2_sels", i1 false, i1 false}
!610 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 168, i32 27}
!611 = !{ptr @imx8mq_i2c3_sels, !612, !"imx8mq_i2c3_sels", i1 false, i1 false}
!612 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 171, i32 27}
!613 = !{ptr @imx8mq_i2c4_sels, !614, !"imx8mq_i2c4_sels", i1 false, i1 false}
!614 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 174, i32 27}
!615 = !{ptr @imx8mq_uart1_sels, !616, !"imx8mq_uart1_sels", i1 false, i1 false}
!616 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 177, i32 27}
!617 = !{ptr @imx8mq_uart2_sels, !618, !"imx8mq_uart2_sels", i1 false, i1 false}
!618 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 180, i32 27}
!619 = !{ptr @imx8mq_uart3_sels, !620, !"imx8mq_uart3_sels", i1 false, i1 false}
!620 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 183, i32 27}
!621 = !{ptr @imx8mq_uart4_sels, !622, !"imx8mq_uart4_sels", i1 false, i1 false}
!622 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 186, i32 27}
!623 = !{ptr @imx8mq_usb_core_sels, !624, !"imx8mq_usb_core_sels", i1 false, i1 false}
!624 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 189, i32 27}
!625 = !{ptr @imx8mq_usb_phy_sels, !626, !"imx8mq_usb_phy_sels", i1 false, i1 false}
!626 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 192, i32 27}
!627 = !{ptr @imx8mq_gic_sels, !628, !"imx8mq_gic_sels", i1 false, i1 false}
!628 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 195, i32 27}
!629 = !{ptr @imx8mq_ecspi1_sels, !630, !"imx8mq_ecspi1_sels", i1 false, i1 false}
!630 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 198, i32 27}
!631 = !{ptr @imx8mq_ecspi2_sels, !632, !"imx8mq_ecspi2_sels", i1 false, i1 false}
!632 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 201, i32 27}
!633 = !{ptr @imx8mq_pwm1_sels, !634, !"imx8mq_pwm1_sels", i1 false, i1 false}
!634 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 204, i32 27}
!635 = !{ptr @imx8mq_pwm2_sels, !636, !"imx8mq_pwm2_sels", i1 false, i1 false}
!636 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 207, i32 27}
!637 = !{ptr @imx8mq_pwm3_sels, !638, !"imx8mq_pwm3_sels", i1 false, i1 false}
!638 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 210, i32 27}
!639 = !{ptr @imx8mq_pwm4_sels, !640, !"imx8mq_pwm4_sels", i1 false, i1 false}
!640 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 213, i32 27}
!641 = !{ptr @imx8mq_gpt1_sels, !642, !"imx8mq_gpt1_sels", i1 false, i1 false}
!642 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 216, i32 27}
!643 = !{ptr @imx8mq_wdog_sels, !644, !"imx8mq_wdog_sels", i1 false, i1 false}
!644 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 219, i32 27}
!645 = !{ptr @imx8mq_wrclk_sels, !646, !"imx8mq_wrclk_sels", i1 false, i1 false}
!646 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 222, i32 27}
!647 = !{ptr @imx8mq_clko1_sels, !648, !"imx8mq_clko1_sels", i1 false, i1 false}
!648 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 268, i32 27}
!649 = !{ptr @imx8mq_clko2_sels, !650, !"imx8mq_clko2_sels", i1 false, i1 false}
!650 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 270, i32 27}
!651 = !{ptr @imx8mq_dsi_core_sels, !652, !"imx8mq_dsi_core_sels", i1 false, i1 false}
!652 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 225, i32 27}
!653 = !{ptr @imx8mq_dsi_phy_sels, !654, !"imx8mq_dsi_phy_sels", i1 false, i1 false}
!654 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 228, i32 27}
!655 = !{ptr @imx8mq_dsi_dbi_sels, !656, !"imx8mq_dsi_dbi_sels", i1 false, i1 false}
!656 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 231, i32 27}
!657 = !{ptr @imx8mq_dsi_esc_sels, !658, !"imx8mq_dsi_esc_sels", i1 false, i1 false}
!658 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 234, i32 27}
!659 = !{ptr @imx8mq_dsi_ahb_sels, !660, !"imx8mq_dsi_ahb_sels", i1 false, i1 false}
!660 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 98, i32 27}
!661 = !{ptr @imx8mq_csi1_core_sels, !662, !"imx8mq_csi1_core_sels", i1 false, i1 false}
!662 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 237, i32 27}
!663 = !{ptr @imx8mq_csi1_phy_sels, !664, !"imx8mq_csi1_phy_sels", i1 false, i1 false}
!664 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 240, i32 27}
!665 = !{ptr @imx8mq_csi1_esc_sels, !666, !"imx8mq_csi1_esc_sels", i1 false, i1 false}
!666 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 243, i32 27}
!667 = !{ptr @imx8mq_csi2_core_sels, !668, !"imx8mq_csi2_core_sels", i1 false, i1 false}
!668 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 246, i32 27}
!669 = !{ptr @imx8mq_csi2_phy_sels, !670, !"imx8mq_csi2_phy_sels", i1 false, i1 false}
!670 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 249, i32 27}
!671 = !{ptr @imx8mq_csi2_esc_sels, !672, !"imx8mq_csi2_esc_sels", i1 false, i1 false}
!672 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 252, i32 27}
!673 = !{ptr @imx8mq_pcie2_ctrl_sels, !674, !"imx8mq_pcie2_ctrl_sels", i1 false, i1 false}
!674 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 255, i32 27}
!675 = !{ptr @imx8mq_pcie2_phy_sels, !676, !"imx8mq_pcie2_phy_sels", i1 false, i1 false}
!676 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 258, i32 27}
!677 = !{ptr @imx8mq_pcie2_aux_sels, !678, !"imx8mq_pcie2_aux_sels", i1 false, i1 false}
!678 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 261, i32 27}
!679 = !{ptr @imx8mq_ecspi3_sels, !680, !"imx8mq_ecspi3_sels", i1 false, i1 false}
!680 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 264, i32 27}
!681 = !{ptr @share_count_nand, !682, !"share_count_nand", i1 false, i1 false}
!682 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 26, i32 12}
!683 = !{ptr @share_count_sai1, !684, !"share_count_sai1", i1 false, i1 false}
!684 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 19, i32 12}
!685 = !{ptr @share_count_sai2, !686, !"share_count_sai2", i1 false, i1 false}
!686 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 20, i32 12}
!687 = !{ptr @share_count_sai3, !688, !"share_count_sai3", i1 false, i1 false}
!688 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 21, i32 12}
!689 = !{ptr @share_count_sai4, !690, !"share_count_sai4", i1 false, i1 false}
!690 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 22, i32 12}
!691 = !{ptr @share_count_sai5, !692, !"share_count_sai5", i1 false, i1 false}
!692 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 23, i32 12}
!693 = !{ptr @share_count_sai6, !694, !"share_count_sai6", i1 false, i1 false}
!694 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 24, i32 12}
!695 = !{ptr @share_count_dcss, !696, !"share_count_dcss", i1 false, i1 false}
!696 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 25, i32 12}
!697 = !{ptr @imx8mq_clk_of_match, !698, !"imx8mq_clk_of_match", i1 false, i1 false}
!698 = !{!"../drivers/clk/imx/clk-imx8mq.c", i32 615, i32 34}
!699 = !{i32 1, !"wchar_size", i32 2}
!700 = !{i32 1, !"min_enum_size", i32 4}
!701 = !{i32 8, !"branch-target-enforcement", i32 0}
!702 = !{i32 8, !"sign-return-address", i32 0}
!703 = !{i32 8, !"sign-return-address-all", i32 0}
!704 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!705 = !{i32 7, !"uwtable", i32 1}
!706 = !{i32 7, !"frame-pointer", i32 2}
!707 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!708 = !{!"branch_weights", i32 1, i32 2000}
