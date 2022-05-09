; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx8mn.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx8mn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_pll14xx_clk = type { i32, ptr, i32, i32 }
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

@__initcall__kmod_clk_imx8mn__183_614_imx8mn_clk_driver_init6 = internal global ptr @imx8mn_clk_driver_init, section ".initcall6.init", align 4
@imx8mn_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8mn_clocks_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx8mn_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8mn_clk_driver_exit = internal global ptr @imx8mn_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [52 x i8] c"clk_imx8mn.author=Anson Huang <Anson.Huang@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [48 x i8] c"clk_imx8mn.description=NXP i.MX8MN clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"clk_imx8mn.file=drivers/clk/imx/clk-imx8mn\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"clk_imx8mn.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx8mn-ccm\00", [21 x i8] zeroinitializer }, align 32
@imx8mn_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/imx/clk-imx8mn.c\00", [35 x i8] zeroinitializer }, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_24m\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext1\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext2\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext3\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext4\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx8mn-anatop\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll1_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@pll_ref_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.2, ptr @.str.2, ptr @.str.2], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll2_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_pll1_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dram_pll_ref_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll3_ref_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pll1\00", [21 x i8] zeroinitializer }, align 32
@imx_1443x_pll = external dso_local global %struct.imx_pll14xx_clk, align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pll2\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_pll1\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_pll\00", [23 x i8] zeroinitializer }, align 32
@imx_1443x_dram_pll = external dso_local global %struct.imx_pll14xx_clk, align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_pll\00", [24 x i8] zeroinitializer }, align 32
@imx_1416x_pll = external dso_local global %struct.imx_pll14xx_clk, align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pll1\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pll2\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pll3\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_pll1_bypass\00", [46 x i8] zeroinitializer }, align 32
@audio_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.18, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_pll2_bypass\00", [46 x i8] zeroinitializer }, align 32
@audio_pll2_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"video_pll1_bypass\00", [46 x i8] zeroinitializer }, align 32
@video_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dram_pll_bypass\00", [16 x i8] zeroinitializer }, align 32
@dram_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@gpu_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpu_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@vpu_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.23, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@arm_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll3_bypass\00", [16 x i8] zeroinitializer }, align 32
@sys_pll3_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll1_out\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll2_out\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video_pll1_out\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dram_pll_out\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpu_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll3_out\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll1_40m_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll1_80m_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_100m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_133m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_160m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_200m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_266m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_400m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll1_out\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll1_40m\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll1_80m\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_133m\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_160m\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_200m\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_266m\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_400m\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_800m\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll2_50m_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_100m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_125m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_166m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_200m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_250m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_333m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_500m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll2_out\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll2_50m\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_166m\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_200m\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_250m\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_333m\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_500m\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_pll2_1000m\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkout1_sel\00", [20 x i8] zeroinitializer }, align 32
@clkout_sels = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.2, ptr @.str.2, ptr @.str.40, ptr @.str.2, ptr @.str.42, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.2, ptr @.str.4], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkout1_div\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkout1\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkout2_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkout2_div\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkout2\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_a53_div\00", [20 x i8] zeroinitializer }, align 32
@imx8mn_a53_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.42, ptr @.str.78, ptr @.str.79, ptr @.str.61, ptr @.str.60, ptr @.str.36, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_m7_core\00", [20 x i8] zeroinitializer }, align 32
@imx8mn_m7_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.76, ptr @.str.41, ptr @.str.61, ptr @.str.36, ptr @.str.38, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpu_core\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_gpu_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.40, ptr @.str.61, ptr @.str.43, ptr @.str.79, ptr @.str.36, ptr @.str.38, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu_shader\00", [21 x i8] zeroinitializer }, align 32
@imx8mn_gpu_shader_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.40, ptr @.str.61, ptr @.str.43, ptr @.str.79, ptr @.str.36, ptr @.str.38, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_a53_core\00", [19 x i8] zeroinitializer }, align 32
@imx8mn_a53_core_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.86, ptr @.str.42], [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_main_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.77, ptr @.str.61, ptr @.str.76, ptr @.str.79, ptr @.str.36, ptr @.str.38, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_enet_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.59, ptr @.str.61, ptr @.str.76, ptr @.str.75, ptr @.str.36, ptr @.str.38, ptr @.str.43], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nand_usdhc_bus\00", [17 x i8] zeroinitializer }, align 32
@imx8mn_nand_usdhc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.59, ptr @.str.61, ptr @.str.75, ptr @.str.56, ptr @.str.43, ptr @.str.76, ptr @.str.36], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_disp_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.79, ptr @.str.61, ptr @.str.43, ptr @.str.53, ptr @.str.37, ptr @.str.5, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_apb\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_disp_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.73, ptr @.str.61, ptr @.str.43, ptr @.str.53, ptr @.str.37, ptr @.str.5, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb_bus\00", [24 x i8] zeroinitializer }, align 32
@imx8mn_usb_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.78, ptr @.str.61, ptr @.str.72, ptr @.str.75, ptr @.str.6, ptr @.str.8, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_axi\00", [24 x i8] zeroinitializer }, align 32
@imx8mn_gpu_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.61, ptr @.str.40, ptr @.str.43, ptr @.str.79, ptr @.str.36, ptr @.str.38, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_ahb\00", [24 x i8] zeroinitializer }, align 32
@imx8mn_gpu_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.61, ptr @.str.40, ptr @.str.43, ptr @.str.79, ptr @.str.36, ptr @.str.38, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"noc\00", [28 x i8] zeroinitializer }, align 32
@imx8mn_noc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.61, ptr @.str.43, ptr @.str.79, ptr @.str.78, ptr @.str.36, ptr @.str.38, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@imx8mn_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.56, ptr @.str.61, ptr @.str.60, ptr @.str.73, ptr @.str.43, ptr @.str.36, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_ahb\00", [22 x i8] zeroinitializer }, align 32
@imx8mn_audio_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.78, ptr @.str.61, ptr @.str.79, ptr @.str.74, ptr @.str.43, ptr @.str.36, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipg_root\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipg_audio_root\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dram_core_clk\00", [18 x i8] zeroinitializer }, align 32
@imx8mn_dram_core_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.39, ptr @.str.208], [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_alt\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_dram_alt_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.61, ptr @.str.55, ptr @.str.78, ptr @.str.79, ptr @.str.43, ptr @.str.36, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_apb\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_dram_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.53, ptr @.str.57, ptr @.str.61, ptr @.str.43, ptr @.str.76, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disp_pixel\00", [21 x i8] zeroinitializer }, align 32
@imx8mn_disp_pixel_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.38, ptr @.str.37, ptr @.str.36, ptr @.str.61, ptr @.str.79, ptr @.str.43, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_sai2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.56, ptr @.str.214, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_sai3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.56, ptr @.str.214, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai5\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_sai5_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.56, ptr @.str.214, ptr @.str.6, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai6\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_sai6_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.56, ptr @.str.214, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spdif1\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_spdif1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.56, ptr @.str.214, ptr @.str.6, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_enet_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.73, ptr @.str.71, ptr @.str.72, ptr @.str.57, ptr @.str.36, ptr @.str.38, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enet_timer\00", [21 x i8] zeroinitializer }, align 32
@imx8mn_enet_timer_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.36, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_phy\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_enet_phy_sels = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.3, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.38, ptr @.str.37], [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_nand_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.78, ptr @.str.36, ptr @.str.60, ptr @.str.37, ptr @.str.43, ptr @.str.76, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_qspi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.77, ptr @.str.78, ptr @.str.37, ptr @.str.59, ptr @.str.43, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_usdhc1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.61, ptr @.str.78, ptr @.str.43, ptr @.str.59, ptr @.str.37, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_usdhc2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.61, ptr @.str.78, ptr @.str.43, ptr @.str.59, ptr @.str.37, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_i2c1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.57, ptr @.str.71, ptr @.str.43, ptr @.str.36, ptr @.str.38, ptr @.str.37, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_i2c2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.57, ptr @.str.71, ptr @.str.43, ptr @.str.36, ptr @.str.38, ptr @.str.37, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_i2c3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.57, ptr @.str.71, ptr @.str.43, ptr @.str.36, ptr @.str.38, ptr @.str.37, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_i2c4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.57, ptr @.str.71, ptr @.str.43, ptr @.str.36, ptr @.str.38, ptr @.str.37, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_uart1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.54, ptr @.str.75, ptr @.str.72, ptr @.str.43, ptr @.str.6, ptr @.str.8, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_uart2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.54, ptr @.str.75, ptr @.str.72, ptr @.str.43, ptr @.str.6, ptr @.str.7, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_uart3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.54, ptr @.str.75, ptr @.str.72, ptr @.str.43, ptr @.str.6, ptr @.str.8, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_uart4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.54, ptr @.str.75, ptr @.str.72, ptr @.str.43, ptr @.str.6, ptr @.str.7, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_core_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mn_usb_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.55, ptr @.str.53, ptr @.str.72, ptr @.str.75, ptr @.str.6, ptr @.str.7, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@imx8mn_usb_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.55, ptr @.str.53, ptr @.str.72, ptr @.str.75, ptr @.str.6, ptr @.str.7, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gic\00", [28 x i8] zeroinitializer }, align 32
@imx8mn_gic_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.53, ptr @.str.72, ptr @.str.61, ptr @.str.6, ptr @.str.8, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_ecspi1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.53, ptr @.str.57, ptr @.str.61, ptr @.str.43, ptr @.str.76, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_ecspi2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.53, ptr @.str.57, ptr @.str.61, ptr @.str.43, ptr @.str.76, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_pwm1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.57, ptr @.str.53, ptr @.str.43, ptr @.str.5, ptr @.str.54, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_pwm2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.57, ptr @.str.53, ptr @.str.43, ptr @.str.5, ptr @.str.54, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_pwm3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.57, ptr @.str.53, ptr @.str.43, ptr @.str.6, ptr @.str.54, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_pwm4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.57, ptr @.str.53, ptr @.str.43, ptr @.str.6, ptr @.str.54, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdog\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_wdog_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.56, ptr @.str.57, ptr @.str.41, ptr @.str.73, ptr @.str.43, ptr @.str.54, ptr @.str.74], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wrclk\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_wrclk_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.53, ptr @.str.41, ptr @.str.43, ptr @.str.75, ptr @.str.59, ptr @.str.78, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clko1\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_clko1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.61, ptr @.str.2, ptr @.str.58, ptr @.str.37, ptr @.str.78, ptr @.str.2, ptr @.str.54], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clko2\00", [26 x i8] zeroinitializer }, align 32
@imx8mn_clko2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.60, ptr @.str.74, ptr @.str.43, ptr @.str.36, ptr @.str.38, ptr @.str.4], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi_core\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_dsi_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.59, ptr @.str.76, ptr @.str.61, ptr @.str.79, ptr @.str.43, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@imx8mn_dsi_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.73, ptr @.str.72, ptr @.str.61, ptr @.str.79, ptr @.str.6, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsi_dbi\00", [24 x i8] zeroinitializer }, align 32
@imx8mn_dsi_dbi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.59, ptr @.str.72, ptr @.str.61, ptr @.str.79, ptr @.str.43, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc3\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_usdhc3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.61, ptr @.str.78, ptr @.str.43, ptr @.str.59, ptr @.str.37, ptr @.str.55], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"camera_pixel\00", [19 x i8] zeroinitializer }, align 32
@imx8mn_camera_pixel_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.59, ptr @.str.76, ptr @.str.61, ptr @.str.79, ptr @.str.43, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi1_phy_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mn_csi1_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.77, ptr @.str.72, ptr @.str.61, ptr @.str.79, ptr @.str.6, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"csi2_phy_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mn_csi2_phy_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.77, ptr @.str.72, ptr @.str.61, ptr @.str.79, ptr @.str.6, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csi2_esc\00", [23 x i8] zeroinitializer }, align 32
@imx8mn_csi2_esc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.54, ptr @.str.61, ptr @.str.79, ptr @.str.43, ptr @.str.7, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@imx8mn_ecspi3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.75, ptr @.str.53, ptr @.str.57, ptr @.str.61, ptr @.str.43, ptr @.str.76, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdm\00", [28 x i8] zeroinitializer }, align 32
@imx8mn_pdm_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.72, ptr @.str.36, ptr @.str.61, ptr @.str.79, ptr @.str.43, ptr @.str.7, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai7\00", [27 x i8] zeroinitializer }, align 32
@imx8mn_sai7_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.56, ptr @.str.214, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi3_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enet1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio4_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio5_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mu_root_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocotp_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qspi_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_nand = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nand_usdhc_rawnand_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai2_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai3_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai5_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai5 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai5_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai6_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai6 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sai6_ipg_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snvs_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart4_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb1_ctrl_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpu_core_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asrc_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pdm_root_clk\00", [19 x i8] zeroinitializer }, align 32
@share_count_pdm = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pdm_ipg_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disp_axi_root_clk\00", [46 x i8] zeroinitializer }, align 32
@share_count_disp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disp_apb_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"camera_pixel_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disp_pixel_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc3_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma1_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma2_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdma3_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sai7_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_sai7 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dram_alt_root\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@imx8mn_clocks_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.1, i32 582, ptr @.str.212, ptr @.str.213 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register hws for i.MX8MN\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx8mn_clocks_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8mn_clocks_probe._entry_ptr = internal global ptr @imx8mn_clocks_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_hdmi\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"imx8mn_clk_driver\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 602, i32 31 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 605, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c"imx8mn_clk_of_match\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 596, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 292, i32 36 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 304, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 293, i32 24 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 310, i32 43 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 311, i32 52 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 312, i32 52 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 313, i32 53 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 314, i32 53 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 315, i32 53 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 316, i32 53 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 318, i32 43 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 326, i32 35 }
@___asan_gen_.260 = private unnamed_addr constant [13 x i8] c"pll_ref_sels\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 27, i32 27 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 327, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 328, i32 35 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 329, i32 33 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 330, i32 32 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 331, i32 32 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 332, i32 32 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 333, i32 33 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 335, i32 27 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 336, i32 27 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 337, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 338, i32 25 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 339, i32 24 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 340, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 341, i32 24 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 342, i32 42 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 343, i32 42 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 344, i32 25 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 347, i32 34 }
@___asan_gen_.317 = private unnamed_addr constant [23 x i8] c"audio_pll1_bypass_sels\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 28, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 348, i32 34 }
@___asan_gen_.323 = private unnamed_addr constant [23 x i8] c"audio_pll2_bypass_sels\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 29, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 349, i32 34 }
@___asan_gen_.329 = private unnamed_addr constant [23 x i8] c"video_pll1_bypass_sels\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 30, i32 27 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 350, i32 32 }
@___asan_gen_.335 = private unnamed_addr constant [21 x i8] c"dram_pll_bypass_sels\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 31, i32 27 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 351, i32 31 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c"gpu_pll_bypass_sels\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 32, i32 27 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 352, i32 31 }
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c"vpu_pll_bypass_sels\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 33, i32 27 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 353, i32 31 }
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c"arm_pll_bypass_sels\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 34, i32 27 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 354, i32 32 }
@___asan_gen_.359 = private unnamed_addr constant [21 x i8] c"sys_pll3_bypass_sels\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 35, i32 27 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 357, i32 31 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 358, i32 31 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 359, i32 31 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 360, i32 29 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 361, i32 28 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 362, i32 28 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 363, i32 28 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 364, i32 29 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 367, i32 32 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 368, i32 32 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 369, i32 33 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 370, i32 33 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 371, i32 33 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 372, i32 33 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 373, i32 33 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 374, i32 33 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 375, i32 29 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 377, i32 53 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 378, i32 53 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 379, i32 54 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 380, i32 54 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 381, i32 54 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 382, i32 54 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 383, i32 54 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 384, i32 54 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 385, i32 54 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 388, i32 32 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 389, i32 33 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 390, i32 33 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 391, i32 33 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 392, i32 33 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 393, i32 33 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 394, i32 33 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 395, i32 33 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 396, i32 29 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 398, i32 53 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 399, i32 54 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 400, i32 54 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 401, i32 54 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 402, i32 54 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 403, i32 54 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 404, i32 54 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 405, i32 54 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 406, i32 55 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 408, i32 32 }
@___asan_gen_.497 = private unnamed_addr constant [12 x i8] c"clkout_sels\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 287, i32 27 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 409, i32 32 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 410, i32 28 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 411, i32 32 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 412, i32 32 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 413, i32 28 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 423, i32 28 }
@___asan_gen_.518 = private unnamed_addr constant [16 x i8] c"imx8mn_a53_sels\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 37, i32 27 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 427, i32 28 }
@___asan_gen_.524 = private unnamed_addr constant [15 x i8] c"imx8mn_m7_sels\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 43, i32 27 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 429, i32 29 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c"imx8mn_gpu_core_sels\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 46, i32 27 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 430, i32 31 }
@___asan_gen_.536 = private unnamed_addr constant [23 x i8] c"imx8mn_gpu_shader_sels\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 50, i32 27 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 440, i32 29 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c"imx8mn_a53_core_sels\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 41, i32 27 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 443, i32 29 }
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c"imx8mn_main_axi_sels\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 54, i32 27 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 444, i32 29 }
@___asan_gen_.554 = private unnamed_addr constant [21 x i8] c"imx8mn_enet_axi_sels\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 58, i32 27 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 445, i32 35 }
@___asan_gen_.560 = private unnamed_addr constant [23 x i8] c"imx8mn_nand_usdhc_sels\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 62, i32 27 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 446, i32 29 }
@___asan_gen_.566 = private unnamed_addr constant [21 x i8] c"imx8mn_disp_axi_sels\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 66, i32 27 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 447, i32 29 }
@___asan_gen_.572 = private unnamed_addr constant [21 x i8] c"imx8mn_disp_apb_sels\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 70, i32 27 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 448, i32 28 }
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c"imx8mn_usb_bus_sels\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 74, i32 27 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 449, i32 28 }
@___asan_gen_.584 = private unnamed_addr constant [20 x i8] c"imx8mn_gpu_axi_sels\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 78, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 450, i32 28 }
@___asan_gen_.590 = private unnamed_addr constant [20 x i8] c"imx8mn_gpu_ahb_sels\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 82, i32 27 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 451, i32 24 }
@___asan_gen_.596 = private unnamed_addr constant [16 x i8] c"imx8mn_noc_sels\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 86, i32 27 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 453, i32 24 }
@___asan_gen_.602 = private unnamed_addr constant [16 x i8] c"imx8mn_ahb_sels\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 90, i32 27 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 454, i32 30 }
@___asan_gen_.608 = private unnamed_addr constant [22 x i8] c"imx8mn_audio_ahb_sels\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 94, i32 27 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 455, i32 29 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 456, i32 35 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 457, i32 30 }
@___asan_gen_.620 = private unnamed_addr constant [22 x i8] c"imx8mn_dram_core_sels\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 278, i32 27 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 464, i32 29 }
@___asan_gen_.626 = private unnamed_addr constant [21 x i8] c"imx8mn_dram_alt_sels\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 98, i32 27 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 465, i32 29 }
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c"imx8mn_dram_apb_sels\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 102, i32 27 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 467, i32 31 }
@___asan_gen_.638 = private unnamed_addr constant [23 x i8] c"imx8mn_disp_pixel_sels\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 106, i32 27 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 468, i32 25 }
@___asan_gen_.644 = private unnamed_addr constant [17 x i8] c"imx8mn_sai2_sels\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 110, i32 27 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 469, i32 25 }
@___asan_gen_.650 = private unnamed_addr constant [17 x i8] c"imx8mn_sai3_sels\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 114, i32 27 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 470, i32 25 }
@___asan_gen_.656 = private unnamed_addr constant [17 x i8] c"imx8mn_sai5_sels\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 118, i32 27 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 471, i32 25 }
@___asan_gen_.662 = private unnamed_addr constant [17 x i8] c"imx8mn_sai6_sels\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 122, i32 27 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 472, i32 27 }
@___asan_gen_.668 = private unnamed_addr constant [19 x i8] c"imx8mn_spdif1_sels\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 130, i32 27 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 473, i32 29 }
@___asan_gen_.674 = private unnamed_addr constant [21 x i8] c"imx8mn_enet_ref_sels\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 134, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 474, i32 31 }
@___asan_gen_.680 = private unnamed_addr constant [23 x i8] c"imx8mn_enet_timer_sels\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 138, i32 27 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 475, i32 33 }
@___asan_gen_.686 = private unnamed_addr constant [21 x i8] c"imx8mn_enet_phy_sels\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 142, i32 27 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 476, i32 25 }
@___asan_gen_.692 = private unnamed_addr constant [17 x i8] c"imx8mn_nand_sels\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 146, i32 27 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 477, i32 25 }
@___asan_gen_.698 = private unnamed_addr constant [17 x i8] c"imx8mn_qspi_sels\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 150, i32 27 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 478, i32 27 }
@___asan_gen_.704 = private unnamed_addr constant [19 x i8] c"imx8mn_usdhc1_sels\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 154, i32 27 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 479, i32 27 }
@___asan_gen_.710 = private unnamed_addr constant [19 x i8] c"imx8mn_usdhc2_sels\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 158, i32 27 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 480, i32 25 }
@___asan_gen_.716 = private unnamed_addr constant [17 x i8] c"imx8mn_i2c1_sels\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 162, i32 27 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 481, i32 25 }
@___asan_gen_.722 = private unnamed_addr constant [17 x i8] c"imx8mn_i2c2_sels\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 166, i32 27 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 482, i32 25 }
@___asan_gen_.728 = private unnamed_addr constant [17 x i8] c"imx8mn_i2c3_sels\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 170, i32 27 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 483, i32 25 }
@___asan_gen_.734 = private unnamed_addr constant [17 x i8] c"imx8mn_i2c4_sels\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 174, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 484, i32 26 }
@___asan_gen_.740 = private unnamed_addr constant [18 x i8] c"imx8mn_uart1_sels\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 178, i32 27 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 485, i32 26 }
@___asan_gen_.746 = private unnamed_addr constant [18 x i8] c"imx8mn_uart2_sels\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 182, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 486, i32 26 }
@___asan_gen_.752 = private unnamed_addr constant [18 x i8] c"imx8mn_uart3_sels\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 186, i32 27 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 487, i32 26 }
@___asan_gen_.758 = private unnamed_addr constant [18 x i8] c"imx8mn_uart4_sels\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 190, i32 27 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 488, i32 33 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c"imx8mn_usb_core_sels\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 194, i32 27 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 489, i32 32 }
@___asan_gen_.770 = private unnamed_addr constant [20 x i8] c"imx8mn_usb_phy_sels\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 198, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 490, i32 24 }
@___asan_gen_.776 = private unnamed_addr constant [16 x i8] c"imx8mn_gic_sels\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 202, i32 27 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 491, i32 27 }
@___asan_gen_.782 = private unnamed_addr constant [19 x i8] c"imx8mn_ecspi1_sels\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 206, i32 27 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 492, i32 27 }
@___asan_gen_.788 = private unnamed_addr constant [19 x i8] c"imx8mn_ecspi2_sels\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 210, i32 27 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 493, i32 25 }
@___asan_gen_.794 = private unnamed_addr constant [17 x i8] c"imx8mn_pwm1_sels\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 214, i32 27 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 494, i32 25 }
@___asan_gen_.800 = private unnamed_addr constant [17 x i8] c"imx8mn_pwm2_sels\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 218, i32 27 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 495, i32 25 }
@___asan_gen_.806 = private unnamed_addr constant [17 x i8] c"imx8mn_pwm3_sels\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 222, i32 27 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 496, i32 25 }
@___asan_gen_.812 = private unnamed_addr constant [17 x i8] c"imx8mn_pwm4_sels\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 226, i32 27 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 497, i32 25 }
@___asan_gen_.818 = private unnamed_addr constant [17 x i8] c"imx8mn_wdog_sels\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 230, i32 27 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 498, i32 26 }
@___asan_gen_.824 = private unnamed_addr constant [18 x i8] c"imx8mn_wrclk_sels\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 234, i32 27 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 499, i32 26 }
@___asan_gen_.830 = private unnamed_addr constant [18 x i8] c"imx8mn_clko1_sels\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 280, i32 27 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 500, i32 26 }
@___asan_gen_.836 = private unnamed_addr constant [18 x i8] c"imx8mn_clko2_sels\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 283, i32 27 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 501, i32 29 }
@___asan_gen_.842 = private unnamed_addr constant [21 x i8] c"imx8mn_dsi_core_sels\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 238, i32 27 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 502, i32 32 }
@___asan_gen_.848 = private unnamed_addr constant [20 x i8] c"imx8mn_dsi_phy_sels\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 242, i32 27 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 503, i32 28 }
@___asan_gen_.854 = private unnamed_addr constant [20 x i8] c"imx8mn_dsi_dbi_sels\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 246, i32 27 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 504, i32 27 }
@___asan_gen_.860 = private unnamed_addr constant [19 x i8] c"imx8mn_usdhc3_sels\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 250, i32 27 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 505, i32 33 }
@___asan_gen_.866 = private unnamed_addr constant [25 x i8] c"imx8mn_camera_pixel_sels\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 254, i32 27 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 506, i32 33 }
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c"imx8mn_csi1_phy_sels\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 258, i32 27 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 507, i32 33 }
@___asan_gen_.878 = private unnamed_addr constant [21 x i8] c"imx8mn_csi2_phy_sels\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 262, i32 27 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 508, i32 29 }
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c"imx8mn_csi2_esc_sels\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 266, i32 27 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 509, i32 27 }
@___asan_gen_.890 = private unnamed_addr constant [19 x i8] c"imx8mn_ecspi3_sels\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 270, i32 27 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 510, i32 24 }
@___asan_gen_.896 = private unnamed_addr constant [16 x i8] c"imx8mn_pdm_sels\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 274, i32 27 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 511, i32 25 }
@___asan_gen_.902 = private unnamed_addr constant [17 x i8] c"imx8mn_sai7_sels\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 126, i32 27 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 513, i32 32 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 514, i32 32 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 515, i32 32 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 516, i32 31 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 517, i32 31 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 518, i32 31 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 519, i32 31 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 520, i32 31 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 521, i32 31 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 522, i32 30 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 523, i32 30 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 524, i32 30 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 525, i32 30 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 526, i32 28 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 527, i32 31 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 528, i32 30 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 529, i32 30 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 530, i32 30 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 531, i32 30 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 532, i32 30 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 533, i32 30 }
@___asan_gen_.968 = private unnamed_addr constant [17 x i8] c"share_count_nand\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 25, i32 12 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 534, i32 47 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 535, i32 30 }
@___asan_gen_.977 = private unnamed_addr constant [17 x i8] c"share_count_sai2\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 18, i32 12 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 536, i32 29 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 537, i32 30 }
@___asan_gen_.986 = private unnamed_addr constant [17 x i8] c"share_count_sai3\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 19, i32 12 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 538, i32 29 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 539, i32 30 }
@___asan_gen_.995 = private unnamed_addr constant [17 x i8] c"share_count_sai5\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 20, i32 12 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 540, i32 29 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 541, i32 30 }
@___asan_gen_.1004 = private unnamed_addr constant [17 x i8] c"share_count_sai6\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 21, i32 12 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 542, i32 29 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 543, i32 30 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 544, i32 31 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 545, i32 31 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 546, i32 31 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 547, i32 31 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 548, i32 35 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 549, i32 34 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 550, i32 32 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 551, i32 32 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 552, i32 31 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 553, i32 31 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 554, i32 31 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 555, i32 33 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 556, i32 30 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 557, i32 29 }
@___asan_gen_.1055 = private unnamed_addr constant [16 x i8] c"share_count_pdm\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 24, i32 12 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 558, i32 29 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 559, i32 35 }
@___asan_gen_.1064 = private unnamed_addr constant [17 x i8] c"share_count_disp\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 23, i32 12 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 560, i32 35 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 561, i32 38 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 562, i32 36 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 563, i32 32 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 564, i32 29 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 565, i32 31 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 566, i32 31 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 567, i32 31 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 568, i32 30 }
@___asan_gen_.1094 = private unnamed_addr constant [17 x i8] c"share_count_sai7\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 22, i32 12 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 570, i32 58 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 572, i32 39 }
@___asan_gen_.1103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 582, i32 3 }
@___asan_gen_.1118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1119 = private constant [32 x i8] c"../drivers/clk/imx/clk-imx8mn.c\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 111, i32 42 }
@llvm.compiler.used = appending global [310 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx8mn_clk_driver_exit, ptr @__initcall__kmod_clk_imx8mn__183_614_imx8mn_clk_driver_init6, ptr @imx8mn_clk_driver_exit, ptr @imx8mn_clocks_probe._entry, ptr @imx8mn_clocks_probe._entry_ptr, ptr @imx8mn_clk_driver, ptr @.str, ptr @imx8mn_clk_of_match, ptr @clk_hw_data, ptr @.str.1, ptr @hws, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @pll_ref_sels, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @audio_pll1_bypass_sels, ptr @.str.29, ptr @audio_pll2_bypass_sels, ptr @.str.30, ptr @video_pll1_bypass_sels, ptr @.str.31, ptr @dram_pll_bypass_sels, ptr @.str.32, ptr @gpu_pll_bypass_sels, ptr @.str.33, ptr @vpu_pll_bypass_sels, ptr @.str.34, ptr @arm_pll_bypass_sels, ptr @.str.35, ptr @sys_pll3_bypass_sels, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @clkout_sels, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @imx8mn_a53_sels, ptr @.str.87, ptr @imx8mn_m7_sels, ptr @.str.88, ptr @imx8mn_gpu_core_sels, ptr @.str.89, ptr @imx8mn_gpu_shader_sels, ptr @.str.90, ptr @imx8mn_a53_core_sels, ptr @.str.91, ptr @imx8mn_main_axi_sels, ptr @.str.92, ptr @imx8mn_enet_axi_sels, ptr @.str.93, ptr @imx8mn_nand_usdhc_sels, ptr @.str.94, ptr @imx8mn_disp_axi_sels, ptr @.str.95, ptr @imx8mn_disp_apb_sels, ptr @.str.96, ptr @imx8mn_usb_bus_sels, ptr @.str.97, ptr @imx8mn_gpu_axi_sels, ptr @.str.98, ptr @imx8mn_gpu_ahb_sels, ptr @.str.99, ptr @imx8mn_noc_sels, ptr @.str.100, ptr @imx8mn_ahb_sels, ptr @.str.101, ptr @imx8mn_audio_ahb_sels, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @imx8mn_dram_core_sels, ptr @.str.105, ptr @imx8mn_dram_alt_sels, ptr @.str.106, ptr @imx8mn_dram_apb_sels, ptr @.str.107, ptr @imx8mn_disp_pixel_sels, ptr @.str.108, ptr @imx8mn_sai2_sels, ptr @.str.109, ptr @imx8mn_sai3_sels, ptr @.str.110, ptr @imx8mn_sai5_sels, ptr @.str.111, ptr @imx8mn_sai6_sels, ptr @.str.112, ptr @imx8mn_spdif1_sels, ptr @.str.113, ptr @imx8mn_enet_ref_sels, ptr @.str.114, ptr @imx8mn_enet_timer_sels, ptr @.str.115, ptr @imx8mn_enet_phy_sels, ptr @.str.116, ptr @imx8mn_nand_sels, ptr @.str.117, ptr @imx8mn_qspi_sels, ptr @.str.118, ptr @imx8mn_usdhc1_sels, ptr @.str.119, ptr @imx8mn_usdhc2_sels, ptr @.str.120, ptr @imx8mn_i2c1_sels, ptr @.str.121, ptr @imx8mn_i2c2_sels, ptr @.str.122, ptr @imx8mn_i2c3_sels, ptr @.str.123, ptr @imx8mn_i2c4_sels, ptr @.str.124, ptr @imx8mn_uart1_sels, ptr @.str.125, ptr @imx8mn_uart2_sels, ptr @.str.126, ptr @imx8mn_uart3_sels, ptr @.str.127, ptr @imx8mn_uart4_sels, ptr @.str.128, ptr @imx8mn_usb_core_sels, ptr @.str.129, ptr @imx8mn_usb_phy_sels, ptr @.str.130, ptr @imx8mn_gic_sels, ptr @.str.131, ptr @imx8mn_ecspi1_sels, ptr @.str.132, ptr @imx8mn_ecspi2_sels, ptr @.str.133, ptr @imx8mn_pwm1_sels, ptr @.str.134, ptr @imx8mn_pwm2_sels, ptr @.str.135, ptr @imx8mn_pwm3_sels, ptr @.str.136, ptr @imx8mn_pwm4_sels, ptr @.str.137, ptr @imx8mn_wdog_sels, ptr @.str.138, ptr @imx8mn_wrclk_sels, ptr @.str.139, ptr @imx8mn_clko1_sels, ptr @.str.140, ptr @imx8mn_clko2_sels, ptr @.str.141, ptr @imx8mn_dsi_core_sels, ptr @.str.142, ptr @imx8mn_dsi_phy_sels, ptr @.str.143, ptr @imx8mn_dsi_dbi_sels, ptr @.str.144, ptr @imx8mn_usdhc3_sels, ptr @.str.145, ptr @imx8mn_camera_pixel_sels, ptr @.str.146, ptr @imx8mn_csi1_phy_sels, ptr @.str.147, ptr @imx8mn_csi2_phy_sels, ptr @.str.148, ptr @imx8mn_csi2_esc_sels, ptr @.str.149, ptr @imx8mn_ecspi3_sels, ptr @.str.150, ptr @imx8mn_pdm_sels, ptr @.str.151, ptr @imx8mn_sai7_sels, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @share_count_nand, ptr @.str.173, ptr @.str.174, ptr @share_count_sai2, ptr @.str.175, ptr @.str.176, ptr @share_count_sai3, ptr @.str.177, ptr @.str.178, ptr @share_count_sai5, ptr @.str.179, ptr @.str.180, ptr @share_count_sai6, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @share_count_pdm, ptr @.str.197, ptr @.str.198, ptr @share_count_disp, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @share_count_sai7, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214], section "llvm.metadata"
@0 = internal global [302 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ref_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_sels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_a53_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_m7_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_gpu_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_gpu_shader_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_a53_core_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_main_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_enet_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_nand_usdhc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_disp_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_disp_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_usb_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_gpu_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_gpu_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_noc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_audio_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_dram_core_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_dram_alt_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_dram_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_disp_pixel_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_sai2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_sai3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_sai5_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_sai6_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_spdif1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_enet_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_enet_timer_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_enet_phy_sels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_nand_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_qspi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_usdhc1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_usdhc2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_i2c1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_i2c2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_i2c3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_i2c4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_uart1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_uart2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_uart3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_uart4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_usb_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_usb_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_gic_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_ecspi1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_ecspi2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pwm1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pwm2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pwm3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pwm4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_wdog_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_wrclk_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_clko1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_clko2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_dsi_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_dsi_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_dsi_dbi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_usdhc3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_camera_pixel_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_csi1_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_csi2_phy_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_csi2_esc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_ecspi3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_pdm_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_sai7_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_nand to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_pdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_disp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_sai7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mn_clocks_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mn_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8mn_clk_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8mn_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8mn_clk_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mn_clocks_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 892) #8
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !620

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 304, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end25:                                         ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 222, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %4 = load ptr, ptr @hws, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %4, align 4
  %call27 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  %6 = load ptr, ptr @hws, align 4
  %arrayidx28 = getelementptr ptr, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %arrayidx28, align 4
  %call29 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.4) #5
  %8 = load ptr, ptr @hws, align 4
  %arrayidx30 = getelementptr ptr, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %arrayidx30, align 4
  %call31 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.5) #5
  %10 = load ptr, ptr @hws, align 4
  %arrayidx32 = getelementptr ptr, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call31, ptr %arrayidx32, align 4
  %call33 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.6) #5
  %12 = load ptr, ptr @hws, align 4
  %arrayidx34 = getelementptr ptr, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %arrayidx34, align 4
  %call35 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.7) #5
  %14 = load ptr, ptr @hws, align 4
  %arrayidx36 = getelementptr ptr, ptr %14, i32 6
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call35, ptr %arrayidx36, align 4
  %call37 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  %16 = load ptr, ptr @hws, align 4
  %arrayidx38 = getelementptr ptr, ptr %16, i32 7
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call37, ptr %arrayidx38, align 4
  %call39 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #5
  %call40 = tail call ptr @of_iomap(ptr noundef %call39, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef %call39) #5
  %tobool42.not = icmp eq ptr %call40, null
  br i1 %tobool42.not, label %do.end60, label %if.end76, !prof !620

do.end60:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 321, i32 noundef 9, ptr noundef null) #5
  br label %unregister_hws

if.end76:                                         ; preds = %if.end25
  %call.i915 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call40, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %18 = load ptr, ptr @hws, align 4
  %arrayidx78 = getelementptr ptr, ptr %18, i32 8
  %19 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i915, ptr %arrayidx78, align 4
  %add.ptr79 = getelementptr i8, ptr %call40, i32 20
  %call.i916 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr79, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %20 = load ptr, ptr @hws, align 4
  %arrayidx81 = getelementptr ptr, ptr %20, i32 9
  %21 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i916, ptr %arrayidx81, align 4
  %add.ptr82 = getelementptr i8, ptr %call40, i32 40
  %call.i917 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr82, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %22 = load ptr, ptr @hws, align 4
  %arrayidx84 = getelementptr ptr, ptr %22, i32 10
  %23 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i917, ptr %arrayidx84, align 4
  %add.ptr85 = getelementptr i8, ptr %call40, i32 80
  %call.i918 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr85, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %24 = load ptr, ptr @hws, align 4
  %arrayidx87 = getelementptr ptr, ptr %24, i32 11
  %25 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i918, ptr %arrayidx87, align 4
  %add.ptr88 = getelementptr i8, ptr %call40, i32 100
  %call.i919 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr88, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %26 = load ptr, ptr @hws, align 4
  %arrayidx90 = getelementptr ptr, ptr %26, i32 12
  %27 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i919, ptr %arrayidx90, align 4
  %add.ptr91 = getelementptr i8, ptr %call40, i32 116
  %call.i920 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr91, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %28 = load ptr, ptr @hws, align 4
  %arrayidx93 = getelementptr ptr, ptr %28, i32 13
  %29 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i920, ptr %arrayidx93, align 4
  %add.ptr94 = getelementptr i8, ptr %call40, i32 132
  %call.i921 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr94, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %30 = load ptr, ptr @hws, align 4
  %arrayidx96 = getelementptr ptr, ptr %30, i32 14
  %31 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i921, ptr %arrayidx96, align 4
  %add.ptr97 = getelementptr i8, ptr %call40, i32 276
  %call.i922 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr97, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %32 = load ptr, ptr @hws, align 4
  %arrayidx99 = getelementptr ptr, ptr %32, i32 17
  %33 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i922, ptr %arrayidx99, align 4
  %call100 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.10, ptr noundef nonnull %call40, ptr noundef nonnull @imx_1443x_pll) #5
  %34 = load ptr, ptr @hws, align 4
  %arrayidx101 = getelementptr ptr, ptr %34, i32 18
  %35 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call100, ptr %arrayidx101, align 4
  %call103 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, ptr noundef %add.ptr79, ptr noundef nonnull @imx_1443x_pll) #5
  %36 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %36, i32 19
  %37 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call103, ptr %arrayidx104, align 4
  %call106 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef %add.ptr82, ptr noundef nonnull @imx_1443x_pll) #5
  %38 = load ptr, ptr @hws, align 4
  %arrayidx107 = getelementptr ptr, ptr %38, i32 20
  %39 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call106, ptr %arrayidx107, align 4
  %call109 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.13, ptr noundef %add.ptr85, ptr noundef nonnull @imx_1443x_dram_pll) #5
  %40 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %40, i32 21
  %41 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call109, ptr %arrayidx110, align 4
  %call112 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, ptr noundef %add.ptr88, ptr noundef nonnull @imx_1416x_pll) #5
  %42 = load ptr, ptr @hws, align 4
  %arrayidx113 = getelementptr ptr, ptr %42, i32 22
  %43 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call112, ptr %arrayidx113, align 4
  %call115 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.15, ptr noundef %add.ptr91, ptr noundef nonnull @imx_1416x_pll) #5
  %44 = load ptr, ptr @hws, align 4
  %arrayidx116 = getelementptr ptr, ptr %44, i32 23
  %45 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call115, ptr %arrayidx116, align 4
  %call118 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, ptr noundef %add.ptr94, ptr noundef nonnull @imx_1416x_pll) #5
  %46 = load ptr, ptr @hws, align 4
  %arrayidx119 = getelementptr ptr, ptr %46, i32 24
  %47 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call118, ptr %arrayidx119, align 4
  %call.i923 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 800000000, i32 noundef 0, i32 noundef 0) #5
  %48 = load ptr, ptr @hws, align 4
  %arrayidx121 = getelementptr ptr, ptr %48, i32 25
  %49 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i923, ptr %arrayidx121, align 4
  %call.i924 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 1000000000, i32 noundef 0, i32 noundef 0) #5
  %50 = load ptr, ptr @hws, align 4
  %arrayidx123 = getelementptr ptr, ptr %50, i32 26
  %51 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i924, ptr %arrayidx123, align 4
  %call125 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17, ptr noundef %add.ptr97, ptr noundef nonnull @imx_1416x_pll) #5
  %52 = load ptr, ptr @hws, align 4
  %arrayidx126 = getelementptr ptr, ptr %52, i32 27
  %53 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call125, ptr %arrayidx126, align 4
  %call.i925 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @audio_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef nonnull %call40, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %54 = load ptr, ptr @hws, align 4
  %arrayidx128 = getelementptr ptr, ptr %54, i32 28
  %55 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i925, ptr %arrayidx128, align 4
  %call.i926 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 2, ptr noundef nonnull @audio_pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr79, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %56 = load ptr, ptr @hws, align 4
  %arrayidx131 = getelementptr ptr, ptr %56, i32 29
  %57 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i926, ptr %arrayidx131, align 4
  %call.i927 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, i8 noundef zeroext 2, ptr noundef nonnull @video_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr82, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %58 = load ptr, ptr @hws, align 4
  %arrayidx134 = getelementptr ptr, ptr %58, i32 30
  %59 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i927, ptr %arrayidx134, align 4
  %call.i928 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 2, ptr noundef nonnull @dram_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr85, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %60 = load ptr, ptr @hws, align 4
  %arrayidx137 = getelementptr ptr, ptr %60, i32 31
  %61 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i928, ptr %arrayidx137, align 4
  %call.i929 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, i8 noundef zeroext 2, ptr noundef nonnull @gpu_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr88, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %62 = load ptr, ptr @hws, align 4
  %arrayidx140 = getelementptr ptr, ptr %62, i32 32
  %63 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i929, ptr %arrayidx140, align 4
  %call.i930 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, i8 noundef zeroext 2, ptr noundef nonnull @vpu_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr91, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %64 = load ptr, ptr @hws, align 4
  %arrayidx143 = getelementptr ptr, ptr %64, i32 33
  %65 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i930, ptr %arrayidx143, align 4
  %call.i931 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, i8 noundef zeroext 2, ptr noundef nonnull @arm_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr94, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %66 = load ptr, ptr @hws, align 4
  %arrayidx146 = getelementptr ptr, ptr %66, i32 34
  %67 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i931, ptr %arrayidx146, align 4
  %call.i932 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, i8 noundef zeroext 2, ptr noundef nonnull @sys_pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr97, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %68 = load ptr, ptr @hws, align 4
  %arrayidx149 = getelementptr ptr, ptr %68, i32 37
  %69 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i932, ptr %arrayidx149, align 4
  %call.i933 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef nonnull %call40, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %70 = load ptr, ptr @hws, align 4
  %arrayidx151 = getelementptr ptr, ptr %70, i32 38
  %71 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i933, ptr %arrayidx151, align 4
  %call.i934 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr79, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %72 = load ptr, ptr @hws, align 4
  %arrayidx154 = getelementptr ptr, ptr %72, i32 39
  %73 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i934, ptr %arrayidx154, align 4
  %call.i935 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr82, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %74 = load ptr, ptr @hws, align 4
  %arrayidx157 = getelementptr ptr, ptr %74, i32 40
  %75 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i935, ptr %arrayidx157, align 4
  %call.i936 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr85, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %76 = load ptr, ptr @hws, align 4
  %arrayidx160 = getelementptr ptr, ptr %76, i32 41
  %77 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i936, ptr %arrayidx160, align 4
  %call.i937 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr88, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %78 = load ptr, ptr @hws, align 4
  %arrayidx163 = getelementptr ptr, ptr %78, i32 42
  %79 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i937, ptr %arrayidx163, align 4
  %call.i938 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr91, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %80 = load ptr, ptr @hws, align 4
  %arrayidx166 = getelementptr ptr, ptr %80, i32 43
  %81 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i938, ptr %arrayidx166, align 4
  %call.i939 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr94, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %82 = load ptr, ptr @hws, align 4
  %arrayidx169 = getelementptr ptr, ptr %82, i32 44
  %83 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i939, ptr %arrayidx169, align 4
  %call.i940 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr97, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %84 = load ptr, ptr @hws, align 4
  %arrayidx172 = getelementptr ptr, ptr %84, i32 47
  %85 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i940, ptr %arrayidx172, align 4
  %add.ptr173 = getelementptr i8, ptr %call40, i32 148
  %call.i941 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %86 = load ptr, ptr @hws, align 4
  %arrayidx175 = getelementptr ptr, ptr %86, i32 195
  %87 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i941, ptr %arrayidx175, align 4
  %call.i942 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %88 = load ptr, ptr @hws, align 4
  %arrayidx178 = getelementptr ptr, ptr %88, i32 196
  %89 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i942, ptr %arrayidx178, align 4
  %call.i943 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %90 = load ptr, ptr @hws, align 4
  %arrayidx181 = getelementptr ptr, ptr %90, i32 197
  %91 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i943, ptr %arrayidx181, align 4
  %call.i944 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %92 = load ptr, ptr @hws, align 4
  %arrayidx184 = getelementptr ptr, ptr %92, i32 198
  %93 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i944, ptr %arrayidx184, align 4
  %call.i945 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %94 = load ptr, ptr @hws, align 4
  %arrayidx187 = getelementptr ptr, ptr %94, i32 199
  %95 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i945, ptr %arrayidx187, align 4
  %call.i946 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %96 = load ptr, ptr @hws, align 4
  %arrayidx190 = getelementptr ptr, ptr %96, i32 200
  %97 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i946, ptr %arrayidx190, align 4
  %call.i947 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %98 = load ptr, ptr @hws, align 4
  %arrayidx193 = getelementptr ptr, ptr %98, i32 201
  %99 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i947, ptr %arrayidx193, align 4
  %call.i948 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %100 = load ptr, ptr @hws, align 4
  %arrayidx196 = getelementptr ptr, ptr %100, i32 202
  %101 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i948, ptr %arrayidx196, align 4
  %call.i949 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr173, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %102 = load ptr, ptr @hws, align 4
  %arrayidx199 = getelementptr ptr, ptr %102, i32 45
  %103 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i949, ptr %arrayidx199, align 4
  %call.i950 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.44, i32 noundef 4, i32 noundef 1, i32 noundef 20) #5
  %104 = load ptr, ptr @hws, align 4
  %arrayidx201 = getelementptr ptr, ptr %104, i32 48
  %105 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i950, ptr %arrayidx201, align 4
  %call.i951 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.45, i32 noundef 4, i32 noundef 1, i32 noundef 10) #5
  %106 = load ptr, ptr @hws, align 4
  %arrayidx203 = getelementptr ptr, ptr %106, i32 49
  %107 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i951, ptr %arrayidx203, align 4
  %call.i952 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.46, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %108 = load ptr, ptr @hws, align 4
  %arrayidx205 = getelementptr ptr, ptr %108, i32 50
  %109 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i952, ptr %arrayidx205, align 4
  %call.i953 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.47, i32 noundef 4, i32 noundef 1, i32 noundef 6) #5
  %110 = load ptr, ptr @hws, align 4
  %arrayidx207 = getelementptr ptr, ptr %110, i32 51
  %111 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i953, ptr %arrayidx207, align 4
  %call.i954 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 1, i32 noundef 5) #5
  %112 = load ptr, ptr @hws, align 4
  %arrayidx209 = getelementptr ptr, ptr %112, i32 52
  %113 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i954, ptr %arrayidx209, align 4
  %call.i955 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.49, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %114 = load ptr, ptr @hws, align 4
  %arrayidx211 = getelementptr ptr, ptr %114, i32 53
  %115 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i955, ptr %arrayidx211, align 4
  %call.i956 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef 4, i32 noundef 1, i32 noundef 3) #5
  %116 = load ptr, ptr @hws, align 4
  %arrayidx213 = getelementptr ptr, ptr %116, i32 54
  %117 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i956, ptr %arrayidx213, align 4
  %call.i957 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.51, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %118 = load ptr, ptr @hws, align 4
  %arrayidx215 = getelementptr ptr, ptr %118, i32 55
  %119 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i957, ptr %arrayidx215, align 4
  %call.i958 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.52, i32 noundef 4, i32 noundef 1, i32 noundef 1) #5
  %120 = load ptr, ptr @hws, align 4
  %arrayidx217 = getelementptr ptr, ptr %120, i32 56
  %121 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i958, ptr %arrayidx217, align 4
  %add.ptr218 = getelementptr i8, ptr %call40, i32 260
  %call.i959 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %122 = load ptr, ptr @hws, align 4
  %arrayidx220 = getelementptr ptr, ptr %122, i32 203
  %123 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i959, ptr %arrayidx220, align 4
  %call.i960 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %124 = load ptr, ptr @hws, align 4
  %arrayidx223 = getelementptr ptr, ptr %124, i32 204
  %125 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i960, ptr %arrayidx223, align 4
  %call.i961 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %126 = load ptr, ptr @hws, align 4
  %arrayidx226 = getelementptr ptr, ptr %126, i32 205
  %127 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i961, ptr %arrayidx226, align 4
  %call.i962 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %128 = load ptr, ptr @hws, align 4
  %arrayidx229 = getelementptr ptr, ptr %128, i32 206
  %129 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i962, ptr %arrayidx229, align 4
  %call.i963 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %130 = load ptr, ptr @hws, align 4
  %arrayidx232 = getelementptr ptr, ptr %130, i32 207
  %131 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i963, ptr %arrayidx232, align 4
  %call.i964 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %132 = load ptr, ptr @hws, align 4
  %arrayidx235 = getelementptr ptr, ptr %132, i32 208
  %133 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i964, ptr %arrayidx235, align 4
  %call.i965 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %134 = load ptr, ptr @hws, align 4
  %arrayidx238 = getelementptr ptr, ptr %134, i32 209
  %135 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i965, ptr %arrayidx238, align 4
  %call.i966 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %136 = load ptr, ptr @hws, align 4
  %arrayidx241 = getelementptr ptr, ptr %136, i32 210
  %137 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i966, ptr %arrayidx241, align 4
  %call.i967 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr218, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %138 = load ptr, ptr @hws, align 4
  %arrayidx244 = getelementptr ptr, ptr %138, i32 46
  %139 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i967, ptr %arrayidx244, align 4
  %call.i968 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.62, i32 noundef 4, i32 noundef 1, i32 noundef 20) #5
  %140 = load ptr, ptr @hws, align 4
  %arrayidx246 = getelementptr ptr, ptr %140, i32 57
  %141 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i968, ptr %arrayidx246, align 4
  %call.i969 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.63, i32 noundef 4, i32 noundef 1, i32 noundef 10) #5
  %142 = load ptr, ptr @hws, align 4
  %arrayidx248 = getelementptr ptr, ptr %142, i32 58
  %143 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i969, ptr %arrayidx248, align 4
  %call.i970 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.64, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %144 = load ptr, ptr @hws, align 4
  %arrayidx250 = getelementptr ptr, ptr %144, i32 59
  %145 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i970, ptr %arrayidx250, align 4
  %call.i971 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.65, i32 noundef 4, i32 noundef 1, i32 noundef 6) #5
  %146 = load ptr, ptr @hws, align 4
  %arrayidx252 = getelementptr ptr, ptr %146, i32 60
  %147 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i971, ptr %arrayidx252, align 4
  %call.i972 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.66, i32 noundef 4, i32 noundef 1, i32 noundef 5) #5
  %148 = load ptr, ptr @hws, align 4
  %arrayidx254 = getelementptr ptr, ptr %148, i32 61
  %149 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i972, ptr %arrayidx254, align 4
  %call.i973 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %150 = load ptr, ptr @hws, align 4
  %arrayidx256 = getelementptr ptr, ptr %150, i32 62
  %151 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i973, ptr %arrayidx256, align 4
  %call.i974 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.68, i32 noundef 4, i32 noundef 1, i32 noundef 3) #5
  %152 = load ptr, ptr @hws, align 4
  %arrayidx258 = getelementptr ptr, ptr %152, i32 63
  %153 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %call.i974, ptr %arrayidx258, align 4
  %call.i975 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %154 = load ptr, ptr @hws, align 4
  %arrayidx260 = getelementptr ptr, ptr %154, i32 64
  %155 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call.i975, ptr %arrayidx260, align 4
  %call.i976 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef 1, i32 noundef 1) #5
  %156 = load ptr, ptr @hws, align 4
  %arrayidx262 = getelementptr ptr, ptr %156, i32 65
  %157 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i976, ptr %arrayidx262, align 4
  %add.ptr263 = getelementptr i8, ptr %call40, i32 296
  %call.i977 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 16, ptr noundef nonnull @clkout_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr263, i8 noundef zeroext 4, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %158 = load ptr, ptr @hws, align 4
  %arrayidx265 = getelementptr ptr, ptr %158, i32 215
  %159 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call.i977, ptr %arrayidx265, align 4
  %call.i978 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr263, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %160 = load ptr, ptr @hws, align 4
  %arrayidx268 = getelementptr ptr, ptr %160, i32 216
  %161 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i978, ptr %arrayidx268, align 4
  %call.i979 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr263, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %162 = load ptr, ptr @hws, align 4
  %arrayidx271 = getelementptr ptr, ptr %162, i32 217
  %163 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i979, ptr %arrayidx271, align 4
  %call.i980 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 16, ptr noundef nonnull @clkout_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr263, i8 noundef zeroext 20, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %164 = load ptr, ptr @hws, align 4
  %arrayidx274 = getelementptr ptr, ptr %164, i32 218
  %165 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i980, ptr %arrayidx274, align 4
  %call.i981 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr263, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %166 = load ptr, ptr @hws, align 4
  %arrayidx277 = getelementptr ptr, ptr %166, i32 219
  %167 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call.i981, ptr %arrayidx277, align 4
  %call.i982 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr263, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %168 = load ptr, ptr @hws, align 4
  %arrayidx280 = getelementptr ptr, ptr %168, i32 220
  %169 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i982, ptr %arrayidx280, align 4
  %170 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %of_node, align 8
  %call282 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call282, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end300, label %if.end317, !prof !620

do.end300:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  %172 = ptrtoint ptr %call282 to i32
  br label %unregister_hws

if.end317:                                        ; preds = %if.end76
  %add.ptr318 = getelementptr i8, ptr %call282, i32 32768
  %call319 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.86, ptr noundef nonnull @imx8mn_a53_sels, i32 noundef 8, ptr noundef %add.ptr318, i32 noundef 1, i32 noundef 4224) #5
  %173 = load ptr, ptr @hws, align 4
  %arrayidx320 = getelementptr ptr, ptr %173, i32 72
  %174 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call319, ptr %arrayidx320, align 4
  %arrayidx322 = getelementptr ptr, ptr %173, i32 66
  %175 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call319, ptr %arrayidx322, align 4
  %arrayidx324 = getelementptr ptr, ptr %173, i32 69
  %176 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call319, ptr %arrayidx324, align 4
  %add.ptr325 = getelementptr i8, ptr %call282, i32 32896
  %call326 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.87, ptr noundef nonnull @imx8mn_m7_sels, i32 noundef 8, ptr noundef %add.ptr325, i32 noundef 1, i32 noundef 4224) #5
  %177 = load ptr, ptr @hws, align 4
  %arrayidx327 = getelementptr ptr, ptr %177, i32 221
  %178 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call326, ptr %arrayidx327, align 4
  %add.ptr328 = getelementptr i8, ptr %call282, i32 33152
  %call329 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.88, ptr noundef nonnull @imx8mn_gpu_core_sels, i32 noundef 8, ptr noundef %add.ptr328, i32 noundef 1, i32 noundef 4224) #5
  %179 = load ptr, ptr @hws, align 4
  %arrayidx330 = getelementptr ptr, ptr %179, i32 212
  %180 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call329, ptr %arrayidx330, align 4
  %add.ptr331 = getelementptr i8, ptr %call282, i32 33280
  %call332 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.89, ptr noundef nonnull @imx8mn_gpu_shader_sels, i32 noundef 8, ptr noundef %add.ptr331, i32 noundef 1, i32 noundef 4224) #5
  %181 = load ptr, ptr @hws, align 4
  %arrayidx333 = getelementptr ptr, ptr %181, i32 213
  %182 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call332, ptr %arrayidx333, align 4
  %arrayidx334 = getelementptr ptr, ptr %181, i32 212
  %183 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx334, align 4
  %arrayidx335 = getelementptr ptr, ptr %181, i32 67
  %185 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %184, ptr %arrayidx335, align 4
  %arrayidx337 = getelementptr ptr, ptr %181, i32 70
  %186 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %184, ptr %arrayidx337, align 4
  %arrayidx339 = getelementptr ptr, ptr %181, i32 73
  %187 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %184, ptr %arrayidx339, align 4
  %arrayidx341 = getelementptr ptr, ptr %181, i32 68
  %188 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call332, ptr %arrayidx341, align 4
  %arrayidx343 = getelementptr ptr, ptr %181, i32 71
  %189 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call332, ptr %arrayidx343, align 4
  %arrayidx345 = getelementptr ptr, ptr %181, i32 74
  %190 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call332, ptr %arrayidx345, align 4
  %add.ptr346 = getelementptr i8, ptr %call282, i32 39040
  %call.i983 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, i8 noundef zeroext 2, ptr noundef nonnull @imx8mn_a53_core_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr346, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %191 = load ptr, ptr @hws, align 4
  %arrayidx348 = getelementptr ptr, ptr %191, i32 214
  %192 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call.i983, ptr %arrayidx348, align 4
  %add.ptr349 = getelementptr i8, ptr %call282, i32 34816
  %call350 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.91, ptr noundef nonnull @imx8mn_main_axi_sels, i32 noundef 8, ptr noundef %add.ptr349, i32 noundef 2, i32 noundef 6272) #5
  %193 = load ptr, ptr @hws, align 4
  %arrayidx351 = getelementptr ptr, ptr %193, i32 75
  %194 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call350, ptr %arrayidx351, align 4
  %add.ptr352 = getelementptr i8, ptr %call282, i32 34944
  %call353 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.92, ptr noundef nonnull @imx8mn_enet_axi_sels, i32 noundef 8, ptr noundef %add.ptr352, i32 noundef 2, i32 noundef 4224) #5
  %195 = load ptr, ptr @hws, align 4
  %arrayidx354 = getelementptr ptr, ptr %195, i32 76
  %196 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call353, ptr %arrayidx354, align 4
  %add.ptr355 = getelementptr i8, ptr %call282, i32 35072
  %call356 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.93, ptr noundef nonnull @imx8mn_nand_usdhc_sels, i32 noundef 8, ptr noundef %add.ptr355, i32 noundef 2, i32 noundef 4224) #5
  %197 = load ptr, ptr @hws, align 4
  %arrayidx357 = getelementptr ptr, ptr %197, i32 77
  %198 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call356, ptr %arrayidx357, align 4
  %add.ptr358 = getelementptr i8, ptr %call282, i32 35328
  %call359 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.94, ptr noundef nonnull @imx8mn_disp_axi_sels, i32 noundef 8, ptr noundef %add.ptr358, i32 noundef 2, i32 noundef 4224) #5
  %199 = load ptr, ptr @hws, align 4
  %arrayidx360 = getelementptr ptr, ptr %199, i32 78
  %200 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call359, ptr %arrayidx360, align 4
  %add.ptr361 = getelementptr i8, ptr %call282, i32 35456
  %call362 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.95, ptr noundef nonnull @imx8mn_disp_apb_sels, i32 noundef 8, ptr noundef %add.ptr361, i32 noundef 2, i32 noundef 4224) #5
  %201 = load ptr, ptr @hws, align 4
  %arrayidx363 = getelementptr ptr, ptr %201, i32 79
  %202 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call362, ptr %arrayidx363, align 4
  %add.ptr364 = getelementptr i8, ptr %call282, i32 35712
  %call365 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.96, ptr noundef nonnull @imx8mn_usb_bus_sels, i32 noundef 8, ptr noundef %add.ptr364, i32 noundef 2, i32 noundef 4224) #5
  %203 = load ptr, ptr @hws, align 4
  %arrayidx366 = getelementptr ptr, ptr %203, i32 80
  %204 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call365, ptr %arrayidx366, align 4
  %add.ptr367 = getelementptr i8, ptr %call282, i32 35840
  %call368 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.97, ptr noundef nonnull @imx8mn_gpu_axi_sels, i32 noundef 8, ptr noundef %add.ptr367, i32 noundef 2, i32 noundef 4224) #5
  %205 = load ptr, ptr @hws, align 4
  %arrayidx369 = getelementptr ptr, ptr %205, i32 81
  %206 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call368, ptr %arrayidx369, align 4
  %add.ptr370 = getelementptr i8, ptr %call282, i32 35968
  %call371 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.98, ptr noundef nonnull @imx8mn_gpu_ahb_sels, i32 noundef 8, ptr noundef %add.ptr370, i32 noundef 2, i32 noundef 4224) #5
  %207 = load ptr, ptr @hws, align 4
  %arrayidx372 = getelementptr ptr, ptr %207, i32 82
  %208 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call371, ptr %arrayidx372, align 4
  %add.ptr373 = getelementptr i8, ptr %call282, i32 36096
  %call374 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.99, ptr noundef nonnull @imx8mn_noc_sels, i32 noundef 8, ptr noundef %add.ptr373, i32 noundef 2, i32 noundef 6272) #5
  %209 = load ptr, ptr @hws, align 4
  %arrayidx375 = getelementptr ptr, ptr %209, i32 83
  %210 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call374, ptr %arrayidx375, align 4
  %add.ptr376 = getelementptr i8, ptr %call282, i32 36864
  %call377 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.100, ptr noundef nonnull @imx8mn_ahb_sels, i32 noundef 8, ptr noundef %add.ptr376, i32 noundef 2, i32 noundef 6272) #5
  %211 = load ptr, ptr @hws, align 4
  %arrayidx378 = getelementptr ptr, ptr %211, i32 84
  %212 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call377, ptr %arrayidx378, align 4
  %add.ptr379 = getelementptr i8, ptr %call282, i32 37120
  %call380 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.101, ptr noundef nonnull @imx8mn_audio_ahb_sels, i32 noundef 8, ptr noundef %add.ptr379, i32 noundef 2, i32 noundef 4224) #5
  %213 = load ptr, ptr @hws, align 4
  %arrayidx381 = getelementptr ptr, ptr %213, i32 85
  %214 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call380, ptr %arrayidx381, align 4
  %add.ptr382 = getelementptr i8, ptr %call282, i32 36992
  %call.i984 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %add.ptr382, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %215 = load ptr, ptr @hws, align 4
  %arrayidx384 = getelementptr ptr, ptr %215, i32 86
  %216 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call.i984, ptr %arrayidx384, align 4
  %add.ptr385 = getelementptr i8, ptr %call282, i32 37248
  %call.i985 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %add.ptr385, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %217 = load ptr, ptr @hws, align 4
  %arrayidx387 = getelementptr ptr, ptr %217, i32 87
  %218 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i985, ptr %arrayidx387, align 4
  %add.ptr388 = getelementptr i8, ptr %call282, i32 38912
  %call.i986 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 2, ptr noundef nonnull @imx8mn_dram_core_sels, ptr noundef null, ptr noundef null, i32 noundef 6272, ptr noundef %add.ptr388, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %219 = load ptr, ptr @hws, align 4
  %arrayidx390 = getelementptr ptr, ptr %219, i32 88
  %220 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call.i986, ptr %arrayidx390, align 4
  %add.ptr391 = getelementptr i8, ptr %call282, i32 40960
  %call392 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.105, ptr noundef nonnull @imx8mn_dram_alt_sels, i32 noundef 8, ptr noundef %add.ptr391, i32 noundef 4, i32 noundef 4288) #5
  %221 = load ptr, ptr @hws, align 4
  %arrayidx393 = getelementptr ptr, ptr %221, i32 89
  %222 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call392, ptr %arrayidx393, align 4
  %add.ptr394 = getelementptr i8, ptr %call282, i32 41088
  %call395 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.106, ptr noundef nonnull @imx8mn_dram_apb_sels, i32 noundef 8, ptr noundef %add.ptr394, i32 noundef 4, i32 noundef 6336) #5
  %223 = load ptr, ptr @hws, align 4
  %arrayidx396 = getelementptr ptr, ptr %223, i32 90
  %224 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call395, ptr %arrayidx396, align 4
  %add.ptr397 = getelementptr i8, ptr %call282, i32 42240
  %call398 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.107, ptr noundef nonnull @imx8mn_disp_pixel_sels, i32 noundef 8, ptr noundef %add.ptr397, i32 noundef 0, i32 noundef 4224) #5
  %225 = load ptr, ptr @hws, align 4
  %arrayidx399 = getelementptr ptr, ptr %225, i32 92
  %226 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call398, ptr %arrayidx399, align 4
  %add.ptr400 = getelementptr i8, ptr %call282, i32 42496
  %call401 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.108, ptr noundef nonnull @imx8mn_sai2_sels, i32 noundef 8, ptr noundef %add.ptr400, i32 noundef 0, i32 noundef 4224) #5
  %227 = load ptr, ptr @hws, align 4
  %arrayidx402 = getelementptr ptr, ptr %227, i32 93
  %228 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call401, ptr %arrayidx402, align 4
  %add.ptr403 = getelementptr i8, ptr %call282, i32 42624
  %call404 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.109, ptr noundef nonnull @imx8mn_sai3_sels, i32 noundef 8, ptr noundef %add.ptr403, i32 noundef 0, i32 noundef 4224) #5
  %229 = load ptr, ptr @hws, align 4
  %arrayidx405 = getelementptr ptr, ptr %229, i32 94
  %230 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call404, ptr %arrayidx405, align 4
  %add.ptr406 = getelementptr i8, ptr %call282, i32 42880
  %call407 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.110, ptr noundef nonnull @imx8mn_sai5_sels, i32 noundef 8, ptr noundef %add.ptr406, i32 noundef 0, i32 noundef 4224) #5
  %231 = load ptr, ptr @hws, align 4
  %arrayidx408 = getelementptr ptr, ptr %231, i32 95
  %232 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call407, ptr %arrayidx408, align 4
  %add.ptr409 = getelementptr i8, ptr %call282, i32 43008
  %call410 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.111, ptr noundef nonnull @imx8mn_sai6_sels, i32 noundef 8, ptr noundef %add.ptr409, i32 noundef 0, i32 noundef 4224) #5
  %233 = load ptr, ptr @hws, align 4
  %arrayidx411 = getelementptr ptr, ptr %233, i32 96
  %234 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call410, ptr %arrayidx411, align 4
  %add.ptr412 = getelementptr i8, ptr %call282, i32 43136
  %call413 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.112, ptr noundef nonnull @imx8mn_spdif1_sels, i32 noundef 8, ptr noundef %add.ptr412, i32 noundef 0, i32 noundef 4224) #5
  %235 = load ptr, ptr @hws, align 4
  %arrayidx414 = getelementptr ptr, ptr %235, i32 97
  %236 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call413, ptr %arrayidx414, align 4
  %add.ptr415 = getelementptr i8, ptr %call282, i32 43392
  %call416 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.113, ptr noundef nonnull @imx8mn_enet_ref_sels, i32 noundef 8, ptr noundef %add.ptr415, i32 noundef 0, i32 noundef 4224) #5
  %237 = load ptr, ptr @hws, align 4
  %arrayidx417 = getelementptr ptr, ptr %237, i32 98
  %238 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %call416, ptr %arrayidx417, align 4
  %add.ptr418 = getelementptr i8, ptr %call282, i32 43520
  %call419 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.114, ptr noundef nonnull @imx8mn_enet_timer_sels, i32 noundef 8, ptr noundef %add.ptr418, i32 noundef 0, i32 noundef 4224) #5
  %239 = load ptr, ptr @hws, align 4
  %arrayidx420 = getelementptr ptr, ptr %239, i32 99
  %240 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call419, ptr %arrayidx420, align 4
  %add.ptr421 = getelementptr i8, ptr %call282, i32 43648
  %call422 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.115, ptr noundef nonnull @imx8mn_enet_phy_sels, i32 noundef 7, ptr noundef %add.ptr421, i32 noundef 0, i32 noundef 4224) #5
  %241 = load ptr, ptr @hws, align 4
  %arrayidx423 = getelementptr ptr, ptr %241, i32 100
  %242 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call422, ptr %arrayidx423, align 4
  %add.ptr424 = getelementptr i8, ptr %call282, i32 43776
  %call425 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.116, ptr noundef nonnull @imx8mn_nand_sels, i32 noundef 8, ptr noundef %add.ptr424, i32 noundef 0, i32 noundef 4224) #5
  %243 = load ptr, ptr @hws, align 4
  %arrayidx426 = getelementptr ptr, ptr %243, i32 101
  %244 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call425, ptr %arrayidx426, align 4
  %add.ptr427 = getelementptr i8, ptr %call282, i32 43904
  %call428 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.117, ptr noundef nonnull @imx8mn_qspi_sels, i32 noundef 8, ptr noundef %add.ptr427, i32 noundef 0, i32 noundef 4224) #5
  %245 = load ptr, ptr @hws, align 4
  %arrayidx429 = getelementptr ptr, ptr %245, i32 102
  %246 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call428, ptr %arrayidx429, align 4
  %add.ptr430 = getelementptr i8, ptr %call282, i32 44032
  %call431 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.118, ptr noundef nonnull @imx8mn_usdhc1_sels, i32 noundef 8, ptr noundef %add.ptr430, i32 noundef 0, i32 noundef 4224) #5
  %247 = load ptr, ptr @hws, align 4
  %arrayidx432 = getelementptr ptr, ptr %247, i32 103
  %248 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %call431, ptr %arrayidx432, align 4
  %add.ptr433 = getelementptr i8, ptr %call282, i32 44160
  %call434 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.119, ptr noundef nonnull @imx8mn_usdhc2_sels, i32 noundef 8, ptr noundef %add.ptr433, i32 noundef 0, i32 noundef 4224) #5
  %249 = load ptr, ptr @hws, align 4
  %arrayidx435 = getelementptr ptr, ptr %249, i32 104
  %250 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call434, ptr %arrayidx435, align 4
  %add.ptr436 = getelementptr i8, ptr %call282, i32 44288
  %call437 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.120, ptr noundef nonnull @imx8mn_i2c1_sels, i32 noundef 8, ptr noundef %add.ptr436, i32 noundef 0, i32 noundef 4224) #5
  %251 = load ptr, ptr @hws, align 4
  %arrayidx438 = getelementptr ptr, ptr %251, i32 105
  %252 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %call437, ptr %arrayidx438, align 4
  %add.ptr439 = getelementptr i8, ptr %call282, i32 44416
  %call440 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.121, ptr noundef nonnull @imx8mn_i2c2_sels, i32 noundef 8, ptr noundef %add.ptr439, i32 noundef 0, i32 noundef 4224) #5
  %253 = load ptr, ptr @hws, align 4
  %arrayidx441 = getelementptr ptr, ptr %253, i32 106
  %254 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call440, ptr %arrayidx441, align 4
  %add.ptr442 = getelementptr i8, ptr %call282, i32 44544
  %call443 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.122, ptr noundef nonnull @imx8mn_i2c3_sels, i32 noundef 8, ptr noundef %add.ptr442, i32 noundef 0, i32 noundef 4224) #5
  %255 = load ptr, ptr @hws, align 4
  %arrayidx444 = getelementptr ptr, ptr %255, i32 107
  %256 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call443, ptr %arrayidx444, align 4
  %add.ptr445 = getelementptr i8, ptr %call282, i32 44672
  %call446 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.123, ptr noundef nonnull @imx8mn_i2c4_sels, i32 noundef 8, ptr noundef %add.ptr445, i32 noundef 0, i32 noundef 4224) #5
  %257 = load ptr, ptr @hws, align 4
  %arrayidx447 = getelementptr ptr, ptr %257, i32 108
  %258 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %call446, ptr %arrayidx447, align 4
  %add.ptr448 = getelementptr i8, ptr %call282, i32 44800
  %call449 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.124, ptr noundef nonnull @imx8mn_uart1_sels, i32 noundef 8, ptr noundef %add.ptr448, i32 noundef 0, i32 noundef 4224) #5
  %259 = load ptr, ptr @hws, align 4
  %arrayidx450 = getelementptr ptr, ptr %259, i32 109
  %260 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %call449, ptr %arrayidx450, align 4
  %add.ptr451 = getelementptr i8, ptr %call282, i32 44928
  %call452 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.125, ptr noundef nonnull @imx8mn_uart2_sels, i32 noundef 8, ptr noundef %add.ptr451, i32 noundef 0, i32 noundef 4224) #5
  %261 = load ptr, ptr @hws, align 4
  %arrayidx453 = getelementptr ptr, ptr %261, i32 110
  %262 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call452, ptr %arrayidx453, align 4
  %add.ptr454 = getelementptr i8, ptr %call282, i32 45056
  %call455 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.126, ptr noundef nonnull @imx8mn_uart3_sels, i32 noundef 8, ptr noundef %add.ptr454, i32 noundef 0, i32 noundef 4224) #5
  %263 = load ptr, ptr @hws, align 4
  %arrayidx456 = getelementptr ptr, ptr %263, i32 111
  %264 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call455, ptr %arrayidx456, align 4
  %add.ptr457 = getelementptr i8, ptr %call282, i32 45184
  %call458 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.127, ptr noundef nonnull @imx8mn_uart4_sels, i32 noundef 8, ptr noundef %add.ptr457, i32 noundef 0, i32 noundef 4224) #5
  %265 = load ptr, ptr @hws, align 4
  %arrayidx459 = getelementptr ptr, ptr %265, i32 112
  %266 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call458, ptr %arrayidx459, align 4
  %add.ptr460 = getelementptr i8, ptr %call282, i32 45312
  %call461 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.128, ptr noundef nonnull @imx8mn_usb_core_sels, i32 noundef 8, ptr noundef %add.ptr460, i32 noundef 0, i32 noundef 4224) #5
  %267 = load ptr, ptr @hws, align 4
  %arrayidx462 = getelementptr ptr, ptr %267, i32 113
  %268 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %call461, ptr %arrayidx462, align 4
  %add.ptr463 = getelementptr i8, ptr %call282, i32 45440
  %call464 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.129, ptr noundef nonnull @imx8mn_usb_phy_sels, i32 noundef 8, ptr noundef %add.ptr463, i32 noundef 0, i32 noundef 4224) #5
  %269 = load ptr, ptr @hws, align 4
  %arrayidx465 = getelementptr ptr, ptr %269, i32 114
  %270 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %call464, ptr %arrayidx465, align 4
  %add.ptr466 = getelementptr i8, ptr %call282, i32 45568
  %call467 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.130, ptr noundef nonnull @imx8mn_gic_sels, i32 noundef 8, ptr noundef %add.ptr466, i32 noundef 0, i32 noundef 6272) #5
  %271 = load ptr, ptr @hws, align 4
  %arrayidx468 = getelementptr ptr, ptr %271, i32 194
  %272 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call467, ptr %arrayidx468, align 4
  %add.ptr469 = getelementptr i8, ptr %call282, i32 45696
  %call470 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.131, ptr noundef nonnull @imx8mn_ecspi1_sels, i32 noundef 8, ptr noundef %add.ptr469, i32 noundef 0, i32 noundef 4224) #5
  %273 = load ptr, ptr @hws, align 4
  %arrayidx471 = getelementptr ptr, ptr %273, i32 115
  %274 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %call470, ptr %arrayidx471, align 4
  %add.ptr472 = getelementptr i8, ptr %call282, i32 45824
  %call473 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.132, ptr noundef nonnull @imx8mn_ecspi2_sels, i32 noundef 8, ptr noundef %add.ptr472, i32 noundef 0, i32 noundef 4224) #5
  %275 = load ptr, ptr @hws, align 4
  %arrayidx474 = getelementptr ptr, ptr %275, i32 116
  %276 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %call473, ptr %arrayidx474, align 4
  %add.ptr475 = getelementptr i8, ptr %call282, i32 45952
  %call476 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.133, ptr noundef nonnull @imx8mn_pwm1_sels, i32 noundef 8, ptr noundef %add.ptr475, i32 noundef 0, i32 noundef 4224) #5
  %277 = load ptr, ptr @hws, align 4
  %arrayidx477 = getelementptr ptr, ptr %277, i32 117
  %278 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %call476, ptr %arrayidx477, align 4
  %add.ptr478 = getelementptr i8, ptr %call282, i32 46080
  %call479 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.134, ptr noundef nonnull @imx8mn_pwm2_sels, i32 noundef 8, ptr noundef %add.ptr478, i32 noundef 0, i32 noundef 4224) #5
  %279 = load ptr, ptr @hws, align 4
  %arrayidx480 = getelementptr ptr, ptr %279, i32 118
  %280 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call479, ptr %arrayidx480, align 4
  %add.ptr481 = getelementptr i8, ptr %call282, i32 46208
  %call482 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.135, ptr noundef nonnull @imx8mn_pwm3_sels, i32 noundef 8, ptr noundef %add.ptr481, i32 noundef 0, i32 noundef 4224) #5
  %281 = load ptr, ptr @hws, align 4
  %arrayidx483 = getelementptr ptr, ptr %281, i32 119
  %282 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call482, ptr %arrayidx483, align 4
  %add.ptr484 = getelementptr i8, ptr %call282, i32 46336
  %call485 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.136, ptr noundef nonnull @imx8mn_pwm4_sels, i32 noundef 8, ptr noundef %add.ptr484, i32 noundef 0, i32 noundef 4224) #5
  %283 = load ptr, ptr @hws, align 4
  %arrayidx486 = getelementptr ptr, ptr %283, i32 120
  %284 = ptrtoint ptr %arrayidx486 to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %call485, ptr %arrayidx486, align 4
  %add.ptr487 = getelementptr i8, ptr %call282, i32 47360
  %call488 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.137, ptr noundef nonnull @imx8mn_wdog_sels, i32 noundef 8, ptr noundef %add.ptr487, i32 noundef 0, i32 noundef 4224) #5
  %285 = load ptr, ptr @hws, align 4
  %arrayidx489 = getelementptr ptr, ptr %285, i32 121
  %286 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call488, ptr %arrayidx489, align 4
  %add.ptr490 = getelementptr i8, ptr %call282, i32 47488
  %call491 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.138, ptr noundef nonnull @imx8mn_wrclk_sels, i32 noundef 8, ptr noundef %add.ptr490, i32 noundef 0, i32 noundef 4224) #5
  %287 = load ptr, ptr @hws, align 4
  %arrayidx492 = getelementptr ptr, ptr %287, i32 122
  %288 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %call491, ptr %arrayidx492, align 4
  %add.ptr493 = getelementptr i8, ptr %call282, i32 47616
  %call494 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.139, ptr noundef nonnull @imx8mn_clko1_sels, i32 noundef 8, ptr noundef %add.ptr493, i32 noundef 0, i32 noundef 4224) #5
  %289 = load ptr, ptr @hws, align 4
  %arrayidx495 = getelementptr ptr, ptr %289, i32 123
  %290 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %call494, ptr %arrayidx495, align 4
  %add.ptr496 = getelementptr i8, ptr %call282, i32 47744
  %call497 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.140, ptr noundef nonnull @imx8mn_clko2_sels, i32 noundef 8, ptr noundef %add.ptr496, i32 noundef 0, i32 noundef 4224) #5
  %291 = load ptr, ptr @hws, align 4
  %arrayidx498 = getelementptr ptr, ptr %291, i32 124
  %292 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %call497, ptr %arrayidx498, align 4
  %add.ptr499 = getelementptr i8, ptr %call282, i32 47872
  %call500 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.141, ptr noundef nonnull @imx8mn_dsi_core_sels, i32 noundef 8, ptr noundef %add.ptr499, i32 noundef 0, i32 noundef 4224) #5
  %293 = load ptr, ptr @hws, align 4
  %arrayidx501 = getelementptr ptr, ptr %293, i32 125
  %294 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call500, ptr %arrayidx501, align 4
  %add.ptr502 = getelementptr i8, ptr %call282, i32 48000
  %call503 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.142, ptr noundef nonnull @imx8mn_dsi_phy_sels, i32 noundef 8, ptr noundef %add.ptr502, i32 noundef 0, i32 noundef 4224) #5
  %295 = load ptr, ptr @hws, align 4
  %arrayidx504 = getelementptr ptr, ptr %295, i32 126
  %296 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call503, ptr %arrayidx504, align 4
  %add.ptr505 = getelementptr i8, ptr %call282, i32 48128
  %call506 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.143, ptr noundef nonnull @imx8mn_dsi_dbi_sels, i32 noundef 8, ptr noundef %add.ptr505, i32 noundef 0, i32 noundef 4224) #5
  %297 = load ptr, ptr @hws, align 4
  %arrayidx507 = getelementptr ptr, ptr %297, i32 127
  %298 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %call506, ptr %arrayidx507, align 4
  %add.ptr508 = getelementptr i8, ptr %call282, i32 48256
  %call509 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.144, ptr noundef nonnull @imx8mn_usdhc3_sels, i32 noundef 8, ptr noundef %add.ptr508, i32 noundef 0, i32 noundef 4224) #5
  %299 = load ptr, ptr @hws, align 4
  %arrayidx510 = getelementptr ptr, ptr %299, i32 128
  %300 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %call509, ptr %arrayidx510, align 4
  %add.ptr511 = getelementptr i8, ptr %call282, i32 48384
  %call512 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.145, ptr noundef nonnull @imx8mn_camera_pixel_sels, i32 noundef 8, ptr noundef %add.ptr511, i32 noundef 0, i32 noundef 4224) #5
  %301 = load ptr, ptr @hws, align 4
  %arrayidx513 = getelementptr ptr, ptr %301, i32 129
  %302 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %call512, ptr %arrayidx513, align 4
  %add.ptr514 = getelementptr i8, ptr %call282, i32 48512
  %call515 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.146, ptr noundef nonnull @imx8mn_csi1_phy_sels, i32 noundef 8, ptr noundef %add.ptr514, i32 noundef 0, i32 noundef 4224) #5
  %303 = load ptr, ptr @hws, align 4
  %arrayidx516 = getelementptr ptr, ptr %303, i32 130
  %304 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %call515, ptr %arrayidx516, align 4
  %add.ptr517 = getelementptr i8, ptr %call282, i32 48896
  %call518 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.147, ptr noundef nonnull @imx8mn_csi2_phy_sels, i32 noundef 8, ptr noundef %add.ptr517, i32 noundef 0, i32 noundef 4224) #5
  %305 = load ptr, ptr @hws, align 4
  %arrayidx519 = getelementptr ptr, ptr %305, i32 131
  %306 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %call518, ptr %arrayidx519, align 4
  %add.ptr520 = getelementptr i8, ptr %call282, i32 49024
  %call521 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.148, ptr noundef nonnull @imx8mn_csi2_esc_sels, i32 noundef 8, ptr noundef %add.ptr520, i32 noundef 0, i32 noundef 4224) #5
  %307 = load ptr, ptr @hws, align 4
  %arrayidx522 = getelementptr ptr, ptr %307, i32 132
  %308 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %call521, ptr %arrayidx522, align 4
  %add.ptr523 = getelementptr i8, ptr %call282, i32 49536
  %call524 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.149, ptr noundef nonnull @imx8mn_ecspi3_sels, i32 noundef 8, ptr noundef %add.ptr523, i32 noundef 0, i32 noundef 4224) #5
  %309 = load ptr, ptr @hws, align 4
  %arrayidx525 = getelementptr ptr, ptr %309, i32 133
  %310 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %call524, ptr %arrayidx525, align 4
  %add.ptr526 = getelementptr i8, ptr %call282, i32 49664
  %call527 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.150, ptr noundef nonnull @imx8mn_pdm_sels, i32 noundef 8, ptr noundef %add.ptr526, i32 noundef 0, i32 noundef 4224) #5
  %311 = load ptr, ptr @hws, align 4
  %arrayidx528 = getelementptr ptr, ptr %311, i32 134
  %312 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call527, ptr %arrayidx528, align 4
  %add.ptr529 = getelementptr i8, ptr %call282, i32 49920
  %call530 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.151, ptr noundef nonnull @imx8mn_sai7_sels, i32 noundef 8, ptr noundef %add.ptr529, i32 noundef 0, i32 noundef 4224) #5
  %313 = load ptr, ptr @hws, align 4
  %arrayidx531 = getelementptr ptr, ptr %313, i32 135
  %314 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %call530, ptr %arrayidx531, align 4
  %add.ptr532 = getelementptr i8, ptr %call282, i32 16496
  %call.i987 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.131, i32 noundef 4100, ptr noundef %add.ptr532, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %315 = load ptr, ptr @hws, align 4
  %arrayidx534 = getelementptr ptr, ptr %315, i32 136
  %316 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %call.i987, ptr %arrayidx534, align 4
  %add.ptr535 = getelementptr i8, ptr %call282, i32 16512
  %call.i988 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.132, i32 noundef 4100, ptr noundef %add.ptr535, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %317 = load ptr, ptr @hws, align 4
  %arrayidx537 = getelementptr ptr, ptr %317, i32 137
  %318 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %call.i988, ptr %arrayidx537, align 4
  %add.ptr538 = getelementptr i8, ptr %call282, i32 16528
  %call.i989 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.149, i32 noundef 4100, ptr noundef %add.ptr538, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %319 = load ptr, ptr @hws, align 4
  %arrayidx540 = getelementptr ptr, ptr %319, i32 138
  %320 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %call.i989, ptr %arrayidx540, align 4
  %add.ptr541 = getelementptr i8, ptr %call282, i32 16544
  %call.i990 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.92, i32 noundef 4100, ptr noundef %add.ptr541, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %321 = load ptr, ptr @hws, align 4
  %arrayidx543 = getelementptr ptr, ptr %321, i32 139
  %322 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %call.i990, ptr %arrayidx543, align 4
  %add.ptr544 = getelementptr i8, ptr %call282, i32 16560
  %call.i991 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr544, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %323 = load ptr, ptr @hws, align 4
  %arrayidx546 = getelementptr ptr, ptr %323, i32 140
  %324 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call.i991, ptr %arrayidx546, align 4
  %add.ptr547 = getelementptr i8, ptr %call282, i32 16576
  %call.i992 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr547, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %325 = load ptr, ptr @hws, align 4
  %arrayidx549 = getelementptr ptr, ptr %325, i32 141
  %326 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %call.i992, ptr %arrayidx549, align 4
  %add.ptr550 = getelementptr i8, ptr %call282, i32 16592
  %call.i993 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr550, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %327 = load ptr, ptr @hws, align 4
  %arrayidx552 = getelementptr ptr, ptr %327, i32 142
  %328 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %call.i993, ptr %arrayidx552, align 4
  %add.ptr553 = getelementptr i8, ptr %call282, i32 16608
  %call.i994 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr553, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %329 = load ptr, ptr @hws, align 4
  %arrayidx555 = getelementptr ptr, ptr %329, i32 143
  %330 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr %call.i994, ptr %arrayidx555, align 4
  %add.ptr556 = getelementptr i8, ptr %call282, i32 16624
  %call.i995 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr556, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %331 = load ptr, ptr @hws, align 4
  %arrayidx558 = getelementptr ptr, ptr %331, i32 144
  %332 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %call.i995, ptr %arrayidx558, align 4
  %add.ptr559 = getelementptr i8, ptr %call282, i32 16752
  %call.i996 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.120, i32 noundef 4100, ptr noundef %add.ptr559, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %333 = load ptr, ptr @hws, align 4
  %arrayidx561 = getelementptr ptr, ptr %333, i32 145
  %334 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %call.i996, ptr %arrayidx561, align 4
  %add.ptr562 = getelementptr i8, ptr %call282, i32 16768
  %call.i997 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.121, i32 noundef 4100, ptr noundef %add.ptr562, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %335 = load ptr, ptr @hws, align 4
  %arrayidx564 = getelementptr ptr, ptr %335, i32 146
  %336 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call.i997, ptr %arrayidx564, align 4
  %add.ptr565 = getelementptr i8, ptr %call282, i32 16784
  %call.i998 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.122, i32 noundef 4100, ptr noundef %add.ptr565, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %337 = load ptr, ptr @hws, align 4
  %arrayidx567 = getelementptr ptr, ptr %337, i32 147
  %338 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %call.i998, ptr %arrayidx567, align 4
  %add.ptr568 = getelementptr i8, ptr %call282, i32 16800
  %call.i999 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.123, i32 noundef 4100, ptr noundef %add.ptr568, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %339 = load ptr, ptr @hws, align 4
  %arrayidx570 = getelementptr ptr, ptr %339, i32 148
  %340 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %call.i999, ptr %arrayidx570, align 4
  %add.ptr571 = getelementptr i8, ptr %call282, i32 16912
  %call.i1000 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr571, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %341 = load ptr, ptr @hws, align 4
  %arrayidx573 = getelementptr ptr, ptr %341, i32 149
  %342 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %call.i1000, ptr %arrayidx573, align 4
  %add.ptr574 = getelementptr i8, ptr %call282, i32 16928
  %call.i1001 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr574, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %343 = load ptr, ptr @hws, align 4
  %arrayidx576 = getelementptr ptr, ptr %343, i32 150
  %344 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %call.i1001, ptr %arrayidx576, align 4
  %add.ptr577 = getelementptr i8, ptr %call282, i32 17024
  %call.i1002 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.133, i32 noundef 4100, ptr noundef %add.ptr577, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %345 = load ptr, ptr @hws, align 4
  %arrayidx579 = getelementptr ptr, ptr %345, i32 151
  %346 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %call.i1002, ptr %arrayidx579, align 4
  %add.ptr580 = getelementptr i8, ptr %call282, i32 17040
  %call.i1003 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.134, i32 noundef 4100, ptr noundef %add.ptr580, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %347 = load ptr, ptr @hws, align 4
  %arrayidx582 = getelementptr ptr, ptr %347, i32 152
  %348 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %call.i1003, ptr %arrayidx582, align 4
  %add.ptr583 = getelementptr i8, ptr %call282, i32 17056
  %call.i1004 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.135, i32 noundef 4100, ptr noundef %add.ptr583, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %349 = load ptr, ptr @hws, align 4
  %arrayidx585 = getelementptr ptr, ptr %349, i32 153
  %350 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %call.i1004, ptr %arrayidx585, align 4
  %add.ptr586 = getelementptr i8, ptr %call282, i32 17072
  %call.i1005 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.136, i32 noundef 4100, ptr noundef %add.ptr586, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %351 = load ptr, ptr @hws, align 4
  %arrayidx588 = getelementptr ptr, ptr %351, i32 154
  %352 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %call.i1005, ptr %arrayidx588, align 4
  %add.ptr589 = getelementptr i8, ptr %call282, i32 17136
  %call.i1006 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.117, i32 noundef 4100, ptr noundef %add.ptr589, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %353 = load ptr, ptr @hws, align 4
  %arrayidx591 = getelementptr ptr, ptr %353, i32 155
  %354 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %call.i1006, ptr %arrayidx591, align 4
  %add.ptr592 = getelementptr i8, ptr %call282, i32 17152
  %call.i1007 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.116, i32 noundef 4100, ptr noundef %add.ptr592, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #5
  %355 = load ptr, ptr @hws, align 4
  %arrayidx594 = getelementptr ptr, ptr %355, i32 156
  %356 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %call.i1007, ptr %arrayidx594, align 4
  %call.i1008 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.93, i32 noundef 4100, ptr noundef %add.ptr592, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #5
  %357 = load ptr, ptr @hws, align 4
  %arrayidx597 = getelementptr ptr, ptr %357, i32 192
  %358 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %call.i1008, ptr %arrayidx597, align 4
  %add.ptr598 = getelementptr i8, ptr %call282, i32 17216
  %call.i1009 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.108, i32 noundef 4100, ptr noundef %add.ptr598, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #5
  %359 = load ptr, ptr @hws, align 4
  %arrayidx600 = getelementptr ptr, ptr %359, i32 157
  %360 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %call.i1009, ptr %arrayidx600, align 4
  %call.i1010 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr598, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #5
  %361 = load ptr, ptr @hws, align 4
  %arrayidx603 = getelementptr ptr, ptr %361, i32 158
  %362 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %call.i1010, ptr %arrayidx603, align 4
  %add.ptr604 = getelementptr i8, ptr %call282, i32 17232
  %call.i1011 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.109, i32 noundef 4100, ptr noundef %add.ptr604, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #5
  %363 = load ptr, ptr @hws, align 4
  %arrayidx606 = getelementptr ptr, ptr %363, i32 159
  %364 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %call.i1011, ptr %arrayidx606, align 4
  %call.i1012 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr604, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #5
  %365 = load ptr, ptr @hws, align 4
  %arrayidx609 = getelementptr ptr, ptr %365, i32 160
  %366 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %call.i1012, ptr %arrayidx609, align 4
  %add.ptr610 = getelementptr i8, ptr %call282, i32 17264
  %call.i1013 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.110, i32 noundef 4100, ptr noundef %add.ptr610, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai5) #5
  %367 = load ptr, ptr @hws, align 4
  %arrayidx612 = getelementptr ptr, ptr %367, i32 161
  %368 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %call.i1013, ptr %arrayidx612, align 4
  %call.i1014 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr610, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai5) #5
  %369 = load ptr, ptr @hws, align 4
  %arrayidx615 = getelementptr ptr, ptr %369, i32 162
  %370 = ptrtoint ptr %arrayidx615 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %call.i1014, ptr %arrayidx615, align 4
  %add.ptr616 = getelementptr i8, ptr %call282, i32 17280
  %call.i1015 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr616, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai6) #5
  %371 = load ptr, ptr @hws, align 4
  %arrayidx618 = getelementptr ptr, ptr %371, i32 163
  %372 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %call.i1015, ptr %arrayidx618, align 4
  %call.i1016 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr616, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai6) #5
  %373 = load ptr, ptr @hws, align 4
  %arrayidx621 = getelementptr ptr, ptr %373, i32 164
  %374 = ptrtoint ptr %arrayidx621 to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %call.i1016, ptr %arrayidx621, align 4
  %add.ptr622 = getelementptr i8, ptr %call282, i32 17520
  %call.i1017 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr622, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %375 = load ptr, ptr @hws, align 4
  %arrayidx624 = getelementptr ptr, ptr %375, i32 211
  %376 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %call.i1017, ptr %arrayidx624, align 4
  %add.ptr625 = getelementptr i8, ptr %call282, i32 17552
  %call.i1018 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.124, i32 noundef 4100, ptr noundef %add.ptr625, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %377 = load ptr, ptr @hws, align 4
  %arrayidx627 = getelementptr ptr, ptr %377, i32 169
  %378 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %call.i1018, ptr %arrayidx627, align 4
  %add.ptr628 = getelementptr i8, ptr %call282, i32 17568
  %call.i1019 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.125, i32 noundef 4100, ptr noundef %add.ptr628, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %379 = load ptr, ptr @hws, align 4
  %arrayidx630 = getelementptr ptr, ptr %379, i32 170
  %380 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %call.i1019, ptr %arrayidx630, align 4
  %add.ptr631 = getelementptr i8, ptr %call282, i32 17584
  %call.i1020 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.126, i32 noundef 4100, ptr noundef %add.ptr631, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %381 = load ptr, ptr @hws, align 4
  %arrayidx633 = getelementptr ptr, ptr %381, i32 171
  %382 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %call.i1020, ptr %arrayidx633, align 4
  %add.ptr634 = getelementptr i8, ptr %call282, i32 17600
  %call.i1021 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.127, i32 noundef 4100, ptr noundef %add.ptr634, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %383 = load ptr, ptr @hws, align 4
  %arrayidx636 = getelementptr ptr, ptr %383, i32 172
  %384 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr %call.i1021, ptr %arrayidx636, align 4
  %add.ptr637 = getelementptr i8, ptr %call282, i32 17616
  %call.i1022 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.96, i32 noundef 4100, ptr noundef %add.ptr637, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %385 = load ptr, ptr @hws, align 4
  %arrayidx639 = getelementptr ptr, ptr %385, i32 173
  %386 = ptrtoint ptr %arrayidx639 to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr %call.i1022, ptr %arrayidx639, align 4
  %add.ptr640 = getelementptr i8, ptr %call282, i32 17648
  %call.i1023 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.88, i32 noundef 4100, ptr noundef %add.ptr640, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %387 = load ptr, ptr @hws, align 4
  %arrayidx642 = getelementptr ptr, ptr %387, i32 193
  %388 = ptrtoint ptr %arrayidx642 to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %call.i1023, ptr %arrayidx642, align 4
  %add.ptr643 = getelementptr i8, ptr %call282, i32 17680
  %call.i1024 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.118, i32 noundef 4100, ptr noundef %add.ptr643, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %389 = load ptr, ptr @hws, align 4
  %arrayidx645 = getelementptr ptr, ptr %389, i32 174
  %390 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %call.i1024, ptr %arrayidx645, align 4
  %add.ptr646 = getelementptr i8, ptr %call282, i32 17696
  %call.i1025 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.119, i32 noundef 4100, ptr noundef %add.ptr646, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %391 = load ptr, ptr @hws, align 4
  %arrayidx648 = getelementptr ptr, ptr %391, i32 175
  %392 = ptrtoint ptr %arrayidx648 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %call.i1025, ptr %arrayidx648, align 4
  %add.ptr649 = getelementptr i8, ptr %call282, i32 17712
  %call.i1026 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.137, i32 noundef 4100, ptr noundef %add.ptr649, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %393 = load ptr, ptr @hws, align 4
  %arrayidx651 = getelementptr ptr, ptr %393, i32 176
  %394 = ptrtoint ptr %arrayidx651 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %call.i1026, ptr %arrayidx651, align 4
  %add.ptr652 = getelementptr i8, ptr %call282, i32 17728
  %call.i1027 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.137, i32 noundef 4100, ptr noundef %add.ptr652, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %395 = load ptr, ptr @hws, align 4
  %arrayidx654 = getelementptr ptr, ptr %395, i32 177
  %396 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %call.i1027, ptr %arrayidx654, align 4
  %add.ptr655 = getelementptr i8, ptr %call282, i32 17744
  %call.i1028 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.137, i32 noundef 4100, ptr noundef %add.ptr655, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %397 = load ptr, ptr @hws, align 4
  %arrayidx657 = getelementptr ptr, ptr %397, i32 178
  %398 = ptrtoint ptr %arrayidx657 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %call.i1028, ptr %arrayidx657, align 4
  %add.ptr658 = getelementptr i8, ptr %call282, i32 17776
  %call.i1029 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.97, i32 noundef 4100, ptr noundef %add.ptr658, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %399 = load ptr, ptr @hws, align 4
  %arrayidx660 = getelementptr ptr, ptr %399, i32 179
  %400 = ptrtoint ptr %arrayidx660 to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %call.i1029, ptr %arrayidx660, align 4
  %add.ptr661 = getelementptr i8, ptr %call282, i32 17792
  %call.i1030 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr661, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %401 = load ptr, ptr @hws, align 4
  %arrayidx663 = getelementptr ptr, ptr %401, i32 180
  %402 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %call.i1030, ptr %arrayidx663, align 4
  %add.ptr664 = getelementptr i8, ptr %call282, i32 17840
  %call.i1031 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.150, i32 noundef 4100, ptr noundef %add.ptr664, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_pdm) #5
  %403 = load ptr, ptr @hws, align 4
  %arrayidx666 = getelementptr ptr, ptr %403, i32 182
  %404 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %call.i1031, ptr %arrayidx666, align 4
  %call.i1032 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr664, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_pdm) #5
  %405 = load ptr, ptr @hws, align 4
  %arrayidx669 = getelementptr ptr, ptr %405, i32 183
  %406 = ptrtoint ptr %arrayidx669 to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %call.i1032, ptr %arrayidx669, align 4
  %add.ptr670 = getelementptr i8, ptr %call282, i32 17872
  %call.i1033 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.94, i32 noundef 4100, ptr noundef %add.ptr670, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_disp) #5
  %407 = load ptr, ptr @hws, align 4
  %arrayidx672 = getelementptr ptr, ptr %407, i32 184
  %408 = ptrtoint ptr %arrayidx672 to i32
  call void @__asan_store4_noabort(i32 %408)
  store ptr %call.i1033, ptr %arrayidx672, align 4
  %call.i1034 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.95, i32 noundef 4100, ptr noundef %add.ptr670, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_disp) #5
  %409 = load ptr, ptr @hws, align 4
  %arrayidx675 = getelementptr ptr, ptr %409, i32 185
  %410 = ptrtoint ptr %arrayidx675 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %call.i1034, ptr %arrayidx675, align 4
  %call.i1035 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.145, i32 noundef 4100, ptr noundef %add.ptr670, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_disp) #5
  %411 = load ptr, ptr @hws, align 4
  %arrayidx678 = getelementptr ptr, ptr %411, i32 187
  %412 = ptrtoint ptr %arrayidx678 to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %call.i1035, ptr %arrayidx678, align 4
  %call.i1036 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.107, i32 noundef 4100, ptr noundef %add.ptr670, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_disp) #5
  %413 = load ptr, ptr @hws, align 4
  %arrayidx681 = getelementptr ptr, ptr %413, i32 186
  %414 = ptrtoint ptr %arrayidx681 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr %call.i1036, ptr %arrayidx681, align 4
  %add.ptr682 = getelementptr i8, ptr %call282, i32 17888
  %call.i1037 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.144, i32 noundef 4100, ptr noundef %add.ptr682, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %415 = load ptr, ptr @hws, align 4
  %arrayidx684 = getelementptr ptr, ptr %415, i32 188
  %416 = ptrtoint ptr %arrayidx684 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %call.i1037, ptr %arrayidx684, align 4
  %add.ptr685 = getelementptr i8, ptr %call282, i32 17952
  %call.i1038 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr685, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %417 = load ptr, ptr @hws, align 4
  %arrayidx687 = getelementptr ptr, ptr %417, i32 190
  %418 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %call.i1038, ptr %arrayidx687, align 4
  %add.ptr688 = getelementptr i8, ptr %call282, i32 17312
  %call.i1039 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr688, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %419 = load ptr, ptr @hws, align 4
  %arrayidx690 = getelementptr ptr, ptr %419, i32 167
  %420 = ptrtoint ptr %arrayidx690 to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %call.i1039, ptr %arrayidx690, align 4
  %add.ptr691 = getelementptr i8, ptr %call282, i32 17328
  %call.i1040 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr691, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %421 = load ptr, ptr @hws, align 4
  %arrayidx693 = getelementptr ptr, ptr %421, i32 168
  %422 = ptrtoint ptr %arrayidx693 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %call.i1040, ptr %arrayidx693, align 4
  %add.ptr694 = getelementptr i8, ptr %call282, i32 17904
  %call.i1041 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.103, i32 noundef 4100, ptr noundef %add.ptr694, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %423 = load ptr, ptr @hws, align 4
  %arrayidx696 = getelementptr ptr, ptr %423, i32 189
  %424 = ptrtoint ptr %arrayidx696 to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %call.i1041, ptr %arrayidx696, align 4
  %add.ptr697 = getelementptr i8, ptr %call282, i32 18000
  %call.i1042 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.151, i32 noundef 4100, ptr noundef %add.ptr697, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai7) #5
  %425 = load ptr, ptr @hws, align 4
  %arrayidx699 = getelementptr ptr, ptr %425, i32 165
  %426 = ptrtoint ptr %arrayidx699 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %call.i1042, ptr %arrayidx699, align 4
  %call.i1043 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.105, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %427 = load ptr, ptr @hws, align 4
  %arrayidx701 = getelementptr ptr, ptr %427, i32 91
  %428 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %call.i1043, ptr %arrayidx701, align 4
  %arrayidx702 = getelementptr ptr, ptr %427, i32 214
  %429 = ptrtoint ptr %arrayidx702 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx702, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %430, i32 0, i32 1
  %431 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %clk, align 4
  %arrayidx705 = getelementptr ptr, ptr %427, i32 44
  %433 = ptrtoint ptr %arrayidx705 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %arrayidx705, align 4
  %clk706 = getelementptr inbounds %struct.clk_hw, ptr %434, i32 0, i32 1
  %435 = ptrtoint ptr %clk706 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %clk706, align 4
  %arrayidx707 = getelementptr ptr, ptr %427, i32 72
  %437 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %arrayidx707, align 4
  %clk708 = getelementptr inbounds %struct.clk_hw, ptr %438, i32 0, i32 1
  %439 = ptrtoint ptr %clk708 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %clk708, align 4
  %call709 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.90, ptr noundef %432, ptr noundef %432, ptr noundef %436, ptr noundef %440) #5
  %441 = load ptr, ptr @hws, align 4
  %arrayidx710 = getelementptr ptr, ptr %441, i32 191
  %442 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %call709, ptr %arrayidx710, align 4
  tail call void @imx_check_clk_hws(ptr noundef %441, i32 noundef 222) #5
  %443 = load ptr, ptr @clk_hw_data, align 4
  %call711 = tail call i32 @of_clk_add_hw_provider(ptr noundef %171, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %443) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call711)
  %cmp = icmp slt i32 %call711, 0
  br i1 %cmp, label %do.end715, label %if.end716

do.end715:                                        ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.210) #9
  br label %unregister_hws

if.end716:                                        ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @imx_register_uart_clocks(i32 noundef 4) #5
  br label %cleanup

unregister_hws:                                   ; preds = %do.end715, %do.end300, %do.end60
  %ret.0 = phi i32 [ -12, %do.end60 ], [ %172, %do.end300 ], [ %call711, %do.end715 ]
  %444 = load ptr, ptr @hws, align 4
  tail call void @imx_unregister_hw_clocks(ptr noundef %444, i32 noundef 222) #5
  br label %cleanup

cleanup:                                          ; preds = %unregister_hws, %if.end716, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %unregister_hws ], [ 0, %if.end716 ]
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
declare dso_local ptr @imx_dev_clk_hw_pll14xx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 302)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !435, !436, !437, !438, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609}
!llvm.module.flags = !{!611, !612, !613, !614, !615, !616, !617, !618}
!llvm.ident = !{!619}

!0 = !{ptr @__initcall__kmod_clk_imx8mn__183_614_imx8mn_clk_driver_init6, !1, !"__initcall__kmod_clk_imx8mn__183_614_imx8mn_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 614, i32 1}
!2 = !{ptr @__exitcall_imx8mn_clk_driver_exit, !1, !"__exitcall_imx8mn_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 616, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 617, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 618, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 605, i32 11}
!12 = !{ptr @imx8mn_clk_driver, !13, !"imx8mn_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 602, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 304, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 310, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 311, i32 52}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 312, i32 52}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 313, i32 53}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 314, i32 53}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 315, i32 53}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 316, i32 53}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 318, i32 43}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 326, i32 35}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 327, i32 35}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 328, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 329, i32 33}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 330, i32 32}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 331, i32 32}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 332, i32 32}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 333, i32 33}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 335, i32 27}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 336, i32 27}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 337, i32 27}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 338, i32 25}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 339, i32 24}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 340, i32 24}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 341, i32 24}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 342, i32 42}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 343, i32 42}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 344, i32 25}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 347, i32 34}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 348, i32 34}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 349, i32 34}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 350, i32 32}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 351, i32 31}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 352, i32 31}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 353, i32 31}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 354, i32 32}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 357, i32 31}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 358, i32 31}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 359, i32 31}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 360, i32 29}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 361, i32 28}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 362, i32 28}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 363, i32 28}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 364, i32 29}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 367, i32 32}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 368, i32 32}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 369, i32 33}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 370, i32 33}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 371, i32 33}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 372, i32 33}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 373, i32 33}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 374, i32 33}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 375, i32 29}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 377, i32 53}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 378, i32 53}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 379, i32 54}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 380, i32 54}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 381, i32 54}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 382, i32 54}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 383, i32 54}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 384, i32 54}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 385, i32 54}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 388, i32 32}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 389, i32 33}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 390, i32 33}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 391, i32 33}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 392, i32 33}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 393, i32 33}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 394, i32 33}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 395, i32 33}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 396, i32 29}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 398, i32 53}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 399, i32 54}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 400, i32 54}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 401, i32 54}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 402, i32 54}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 403, i32 54}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 404, i32 54}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 405, i32 54}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 406, i32 55}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 408, i32 32}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 409, i32 32}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 410, i32 28}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 411, i32 32}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 412, i32 32}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 413, i32 28}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 423, i32 28}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 427, i32 28}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 429, i32 29}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 430, i32 31}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 440, i32 29}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 443, i32 29}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 444, i32 29}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 445, i32 35}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 446, i32 29}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 447, i32 29}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 448, i32 28}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 449, i32 28}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 450, i32 28}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 451, i32 24}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 453, i32 24}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 454, i32 30}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 455, i32 29}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 456, i32 35}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 457, i32 30}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 464, i32 29}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 465, i32 29}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 467, i32 31}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 468, i32 25}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 469, i32 25}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 470, i32 25}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 471, i32 25}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 472, i32 27}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 473, i32 29}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 474, i32 31}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 475, i32 33}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 476, i32 25}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 477, i32 25}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 478, i32 27}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 479, i32 27}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 480, i32 25}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 481, i32 25}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 482, i32 25}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 483, i32 25}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 484, i32 26}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 485, i32 26}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 486, i32 26}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 487, i32 26}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 488, i32 33}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 489, i32 32}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 490, i32 24}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 491, i32 27}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 492, i32 27}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 493, i32 25}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 494, i32 25}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 495, i32 25}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 496, i32 25}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 497, i32 25}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 498, i32 26}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 499, i32 26}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 500, i32 26}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 501, i32 29}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 502, i32 32}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 503, i32 28}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 504, i32 27}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 505, i32 33}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 506, i32 33}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 507, i32 33}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 508, i32 29}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 509, i32 27}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 510, i32 24}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 511, i32 25}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 513, i32 32}
!318 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 514, i32 32}
!320 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 515, i32 32}
!322 = !{ptr @.str.155, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 516, i32 31}
!324 = !{ptr @.str.156, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 517, i32 31}
!326 = !{ptr @.str.157, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 518, i32 31}
!328 = !{ptr @.str.158, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 519, i32 31}
!330 = !{ptr @.str.159, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 520, i32 31}
!332 = !{ptr @.str.160, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 521, i32 31}
!334 = !{ptr @.str.161, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 522, i32 30}
!336 = !{ptr @.str.162, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 523, i32 30}
!338 = !{ptr @.str.163, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 524, i32 30}
!340 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 525, i32 30}
!342 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 526, i32 28}
!344 = !{ptr @.str.166, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 527, i32 31}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 528, i32 30}
!348 = !{ptr @.str.168, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 529, i32 30}
!350 = !{ptr @.str.169, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 530, i32 30}
!352 = !{ptr @.str.170, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 531, i32 30}
!354 = !{ptr @.str.171, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 532, i32 30}
!356 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 533, i32 30}
!358 = !{ptr @.str.173, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 534, i32 47}
!360 = !{ptr @.str.174, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 535, i32 30}
!362 = !{ptr @.str.175, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 536, i32 29}
!364 = !{ptr @.str.176, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 537, i32 30}
!366 = !{ptr @.str.177, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 538, i32 29}
!368 = !{ptr @.str.178, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 539, i32 30}
!370 = !{ptr @.str.179, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 540, i32 29}
!372 = !{ptr @.str.180, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 541, i32 30}
!374 = !{ptr @.str.181, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 542, i32 29}
!376 = !{ptr @.str.182, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 543, i32 30}
!378 = !{ptr @.str.183, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 544, i32 31}
!380 = !{ptr @.str.184, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 545, i32 31}
!382 = !{ptr @.str.185, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 546, i32 31}
!384 = !{ptr @.str.186, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 547, i32 31}
!386 = !{ptr @.str.187, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 548, i32 35}
!388 = !{ptr @.str.188, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 549, i32 34}
!390 = !{ptr @.str.189, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 550, i32 32}
!392 = !{ptr @.str.190, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 551, i32 32}
!394 = !{ptr @.str.191, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 552, i32 31}
!396 = !{ptr @.str.192, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 553, i32 31}
!398 = !{ptr @.str.193, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 554, i32 31}
!400 = !{ptr @.str.194, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 555, i32 33}
!402 = !{ptr @.str.195, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 556, i32 30}
!404 = !{ptr @.str.196, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 557, i32 29}
!406 = !{ptr @.str.197, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 558, i32 29}
!408 = !{ptr @.str.198, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 559, i32 35}
!410 = !{ptr @.str.199, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 560, i32 35}
!412 = !{ptr @.str.200, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 561, i32 38}
!414 = !{ptr @.str.201, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 562, i32 36}
!416 = !{ptr @.str.202, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 563, i32 32}
!418 = !{ptr @.str.203, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 564, i32 29}
!420 = !{ptr @.str.204, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 565, i32 31}
!422 = !{ptr @.str.205, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 566, i32 31}
!424 = !{ptr @.str.206, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 567, i32 31}
!426 = !{ptr @.str.207, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 568, i32 30}
!428 = !{ptr @.str.208, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 570, i32 58}
!430 = !{ptr @.str.209, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 572, i32 39}
!432 = !{ptr @.str.210, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 582, i32 3}
!434 = !{ptr @.str.211, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.212, !433, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.213, !433, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @imx8mn_clocks_probe._entry, !433, !"_entry", i1 false, i1 false}
!438 = !{ptr @imx8mn_clocks_probe._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @clk_hw_data, !440, !"clk_hw_data", i1 false, i1 false}
!440 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 292, i32 36}
!441 = !{ptr @hws, !442, !"hws", i1 false, i1 false}
!442 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 293, i32 24}
!443 = !{ptr @pll_ref_sels, !444, !"pll_ref_sels", i1 false, i1 false}
!444 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 27, i32 27}
!445 = !{ptr @audio_pll1_bypass_sels, !446, !"audio_pll1_bypass_sels", i1 false, i1 false}
!446 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 28, i32 27}
!447 = !{ptr @audio_pll2_bypass_sels, !448, !"audio_pll2_bypass_sels", i1 false, i1 false}
!448 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 29, i32 27}
!449 = !{ptr @video_pll1_bypass_sels, !450, !"video_pll1_bypass_sels", i1 false, i1 false}
!450 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 30, i32 27}
!451 = !{ptr @dram_pll_bypass_sels, !452, !"dram_pll_bypass_sels", i1 false, i1 false}
!452 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 31, i32 27}
!453 = !{ptr @gpu_pll_bypass_sels, !454, !"gpu_pll_bypass_sels", i1 false, i1 false}
!454 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 32, i32 27}
!455 = !{ptr @vpu_pll_bypass_sels, !456, !"vpu_pll_bypass_sels", i1 false, i1 false}
!456 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 33, i32 27}
!457 = !{ptr @arm_pll_bypass_sels, !458, !"arm_pll_bypass_sels", i1 false, i1 false}
!458 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 34, i32 27}
!459 = !{ptr @sys_pll3_bypass_sels, !460, !"sys_pll3_bypass_sels", i1 false, i1 false}
!460 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 35, i32 27}
!461 = !{ptr @clkout_sels, !462, !"clkout_sels", i1 false, i1 false}
!462 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 287, i32 27}
!463 = !{ptr @imx8mn_a53_sels, !464, !"imx8mn_a53_sels", i1 false, i1 false}
!464 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 37, i32 27}
!465 = !{ptr @imx8mn_m7_sels, !466, !"imx8mn_m7_sels", i1 false, i1 false}
!466 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 43, i32 27}
!467 = !{ptr @imx8mn_gpu_core_sels, !468, !"imx8mn_gpu_core_sels", i1 false, i1 false}
!468 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 46, i32 27}
!469 = !{ptr @imx8mn_gpu_shader_sels, !470, !"imx8mn_gpu_shader_sels", i1 false, i1 false}
!470 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 50, i32 27}
!471 = !{ptr @imx8mn_a53_core_sels, !472, !"imx8mn_a53_core_sels", i1 false, i1 false}
!472 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 41, i32 27}
!473 = !{ptr @imx8mn_main_axi_sels, !474, !"imx8mn_main_axi_sels", i1 false, i1 false}
!474 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 54, i32 27}
!475 = !{ptr @imx8mn_enet_axi_sels, !476, !"imx8mn_enet_axi_sels", i1 false, i1 false}
!476 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 58, i32 27}
!477 = !{ptr @imx8mn_nand_usdhc_sels, !478, !"imx8mn_nand_usdhc_sels", i1 false, i1 false}
!478 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 62, i32 27}
!479 = !{ptr @imx8mn_disp_axi_sels, !480, !"imx8mn_disp_axi_sels", i1 false, i1 false}
!480 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 66, i32 27}
!481 = !{ptr @imx8mn_disp_apb_sels, !482, !"imx8mn_disp_apb_sels", i1 false, i1 false}
!482 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 70, i32 27}
!483 = !{ptr @imx8mn_usb_bus_sels, !484, !"imx8mn_usb_bus_sels", i1 false, i1 false}
!484 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 74, i32 27}
!485 = !{ptr @imx8mn_gpu_axi_sels, !486, !"imx8mn_gpu_axi_sels", i1 false, i1 false}
!486 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 78, i32 27}
!487 = !{ptr @imx8mn_gpu_ahb_sels, !488, !"imx8mn_gpu_ahb_sels", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 82, i32 27}
!489 = !{ptr @imx8mn_noc_sels, !490, !"imx8mn_noc_sels", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 86, i32 27}
!491 = !{ptr @imx8mn_ahb_sels, !492, !"imx8mn_ahb_sels", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 90, i32 27}
!493 = !{ptr @imx8mn_audio_ahb_sels, !494, !"imx8mn_audio_ahb_sels", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 94, i32 27}
!495 = !{ptr @imx8mn_dram_core_sels, !496, !"imx8mn_dram_core_sels", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 278, i32 27}
!497 = !{ptr @imx8mn_dram_alt_sels, !498, !"imx8mn_dram_alt_sels", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 98, i32 27}
!499 = !{ptr @imx8mn_dram_apb_sels, !500, !"imx8mn_dram_apb_sels", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 102, i32 27}
!501 = !{ptr @imx8mn_disp_pixel_sels, !502, !"imx8mn_disp_pixel_sels", i1 false, i1 false}
!502 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 106, i32 27}
!503 = !{ptr @.str.214, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 111, i32 42}
!505 = !{ptr @imx8mn_sai2_sels, !506, !"imx8mn_sai2_sels", i1 false, i1 false}
!506 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 110, i32 27}
!507 = !{ptr @imx8mn_sai3_sels, !508, !"imx8mn_sai3_sels", i1 false, i1 false}
!508 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 114, i32 27}
!509 = !{ptr @imx8mn_sai5_sels, !510, !"imx8mn_sai5_sels", i1 false, i1 false}
!510 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 118, i32 27}
!511 = !{ptr @imx8mn_sai6_sels, !512, !"imx8mn_sai6_sels", i1 false, i1 false}
!512 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 122, i32 27}
!513 = !{ptr @imx8mn_spdif1_sels, !514, !"imx8mn_spdif1_sels", i1 false, i1 false}
!514 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 130, i32 27}
!515 = !{ptr @imx8mn_enet_ref_sels, !516, !"imx8mn_enet_ref_sels", i1 false, i1 false}
!516 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 134, i32 27}
!517 = !{ptr @imx8mn_enet_timer_sels, !518, !"imx8mn_enet_timer_sels", i1 false, i1 false}
!518 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 138, i32 27}
!519 = !{ptr @imx8mn_enet_phy_sels, !520, !"imx8mn_enet_phy_sels", i1 false, i1 false}
!520 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 142, i32 27}
!521 = !{ptr @imx8mn_nand_sels, !522, !"imx8mn_nand_sels", i1 false, i1 false}
!522 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 146, i32 27}
!523 = !{ptr @imx8mn_qspi_sels, !524, !"imx8mn_qspi_sels", i1 false, i1 false}
!524 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 150, i32 27}
!525 = !{ptr @imx8mn_usdhc1_sels, !526, !"imx8mn_usdhc1_sels", i1 false, i1 false}
!526 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 154, i32 27}
!527 = !{ptr @imx8mn_usdhc2_sels, !528, !"imx8mn_usdhc2_sels", i1 false, i1 false}
!528 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 158, i32 27}
!529 = !{ptr @imx8mn_i2c1_sels, !530, !"imx8mn_i2c1_sels", i1 false, i1 false}
!530 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 162, i32 27}
!531 = !{ptr @imx8mn_i2c2_sels, !532, !"imx8mn_i2c2_sels", i1 false, i1 false}
!532 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 166, i32 27}
!533 = !{ptr @imx8mn_i2c3_sels, !534, !"imx8mn_i2c3_sels", i1 false, i1 false}
!534 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 170, i32 27}
!535 = !{ptr @imx8mn_i2c4_sels, !536, !"imx8mn_i2c4_sels", i1 false, i1 false}
!536 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 174, i32 27}
!537 = !{ptr @imx8mn_uart1_sels, !538, !"imx8mn_uart1_sels", i1 false, i1 false}
!538 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 178, i32 27}
!539 = !{ptr @imx8mn_uart2_sels, !540, !"imx8mn_uart2_sels", i1 false, i1 false}
!540 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 182, i32 27}
!541 = !{ptr @imx8mn_uart3_sels, !542, !"imx8mn_uart3_sels", i1 false, i1 false}
!542 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 186, i32 27}
!543 = !{ptr @imx8mn_uart4_sels, !544, !"imx8mn_uart4_sels", i1 false, i1 false}
!544 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 190, i32 27}
!545 = !{ptr @imx8mn_usb_core_sels, !546, !"imx8mn_usb_core_sels", i1 false, i1 false}
!546 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 194, i32 27}
!547 = !{ptr @imx8mn_usb_phy_sels, !548, !"imx8mn_usb_phy_sels", i1 false, i1 false}
!548 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 198, i32 27}
!549 = !{ptr @imx8mn_gic_sels, !550, !"imx8mn_gic_sels", i1 false, i1 false}
!550 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 202, i32 27}
!551 = !{ptr @imx8mn_ecspi1_sels, !552, !"imx8mn_ecspi1_sels", i1 false, i1 false}
!552 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 206, i32 27}
!553 = !{ptr @imx8mn_ecspi2_sels, !554, !"imx8mn_ecspi2_sels", i1 false, i1 false}
!554 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 210, i32 27}
!555 = !{ptr @imx8mn_pwm1_sels, !556, !"imx8mn_pwm1_sels", i1 false, i1 false}
!556 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 214, i32 27}
!557 = !{ptr @imx8mn_pwm2_sels, !558, !"imx8mn_pwm2_sels", i1 false, i1 false}
!558 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 218, i32 27}
!559 = !{ptr @imx8mn_pwm3_sels, !560, !"imx8mn_pwm3_sels", i1 false, i1 false}
!560 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 222, i32 27}
!561 = !{ptr @imx8mn_pwm4_sels, !562, !"imx8mn_pwm4_sels", i1 false, i1 false}
!562 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 226, i32 27}
!563 = !{ptr @imx8mn_wdog_sels, !564, !"imx8mn_wdog_sels", i1 false, i1 false}
!564 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 230, i32 27}
!565 = !{ptr @imx8mn_wrclk_sels, !566, !"imx8mn_wrclk_sels", i1 false, i1 false}
!566 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 234, i32 27}
!567 = !{ptr @imx8mn_clko1_sels, !568, !"imx8mn_clko1_sels", i1 false, i1 false}
!568 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 280, i32 27}
!569 = !{ptr @imx8mn_clko2_sels, !570, !"imx8mn_clko2_sels", i1 false, i1 false}
!570 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 283, i32 27}
!571 = !{ptr @imx8mn_dsi_core_sels, !572, !"imx8mn_dsi_core_sels", i1 false, i1 false}
!572 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 238, i32 27}
!573 = !{ptr @imx8mn_dsi_phy_sels, !574, !"imx8mn_dsi_phy_sels", i1 false, i1 false}
!574 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 242, i32 27}
!575 = !{ptr @imx8mn_dsi_dbi_sels, !576, !"imx8mn_dsi_dbi_sels", i1 false, i1 false}
!576 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 246, i32 27}
!577 = !{ptr @imx8mn_usdhc3_sels, !578, !"imx8mn_usdhc3_sels", i1 false, i1 false}
!578 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 250, i32 27}
!579 = !{ptr @imx8mn_camera_pixel_sels, !580, !"imx8mn_camera_pixel_sels", i1 false, i1 false}
!580 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 254, i32 27}
!581 = !{ptr @imx8mn_csi1_phy_sels, !582, !"imx8mn_csi1_phy_sels", i1 false, i1 false}
!582 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 258, i32 27}
!583 = !{ptr @imx8mn_csi2_phy_sels, !584, !"imx8mn_csi2_phy_sels", i1 false, i1 false}
!584 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 262, i32 27}
!585 = !{ptr @imx8mn_csi2_esc_sels, !586, !"imx8mn_csi2_esc_sels", i1 false, i1 false}
!586 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 266, i32 27}
!587 = !{ptr @imx8mn_ecspi3_sels, !588, !"imx8mn_ecspi3_sels", i1 false, i1 false}
!588 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 270, i32 27}
!589 = !{ptr @imx8mn_pdm_sels, !590, !"imx8mn_pdm_sels", i1 false, i1 false}
!590 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 274, i32 27}
!591 = !{ptr @imx8mn_sai7_sels, !592, !"imx8mn_sai7_sels", i1 false, i1 false}
!592 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 126, i32 27}
!593 = !{ptr @share_count_nand, !594, !"share_count_nand", i1 false, i1 false}
!594 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 25, i32 12}
!595 = !{ptr @share_count_sai2, !596, !"share_count_sai2", i1 false, i1 false}
!596 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 18, i32 12}
!597 = !{ptr @share_count_sai3, !598, !"share_count_sai3", i1 false, i1 false}
!598 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 19, i32 12}
!599 = !{ptr @share_count_sai5, !600, !"share_count_sai5", i1 false, i1 false}
!600 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 20, i32 12}
!601 = !{ptr @share_count_sai6, !602, !"share_count_sai6", i1 false, i1 false}
!602 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 21, i32 12}
!603 = !{ptr @share_count_pdm, !604, !"share_count_pdm", i1 false, i1 false}
!604 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 24, i32 12}
!605 = !{ptr @share_count_disp, !606, !"share_count_disp", i1 false, i1 false}
!606 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 23, i32 12}
!607 = !{ptr @share_count_sai7, !608, !"share_count_sai7", i1 false, i1 false}
!608 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 22, i32 12}
!609 = !{ptr @imx8mn_clk_of_match, !610, !"imx8mn_clk_of_match", i1 false, i1 false}
!610 = !{!"../drivers/clk/imx/clk-imx8mn.c", i32 596, i32 34}
!611 = !{i32 1, !"wchar_size", i32 2}
!612 = !{i32 1, !"min_enum_size", i32 4}
!613 = !{i32 8, !"branch-target-enforcement", i32 0}
!614 = !{i32 8, !"sign-return-address", i32 0}
!615 = !{i32 8, !"sign-return-address-all", i32 0}
!616 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!617 = !{i32 7, !"uwtable", i32 1}
!618 = !{i32 7, !"frame-pointer", i32 2}
!619 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!620 = !{!"branch_weights", i32 1, i32 2000}
