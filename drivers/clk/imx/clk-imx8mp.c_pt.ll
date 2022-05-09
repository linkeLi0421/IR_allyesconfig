; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-imx8mp.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx8mp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_pll14xx_clk = type { i32, ptr, i32, i32 }
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

@__initcall__kmod_clk_imx8mp__183_738_imx8mp_clk_driver_init6 = internal global ptr @imx8mp_clk_driver_init, section ".initcall6.init", align 4
@imx8mp_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8mp_clocks_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx8mp_clk_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8mp_clk_driver_exit = internal global ptr @imx8mp_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [52 x i8] c"clk_imx8mp.author=Anson Huang <Anson.Huang@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [48 x i8] c"clk_imx8mp.description=NXP i.MX8MP clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"clk_imx8mp.file=drivers/clk/imx/clk-imx8mp\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"clk_imx8mp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx8mp-ccm\00", [21 x i8] zeroinitializer }, align 32
@imx8mp_clk_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx8mp-anatop\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/imx/clk-imx8mp.c\00", [35 x i8] zeroinitializer }, align 32
@clk_hw_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hws = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_24m\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext1\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext2\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext3\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ext4\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll1_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@pll_ref_sels = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.3, ptr @.str.3, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"audio_pll2_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"video_pll1_ref_sel\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dram_pll_ref_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpu_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_pll_ref_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_ref_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_ref_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll3_ref_sel\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pll1\00", [21 x i8] zeroinitializer }, align 32
@imx_1443x_pll = external dso_local global %struct.imx_pll14xx_clk, align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio_pll2\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"video_pll1\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_pll\00", [23 x i8] zeroinitializer }, align 32
@imx_1443x_dram_pll = external dso_local global %struct.imx_pll14xx_clk, align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_pll\00", [24 x i8] zeroinitializer }, align 32
@imx_1416x_pll = external dso_local global %struct.imx_pll14xx_clk, align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arm_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pll1\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pll2\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_pll3\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_pll1_bypass\00", [46 x i8] zeroinitializer }, align 32
@audio_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"audio_pll2_bypass\00", [46 x i8] zeroinitializer }, align 32
@audio_pll2_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"video_pll1_bypass\00", [46 x i8] zeroinitializer }, align 32
@video_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.12], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dram_pll_bypass\00", [16 x i8] zeroinitializer }, align 32
@dram_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.23, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@gpu_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vpu_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@vpu_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.25, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm_pll_bypass\00", [17 x i8] zeroinitializer }, align 32
@arm_pll_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll1_bypass\00", [16 x i8] zeroinitializer }, align 32
@sys_pll1_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll2_bypass\00", [16 x i8] zeroinitializer }, align 32
@sys_pll2_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.28, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll3_bypass\00", [16 x i8] zeroinitializer }, align 32
@sys_pll3_bypass_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll1_out\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_pll2_out\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"video_pll1_out\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dram_pll_out\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpu_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpu_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_pll_out\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll3_out\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll1_40m_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll1_80m_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_100m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_133m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_160m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_200m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_266m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll1_400m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll1_out\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll1_40m\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll1_80m\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_133m\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_160m\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_200m\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_266m\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_400m\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_800m\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pll2_50m_cg\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_100m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_125m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_166m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_200m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_250m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_333m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_pll2_500m_cg\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll2_out\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_pll2_50m\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_100m\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_166m\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_200m\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_250m\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_333m\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll2_500m\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_pll2_1000m\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arm_a53_div\00", [20 x i8] zeroinitializer }, align 32
@imx8mp_a53_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.46, ptr @.str.82, ptr @.str.83, ptr @.str.65, ptr @.str.64, ptr @.str.40, ptr @.str.47], [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m7_core\00", [24 x i8] zeroinitializer }, align 32
@imx8mp_m7_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.80, ptr @.str.45, ptr @.str.65, ptr @.str.40, ptr @.str.42, ptr @.str.47], [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ml_core\00", [24 x i8] zeroinitializer }, align 32
@imx8mp_ml_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.44, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu3d_core\00", [21 x i8] zeroinitializer }, align 32
@imx8mp_gpu3d_core_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.44, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpu3d_shader_core\00", [46 x i8] zeroinitializer }, align 32
@imx8mp_gpu3d_shader_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.44, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpu2d_core\00", [21 x i8] zeroinitializer }, align 32
@imx8mp_gpu2d_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.44, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_axi\00", [22 x i8] zeroinitializer }, align 32
@imx8mp_audio_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.44, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hsio_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_hsio_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.82, ptr @.str.65, ptr @.str.76, ptr @.str.79, ptr @.str.7, ptr @.str.9, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"media_isp\00", [22 x i8] zeroinitializer }, align 32
@imx8mp_media_isp_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.83, ptr @.str.65, ptr @.str.47, ptr @.str.64, ptr @.str.41, ptr @.str.6, ptr @.str.82], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_a53_core\00", [19 x i8] zeroinitializer }, align 32
@imx8mp_a53_core_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.84, ptr @.str.46], [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_main_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.81, ptr @.str.65, ptr @.str.80, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_axi\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_enet_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.65, ptr @.str.80, ptr @.str.79, ptr @.str.40, ptr @.str.42, ptr @.str.47], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nand_usdhc_bus\00", [17 x i8] zeroinitializer }, align 32
@imx8mp_nand_usdhc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.65, ptr @.str.79, ptr @.str.60, ptr @.str.47, ptr @.str.80, ptr @.str.40], [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vpu_bus\00", [24 x i8] zeroinitializer }, align 32
@imx8mp_vpu_bus_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.45, ptr @.str.41, ptr @.str.47, ptr @.str.83, ptr @.str.79, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"media_axi\00", [22 x i8] zeroinitializer }, align 32
@imx8mp_media_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.83, ptr @.str.65, ptr @.str.47, ptr @.str.57, ptr @.str.41, ptr @.str.6, ptr @.str.82], [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"media_apb\00", [22 x i8] zeroinitializer }, align 32
@imx8mp_media_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.77, ptr @.str.65, ptr @.str.47, ptr @.str.57, ptr @.str.41, ptr @.str.6, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_axi\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_axi\00", [24 x i8] zeroinitializer }, align 32
@imx8mp_gpu_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.44, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpu_ahb\00", [24 x i8] zeroinitializer }, align 32
@imx8mp_gpu_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.44, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"noc\00", [28 x i8] zeroinitializer }, align 32
@imx8mp_noc_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.82, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"noc_io\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_noc_io_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.47, ptr @.str.83, ptr @.str.82, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ml_axi\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_ml_axi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.44, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ml_ahb\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_ml_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.44, ptr @.str.47, ptr @.str.83, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ahb_root\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.65, ptr @.str.64, ptr @.str.77, ptr @.str.47, ptr @.str.40, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_ahb\00", [22 x i8] zeroinitializer }, align 32
@imx8mp_audio_ahb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.82, ptr @.str.65, ptr @.str.83, ptr @.str.78, ptr @.str.47, ptr @.str.40, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mipi_dsi_esc_rx\00", [16 x i8] zeroinitializer }, align 32
@imx8mp_mipi_dsi_esc_rx_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.58, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipg_root\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_alt\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_dram_alt_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.59, ptr @.str.82, ptr @.str.83, ptr @.str.47, ptr @.str.40, ptr @.str.63], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dram_apb\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_dram_apb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.47, ptr @.str.80, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu_g1\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_vpu_g1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.45, ptr @.str.65, ptr @.str.83, ptr @.str.59, ptr @.str.77, ptr @.str.47, ptr @.str.40], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vpu_g2\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_vpu_g2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.45, ptr @.str.65, ptr @.str.83, ptr @.str.59, ptr @.str.77, ptr @.str.47, ptr @.str.40], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can1\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_can1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.47, ptr @.str.80, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can2\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_can2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.47, ptr @.str.80, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_aux\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_pcie_aux_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.75, ptr @.str.47, ptr @.str.76, ptr @.str.58, ptr @.str.61, ptr @.str.62], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c5\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_i2c5_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c6\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_i2c6_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.6, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai4\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.6, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai5\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai5_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.7, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai6\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai6_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_qos\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_enet_qos_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.77, ptr @.str.75, ptr @.str.76, ptr @.str.61, ptr @.str.40, ptr @.str.42, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enet_qos_timer\00", [17 x i8] zeroinitializer }, align 32
@imx8mp_enet_qos_timer_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.40, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_ref\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_enet_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.77, ptr @.str.75, ptr @.str.76, ptr @.str.61, ptr @.str.40, ptr @.str.42, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enet_timer\00", [21 x i8] zeroinitializer }, align 32
@imx8mp_enet_timer_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.40, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enet_phy_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mp_enet_phy_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.40, ptr @.str.42, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_nand_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.82, ptr @.str.40, ptr @.str.64, ptr @.str.41, ptr @.str.47, ptr @.str.80, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_qspi_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.81, ptr @.str.82, ptr @.str.41, ptr @.str.63, ptr @.str.47, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc1\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_usdhc1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.82, ptr @.str.47, ptr @.str.63, ptr @.str.41, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc2\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_usdhc2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.82, ptr @.str.47, ptr @.str.63, ptr @.str.41, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_i2c1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_i2c2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_i2c3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_i2c4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@imx8mp_uart1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.79, ptr @.str.76, ptr @.str.47, ptr @.str.7, ptr @.str.9, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@imx8mp_uart2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.79, ptr @.str.76, ptr @.str.47, ptr @.str.7, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@imx8mp_uart3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.79, ptr @.str.76, ptr @.str.47, ptr @.str.7, ptr @.str.9, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@imx8mp_uart4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.79, ptr @.str.76, ptr @.str.47, ptr @.str.7, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_core_ref\00", [19 x i8] zeroinitializer }, align 32
@imx8mp_usb_core_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.57, ptr @.str.76, ptr @.str.79, ptr @.str.7, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_phy_ref\00", [20 x i8] zeroinitializer }, align 32
@imx8mp_usb_phy_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.59, ptr @.str.57, ptr @.str.76, ptr @.str.79, ptr @.str.7, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gic\00", [28 x i8] zeroinitializer }, align 32
@imx8mp_gic_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.76, ptr @.str.65, ptr @.str.82, ptr @.str.9, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi1\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_ecspi1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.47, ptr @.str.80, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi2\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_ecspi2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.47, ptr @.str.80, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_pwm1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.61, ptr @.str.57, ptr @.str.47, ptr @.str.6, ptr @.str.58, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_pwm2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.61, ptr @.str.57, ptr @.str.47, ptr @.str.6, ptr @.str.58, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_pwm3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.61, ptr @.str.57, ptr @.str.47, ptr @.str.7, ptr @.str.58, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_pwm4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.61, ptr @.str.57, ptr @.str.47, ptr @.str.7, ptr @.str.58, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt1\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_gpt1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.64, ptr @.str.57, ptr @.str.42, ptr @.str.58, ptr @.str.40, ptr @.str.6], [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt2\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_gpt2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.64, ptr @.str.57, ptr @.str.42, ptr @.str.58, ptr @.str.40, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt3\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_gpt3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.64, ptr @.str.57, ptr @.str.42, ptr @.str.58, ptr @.str.40, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt4\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_gpt4_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.64, ptr @.str.57, ptr @.str.42, ptr @.str.58, ptr @.str.40, ptr @.str.6], [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt5\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_gpt5_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.64, ptr @.str.57, ptr @.str.42, ptr @.str.58, ptr @.str.40, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpt6\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_gpt6_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.64, ptr @.str.57, ptr @.str.42, ptr @.str.58, ptr @.str.40, ptr @.str.8], [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdog\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_wdog_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.61, ptr @.str.45, ptr @.str.77, ptr @.str.47, ptr @.str.58, ptr @.str.78], [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wrclk\00", [26 x i8] zeroinitializer }, align 32
@imx8mp_wrclk_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.45, ptr @.str.47, ptr @.str.79, ptr @.str.63, ptr @.str.82, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipp_do_clko1\00", [19 x i8] zeroinitializer }, align 32
@imx8mp_ipp_do_clko1_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.60, ptr @.str.62, ptr @.str.41, ptr @.str.82, ptr @.str.45, ptr @.str.58], [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipp_do_clko2\00", [19 x i8] zeroinitializer }, align 32
@imx8mp_ipp_do_clko2_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.64, ptr @.str.254, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.5], [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_fdcc_tst\00", [18 x i8] zeroinitializer }, align 32
@imx8mp_hdmi_fdcc_tst_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.80, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.41, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_24m\00", [23 x i8] zeroinitializer }, align 32
@imx8mp_hdmi_24m_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.75, ptr @.str.47, ptr @.str.40, ptr @.str.42, ptr @.str.41, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_ref_266m\00", [18 x i8] zeroinitializer }, align 32
@imx8mp_hdmi_ref_266m_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.47, ptr @.str.81, ptr @.str.63, ptr @.str.79, ptr @.str.40, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usdhc3\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_usdhc3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.82, ptr @.str.47, ptr @.str.63, ptr @.str.41, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"media_cam1_pix\00", [17 x i8] zeroinitializer }, align 32
@imx8mp_media_cam1_pix_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.80, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.41, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"media_mipi_phy1_ref\00", [44 x i8] zeroinitializer }, align 32
@imx8mp_media_mipi_phy1_ref_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.81, ptr @.str.76, ptr @.str.65, ptr @.str.83, ptr @.str.7, ptr @.str.41, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"media_disp1_pix\00", [16 x i8] zeroinitializer }, align 32
@imx8mp_media_disp1_pix_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.42, ptr @.str.41, ptr @.str.40, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"media_cam2_pix\00", [17 x i8] zeroinitializer }, align 32
@imx8mp_media_cam2_pix_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.63, ptr @.str.80, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.41, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"media_ldb\00", [22 x i8] zeroinitializer }, align 32
@imx8mp_media_ldb_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.81, ptr @.str.76, ptr @.str.65, ptr @.str.83, ptr @.str.7, ptr @.str.41, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mem_repair\00", [21 x i8] zeroinitializer }, align 32
@imx8mp_memrepair_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.58, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"media_mipi_test_byte\00", [43 x i8] zeroinitializer }, align 32
@imx8mp_media_mipi_test_byte_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.75, ptr @.str.47, ptr @.str.76, ptr @.str.58, ptr @.str.61, ptr @.str.62], [32 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecspi3\00", [25 x i8] zeroinitializer }, align 32
@imx8mp_ecspi3_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.57, ptr @.str.61, ptr @.str.65, ptr @.str.47, ptr @.str.80, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdm\00", [28 x i8] zeroinitializer }, align 32
@imx8mp_pdm_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.76, ptr @.str.40, ptr @.str.65, ptr @.str.83, ptr @.str.47, ptr @.str.8, ptr @.str.41], [32 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vpu_vc8000e\00", [20 x i8] zeroinitializer }, align 32
@imx8mp_vpu_vc8000e_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.45, ptr @.str.65, ptr @.str.83, ptr @.str.41, ptr @.str.77, ptr @.str.47, ptr @.str.40], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai7\00", [27 x i8] zeroinitializer }, align 32
@imx8mp_sai7_sels = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.60, ptr @.str.253, ptr @.str.8, ptr @.str.9], [32 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dram_alt_root\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dram_core_clk\00", [18 x i8] zeroinitializer }, align 32
@imx8mp_dram_core_sels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.43, ptr @.str.178], [24 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dram1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ecspi3_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enet1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio4_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio5_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt5_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpt6_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mu_root_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocotp_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm3_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm4_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qos_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qos_enet_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qspi_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_root_clk\00", [18 x i8] zeroinitializer }, align 32
@share_count_nand = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nand_usdhc_rawnand_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c5_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c6_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can1_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can2_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdma1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enet_qos_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sim_enet_root_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu2d_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpu3d_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snvs_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"uart4_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_phy_root_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog1_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog2_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdog3_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_g1_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vpu_vc8ke_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vpu_g2_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"npu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hsio_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"media_apb_root_clk\00", [45 x i8] zeroinitializer }, align 32
@share_count_media = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.240 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"media_axi_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"media_cam1_pix_root_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"media_cam2_pix_root_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"media_disp1_pix_root_clk\00", [39 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"media_disp2_pix_root_clk\00", [39 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"media_disp2_pix\00", [16 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"media_isp_root_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usdhc3_root_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_root_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsensor_root_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpu_root_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audio_root_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arm\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.253 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_hdmi\00", [23 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_pll1_166m\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"imx8mp_clk_driver\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 726, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 729, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"imx8mp_clk_of_match\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 720, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 411, i32 43 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 414, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant [12 x i8] c"clk_hw_data\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 403, i32 36 }
@___asan_gen_.273 = private unnamed_addr constant [4 x i8] c"hws\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 402, i32 24 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 433, i32 43 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 434, i32 52 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 435, i32 52 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 436, i32 53 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 437, i32 53 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 438, i32 53 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 439, i32 53 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 441, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant [13 x i8] c"pll_ref_sels\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 21, i32 27 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 442, i32 35 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 443, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 444, i32 33 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 445, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 446, i32 32 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 447, i32 32 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 448, i32 33 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 449, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 450, i32 33 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 452, i32 27 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 453, i32 27 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 454, i32 27 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 455, i32 25 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 456, i32 24 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 457, i32 24 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 458, i32 24 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 459, i32 25 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 460, i32 25 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 461, i32 25 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 463, i32 34 }
@___asan_gen_.363 = private unnamed_addr constant [23 x i8] c"audio_pll1_bypass_sels\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 22, i32 27 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 464, i32 34 }
@___asan_gen_.369 = private unnamed_addr constant [23 x i8] c"audio_pll2_bypass_sels\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 23, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 465, i32 34 }
@___asan_gen_.375 = private unnamed_addr constant [23 x i8] c"video_pll1_bypass_sels\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 24, i32 27 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 466, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant [21 x i8] c"dram_pll_bypass_sels\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 25, i32 27 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 467, i32 31 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c"gpu_pll_bypass_sels\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 26, i32 27 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 468, i32 31 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c"vpu_pll_bypass_sels\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 27, i32 27 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 469, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c"arm_pll_bypass_sels\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 28, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 470, i32 32 }
@___asan_gen_.405 = private unnamed_addr constant [21 x i8] c"sys_pll1_bypass_sels\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 29, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 471, i32 32 }
@___asan_gen_.411 = private unnamed_addr constant [21 x i8] c"sys_pll2_bypass_sels\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 30, i32 27 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 472, i32 32 }
@___asan_gen_.417 = private unnamed_addr constant [21 x i8] c"sys_pll3_bypass_sels\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 31, i32 27 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 474, i32 31 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 475, i32 31 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 476, i32 31 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 477, i32 29 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 478, i32 28 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 479, i32 28 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 480, i32 28 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 481, i32 29 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 483, i32 32 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 484, i32 32 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 485, i32 33 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 486, i32 33 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 487, i32 33 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 488, i32 33 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 489, i32 33 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 490, i32 33 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 491, i32 29 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 493, i32 53 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 494, i32 53 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 495, i32 54 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 496, i32 54 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 497, i32 54 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 498, i32 54 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 499, i32 54 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 500, i32 54 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 501, i32 54 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 503, i32 32 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 504, i32 33 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 505, i32 33 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 506, i32 33 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 507, i32 33 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 508, i32 33 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 509, i32 33 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 510, i32 33 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 511, i32 29 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 513, i32 53 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 514, i32 54 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 515, i32 54 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 516, i32 54 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 517, i32 54 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 518, i32 54 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 519, i32 54 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 520, i32 54 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 521, i32 55 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 523, i32 28 }
@___asan_gen_.555 = private unnamed_addr constant [16 x i8] c"imx8mp_a53_sels\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 33, i32 27 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 526, i32 28 }
@___asan_gen_.561 = private unnamed_addr constant [15 x i8] c"imx8mp_m7_sels\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 39, i32 27 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 527, i32 28 }
@___asan_gen_.567 = private unnamed_addr constant [15 x i8] c"imx8mp_ml_sels\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 43, i32 27 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 528, i32 31 }
@___asan_gen_.573 = private unnamed_addr constant [23 x i8] c"imx8mp_gpu3d_core_sels\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 47, i32 27 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 529, i32 38 }
@___asan_gen_.579 = private unnamed_addr constant [25 x i8] c"imx8mp_gpu3d_shader_sels\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 51, i32 27 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 530, i32 31 }
@___asan_gen_.585 = private unnamed_addr constant [18 x i8] c"imx8mp_gpu2d_sels\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 55, i32 27 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 531, i32 30 }
@___asan_gen_.591 = private unnamed_addr constant [22 x i8] c"imx8mp_audio_axi_sels\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 59, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 533, i32 29 }
@___asan_gen_.597 = private unnamed_addr constant [21 x i8] c"imx8mp_hsio_axi_sels\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 63, i32 27 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 534, i32 30 }
@___asan_gen_.603 = private unnamed_addr constant [22 x i8] c"imx8mp_media_isp_sels\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 67, i32 27 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 537, i32 29 }
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c"imx8mp_a53_core_sels\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 37, i32 27 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 539, i32 29 }
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c"imx8mp_main_axi_sels\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 71, i32 27 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 540, i32 29 }
@___asan_gen_.621 = private unnamed_addr constant [21 x i8] c"imx8mp_enet_axi_sels\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 75, i32 27 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 541, i32 35 }
@___asan_gen_.627 = private unnamed_addr constant [23 x i8] c"imx8mp_nand_usdhc_sels\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 79, i32 27 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 542, i32 28 }
@___asan_gen_.633 = private unnamed_addr constant [20 x i8] c"imx8mp_vpu_bus_sels\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 83, i32 27 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 543, i32 30 }
@___asan_gen_.639 = private unnamed_addr constant [22 x i8] c"imx8mp_media_axi_sels\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 87, i32 27 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 544, i32 30 }
@___asan_gen_.645 = private unnamed_addr constant [22 x i8] c"imx8mp_media_apb_sels\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 91, i32 27 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 545, i32 29 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 546, i32 29 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 547, i32 28 }
@___asan_gen_.657 = private unnamed_addr constant [20 x i8] c"imx8mp_gpu_axi_sels\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 95, i32 27 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 548, i32 28 }
@___asan_gen_.663 = private unnamed_addr constant [20 x i8] c"imx8mp_gpu_ahb_sels\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 99, i32 27 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 549, i32 24 }
@___asan_gen_.669 = private unnamed_addr constant [16 x i8] c"imx8mp_noc_sels\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 103, i32 27 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 550, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant [19 x i8] c"imx8mp_noc_io_sels\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 107, i32 27 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 551, i32 27 }
@___asan_gen_.681 = private unnamed_addr constant [19 x i8] c"imx8mp_ml_axi_sels\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 111, i32 27 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 552, i32 27 }
@___asan_gen_.687 = private unnamed_addr constant [19 x i8] c"imx8mp_ml_ahb_sels\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 115, i32 27 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 554, i32 24 }
@___asan_gen_.693 = private unnamed_addr constant [16 x i8] c"imx8mp_ahb_sels\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 119, i32 27 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 555, i32 30 }
@___asan_gen_.699 = private unnamed_addr constant [22 x i8] c"imx8mp_audio_ahb_sels\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 123, i32 27 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 556, i32 36 }
@___asan_gen_.705 = private unnamed_addr constant [28 x i8] c"imx8mp_mipi_dsi_esc_rx_sels\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 127, i32 27 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 558, i32 29 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 560, i32 29 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"imx8mp_dram_alt_sels\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 131, i32 27 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 561, i32 29 }
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c"imx8mp_dram_apb_sels\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 135, i32 27 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 562, i32 27 }
@___asan_gen_.726 = private unnamed_addr constant [19 x i8] c"imx8mp_vpu_g1_sels\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 139, i32 27 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 563, i32 27 }
@___asan_gen_.732 = private unnamed_addr constant [19 x i8] c"imx8mp_vpu_g2_sels\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 143, i32 27 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 564, i32 25 }
@___asan_gen_.738 = private unnamed_addr constant [17 x i8] c"imx8mp_can1_sels\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 147, i32 27 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 565, i32 25 }
@___asan_gen_.744 = private unnamed_addr constant [17 x i8] c"imx8mp_can2_sels\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 151, i32 27 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 566, i32 29 }
@___asan_gen_.750 = private unnamed_addr constant [21 x i8] c"imx8mp_pcie_aux_sels\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 155, i32 27 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 567, i32 25 }
@___asan_gen_.756 = private unnamed_addr constant [17 x i8] c"imx8mp_i2c5_sels\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 159, i32 27 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 568, i32 25 }
@___asan_gen_.762 = private unnamed_addr constant [17 x i8] c"imx8mp_i2c6_sels\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 163, i32 27 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 569, i32 25 }
@___asan_gen_.768 = private unnamed_addr constant [17 x i8] c"imx8mp_sai1_sels\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 167, i32 27 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 570, i32 25 }
@___asan_gen_.774 = private unnamed_addr constant [17 x i8] c"imx8mp_sai2_sels\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 171, i32 27 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 571, i32 25 }
@___asan_gen_.780 = private unnamed_addr constant [17 x i8] c"imx8mp_sai3_sels\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 175, i32 27 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 572, i32 25 }
@___asan_gen_.786 = private unnamed_addr constant [17 x i8] c"imx8mp_sai4_sels\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 179, i32 27 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 573, i32 25 }
@___asan_gen_.792 = private unnamed_addr constant [17 x i8] c"imx8mp_sai5_sels\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 183, i32 27 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 574, i32 25 }
@___asan_gen_.798 = private unnamed_addr constant [17 x i8] c"imx8mp_sai6_sels\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 187, i32 27 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 575, i32 29 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c"imx8mp_enet_qos_sels\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 191, i32 27 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 576, i32 35 }
@___asan_gen_.810 = private unnamed_addr constant [27 x i8] c"imx8mp_enet_qos_timer_sels\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 195, i32 27 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 577, i32 29 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c"imx8mp_enet_ref_sels\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 199, i32 27 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 578, i32 31 }
@___asan_gen_.822 = private unnamed_addr constant [23 x i8] c"imx8mp_enet_timer_sels\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 203, i32 27 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 579, i32 33 }
@___asan_gen_.828 = private unnamed_addr constant [25 x i8] c"imx8mp_enet_phy_ref_sels\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 207, i32 27 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 580, i32 25 }
@___asan_gen_.834 = private unnamed_addr constant [17 x i8] c"imx8mp_nand_sels\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 211, i32 27 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 581, i32 25 }
@___asan_gen_.840 = private unnamed_addr constant [17 x i8] c"imx8mp_qspi_sels\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 215, i32 27 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 582, i32 27 }
@___asan_gen_.846 = private unnamed_addr constant [19 x i8] c"imx8mp_usdhc1_sels\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 219, i32 27 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 583, i32 27 }
@___asan_gen_.852 = private unnamed_addr constant [19 x i8] c"imx8mp_usdhc2_sels\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 223, i32 27 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 584, i32 25 }
@___asan_gen_.858 = private unnamed_addr constant [17 x i8] c"imx8mp_i2c1_sels\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 227, i32 27 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 585, i32 25 }
@___asan_gen_.864 = private unnamed_addr constant [17 x i8] c"imx8mp_i2c2_sels\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 231, i32 27 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 586, i32 25 }
@___asan_gen_.870 = private unnamed_addr constant [17 x i8] c"imx8mp_i2c3_sels\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 235, i32 27 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 587, i32 25 }
@___asan_gen_.876 = private unnamed_addr constant [17 x i8] c"imx8mp_i2c4_sels\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 239, i32 27 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 589, i32 26 }
@___asan_gen_.882 = private unnamed_addr constant [18 x i8] c"imx8mp_uart1_sels\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 243, i32 27 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 590, i32 26 }
@___asan_gen_.888 = private unnamed_addr constant [18 x i8] c"imx8mp_uart2_sels\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 247, i32 27 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 591, i32 26 }
@___asan_gen_.894 = private unnamed_addr constant [18 x i8] c"imx8mp_uart3_sels\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 251, i32 27 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 592, i32 26 }
@___asan_gen_.900 = private unnamed_addr constant [18 x i8] c"imx8mp_uart4_sels\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 255, i32 27 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 593, i32 33 }
@___asan_gen_.906 = private unnamed_addr constant [25 x i8] c"imx8mp_usb_core_ref_sels\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 259, i32 27 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 594, i32 32 }
@___asan_gen_.912 = private unnamed_addr constant [24 x i8] c"imx8mp_usb_phy_ref_sels\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 263, i32 27 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 595, i32 24 }
@___asan_gen_.918 = private unnamed_addr constant [16 x i8] c"imx8mp_gic_sels\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 267, i32 27 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 596, i32 27 }
@___asan_gen_.924 = private unnamed_addr constant [19 x i8] c"imx8mp_ecspi1_sels\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 271, i32 27 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 597, i32 27 }
@___asan_gen_.930 = private unnamed_addr constant [19 x i8] c"imx8mp_ecspi2_sels\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 275, i32 27 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 598, i32 25 }
@___asan_gen_.936 = private unnamed_addr constant [17 x i8] c"imx8mp_pwm1_sels\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 279, i32 27 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 599, i32 25 }
@___asan_gen_.942 = private unnamed_addr constant [17 x i8] c"imx8mp_pwm2_sels\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 283, i32 27 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 600, i32 25 }
@___asan_gen_.948 = private unnamed_addr constant [17 x i8] c"imx8mp_pwm3_sels\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 287, i32 27 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 601, i32 25 }
@___asan_gen_.954 = private unnamed_addr constant [17 x i8] c"imx8mp_pwm4_sels\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 291, i32 27 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 603, i32 25 }
@___asan_gen_.960 = private unnamed_addr constant [17 x i8] c"imx8mp_gpt1_sels\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 295, i32 27 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 604, i32 25 }
@___asan_gen_.966 = private unnamed_addr constant [17 x i8] c"imx8mp_gpt2_sels\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 299, i32 27 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 605, i32 25 }
@___asan_gen_.972 = private unnamed_addr constant [17 x i8] c"imx8mp_gpt3_sels\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 303, i32 27 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 606, i32 25 }
@___asan_gen_.978 = private unnamed_addr constant [17 x i8] c"imx8mp_gpt4_sels\00", align 1
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 307, i32 27 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 607, i32 25 }
@___asan_gen_.984 = private unnamed_addr constant [17 x i8] c"imx8mp_gpt5_sels\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 311, i32 27 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 608, i32 25 }
@___asan_gen_.990 = private unnamed_addr constant [17 x i8] c"imx8mp_gpt6_sels\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 315, i32 27 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 609, i32 25 }
@___asan_gen_.996 = private unnamed_addr constant [17 x i8] c"imx8mp_wdog_sels\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 319, i32 27 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 610, i32 26 }
@___asan_gen_.1002 = private unnamed_addr constant [18 x i8] c"imx8mp_wrclk_sels\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 323, i32 27 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 611, i32 33 }
@___asan_gen_.1008 = private unnamed_addr constant [25 x i8] c"imx8mp_ipp_do_clko1_sels\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 327, i32 27 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 612, i32 33 }
@___asan_gen_.1014 = private unnamed_addr constant [25 x i8] c"imx8mp_ipp_do_clko2_sels\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 331, i32 27 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 613, i32 34 }
@___asan_gen_.1020 = private unnamed_addr constant [26 x i8] c"imx8mp_hdmi_fdcc_tst_sels\00", align 1
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 335, i32 27 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 614, i32 29 }
@___asan_gen_.1026 = private unnamed_addr constant [21 x i8] c"imx8mp_hdmi_24m_sels\00", align 1
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 339, i32 27 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 615, i32 34 }
@___asan_gen_.1032 = private unnamed_addr constant [26 x i8] c"imx8mp_hdmi_ref_266m_sels\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 343, i32 27 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 616, i32 27 }
@___asan_gen_.1038 = private unnamed_addr constant [19 x i8] c"imx8mp_usdhc3_sels\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 347, i32 27 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 617, i32 35 }
@___asan_gen_.1044 = private unnamed_addr constant [27 x i8] c"imx8mp_media_cam1_pix_sels\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 351, i32 27 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 618, i32 40 }
@___asan_gen_.1050 = private unnamed_addr constant [32 x i8] c"imx8mp_media_mipi_phy1_ref_sels\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 356, i32 27 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 619, i32 36 }
@___asan_gen_.1056 = private unnamed_addr constant [28 x i8] c"imx8mp_media_disp1_pix_sels\00", align 1
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 361, i32 27 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 620, i32 35 }
@___asan_gen_.1062 = private unnamed_addr constant [27 x i8] c"imx8mp_media_cam2_pix_sels\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 365, i32 27 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 621, i32 30 }
@___asan_gen_.1068 = private unnamed_addr constant [22 x i8] c"imx8mp_media_ldb_sels\00", align 1
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 370, i32 27 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 622, i32 30 }
@___asan_gen_.1074 = private unnamed_addr constant [22 x i8] c"imx8mp_memrepair_sels\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 375, i32 27 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 623, i32 41 }
@___asan_gen_.1080 = private unnamed_addr constant [33 x i8] c"imx8mp_media_mipi_test_byte_sels\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 379, i32 27 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 624, i32 27 }
@___asan_gen_.1086 = private unnamed_addr constant [19 x i8] c"imx8mp_ecspi3_sels\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 384, i32 27 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 625, i32 24 }
@___asan_gen_.1092 = private unnamed_addr constant [16 x i8] c"imx8mp_pdm_sels\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 388, i32 27 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 626, i32 32 }
@___asan_gen_.1098 = private unnamed_addr constant [24 x i8] c"imx8mp_vpu_vc8000e_sels\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 392, i32 27 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 627, i32 25 }
@___asan_gen_.1104 = private unnamed_addr constant [17 x i8] c"imx8mp_sai7_sels\00", align 1
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 396, i32 27 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 629, i32 58 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 630, i32 30 }
@___asan_gen_.1113 = private unnamed_addr constant [22 x i8] c"imx8mp_dram_core_sels\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 400, i32 27 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 632, i32 31 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 633, i32 32 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 634, i32 32 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 635, i32 32 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 636, i32 31 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 637, i32 31 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 638, i32 31 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 639, i32 31 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 640, i32 31 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 641, i32 31 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 642, i32 30 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 643, i32 30 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 644, i32 30 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 645, i32 30 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 646, i32 30 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 647, i32 30 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 648, i32 30 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 649, i32 30 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 650, i32 30 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 651, i32 30 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 652, i32 28 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 653, i32 31 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 654, i32 30 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 655, i32 30 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 656, i32 30 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 657, i32 30 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 658, i32 30 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 659, i32 29 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 660, i32 34 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 661, i32 30 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 662, i32 30 }
@___asan_gen_.1209 = private unnamed_addr constant [17 x i8] c"share_count_nand\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 18, i32 12 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 663, i32 47 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 664, i32 30 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 665, i32 30 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 666, i32 30 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 667, i32 30 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 668, i32 31 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 669, i32 34 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 671, i32 31 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 672, i32 31 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 673, i32 30 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 674, i32 31 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 675, i32 31 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 676, i32 31 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 677, i32 31 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 678, i32 29 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 679, i32 33 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 680, i32 32 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 681, i32 32 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 682, i32 31 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 683, i32 31 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 684, i32 31 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 685, i32 32 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 686, i32 29 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 687, i32 35 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 688, i32 32 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 689, i32 29 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 690, i32 30 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 691, i32 35 }
@___asan_gen_.1299 = private unnamed_addr constant [18 x i8] c"share_count_media\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 19, i32 12 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 692, i32 35 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 693, i32 40 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 694, i32 40 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 695, i32 41 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 696, i32 41 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 697, i32 35 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 699, i32 32 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 700, i32 30 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 701, i32 33 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 702, i32 29 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 703, i32 31 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 705, i32 39 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 168, i32 42 }
@___asan_gen_.1344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1345 = private constant [32 x i8] c"../drivers/clk/imx/clk-imx8mp.c\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1345, i32 332, i32 8 }
@llvm.compiler.used = appending global [371 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_imx8mp_clk_driver_exit, ptr @__initcall__kmod_clk_imx8mp__183_738_imx8mp_clk_driver_init6, ptr @imx8mp_clk_driver_exit, ptr @imx8mp_clk_driver, ptr @.str, ptr @imx8mp_clk_of_match, ptr @.str.1, ptr @.str.2, ptr @clk_hw_data, ptr @hws, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @pll_ref_sels, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @audio_pll1_bypass_sels, ptr @.str.31, ptr @audio_pll2_bypass_sels, ptr @.str.32, ptr @video_pll1_bypass_sels, ptr @.str.33, ptr @dram_pll_bypass_sels, ptr @.str.34, ptr @gpu_pll_bypass_sels, ptr @.str.35, ptr @vpu_pll_bypass_sels, ptr @.str.36, ptr @arm_pll_bypass_sels, ptr @.str.37, ptr @sys_pll1_bypass_sels, ptr @.str.38, ptr @sys_pll2_bypass_sels, ptr @.str.39, ptr @sys_pll3_bypass_sels, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @imx8mp_a53_sels, ptr @.str.85, ptr @imx8mp_m7_sels, ptr @.str.86, ptr @imx8mp_ml_sels, ptr @.str.87, ptr @imx8mp_gpu3d_core_sels, ptr @.str.88, ptr @imx8mp_gpu3d_shader_sels, ptr @.str.89, ptr @imx8mp_gpu2d_sels, ptr @.str.90, ptr @imx8mp_audio_axi_sels, ptr @.str.91, ptr @imx8mp_hsio_axi_sels, ptr @.str.92, ptr @imx8mp_media_isp_sels, ptr @.str.93, ptr @imx8mp_a53_core_sels, ptr @.str.94, ptr @imx8mp_main_axi_sels, ptr @.str.95, ptr @imx8mp_enet_axi_sels, ptr @.str.96, ptr @imx8mp_nand_usdhc_sels, ptr @.str.97, ptr @imx8mp_vpu_bus_sels, ptr @.str.98, ptr @imx8mp_media_axi_sels, ptr @.str.99, ptr @imx8mp_media_apb_sels, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @imx8mp_gpu_axi_sels, ptr @.str.103, ptr @imx8mp_gpu_ahb_sels, ptr @.str.104, ptr @imx8mp_noc_sels, ptr @.str.105, ptr @imx8mp_noc_io_sels, ptr @.str.106, ptr @imx8mp_ml_axi_sels, ptr @.str.107, ptr @imx8mp_ml_ahb_sels, ptr @.str.108, ptr @imx8mp_ahb_sels, ptr @.str.109, ptr @imx8mp_audio_ahb_sels, ptr @.str.110, ptr @imx8mp_mipi_dsi_esc_rx_sels, ptr @.str.111, ptr @.str.112, ptr @imx8mp_dram_alt_sels, ptr @.str.113, ptr @imx8mp_dram_apb_sels, ptr @.str.114, ptr @imx8mp_vpu_g1_sels, ptr @.str.115, ptr @imx8mp_vpu_g2_sels, ptr @.str.116, ptr @imx8mp_can1_sels, ptr @.str.117, ptr @imx8mp_can2_sels, ptr @.str.118, ptr @imx8mp_pcie_aux_sels, ptr @.str.119, ptr @imx8mp_i2c5_sels, ptr @.str.120, ptr @imx8mp_i2c6_sels, ptr @.str.121, ptr @imx8mp_sai1_sels, ptr @.str.122, ptr @imx8mp_sai2_sels, ptr @.str.123, ptr @imx8mp_sai3_sels, ptr @.str.124, ptr @imx8mp_sai4_sels, ptr @.str.125, ptr @imx8mp_sai5_sels, ptr @.str.126, ptr @imx8mp_sai6_sels, ptr @.str.127, ptr @imx8mp_enet_qos_sels, ptr @.str.128, ptr @imx8mp_enet_qos_timer_sels, ptr @.str.129, ptr @imx8mp_enet_ref_sels, ptr @.str.130, ptr @imx8mp_enet_timer_sels, ptr @.str.131, ptr @imx8mp_enet_phy_ref_sels, ptr @.str.132, ptr @imx8mp_nand_sels, ptr @.str.133, ptr @imx8mp_qspi_sels, ptr @.str.134, ptr @imx8mp_usdhc1_sels, ptr @.str.135, ptr @imx8mp_usdhc2_sels, ptr @.str.136, ptr @imx8mp_i2c1_sels, ptr @.str.137, ptr @imx8mp_i2c2_sels, ptr @.str.138, ptr @imx8mp_i2c3_sels, ptr @.str.139, ptr @imx8mp_i2c4_sels, ptr @.str.140, ptr @imx8mp_uart1_sels, ptr @.str.141, ptr @imx8mp_uart2_sels, ptr @.str.142, ptr @imx8mp_uart3_sels, ptr @.str.143, ptr @imx8mp_uart4_sels, ptr @.str.144, ptr @imx8mp_usb_core_ref_sels, ptr @.str.145, ptr @imx8mp_usb_phy_ref_sels, ptr @.str.146, ptr @imx8mp_gic_sels, ptr @.str.147, ptr @imx8mp_ecspi1_sels, ptr @.str.148, ptr @imx8mp_ecspi2_sels, ptr @.str.149, ptr @imx8mp_pwm1_sels, ptr @.str.150, ptr @imx8mp_pwm2_sels, ptr @.str.151, ptr @imx8mp_pwm3_sels, ptr @.str.152, ptr @imx8mp_pwm4_sels, ptr @.str.153, ptr @imx8mp_gpt1_sels, ptr @.str.154, ptr @imx8mp_gpt2_sels, ptr @.str.155, ptr @imx8mp_gpt3_sels, ptr @.str.156, ptr @imx8mp_gpt4_sels, ptr @.str.157, ptr @imx8mp_gpt5_sels, ptr @.str.158, ptr @imx8mp_gpt6_sels, ptr @.str.159, ptr @imx8mp_wdog_sels, ptr @.str.160, ptr @imx8mp_wrclk_sels, ptr @.str.161, ptr @imx8mp_ipp_do_clko1_sels, ptr @.str.162, ptr @imx8mp_ipp_do_clko2_sels, ptr @.str.163, ptr @imx8mp_hdmi_fdcc_tst_sels, ptr @.str.164, ptr @imx8mp_hdmi_24m_sels, ptr @.str.165, ptr @imx8mp_hdmi_ref_266m_sels, ptr @.str.166, ptr @imx8mp_usdhc3_sels, ptr @.str.167, ptr @imx8mp_media_cam1_pix_sels, ptr @.str.168, ptr @imx8mp_media_mipi_phy1_ref_sels, ptr @.str.169, ptr @imx8mp_media_disp1_pix_sels, ptr @.str.170, ptr @imx8mp_media_cam2_pix_sels, ptr @.str.171, ptr @imx8mp_media_ldb_sels, ptr @.str.172, ptr @imx8mp_memrepair_sels, ptr @.str.173, ptr @imx8mp_media_mipi_test_byte_sels, ptr @.str.174, ptr @imx8mp_ecspi3_sels, ptr @.str.175, ptr @imx8mp_pdm_sels, ptr @.str.176, ptr @imx8mp_vpu_vc8000e_sels, ptr @.str.177, ptr @imx8mp_sai7_sels, ptr @.str.178, ptr @.str.179, ptr @imx8mp_dram_core_sels, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @share_count_nand, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @share_count_media, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254], section "llvm.metadata"
@0 = internal global [364 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_clk_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hws to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ref_sels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpu_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_pll_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_pll1_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_pll2_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_pll3_bypass_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_a53_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_m7_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ml_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpu3d_core_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpu3d_shader_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpu2d_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_audio_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_hsio_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_isp_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_a53_core_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_main_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_enet_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_nand_usdhc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_vpu_bus_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpu_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpu_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_noc_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_noc_io_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ml_axi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ml_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_audio_ahb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_mipi_dsi_esc_rx_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_dram_alt_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_dram_apb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_vpu_g1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_vpu_g2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_can1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_can2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_pcie_aux_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_i2c5_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_i2c6_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai5_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai6_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_enet_qos_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_enet_qos_timer_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_enet_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_enet_timer_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_enet_phy_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_nand_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_qspi_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_usdhc1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_usdhc2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_i2c1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_i2c2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_i2c3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_i2c4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_uart1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_uart2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_uart3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_uart4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_usb_core_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_usb_phy_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gic_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ecspi1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ecspi2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_pwm1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_pwm2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_pwm3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_pwm4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpt1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpt2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpt3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpt4_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpt5_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_gpt6_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_wdog_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_wrclk_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ipp_do_clko1_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ipp_do_clko2_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_hdmi_fdcc_tst_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_hdmi_24m_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_hdmi_ref_266m_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_usdhc3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_cam1_pix_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_mipi_phy1_ref_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_disp1_pix_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_cam2_pix_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_ldb_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_memrepair_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_media_mipi_test_byte_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_ecspi3_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_pdm_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_vpu_vc8000e_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_sai7_sels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_dram_core_sels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_nand to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @share_count_media to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mp_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8mp_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8mp_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8mp_clk_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mp_clocks_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #4
  %call2 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #4
  tail call void @of_node_put(ptr noundef %call) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !745

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 414, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end25:                                         ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end44, label %if.end61, !prof !745

do.end44:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 419, i32 noundef 9, ptr noundef null) #4
  tail call void @iounmap(ptr noundef nonnull %call2) #4
  %2 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1256) #7
  store ptr %call7.i.i, ptr @clk_hw_data, align 4
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %do.end83, label %if.end99, !prof !745

do.end83:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef null) #4
  tail call void @iounmap(ptr noundef nonnull %call2) #4
  br label %cleanup

if.end99:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 313, ptr %call7.i.i, align 8
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  store ptr %hws, ptr @hws, align 4
  %call.i = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %5 = load ptr, ptr @hws, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %5, align 4
  %call101 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %7 = load ptr, ptr @hws, align 4
  %arrayidx102 = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call101, ptr %arrayidx102, align 4
  %call103 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.5) #4
  %9 = load ptr, ptr @hws, align 4
  %arrayidx104 = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call103, ptr %arrayidx104, align 4
  %call105 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.6) #4
  %11 = load ptr, ptr @hws, align 4
  %arrayidx106 = getelementptr ptr, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call105, ptr %arrayidx106, align 4
  %call107 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.7) #4
  %13 = load ptr, ptr @hws, align 4
  %arrayidx108 = getelementptr ptr, ptr %13, i32 5
  %14 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call107, ptr %arrayidx108, align 4
  %call109 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.8) #4
  %15 = load ptr, ptr @hws, align 4
  %arrayidx110 = getelementptr ptr, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call109, ptr %arrayidx110, align 4
  %call111 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %1, ptr noundef nonnull @.str.9) #4
  %17 = load ptr, ptr @hws, align 4
  %arrayidx112 = getelementptr ptr, ptr %17, i32 7
  %18 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call111, ptr %arrayidx112, align 4
  %call.i1069 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call2, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %19 = load ptr, ptr @hws, align 4
  %arrayidx114 = getelementptr ptr, ptr %19, i32 8
  %20 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i1069, ptr %arrayidx114, align 4
  %add.ptr115 = getelementptr i8, ptr %call2, i32 20
  %call.i1070 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr115, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %21 = load ptr, ptr @hws, align 4
  %arrayidx117 = getelementptr ptr, ptr %21, i32 9
  %22 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i1070, ptr %arrayidx117, align 4
  %add.ptr118 = getelementptr i8, ptr %call2, i32 40
  %call.i1071 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr118, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %23 = load ptr, ptr @hws, align 4
  %arrayidx120 = getelementptr ptr, ptr %23, i32 10
  %24 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i1071, ptr %arrayidx120, align 4
  %add.ptr121 = getelementptr i8, ptr %call2, i32 80
  %call.i1072 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr121, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %25 = load ptr, ptr @hws, align 4
  %arrayidx123 = getelementptr ptr, ptr %25, i32 11
  %26 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i1072, ptr %arrayidx123, align 4
  %add.ptr124 = getelementptr i8, ptr %call2, i32 100
  %call.i1073 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr124, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %27 = load ptr, ptr @hws, align 4
  %arrayidx126 = getelementptr ptr, ptr %27, i32 12
  %28 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i1073, ptr %arrayidx126, align 4
  %add.ptr127 = getelementptr i8, ptr %call2, i32 116
  %call.i1074 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr127, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %29 = load ptr, ptr @hws, align 4
  %arrayidx129 = getelementptr ptr, ptr %29, i32 13
  %30 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i1074, ptr %arrayidx129, align 4
  %add.ptr130 = getelementptr i8, ptr %call2, i32 132
  %call.i1075 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr130, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %31 = load ptr, ptr @hws, align 4
  %arrayidx132 = getelementptr ptr, ptr %31, i32 14
  %32 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i1075, ptr %arrayidx132, align 4
  %add.ptr133 = getelementptr i8, ptr %call2, i32 148
  %call.i1076 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr133, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %33 = load ptr, ptr @hws, align 4
  %arrayidx135 = getelementptr ptr, ptr %33, i32 15
  %34 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i1076, ptr %arrayidx135, align 4
  %add.ptr136 = getelementptr i8, ptr %call2, i32 260
  %call.i1077 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr136, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %35 = load ptr, ptr @hws, align 4
  %arrayidx138 = getelementptr ptr, ptr %35, i32 16
  %36 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i1077, ptr %arrayidx138, align 4
  %add.ptr139 = getelementptr i8, ptr %call2, i32 276
  %call.i1078 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, i8 noundef zeroext 4, ptr noundef nonnull @pll_ref_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %add.ptr139, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %37 = load ptr, ptr @hws, align 4
  %arrayidx141 = getelementptr ptr, ptr %37, i32 17
  %38 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i1078, ptr %arrayidx141, align 4
  %call142 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10, ptr noundef nonnull %call2, ptr noundef nonnull @imx_1443x_pll) #4
  %39 = load ptr, ptr @hws, align 4
  %arrayidx143 = getelementptr ptr, ptr %39, i32 18
  %40 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call142, ptr %arrayidx143, align 4
  %call145 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11, ptr noundef %add.ptr115, ptr noundef nonnull @imx_1443x_pll) #4
  %41 = load ptr, ptr @hws, align 4
  %arrayidx146 = getelementptr ptr, ptr %41, i32 19
  %42 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call145, ptr %arrayidx146, align 4
  %call148 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.12, ptr noundef %add.ptr118, ptr noundef nonnull @imx_1443x_pll) #4
  %43 = load ptr, ptr @hws, align 4
  %arrayidx149 = getelementptr ptr, ptr %43, i32 20
  %44 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call148, ptr %arrayidx149, align 4
  %call151 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.13, ptr noundef %add.ptr121, ptr noundef nonnull @imx_1443x_dram_pll) #4
  %45 = load ptr, ptr @hws, align 4
  %arrayidx152 = getelementptr ptr, ptr %45, i32 21
  %46 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call151, ptr %arrayidx152, align 4
  %call154 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.14, ptr noundef %add.ptr124, ptr noundef nonnull @imx_1416x_pll) #4
  %47 = load ptr, ptr @hws, align 4
  %arrayidx155 = getelementptr ptr, ptr %47, i32 22
  %48 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call154, ptr %arrayidx155, align 4
  %call157 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.15, ptr noundef %add.ptr127, ptr noundef nonnull @imx_1416x_pll) #4
  %49 = load ptr, ptr @hws, align 4
  %arrayidx158 = getelementptr ptr, ptr %49, i32 23
  %50 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call157, ptr %arrayidx158, align 4
  %call160 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.16, ptr noundef %add.ptr130, ptr noundef nonnull @imx_1416x_pll) #4
  %51 = load ptr, ptr @hws, align 4
  %arrayidx161 = getelementptr ptr, ptr %51, i32 24
  %52 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call160, ptr %arrayidx161, align 4
  %call163 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17, ptr noundef %add.ptr133, ptr noundef nonnull @imx_1416x_pll) #4
  %53 = load ptr, ptr @hws, align 4
  %arrayidx164 = getelementptr ptr, ptr %53, i32 25
  %54 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call163, ptr %arrayidx164, align 4
  %call166 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18, ptr noundef %add.ptr136, ptr noundef nonnull @imx_1416x_pll) #4
  %55 = load ptr, ptr @hws, align 4
  %arrayidx167 = getelementptr ptr, ptr %55, i32 26
  %56 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call166, ptr %arrayidx167, align 4
  %call169 = tail call ptr @imx_dev_clk_hw_pll14xx(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, ptr noundef %add.ptr139, ptr noundef nonnull @imx_1416x_pll) #4
  %57 = load ptr, ptr @hws, align 4
  %arrayidx170 = getelementptr ptr, ptr %57, i32 27
  %58 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call169, ptr %arrayidx170, align 4
  %call.i1079 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, i8 noundef zeroext 2, ptr noundef nonnull @audio_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef nonnull %call2, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %59 = load ptr, ptr @hws, align 4
  %arrayidx172 = getelementptr ptr, ptr %59, i32 28
  %60 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i1079, ptr %arrayidx172, align 4
  %call.i1080 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 2, ptr noundef nonnull @audio_pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr115, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %61 = load ptr, ptr @hws, align 4
  %arrayidx175 = getelementptr ptr, ptr %61, i32 29
  %62 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i1080, ptr %arrayidx175, align 4
  %call.i1081 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, i8 noundef zeroext 2, ptr noundef nonnull @video_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr118, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %63 = load ptr, ptr @hws, align 4
  %arrayidx178 = getelementptr ptr, ptr %63, i32 30
  %64 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i1081, ptr %arrayidx178, align 4
  %call.i1082 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, i8 noundef zeroext 2, ptr noundef nonnull @dram_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr121, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %65 = load ptr, ptr @hws, align 4
  %arrayidx181 = getelementptr ptr, ptr %65, i32 31
  %66 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i1082, ptr %arrayidx181, align 4
  %call.i1083 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, i8 noundef zeroext 2, ptr noundef nonnull @gpu_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr124, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %67 = load ptr, ptr @hws, align 4
  %arrayidx184 = getelementptr ptr, ptr %67, i32 32
  %68 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i1083, ptr %arrayidx184, align 4
  %call.i1084 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, i8 noundef zeroext 2, ptr noundef nonnull @vpu_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr127, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %69 = load ptr, ptr @hws, align 4
  %arrayidx187 = getelementptr ptr, ptr %69, i32 33
  %70 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i1084, ptr %arrayidx187, align 4
  %call.i1085 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, i8 noundef zeroext 2, ptr noundef nonnull @arm_pll_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr130, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %71 = load ptr, ptr @hws, align 4
  %arrayidx190 = getelementptr ptr, ptr %71, i32 34
  %72 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i1085, ptr %arrayidx190, align 4
  %call.i1086 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, i8 noundef zeroext 2, ptr noundef nonnull @sys_pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr133, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %73 = load ptr, ptr @hws, align 4
  %arrayidx193 = getelementptr ptr, ptr %73, i32 35
  %74 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i1086, ptr %arrayidx193, align 4
  %call.i1087 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, i8 noundef zeroext 2, ptr noundef nonnull @sys_pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr136, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %75 = load ptr, ptr @hws, align 4
  %arrayidx196 = getelementptr ptr, ptr %75, i32 36
  %76 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i1087, ptr %arrayidx196, align 4
  %call.i1088 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, i8 noundef zeroext 2, ptr noundef nonnull @sys_pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %add.ptr139, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %77 = load ptr, ptr @hws, align 4
  %arrayidx199 = getelementptr ptr, ptr %77, i32 37
  %78 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i1088, ptr %arrayidx199, align 4
  %call.i1089 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef nonnull %call2, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %79 = load ptr, ptr @hws, align 4
  %arrayidx201 = getelementptr ptr, ptr %79, i32 38
  %80 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i1089, ptr %arrayidx201, align 4
  %call.i1090 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr115, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %81 = load ptr, ptr @hws, align 4
  %arrayidx204 = getelementptr ptr, ptr %81, i32 39
  %82 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i1090, ptr %arrayidx204, align 4
  %call.i1091 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr118, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %83 = load ptr, ptr @hws, align 4
  %arrayidx207 = getelementptr ptr, ptr %83, i32 40
  %84 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i1091, ptr %arrayidx207, align 4
  %call.i1092 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr121, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %85 = load ptr, ptr @hws, align 4
  %arrayidx210 = getelementptr ptr, ptr %85, i32 41
  %86 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i1092, ptr %arrayidx210, align 4
  %call.i1093 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr124, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %87 = load ptr, ptr @hws, align 4
  %arrayidx213 = getelementptr ptr, ptr %87, i32 42
  %88 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i1093, ptr %arrayidx213, align 4
  %call.i1094 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr127, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %89 = load ptr, ptr @hws, align 4
  %arrayidx216 = getelementptr ptr, ptr %89, i32 43
  %90 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i1094, ptr %arrayidx216, align 4
  %call.i1095 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr130, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %91 = load ptr, ptr @hws, align 4
  %arrayidx219 = getelementptr ptr, ptr %91, i32 44
  %92 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i1095, ptr %arrayidx219, align 4
  %call.i1096 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr139, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %93 = load ptr, ptr @hws, align 4
  %arrayidx222 = getelementptr ptr, ptr %93, i32 47
  %94 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i1096, ptr %arrayidx222, align 4
  %call.i1097 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %95 = load ptr, ptr @hws, align 4
  %arrayidx225 = getelementptr ptr, ptr %95, i32 289
  %96 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i1097, ptr %arrayidx225, align 4
  %call.i1098 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %97 = load ptr, ptr @hws, align 4
  %arrayidx228 = getelementptr ptr, ptr %97, i32 290
  %98 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i1098, ptr %arrayidx228, align 4
  %call.i1099 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %99 = load ptr, ptr @hws, align 4
  %arrayidx231 = getelementptr ptr, ptr %99, i32 291
  %100 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i1099, ptr %arrayidx231, align 4
  %call.i1100 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %101 = load ptr, ptr @hws, align 4
  %arrayidx234 = getelementptr ptr, ptr %101, i32 292
  %102 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i1100, ptr %arrayidx234, align 4
  %call.i1101 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %103 = load ptr, ptr @hws, align 4
  %arrayidx237 = getelementptr ptr, ptr %103, i32 293
  %104 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i1101, ptr %arrayidx237, align 4
  %call.i1102 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %105 = load ptr, ptr @hws, align 4
  %arrayidx240 = getelementptr ptr, ptr %105, i32 294
  %106 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i1102, ptr %arrayidx240, align 4
  %call.i1103 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %107 = load ptr, ptr @hws, align 4
  %arrayidx243 = getelementptr ptr, ptr %107, i32 295
  %108 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i1103, ptr %arrayidx243, align 4
  %call.i1104 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %109 = load ptr, ptr @hws, align 4
  %arrayidx246 = getelementptr ptr, ptr %109, i32 296
  %110 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i1104, ptr %arrayidx246, align 4
  %call.i1105 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr133, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %111 = load ptr, ptr @hws, align 4
  %arrayidx249 = getelementptr ptr, ptr %111, i32 45
  %112 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i1105, ptr %arrayidx249, align 4
  %call.i1106 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 1, i32 noundef 20) #4
  %113 = load ptr, ptr @hws, align 4
  %arrayidx251 = getelementptr ptr, ptr %113, i32 48
  %114 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i1106, ptr %arrayidx251, align 4
  %call.i1107 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.49, i32 noundef 4, i32 noundef 1, i32 noundef 10) #4
  %115 = load ptr, ptr @hws, align 4
  %arrayidx253 = getelementptr ptr, ptr %115, i32 49
  %116 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i1107, ptr %arrayidx253, align 4
  %call.i1108 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %117 = load ptr, ptr @hws, align 4
  %arrayidx255 = getelementptr ptr, ptr %117, i32 50
  %118 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i1108, ptr %arrayidx255, align 4
  %call.i1109 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.51, i32 noundef 4, i32 noundef 1, i32 noundef 6) #4
  %119 = load ptr, ptr @hws, align 4
  %arrayidx257 = getelementptr ptr, ptr %119, i32 51
  %120 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i1109, ptr %arrayidx257, align 4
  %call.i1110 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.52, i32 noundef 4, i32 noundef 1, i32 noundef 5) #4
  %121 = load ptr, ptr @hws, align 4
  %arrayidx259 = getelementptr ptr, ptr %121, i32 52
  %122 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i1110, ptr %arrayidx259, align 4
  %call.i1111 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.53, i32 noundef 4, i32 noundef 1, i32 noundef 4) #4
  %123 = load ptr, ptr @hws, align 4
  %arrayidx261 = getelementptr ptr, ptr %123, i32 53
  %124 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i1111, ptr %arrayidx261, align 4
  %call.i1112 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54, i32 noundef 4, i32 noundef 1, i32 noundef 3) #4
  %125 = load ptr, ptr @hws, align 4
  %arrayidx263 = getelementptr ptr, ptr %125, i32 54
  %126 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i1112, ptr %arrayidx263, align 4
  %call.i1113 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %127 = load ptr, ptr @hws, align 4
  %arrayidx265 = getelementptr ptr, ptr %127, i32 55
  %128 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call.i1113, ptr %arrayidx265, align 4
  %call.i1114 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.56, i32 noundef 4, i32 noundef 1, i32 noundef 1) #4
  %129 = load ptr, ptr @hws, align 4
  %arrayidx267 = getelementptr ptr, ptr %129, i32 56
  %130 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i1114, ptr %arrayidx267, align 4
  %call.i1115 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %131 = load ptr, ptr @hws, align 4
  %arrayidx270 = getelementptr ptr, ptr %131, i32 297
  %132 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call.i1115, ptr %arrayidx270, align 4
  %call.i1116 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %133 = load ptr, ptr @hws, align 4
  %arrayidx273 = getelementptr ptr, ptr %133, i32 298
  %134 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i1116, ptr %arrayidx273, align 4
  %call.i1117 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %135 = load ptr, ptr @hws, align 4
  %arrayidx276 = getelementptr ptr, ptr %135, i32 299
  %136 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i1117, ptr %arrayidx276, align 4
  %call.i1118 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %137 = load ptr, ptr @hws, align 4
  %arrayidx279 = getelementptr ptr, ptr %137, i32 300
  %138 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i1118, ptr %arrayidx279, align 4
  %call.i1119 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %139 = load ptr, ptr @hws, align 4
  %arrayidx282 = getelementptr ptr, ptr %139, i32 301
  %140 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i1119, ptr %arrayidx282, align 4
  %call.i1120 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %141 = load ptr, ptr @hws, align 4
  %arrayidx285 = getelementptr ptr, ptr %141, i32 302
  %142 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call.i1120, ptr %arrayidx285, align 4
  %call.i1121 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %143 = load ptr, ptr @hws, align 4
  %arrayidx288 = getelementptr ptr, ptr %143, i32 303
  %144 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call.i1121, ptr %arrayidx288, align 4
  %call.i1122 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %145 = load ptr, ptr @hws, align 4
  %arrayidx291 = getelementptr ptr, ptr %145, i32 304
  %146 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call.i1122, ptr %arrayidx291, align 4
  %call.i1123 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr136, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %147 = load ptr, ptr @hws, align 4
  %arrayidx294 = getelementptr ptr, ptr %147, i32 46
  %148 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i1123, ptr %arrayidx294, align 4
  %call.i1124 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.66, i32 noundef 4, i32 noundef 1, i32 noundef 20) #4
  %149 = load ptr, ptr @hws, align 4
  %arrayidx296 = getelementptr ptr, ptr %149, i32 57
  %150 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i1124, ptr %arrayidx296, align 4
  %call.i1125 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 10) #4
  %151 = load ptr, ptr @hws, align 4
  %arrayidx298 = getelementptr ptr, ptr %151, i32 58
  %152 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call.i1125, ptr %arrayidx298, align 4
  %call.i1126 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.68, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %153 = load ptr, ptr @hws, align 4
  %arrayidx300 = getelementptr ptr, ptr %153, i32 59
  %154 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call.i1126, ptr %arrayidx300, align 4
  %call.i1127 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 1, i32 noundef 6) #4
  %155 = load ptr, ptr @hws, align 4
  %arrayidx302 = getelementptr ptr, ptr %155, i32 60
  %156 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i1127, ptr %arrayidx302, align 4
  %call.i1128 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.70, i32 noundef 4, i32 noundef 1, i32 noundef 5) #4
  %157 = load ptr, ptr @hws, align 4
  %arrayidx304 = getelementptr ptr, ptr %157, i32 61
  %158 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i1128, ptr %arrayidx304, align 4
  %call.i1129 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.71, i32 noundef 4, i32 noundef 1, i32 noundef 4) #4
  %159 = load ptr, ptr @hws, align 4
  %arrayidx306 = getelementptr ptr, ptr %159, i32 62
  %160 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i1129, ptr %arrayidx306, align 4
  %call.i1130 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.72, i32 noundef 4, i32 noundef 1, i32 noundef 3) #4
  %161 = load ptr, ptr @hws, align 4
  %arrayidx308 = getelementptr ptr, ptr %161, i32 63
  %162 = ptrtoint ptr %arrayidx308 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i1130, ptr %arrayidx308, align 4
  %call.i1131 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.73, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %163 = load ptr, ptr @hws, align 4
  %arrayidx310 = getelementptr ptr, ptr %163, i32 64
  %164 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i1131, ptr %arrayidx310, align 4
  %call.i1132 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.74, i32 noundef 4, i32 noundef 1, i32 noundef 1) #4
  %165 = load ptr, ptr @hws, align 4
  %arrayidx312 = getelementptr ptr, ptr %165, i32 65
  %166 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i1132, ptr %arrayidx312, align 4
  %add.ptr313 = getelementptr i8, ptr %call26, i32 32768
  %call314 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.84, ptr noundef nonnull @imx8mp_a53_sels, i32 noundef 8, ptr noundef %add.ptr313, i32 noundef 1, i32 noundef 4224) #4
  %167 = load ptr, ptr @hws, align 4
  %arrayidx315 = getelementptr ptr, ptr %167, i32 84
  %168 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call314, ptr %arrayidx315, align 4
  %arrayidx317 = getelementptr ptr, ptr %167, i32 66
  %169 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call314, ptr %arrayidx317, align 4
  %arrayidx319 = getelementptr ptr, ptr %167, i32 75
  %170 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call314, ptr %arrayidx319, align 4
  %add.ptr320 = getelementptr i8, ptr %call26, i32 32896
  %call321 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.85, ptr noundef nonnull @imx8mp_m7_sels, i32 noundef 8, ptr noundef %add.ptr320, i32 noundef 1, i32 noundef 4224) #4
  %171 = load ptr, ptr @hws, align 4
  %arrayidx322 = getelementptr ptr, ptr %171, i32 305
  %172 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call321, ptr %arrayidx322, align 4
  %add.ptr323 = getelementptr i8, ptr %call26, i32 33024
  %call324 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.86, ptr noundef nonnull @imx8mp_ml_sels, i32 noundef 8, ptr noundef %add.ptr323, i32 noundef 1, i32 noundef 4224) #4
  %173 = load ptr, ptr @hws, align 4
  %arrayidx325 = getelementptr ptr, ptr %173, i32 306
  %174 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call324, ptr %arrayidx325, align 4
  %add.ptr326 = getelementptr i8, ptr %call26, i32 33152
  %call327 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.87, ptr noundef nonnull @imx8mp_gpu3d_core_sels, i32 noundef 8, ptr noundef %add.ptr326, i32 noundef 1, i32 noundef 4224) #4
  %175 = load ptr, ptr @hws, align 4
  %arrayidx328 = getelementptr ptr, ptr %175, i32 307
  %176 = ptrtoint ptr %arrayidx328 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call327, ptr %arrayidx328, align 4
  %add.ptr329 = getelementptr i8, ptr %call26, i32 33280
  %call330 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.88, ptr noundef nonnull @imx8mp_gpu3d_shader_sels, i32 noundef 8, ptr noundef %add.ptr329, i32 noundef 0, i32 noundef 4224) #4
  %177 = load ptr, ptr @hws, align 4
  %arrayidx331 = getelementptr ptr, ptr %177, i32 308
  %178 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call330, ptr %arrayidx331, align 4
  %add.ptr332 = getelementptr i8, ptr %call26, i32 33408
  %call333 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.89, ptr noundef nonnull @imx8mp_gpu2d_sels, i32 noundef 8, ptr noundef %add.ptr332, i32 noundef 0, i32 noundef 4224) #4
  %179 = load ptr, ptr @hws, align 4
  %arrayidx334 = getelementptr ptr, ptr %179, i32 309
  %180 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call333, ptr %arrayidx334, align 4
  %add.ptr335 = getelementptr i8, ptr %call26, i32 33536
  %call336 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.90, ptr noundef nonnull @imx8mp_audio_axi_sels, i32 noundef 8, ptr noundef %add.ptr335, i32 noundef 0, i32 noundef 4224) #4
  %181 = load ptr, ptr @hws, align 4
  %arrayidx337 = getelementptr ptr, ptr %181, i32 310
  %182 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call336, ptr %arrayidx337, align 4
  %arrayidx339 = getelementptr ptr, ptr %181, i32 72
  %183 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call336, ptr %arrayidx339, align 4
  %add.ptr340 = getelementptr i8, ptr %call26, i32 33664
  %call341 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.91, ptr noundef nonnull @imx8mp_hsio_axi_sels, i32 noundef 8, ptr noundef %add.ptr340, i32 noundef 0, i32 noundef 4224) #4
  %184 = load ptr, ptr @hws, align 4
  %arrayidx342 = getelementptr ptr, ptr %184, i32 311
  %185 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call341, ptr %arrayidx342, align 4
  %add.ptr343 = getelementptr i8, ptr %call26, i32 33792
  %call344 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.92, ptr noundef nonnull @imx8mp_media_isp_sels, i32 noundef 8, ptr noundef %add.ptr343, i32 noundef 0, i32 noundef 4224) #4
  %186 = load ptr, ptr @hws, align 4
  %arrayidx345 = getelementptr ptr, ptr %186, i32 312
  %187 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %call344, ptr %arrayidx345, align 4
  %add.ptr346 = getelementptr i8, ptr %call26, i32 39040
  %call.i1133 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 2, ptr noundef nonnull @imx8mp_a53_core_sels, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %add.ptr346, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %188 = load ptr, ptr @hws, align 4
  %arrayidx348 = getelementptr ptr, ptr %188, i32 288
  %189 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call.i1133, ptr %arrayidx348, align 4
  %add.ptr349 = getelementptr i8, ptr %call26, i32 34816
  %call350 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.94, ptr noundef nonnull @imx8mp_main_axi_sels, i32 noundef 8, ptr noundef %add.ptr349, i32 noundef 2, i32 noundef 6272) #4
  %190 = load ptr, ptr @hws, align 4
  %arrayidx351 = getelementptr ptr, ptr %190, i32 93
  %191 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call350, ptr %arrayidx351, align 4
  %add.ptr352 = getelementptr i8, ptr %call26, i32 34944
  %call353 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.95, ptr noundef nonnull @imx8mp_enet_axi_sels, i32 noundef 8, ptr noundef %add.ptr352, i32 noundef 2, i32 noundef 4224) #4
  %192 = load ptr, ptr @hws, align 4
  %arrayidx354 = getelementptr ptr, ptr %192, i32 94
  %193 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call353, ptr %arrayidx354, align 4
  %add.ptr355 = getelementptr i8, ptr %call26, i32 35072
  %call356 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.96, ptr noundef nonnull @imx8mp_nand_usdhc_sels, i32 noundef 8, ptr noundef %add.ptr355, i32 noundef 2, i32 noundef 6272) #4
  %194 = load ptr, ptr @hws, align 4
  %arrayidx357 = getelementptr ptr, ptr %194, i32 95
  %195 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call356, ptr %arrayidx357, align 4
  %add.ptr358 = getelementptr i8, ptr %call26, i32 35200
  %call359 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.97, ptr noundef nonnull @imx8mp_vpu_bus_sels, i32 noundef 8, ptr noundef %add.ptr358, i32 noundef 2, i32 noundef 4224) #4
  %196 = load ptr, ptr @hws, align 4
  %arrayidx360 = getelementptr ptr, ptr %196, i32 96
  %197 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call359, ptr %arrayidx360, align 4
  %add.ptr361 = getelementptr i8, ptr %call26, i32 35328
  %call362 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.98, ptr noundef nonnull @imx8mp_media_axi_sels, i32 noundef 8, ptr noundef %add.ptr361, i32 noundef 2, i32 noundef 4224) #4
  %198 = load ptr, ptr @hws, align 4
  %arrayidx363 = getelementptr ptr, ptr %198, i32 97
  %199 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call362, ptr %arrayidx363, align 4
  %add.ptr364 = getelementptr i8, ptr %call26, i32 35456
  %call365 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.99, ptr noundef nonnull @imx8mp_media_apb_sels, i32 noundef 8, ptr noundef %add.ptr364, i32 noundef 2, i32 noundef 4224) #4
  %200 = load ptr, ptr @hws, align 4
  %arrayidx366 = getelementptr ptr, ptr %200, i32 98
  %201 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call365, ptr %arrayidx366, align 4
  %add.ptr367 = getelementptr i8, ptr %call26, i32 35584
  %call368 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.100, ptr noundef nonnull @imx8mp_media_apb_sels, i32 noundef 8, ptr noundef %add.ptr367, i32 noundef 2, i32 noundef 4224) #4
  %202 = load ptr, ptr @hws, align 4
  %arrayidx369 = getelementptr ptr, ptr %202, i32 99
  %203 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call368, ptr %arrayidx369, align 4
  %add.ptr370 = getelementptr i8, ptr %call26, i32 35712
  %call371 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.101, ptr noundef nonnull @imx8mp_media_axi_sels, i32 noundef 8, ptr noundef %add.ptr370, i32 noundef 2, i32 noundef 4224) #4
  %204 = load ptr, ptr @hws, align 4
  %arrayidx372 = getelementptr ptr, ptr %204, i32 100
  %205 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call371, ptr %arrayidx372, align 4
  %add.ptr373 = getelementptr i8, ptr %call26, i32 35840
  %call374 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.102, ptr noundef nonnull @imx8mp_gpu_axi_sels, i32 noundef 8, ptr noundef %add.ptr373, i32 noundef 2, i32 noundef 4224) #4
  %206 = load ptr, ptr @hws, align 4
  %arrayidx375 = getelementptr ptr, ptr %206, i32 101
  %207 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call374, ptr %arrayidx375, align 4
  %add.ptr376 = getelementptr i8, ptr %call26, i32 35968
  %call377 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.103, ptr noundef nonnull @imx8mp_gpu_ahb_sels, i32 noundef 8, ptr noundef %add.ptr376, i32 noundef 2, i32 noundef 4224) #4
  %208 = load ptr, ptr @hws, align 4
  %arrayidx378 = getelementptr ptr, ptr %208, i32 102
  %209 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call377, ptr %arrayidx378, align 4
  %add.ptr379 = getelementptr i8, ptr %call26, i32 36096
  %call380 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.104, ptr noundef nonnull @imx8mp_noc_sels, i32 noundef 8, ptr noundef %add.ptr379, i32 noundef 2, i32 noundef 6272) #4
  %210 = load ptr, ptr @hws, align 4
  %arrayidx381 = getelementptr ptr, ptr %210, i32 103
  %211 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call380, ptr %arrayidx381, align 4
  %add.ptr382 = getelementptr i8, ptr %call26, i32 36224
  %call383 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.105, ptr noundef nonnull @imx8mp_noc_io_sels, i32 noundef 8, ptr noundef %add.ptr382, i32 noundef 2, i32 noundef 6272) #4
  %212 = load ptr, ptr @hws, align 4
  %arrayidx384 = getelementptr ptr, ptr %212, i32 104
  %213 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call383, ptr %arrayidx384, align 4
  %add.ptr385 = getelementptr i8, ptr %call26, i32 36352
  %call386 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.106, ptr noundef nonnull @imx8mp_ml_axi_sels, i32 noundef 8, ptr noundef %add.ptr385, i32 noundef 2, i32 noundef 4224) #4
  %214 = load ptr, ptr @hws, align 4
  %arrayidx387 = getelementptr ptr, ptr %214, i32 105
  %215 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call386, ptr %arrayidx387, align 4
  %add.ptr388 = getelementptr i8, ptr %call26, i32 36480
  %call389 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.107, ptr noundef nonnull @imx8mp_ml_ahb_sels, i32 noundef 8, ptr noundef %add.ptr388, i32 noundef 2, i32 noundef 4224) #4
  %216 = load ptr, ptr @hws, align 4
  %arrayidx390 = getelementptr ptr, ptr %216, i32 106
  %217 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call389, ptr %arrayidx390, align 4
  %add.ptr391 = getelementptr i8, ptr %call26, i32 36864
  %call392 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.108, ptr noundef nonnull @imx8mp_ahb_sels, i32 noundef 8, ptr noundef %add.ptr391, i32 noundef 2, i32 noundef 6272) #4
  %218 = load ptr, ptr @hws, align 4
  %arrayidx393 = getelementptr ptr, ptr %218, i32 107
  %219 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call392, ptr %arrayidx393, align 4
  %add.ptr394 = getelementptr i8, ptr %call26, i32 37120
  %call395 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.109, ptr noundef nonnull @imx8mp_audio_ahb_sels, i32 noundef 8, ptr noundef %add.ptr394, i32 noundef 2, i32 noundef 4224) #4
  %220 = load ptr, ptr @hws, align 4
  %arrayidx396 = getelementptr ptr, ptr %220, i32 108
  %221 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call395, ptr %arrayidx396, align 4
  %add.ptr397 = getelementptr i8, ptr %call26, i32 37376
  %call398 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.110, ptr noundef nonnull @imx8mp_mipi_dsi_esc_rx_sels, i32 noundef 8, ptr noundef %add.ptr397, i32 noundef 2, i32 noundef 4224) #4
  %222 = load ptr, ptr @hws, align 4
  %arrayidx399 = getelementptr ptr, ptr %222, i32 109
  %223 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call398, ptr %arrayidx399, align 4
  %add.ptr400 = getelementptr i8, ptr %call26, i32 36992
  %call.i1134 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %add.ptr400, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %224 = load ptr, ptr @hws, align 4
  %arrayidx402 = getelementptr ptr, ptr %224, i32 110
  %225 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i1134, ptr %arrayidx402, align 4
  %add.ptr403 = getelementptr i8, ptr %call26, i32 40960
  %call404 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.112, ptr noundef nonnull @imx8mp_dram_alt_sels, i32 noundef 8, ptr noundef %add.ptr403, i32 noundef 0, i32 noundef 4224) #4
  %226 = load ptr, ptr @hws, align 4
  %arrayidx405 = getelementptr ptr, ptr %226, i32 112
  %227 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call404, ptr %arrayidx405, align 4
  %add.ptr406 = getelementptr i8, ptr %call26, i32 41088
  %call407 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.113, ptr noundef nonnull @imx8mp_dram_apb_sels, i32 noundef 8, ptr noundef %add.ptr406, i32 noundef 0, i32 noundef 6272) #4
  %228 = load ptr, ptr @hws, align 4
  %arrayidx408 = getelementptr ptr, ptr %228, i32 113
  %229 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call407, ptr %arrayidx408, align 4
  %add.ptr409 = getelementptr i8, ptr %call26, i32 41216
  %call410 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.114, ptr noundef nonnull @imx8mp_vpu_g1_sels, i32 noundef 8, ptr noundef %add.ptr409, i32 noundef 0, i32 noundef 4224) #4
  %230 = load ptr, ptr @hws, align 4
  %arrayidx411 = getelementptr ptr, ptr %230, i32 114
  %231 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call410, ptr %arrayidx411, align 4
  %add.ptr412 = getelementptr i8, ptr %call26, i32 41344
  %call413 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.115, ptr noundef nonnull @imx8mp_vpu_g2_sels, i32 noundef 8, ptr noundef %add.ptr412, i32 noundef 0, i32 noundef 4224) #4
  %232 = load ptr, ptr @hws, align 4
  %arrayidx414 = getelementptr ptr, ptr %232, i32 115
  %233 = ptrtoint ptr %arrayidx414 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %call413, ptr %arrayidx414, align 4
  %add.ptr415 = getelementptr i8, ptr %call26, i32 41472
  %call416 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.116, ptr noundef nonnull @imx8mp_can1_sels, i32 noundef 8, ptr noundef %add.ptr415, i32 noundef 0, i32 noundef 4224) #4
  %234 = load ptr, ptr @hws, align 4
  %arrayidx417 = getelementptr ptr, ptr %234, i32 116
  %235 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call416, ptr %arrayidx417, align 4
  %add.ptr418 = getelementptr i8, ptr %call26, i32 41600
  %call419 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.117, ptr noundef nonnull @imx8mp_can2_sels, i32 noundef 8, ptr noundef %add.ptr418, i32 noundef 0, i32 noundef 4224) #4
  %236 = load ptr, ptr @hws, align 4
  %arrayidx420 = getelementptr ptr, ptr %236, i32 117
  %237 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call419, ptr %arrayidx420, align 4
  %add.ptr421 = getelementptr i8, ptr %call26, i32 41984
  %call422 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.118, ptr noundef nonnull @imx8mp_pcie_aux_sels, i32 noundef 8, ptr noundef %add.ptr421, i32 noundef 0, i32 noundef 4224) #4
  %238 = load ptr, ptr @hws, align 4
  %arrayidx423 = getelementptr ptr, ptr %238, i32 120
  %239 = ptrtoint ptr %arrayidx423 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call422, ptr %arrayidx423, align 4
  %add.ptr424 = getelementptr i8, ptr %call26, i32 42112
  %call425 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.119, ptr noundef nonnull @imx8mp_i2c5_sels, i32 noundef 8, ptr noundef %add.ptr424, i32 noundef 0, i32 noundef 4224) #4
  %240 = load ptr, ptr @hws, align 4
  %arrayidx426 = getelementptr ptr, ptr %240, i32 121
  %241 = ptrtoint ptr %arrayidx426 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %call425, ptr %arrayidx426, align 4
  %add.ptr427 = getelementptr i8, ptr %call26, i32 42240
  %call428 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.120, ptr noundef nonnull @imx8mp_i2c6_sels, i32 noundef 8, ptr noundef %add.ptr427, i32 noundef 0, i32 noundef 4224) #4
  %242 = load ptr, ptr @hws, align 4
  %arrayidx429 = getelementptr ptr, ptr %242, i32 122
  %243 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call428, ptr %arrayidx429, align 4
  %add.ptr430 = getelementptr i8, ptr %call26, i32 42368
  %call431 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.121, ptr noundef nonnull @imx8mp_sai1_sels, i32 noundef 8, ptr noundef %add.ptr430, i32 noundef 0, i32 noundef 4224) #4
  %244 = load ptr, ptr @hws, align 4
  %arrayidx432 = getelementptr ptr, ptr %244, i32 123
  %245 = ptrtoint ptr %arrayidx432 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call431, ptr %arrayidx432, align 4
  %add.ptr433 = getelementptr i8, ptr %call26, i32 42496
  %call434 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.122, ptr noundef nonnull @imx8mp_sai2_sels, i32 noundef 8, ptr noundef %add.ptr433, i32 noundef 0, i32 noundef 4224) #4
  %246 = load ptr, ptr @hws, align 4
  %arrayidx435 = getelementptr ptr, ptr %246, i32 124
  %247 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call434, ptr %arrayidx435, align 4
  %add.ptr436 = getelementptr i8, ptr %call26, i32 42624
  %call437 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.123, ptr noundef nonnull @imx8mp_sai3_sels, i32 noundef 8, ptr noundef %add.ptr436, i32 noundef 0, i32 noundef 4224) #4
  %248 = load ptr, ptr @hws, align 4
  %arrayidx438 = getelementptr ptr, ptr %248, i32 125
  %249 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call437, ptr %arrayidx438, align 4
  %add.ptr439 = getelementptr i8, ptr %call26, i32 42752
  %call440 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.124, ptr noundef nonnull @imx8mp_sai4_sels, i32 noundef 8, ptr noundef %add.ptr439, i32 noundef 0, i32 noundef 4224) #4
  %250 = load ptr, ptr @hws, align 4
  %arrayidx441 = getelementptr ptr, ptr %250, i32 126
  %251 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %call440, ptr %arrayidx441, align 4
  %add.ptr442 = getelementptr i8, ptr %call26, i32 42880
  %call443 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.125, ptr noundef nonnull @imx8mp_sai5_sels, i32 noundef 8, ptr noundef %add.ptr442, i32 noundef 0, i32 noundef 4224) #4
  %252 = load ptr, ptr @hws, align 4
  %arrayidx444 = getelementptr ptr, ptr %252, i32 127
  %253 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call443, ptr %arrayidx444, align 4
  %add.ptr445 = getelementptr i8, ptr %call26, i32 43008
  %call446 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.126, ptr noundef nonnull @imx8mp_sai6_sels, i32 noundef 8, ptr noundef %add.ptr445, i32 noundef 0, i32 noundef 4224) #4
  %254 = load ptr, ptr @hws, align 4
  %arrayidx447 = getelementptr ptr, ptr %254, i32 128
  %255 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %call446, ptr %arrayidx447, align 4
  %add.ptr448 = getelementptr i8, ptr %call26, i32 43136
  %call449 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.127, ptr noundef nonnull @imx8mp_enet_qos_sels, i32 noundef 8, ptr noundef %add.ptr448, i32 noundef 0, i32 noundef 4224) #4
  %256 = load ptr, ptr @hws, align 4
  %arrayidx450 = getelementptr ptr, ptr %256, i32 129
  %257 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %call449, ptr %arrayidx450, align 4
  %add.ptr451 = getelementptr i8, ptr %call26, i32 43264
  %call452 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.128, ptr noundef nonnull @imx8mp_enet_qos_timer_sels, i32 noundef 8, ptr noundef %add.ptr451, i32 noundef 0, i32 noundef 4224) #4
  %258 = load ptr, ptr @hws, align 4
  %arrayidx453 = getelementptr ptr, ptr %258, i32 130
  %259 = ptrtoint ptr %arrayidx453 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call452, ptr %arrayidx453, align 4
  %add.ptr454 = getelementptr i8, ptr %call26, i32 43392
  %call455 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.129, ptr noundef nonnull @imx8mp_enet_ref_sels, i32 noundef 8, ptr noundef %add.ptr454, i32 noundef 0, i32 noundef 4224) #4
  %260 = load ptr, ptr @hws, align 4
  %arrayidx456 = getelementptr ptr, ptr %260, i32 131
  %261 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call455, ptr %arrayidx456, align 4
  %add.ptr457 = getelementptr i8, ptr %call26, i32 43520
  %call458 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.130, ptr noundef nonnull @imx8mp_enet_timer_sels, i32 noundef 8, ptr noundef %add.ptr457, i32 noundef 0, i32 noundef 4224) #4
  %262 = load ptr, ptr @hws, align 4
  %arrayidx459 = getelementptr ptr, ptr %262, i32 132
  %263 = ptrtoint ptr %arrayidx459 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %call458, ptr %arrayidx459, align 4
  %add.ptr460 = getelementptr i8, ptr %call26, i32 43648
  %call461 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.131, ptr noundef nonnull @imx8mp_enet_phy_ref_sels, i32 noundef 8, ptr noundef %add.ptr460, i32 noundef 0, i32 noundef 4224) #4
  %264 = load ptr, ptr @hws, align 4
  %arrayidx462 = getelementptr ptr, ptr %264, i32 133
  %265 = ptrtoint ptr %arrayidx462 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call461, ptr %arrayidx462, align 4
  %add.ptr463 = getelementptr i8, ptr %call26, i32 43776
  %call464 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.132, ptr noundef nonnull @imx8mp_nand_sels, i32 noundef 8, ptr noundef %add.ptr463, i32 noundef 0, i32 noundef 4224) #4
  %266 = load ptr, ptr @hws, align 4
  %arrayidx465 = getelementptr ptr, ptr %266, i32 134
  %267 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %call464, ptr %arrayidx465, align 4
  %add.ptr466 = getelementptr i8, ptr %call26, i32 43904
  %call467 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.133, ptr noundef nonnull @imx8mp_qspi_sels, i32 noundef 8, ptr noundef %add.ptr466, i32 noundef 0, i32 noundef 4224) #4
  %268 = load ptr, ptr @hws, align 4
  %arrayidx468 = getelementptr ptr, ptr %268, i32 135
  %269 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call467, ptr %arrayidx468, align 4
  %add.ptr469 = getelementptr i8, ptr %call26, i32 44032
  %call470 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.134, ptr noundef nonnull @imx8mp_usdhc1_sels, i32 noundef 8, ptr noundef %add.ptr469, i32 noundef 0, i32 noundef 4224) #4
  %270 = load ptr, ptr @hws, align 4
  %arrayidx471 = getelementptr ptr, ptr %270, i32 136
  %271 = ptrtoint ptr %arrayidx471 to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %call470, ptr %arrayidx471, align 4
  %add.ptr472 = getelementptr i8, ptr %call26, i32 44160
  %call473 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.135, ptr noundef nonnull @imx8mp_usdhc2_sels, i32 noundef 8, ptr noundef %add.ptr472, i32 noundef 0, i32 noundef 4224) #4
  %272 = load ptr, ptr @hws, align 4
  %arrayidx474 = getelementptr ptr, ptr %272, i32 137
  %273 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %call473, ptr %arrayidx474, align 4
  %add.ptr475 = getelementptr i8, ptr %call26, i32 44288
  %call476 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.136, ptr noundef nonnull @imx8mp_i2c1_sels, i32 noundef 8, ptr noundef %add.ptr475, i32 noundef 0, i32 noundef 4224) #4
  %274 = load ptr, ptr @hws, align 4
  %arrayidx477 = getelementptr ptr, ptr %274, i32 138
  %275 = ptrtoint ptr %arrayidx477 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %call476, ptr %arrayidx477, align 4
  %add.ptr478 = getelementptr i8, ptr %call26, i32 44416
  %call479 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.137, ptr noundef nonnull @imx8mp_i2c2_sels, i32 noundef 8, ptr noundef %add.ptr478, i32 noundef 0, i32 noundef 4224) #4
  %276 = load ptr, ptr @hws, align 4
  %arrayidx480 = getelementptr ptr, ptr %276, i32 139
  %277 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call479, ptr %arrayidx480, align 4
  %add.ptr481 = getelementptr i8, ptr %call26, i32 44544
  %call482 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.138, ptr noundef nonnull @imx8mp_i2c3_sels, i32 noundef 8, ptr noundef %add.ptr481, i32 noundef 0, i32 noundef 4224) #4
  %278 = load ptr, ptr @hws, align 4
  %arrayidx483 = getelementptr ptr, ptr %278, i32 140
  %279 = ptrtoint ptr %arrayidx483 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %call482, ptr %arrayidx483, align 4
  %add.ptr484 = getelementptr i8, ptr %call26, i32 44672
  %call485 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.139, ptr noundef nonnull @imx8mp_i2c4_sels, i32 noundef 8, ptr noundef %add.ptr484, i32 noundef 0, i32 noundef 4224) #4
  %280 = load ptr, ptr @hws, align 4
  %arrayidx486 = getelementptr ptr, ptr %280, i32 141
  %281 = ptrtoint ptr %arrayidx486 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %call485, ptr %arrayidx486, align 4
  %add.ptr487 = getelementptr i8, ptr %call26, i32 44800
  %call488 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.140, ptr noundef nonnull @imx8mp_uart1_sels, i32 noundef 8, ptr noundef %add.ptr487, i32 noundef 0, i32 noundef 4224) #4
  %282 = load ptr, ptr @hws, align 4
  %arrayidx489 = getelementptr ptr, ptr %282, i32 142
  %283 = ptrtoint ptr %arrayidx489 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call488, ptr %arrayidx489, align 4
  %add.ptr490 = getelementptr i8, ptr %call26, i32 44928
  %call491 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.141, ptr noundef nonnull @imx8mp_uart2_sels, i32 noundef 8, ptr noundef %add.ptr490, i32 noundef 0, i32 noundef 4224) #4
  %284 = load ptr, ptr @hws, align 4
  %arrayidx492 = getelementptr ptr, ptr %284, i32 143
  %285 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr %call491, ptr %arrayidx492, align 4
  %add.ptr493 = getelementptr i8, ptr %call26, i32 45056
  %call494 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.142, ptr noundef nonnull @imx8mp_uart3_sels, i32 noundef 8, ptr noundef %add.ptr493, i32 noundef 0, i32 noundef 4224) #4
  %286 = load ptr, ptr @hws, align 4
  %arrayidx495 = getelementptr ptr, ptr %286, i32 144
  %287 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %call494, ptr %arrayidx495, align 4
  %add.ptr496 = getelementptr i8, ptr %call26, i32 45184
  %call497 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.143, ptr noundef nonnull @imx8mp_uart4_sels, i32 noundef 8, ptr noundef %add.ptr496, i32 noundef 0, i32 noundef 4224) #4
  %288 = load ptr, ptr @hws, align 4
  %arrayidx498 = getelementptr ptr, ptr %288, i32 145
  %289 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call497, ptr %arrayidx498, align 4
  %add.ptr499 = getelementptr i8, ptr %call26, i32 45312
  %call500 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.144, ptr noundef nonnull @imx8mp_usb_core_ref_sels, i32 noundef 8, ptr noundef %add.ptr499, i32 noundef 0, i32 noundef 4224) #4
  %290 = load ptr, ptr @hws, align 4
  %arrayidx501 = getelementptr ptr, ptr %290, i32 146
  %291 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call500, ptr %arrayidx501, align 4
  %add.ptr502 = getelementptr i8, ptr %call26, i32 45440
  %call503 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.145, ptr noundef nonnull @imx8mp_usb_phy_ref_sels, i32 noundef 8, ptr noundef %add.ptr502, i32 noundef 0, i32 noundef 4224) #4
  %292 = load ptr, ptr @hws, align 4
  %arrayidx504 = getelementptr ptr, ptr %292, i32 147
  %293 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call503, ptr %arrayidx504, align 4
  %add.ptr505 = getelementptr i8, ptr %call26, i32 45568
  %call506 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.146, ptr noundef nonnull @imx8mp_gic_sels, i32 noundef 8, ptr noundef %add.ptr505, i32 noundef 0, i32 noundef 6272) #4
  %294 = load ptr, ptr @hws, align 4
  %arrayidx507 = getelementptr ptr, ptr %294, i32 148
  %295 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %call506, ptr %arrayidx507, align 4
  %add.ptr508 = getelementptr i8, ptr %call26, i32 45696
  %call509 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.147, ptr noundef nonnull @imx8mp_ecspi1_sels, i32 noundef 8, ptr noundef %add.ptr508, i32 noundef 0, i32 noundef 4224) #4
  %296 = load ptr, ptr @hws, align 4
  %arrayidx510 = getelementptr ptr, ptr %296, i32 149
  %297 = ptrtoint ptr %arrayidx510 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %call509, ptr %arrayidx510, align 4
  %add.ptr511 = getelementptr i8, ptr %call26, i32 45824
  %call512 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.148, ptr noundef nonnull @imx8mp_ecspi2_sels, i32 noundef 8, ptr noundef %add.ptr511, i32 noundef 0, i32 noundef 4224) #4
  %298 = load ptr, ptr @hws, align 4
  %arrayidx513 = getelementptr ptr, ptr %298, i32 150
  %299 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call512, ptr %arrayidx513, align 4
  %add.ptr514 = getelementptr i8, ptr %call26, i32 45952
  %call515 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.149, ptr noundef nonnull @imx8mp_pwm1_sels, i32 noundef 8, ptr noundef %add.ptr514, i32 noundef 0, i32 noundef 4224) #4
  %300 = load ptr, ptr @hws, align 4
  %arrayidx516 = getelementptr ptr, ptr %300, i32 151
  %301 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call515, ptr %arrayidx516, align 4
  %add.ptr517 = getelementptr i8, ptr %call26, i32 46080
  %call518 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.150, ptr noundef nonnull @imx8mp_pwm2_sels, i32 noundef 8, ptr noundef %add.ptr517, i32 noundef 0, i32 noundef 4224) #4
  %302 = load ptr, ptr @hws, align 4
  %arrayidx519 = getelementptr ptr, ptr %302, i32 152
  %303 = ptrtoint ptr %arrayidx519 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call518, ptr %arrayidx519, align 4
  %add.ptr520 = getelementptr i8, ptr %call26, i32 46208
  %call521 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.151, ptr noundef nonnull @imx8mp_pwm3_sels, i32 noundef 8, ptr noundef %add.ptr520, i32 noundef 0, i32 noundef 4224) #4
  %304 = load ptr, ptr @hws, align 4
  %arrayidx522 = getelementptr ptr, ptr %304, i32 153
  %305 = ptrtoint ptr %arrayidx522 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call521, ptr %arrayidx522, align 4
  %add.ptr523 = getelementptr i8, ptr %call26, i32 46336
  %call524 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.152, ptr noundef nonnull @imx8mp_pwm4_sels, i32 noundef 8, ptr noundef %add.ptr523, i32 noundef 0, i32 noundef 4224) #4
  %306 = load ptr, ptr @hws, align 4
  %arrayidx525 = getelementptr ptr, ptr %306, i32 154
  %307 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call524, ptr %arrayidx525, align 4
  %add.ptr526 = getelementptr i8, ptr %call26, i32 46464
  %call527 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.153, ptr noundef nonnull @imx8mp_gpt1_sels, i32 noundef 8, ptr noundef %add.ptr526, i32 noundef 0, i32 noundef 4224) #4
  %308 = load ptr, ptr @hws, align 4
  %arrayidx528 = getelementptr ptr, ptr %308, i32 155
  %309 = ptrtoint ptr %arrayidx528 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call527, ptr %arrayidx528, align 4
  %add.ptr529 = getelementptr i8, ptr %call26, i32 46592
  %call530 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.154, ptr noundef nonnull @imx8mp_gpt2_sels, i32 noundef 8, ptr noundef %add.ptr529, i32 noundef 0, i32 noundef 4224) #4
  %310 = load ptr, ptr @hws, align 4
  %arrayidx531 = getelementptr ptr, ptr %310, i32 156
  %311 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call530, ptr %arrayidx531, align 4
  %add.ptr532 = getelementptr i8, ptr %call26, i32 46720
  %call533 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.155, ptr noundef nonnull @imx8mp_gpt3_sels, i32 noundef 8, ptr noundef %add.ptr532, i32 noundef 0, i32 noundef 4224) #4
  %312 = load ptr, ptr @hws, align 4
  %arrayidx534 = getelementptr ptr, ptr %312, i32 157
  %313 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call533, ptr %arrayidx534, align 4
  %add.ptr535 = getelementptr i8, ptr %call26, i32 46848
  %call536 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.156, ptr noundef nonnull @imx8mp_gpt4_sels, i32 noundef 8, ptr noundef %add.ptr535, i32 noundef 0, i32 noundef 4224) #4
  %314 = load ptr, ptr @hws, align 4
  %arrayidx537 = getelementptr ptr, ptr %314, i32 158
  %315 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %call536, ptr %arrayidx537, align 4
  %add.ptr538 = getelementptr i8, ptr %call26, i32 46976
  %call539 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.157, ptr noundef nonnull @imx8mp_gpt5_sels, i32 noundef 8, ptr noundef %add.ptr538, i32 noundef 0, i32 noundef 4224) #4
  %316 = load ptr, ptr @hws, align 4
  %arrayidx540 = getelementptr ptr, ptr %316, i32 159
  %317 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %call539, ptr %arrayidx540, align 4
  %add.ptr541 = getelementptr i8, ptr %call26, i32 47104
  %call542 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.158, ptr noundef nonnull @imx8mp_gpt6_sels, i32 noundef 8, ptr noundef %add.ptr541, i32 noundef 0, i32 noundef 4224) #4
  %318 = load ptr, ptr @hws, align 4
  %arrayidx543 = getelementptr ptr, ptr %318, i32 160
  %319 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call542, ptr %arrayidx543, align 4
  %add.ptr544 = getelementptr i8, ptr %call26, i32 47360
  %call545 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.159, ptr noundef nonnull @imx8mp_wdog_sels, i32 noundef 8, ptr noundef %add.ptr544, i32 noundef 0, i32 noundef 4224) #4
  %320 = load ptr, ptr @hws, align 4
  %arrayidx546 = getelementptr ptr, ptr %320, i32 162
  %321 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %call545, ptr %arrayidx546, align 4
  %add.ptr547 = getelementptr i8, ptr %call26, i32 47488
  %call548 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.160, ptr noundef nonnull @imx8mp_wrclk_sels, i32 noundef 8, ptr noundef %add.ptr547, i32 noundef 0, i32 noundef 4224) #4
  %322 = load ptr, ptr @hws, align 4
  %arrayidx549 = getelementptr ptr, ptr %322, i32 163
  %323 = ptrtoint ptr %arrayidx549 to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call548, ptr %arrayidx549, align 4
  %add.ptr550 = getelementptr i8, ptr %call26, i32 47616
  %call551 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.161, ptr noundef nonnull @imx8mp_ipp_do_clko1_sels, i32 noundef 8, ptr noundef %add.ptr550, i32 noundef 0, i32 noundef 4224) #4
  %324 = load ptr, ptr @hws, align 4
  %arrayidx552 = getelementptr ptr, ptr %324, i32 164
  %325 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call551, ptr %arrayidx552, align 4
  %add.ptr553 = getelementptr i8, ptr %call26, i32 47744
  %call554 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.162, ptr noundef nonnull @imx8mp_ipp_do_clko2_sels, i32 noundef 8, ptr noundef %add.ptr553, i32 noundef 0, i32 noundef 4224) #4
  %326 = load ptr, ptr @hws, align 4
  %arrayidx555 = getelementptr ptr, ptr %326, i32 165
  %327 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call554, ptr %arrayidx555, align 4
  %add.ptr556 = getelementptr i8, ptr %call26, i32 47872
  %call557 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.163, ptr noundef nonnull @imx8mp_hdmi_fdcc_tst_sels, i32 noundef 8, ptr noundef %add.ptr556, i32 noundef 0, i32 noundef 4224) #4
  %328 = load ptr, ptr @hws, align 4
  %arrayidx558 = getelementptr ptr, ptr %328, i32 166
  %329 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call557, ptr %arrayidx558, align 4
  %add.ptr559 = getelementptr i8, ptr %call26, i32 48000
  %call560 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.164, ptr noundef nonnull @imx8mp_hdmi_24m_sels, i32 noundef 8, ptr noundef %add.ptr559, i32 noundef 0, i32 noundef 4224) #4
  %330 = load ptr, ptr @hws, align 4
  %arrayidx561 = getelementptr ptr, ptr %330, i32 167
  %331 = ptrtoint ptr %arrayidx561 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %call560, ptr %arrayidx561, align 4
  %add.ptr562 = getelementptr i8, ptr %call26, i32 48128
  %call563 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.165, ptr noundef nonnull @imx8mp_hdmi_ref_266m_sels, i32 noundef 8, ptr noundef %add.ptr562, i32 noundef 0, i32 noundef 4224) #4
  %332 = load ptr, ptr @hws, align 4
  %arrayidx564 = getelementptr ptr, ptr %332, i32 168
  %333 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %call563, ptr %arrayidx564, align 4
  %add.ptr565 = getelementptr i8, ptr %call26, i32 48256
  %call566 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.166, ptr noundef nonnull @imx8mp_usdhc3_sels, i32 noundef 8, ptr noundef %add.ptr565, i32 noundef 0, i32 noundef 4224) #4
  %334 = load ptr, ptr @hws, align 4
  %arrayidx567 = getelementptr ptr, ptr %334, i32 169
  %335 = ptrtoint ptr %arrayidx567 to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %call566, ptr %arrayidx567, align 4
  %add.ptr568 = getelementptr i8, ptr %call26, i32 48384
  %call569 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.167, ptr noundef nonnull @imx8mp_media_cam1_pix_sels, i32 noundef 8, ptr noundef %add.ptr568, i32 noundef 0, i32 noundef 4224) #4
  %336 = load ptr, ptr @hws, align 4
  %arrayidx570 = getelementptr ptr, ptr %336, i32 170
  %337 = ptrtoint ptr %arrayidx570 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call569, ptr %arrayidx570, align 4
  %add.ptr571 = getelementptr i8, ptr %call26, i32 48512
  %call572 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.168, ptr noundef nonnull @imx8mp_media_mipi_phy1_ref_sels, i32 noundef 8, ptr noundef %add.ptr571, i32 noundef 0, i32 noundef 4224) #4
  %338 = load ptr, ptr @hws, align 4
  %arrayidx573 = getelementptr ptr, ptr %338, i32 171
  %339 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %call572, ptr %arrayidx573, align 4
  %add.ptr574 = getelementptr i8, ptr %call26, i32 48640
  %call575 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.169, ptr noundef nonnull @imx8mp_media_disp1_pix_sels, i32 noundef 8, ptr noundef %add.ptr574, i32 noundef 0, i32 noundef 4224) #4
  %340 = load ptr, ptr @hws, align 4
  %arrayidx576 = getelementptr ptr, ptr %340, i32 172
  %341 = ptrtoint ptr %arrayidx576 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %call575, ptr %arrayidx576, align 4
  %add.ptr577 = getelementptr i8, ptr %call26, i32 48768
  %call578 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.170, ptr noundef nonnull @imx8mp_media_cam2_pix_sels, i32 noundef 8, ptr noundef %add.ptr577, i32 noundef 0, i32 noundef 4224) #4
  %342 = load ptr, ptr @hws, align 4
  %arrayidx579 = getelementptr ptr, ptr %342, i32 173
  %343 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %call578, ptr %arrayidx579, align 4
  %add.ptr580 = getelementptr i8, ptr %call26, i32 48896
  %call581 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.171, ptr noundef nonnull @imx8mp_media_ldb_sels, i32 noundef 8, ptr noundef %add.ptr580, i32 noundef 0, i32 noundef 4224) #4
  %344 = load ptr, ptr @hws, align 4
  %arrayidx582 = getelementptr ptr, ptr %344, i32 174
  %345 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call581, ptr %arrayidx582, align 4
  %add.ptr583 = getelementptr i8, ptr %call26, i32 49024
  %call584 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.172, ptr noundef nonnull @imx8mp_memrepair_sels, i32 noundef 8, ptr noundef %add.ptr583, i32 noundef 0, i32 noundef 6272) #4
  %346 = load ptr, ptr @hws, align 4
  %arrayidx585 = getelementptr ptr, ptr %346, i32 118
  %347 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %call584, ptr %arrayidx585, align 4
  %add.ptr586 = getelementptr i8, ptr %call26, i32 49408
  %call587 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.173, ptr noundef nonnull @imx8mp_media_mipi_test_byte_sels, i32 noundef 8, ptr noundef %add.ptr586, i32 noundef 0, i32 noundef 4224) #4
  %348 = load ptr, ptr @hws, align 4
  %arrayidx588 = getelementptr ptr, ptr %348, i32 178
  %349 = ptrtoint ptr %arrayidx588 to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call587, ptr %arrayidx588, align 4
  %add.ptr589 = getelementptr i8, ptr %call26, i32 49536
  %call590 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.174, ptr noundef nonnull @imx8mp_ecspi3_sels, i32 noundef 8, ptr noundef %add.ptr589, i32 noundef 0, i32 noundef 4224) #4
  %350 = load ptr, ptr @hws, align 4
  %arrayidx591 = getelementptr ptr, ptr %350, i32 179
  %351 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %call590, ptr %arrayidx591, align 4
  %add.ptr592 = getelementptr i8, ptr %call26, i32 49664
  %call593 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.175, ptr noundef nonnull @imx8mp_pdm_sels, i32 noundef 8, ptr noundef %add.ptr592, i32 noundef 0, i32 noundef 4224) #4
  %352 = load ptr, ptr @hws, align 4
  %arrayidx594 = getelementptr ptr, ptr %352, i32 180
  %353 = ptrtoint ptr %arrayidx594 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %call593, ptr %arrayidx594, align 4
  %add.ptr595 = getelementptr i8, ptr %call26, i32 49792
  %call596 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.176, ptr noundef nonnull @imx8mp_vpu_vc8000e_sels, i32 noundef 8, ptr noundef %add.ptr595, i32 noundef 0, i32 noundef 4224) #4
  %354 = load ptr, ptr @hws, align 4
  %arrayidx597 = getelementptr ptr, ptr %354, i32 181
  %355 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %call596, ptr %arrayidx597, align 4
  %add.ptr598 = getelementptr i8, ptr %call26, i32 49920
  %call599 = tail call ptr @__imx8m_clk_hw_composite(ptr noundef nonnull @.str.177, ptr noundef nonnull @imx8mp_sai7_sels, i32 noundef 8, ptr noundef %add.ptr598, i32 noundef 0, i32 noundef 4224) #4
  %356 = load ptr, ptr @hws, align 4
  %arrayidx600 = getelementptr ptr, ptr %356, i32 182
  %357 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %call599, ptr %arrayidx600, align 4
  %call.i1135 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.112, i32 noundef 4, i32 noundef 1, i32 noundef 4) #4
  %358 = load ptr, ptr @hws, align 4
  %arrayidx602 = getelementptr ptr, ptr %358, i32 285
  %359 = ptrtoint ptr %arrayidx602 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %call.i1135, ptr %arrayidx602, align 4
  %add.ptr603 = getelementptr i8, ptr %call26, i32 38912
  %call.i1136 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.179, i8 noundef zeroext 2, ptr noundef nonnull @imx8mp_dram_core_sels, ptr noundef null, ptr noundef null, i32 noundef 6272, ptr noundef %add.ptr603, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %360 = load ptr, ptr @hws, align 4
  %arrayidx605 = getelementptr ptr, ptr %360, i32 286
  %361 = ptrtoint ptr %arrayidx605 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %call.i1136, ptr %arrayidx605, align 4
  %add.ptr606 = getelementptr i8, ptr %call26, i32 16464
  %call.i1137 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.179, i32 noundef 6148, ptr noundef %add.ptr606, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %362 = load ptr, ptr @hws, align 4
  %arrayidx608 = getelementptr ptr, ptr %362, i32 188
  %363 = ptrtoint ptr %arrayidx608 to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %call.i1137, ptr %arrayidx608, align 4
  %add.ptr609 = getelementptr i8, ptr %call26, i32 16496
  %call.i1138 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.147, i32 noundef 4100, ptr noundef %add.ptr609, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %364 = load ptr, ptr @hws, align 4
  %arrayidx611 = getelementptr ptr, ptr %364, i32 189
  %365 = ptrtoint ptr %arrayidx611 to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %call.i1138, ptr %arrayidx611, align 4
  %add.ptr612 = getelementptr i8, ptr %call26, i32 16512
  %call.i1139 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.148, i32 noundef 4100, ptr noundef %add.ptr612, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %366 = load ptr, ptr @hws, align 4
  %arrayidx614 = getelementptr ptr, ptr %366, i32 190
  %367 = ptrtoint ptr %arrayidx614 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %call.i1139, ptr %arrayidx614, align 4
  %add.ptr615 = getelementptr i8, ptr %call26, i32 16528
  %call.i1140 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.174, i32 noundef 4100, ptr noundef %add.ptr615, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %368 = load ptr, ptr @hws, align 4
  %arrayidx617 = getelementptr ptr, ptr %368, i32 191
  %369 = ptrtoint ptr %arrayidx617 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %call.i1140, ptr %arrayidx617, align 4
  %add.ptr618 = getelementptr i8, ptr %call26, i32 16544
  %call.i1141 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.95, i32 noundef 4100, ptr noundef %add.ptr618, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %370 = load ptr, ptr @hws, align 4
  %arrayidx620 = getelementptr ptr, ptr %370, i32 192
  %371 = ptrtoint ptr %arrayidx620 to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %call.i1141, ptr %arrayidx620, align 4
  %add.ptr621 = getelementptr i8, ptr %call26, i32 16560
  %call.i1142 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr621, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %372 = load ptr, ptr @hws, align 4
  %arrayidx623 = getelementptr ptr, ptr %372, i32 193
  %373 = ptrtoint ptr %arrayidx623 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call.i1142, ptr %arrayidx623, align 4
  %add.ptr624 = getelementptr i8, ptr %call26, i32 16576
  %call.i1143 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr624, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %374 = load ptr, ptr @hws, align 4
  %arrayidx626 = getelementptr ptr, ptr %374, i32 194
  %375 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call.i1143, ptr %arrayidx626, align 4
  %add.ptr627 = getelementptr i8, ptr %call26, i32 16592
  %call.i1144 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr627, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %376 = load ptr, ptr @hws, align 4
  %arrayidx629 = getelementptr ptr, ptr %376, i32 195
  %377 = ptrtoint ptr %arrayidx629 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %call.i1144, ptr %arrayidx629, align 4
  %add.ptr630 = getelementptr i8, ptr %call26, i32 16608
  %call.i1145 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr630, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %378 = load ptr, ptr @hws, align 4
  %arrayidx632 = getelementptr ptr, ptr %378, i32 196
  %379 = ptrtoint ptr %arrayidx632 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call.i1145, ptr %arrayidx632, align 4
  %add.ptr633 = getelementptr i8, ptr %call26, i32 16624
  %call.i1146 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr633, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %380 = load ptr, ptr @hws, align 4
  %arrayidx635 = getelementptr ptr, ptr %380, i32 197
  %381 = ptrtoint ptr %arrayidx635 to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %call.i1146, ptr %arrayidx635, align 4
  %add.ptr636 = getelementptr i8, ptr %call26, i32 16640
  %call.i1147 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.153, i32 noundef 4100, ptr noundef %add.ptr636, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %382 = load ptr, ptr @hws, align 4
  %arrayidx638 = getelementptr ptr, ptr %382, i32 198
  %383 = ptrtoint ptr %arrayidx638 to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %call.i1147, ptr %arrayidx638, align 4
  %add.ptr639 = getelementptr i8, ptr %call26, i32 16656
  %call.i1148 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.154, i32 noundef 4100, ptr noundef %add.ptr639, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %384 = load ptr, ptr @hws, align 4
  %arrayidx641 = getelementptr ptr, ptr %384, i32 199
  %385 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %call.i1148, ptr %arrayidx641, align 4
  %add.ptr642 = getelementptr i8, ptr %call26, i32 16672
  %call.i1149 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.155, i32 noundef 4100, ptr noundef %add.ptr642, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %386 = load ptr, ptr @hws, align 4
  %arrayidx644 = getelementptr ptr, ptr %386, i32 200
  %387 = ptrtoint ptr %arrayidx644 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %call.i1149, ptr %arrayidx644, align 4
  %add.ptr645 = getelementptr i8, ptr %call26, i32 16688
  %call.i1150 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.156, i32 noundef 4100, ptr noundef %add.ptr645, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %388 = load ptr, ptr @hws, align 4
  %arrayidx647 = getelementptr ptr, ptr %388, i32 201
  %389 = ptrtoint ptr %arrayidx647 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %call.i1150, ptr %arrayidx647, align 4
  %add.ptr648 = getelementptr i8, ptr %call26, i32 16704
  %call.i1151 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.157, i32 noundef 4100, ptr noundef %add.ptr648, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %390 = load ptr, ptr @hws, align 4
  %arrayidx650 = getelementptr ptr, ptr %390, i32 202
  %391 = ptrtoint ptr %arrayidx650 to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %call.i1151, ptr %arrayidx650, align 4
  %add.ptr651 = getelementptr i8, ptr %call26, i32 16720
  %call.i1152 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.158, i32 noundef 4100, ptr noundef %add.ptr651, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %392 = load ptr, ptr @hws, align 4
  %arrayidx653 = getelementptr ptr, ptr %392, i32 203
  %393 = ptrtoint ptr %arrayidx653 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %call.i1152, ptr %arrayidx653, align 4
  %add.ptr654 = getelementptr i8, ptr %call26, i32 16752
  %call.i1153 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.136, i32 noundef 4100, ptr noundef %add.ptr654, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %394 = load ptr, ptr @hws, align 4
  %arrayidx656 = getelementptr ptr, ptr %394, i32 205
  %395 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %call.i1153, ptr %arrayidx656, align 4
  %add.ptr657 = getelementptr i8, ptr %call26, i32 16768
  %call.i1154 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.137, i32 noundef 4100, ptr noundef %add.ptr657, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %396 = load ptr, ptr @hws, align 4
  %arrayidx659 = getelementptr ptr, ptr %396, i32 206
  %397 = ptrtoint ptr %arrayidx659 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %call.i1154, ptr %arrayidx659, align 4
  %add.ptr660 = getelementptr i8, ptr %call26, i32 16784
  %call.i1155 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.138, i32 noundef 4100, ptr noundef %add.ptr660, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %398 = load ptr, ptr @hws, align 4
  %arrayidx662 = getelementptr ptr, ptr %398, i32 207
  %399 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr %call.i1155, ptr %arrayidx662, align 4
  %add.ptr663 = getelementptr i8, ptr %call26, i32 16800
  %call.i1156 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.139, i32 noundef 4100, ptr noundef %add.ptr663, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %400 = load ptr, ptr @hws, align 4
  %arrayidx665 = getelementptr ptr, ptr %400, i32 208
  %401 = ptrtoint ptr %arrayidx665 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %call.i1156, ptr %arrayidx665, align 4
  %add.ptr666 = getelementptr i8, ptr %call26, i32 16912
  %call.i1157 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr666, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %402 = load ptr, ptr @hws, align 4
  %arrayidx668 = getelementptr ptr, ptr %402, i32 213
  %403 = ptrtoint ptr %arrayidx668 to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %call.i1157, ptr %arrayidx668, align 4
  %add.ptr669 = getelementptr i8, ptr %call26, i32 16928
  %call.i1158 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr669, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %404 = load ptr, ptr @hws, align 4
  %arrayidx671 = getelementptr ptr, ptr %404, i32 214
  %405 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %call.i1158, ptr %arrayidx671, align 4
  %add.ptr672 = getelementptr i8, ptr %call26, i32 16976
  %call.i1159 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.118, i32 noundef 4100, ptr noundef %add.ptr672, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %406 = load ptr, ptr @hws, align 4
  %arrayidx674 = getelementptr ptr, ptr %406, i32 217
  %407 = ptrtoint ptr %arrayidx674 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %call.i1159, ptr %arrayidx674, align 4
  %add.ptr675 = getelementptr i8, ptr %call26, i32 17024
  %call.i1160 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.149, i32 noundef 4100, ptr noundef %add.ptr675, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %408 = load ptr, ptr @hws, align 4
  %arrayidx677 = getelementptr ptr, ptr %408, i32 220
  %409 = ptrtoint ptr %arrayidx677 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %call.i1160, ptr %arrayidx677, align 4
  %add.ptr678 = getelementptr i8, ptr %call26, i32 17040
  %call.i1161 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.150, i32 noundef 4100, ptr noundef %add.ptr678, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %410 = load ptr, ptr @hws, align 4
  %arrayidx680 = getelementptr ptr, ptr %410, i32 221
  %411 = ptrtoint ptr %arrayidx680 to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr %call.i1161, ptr %arrayidx680, align 4
  %add.ptr681 = getelementptr i8, ptr %call26, i32 17056
  %call.i1162 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.151, i32 noundef 4100, ptr noundef %add.ptr681, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %412 = load ptr, ptr @hws, align 4
  %arrayidx683 = getelementptr ptr, ptr %412, i32 222
  %413 = ptrtoint ptr %arrayidx683 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %call.i1162, ptr %arrayidx683, align 4
  %add.ptr684 = getelementptr i8, ptr %call26, i32 17072
  %call.i1163 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.152, i32 noundef 4100, ptr noundef %add.ptr684, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %414 = load ptr, ptr @hws, align 4
  %arrayidx686 = getelementptr ptr, ptr %414, i32 223
  %415 = ptrtoint ptr %arrayidx686 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr %call.i1163, ptr %arrayidx686, align 4
  %add.ptr687 = getelementptr i8, ptr %call26, i32 17088
  %call.i1164 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr687, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %416 = load ptr, ptr @hws, align 4
  %arrayidx689 = getelementptr ptr, ptr %416, i32 224
  %417 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %call.i1164, ptr %arrayidx689, align 4
  %add.ptr690 = getelementptr i8, ptr %call26, i32 17120
  %call.i1165 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr690, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %418 = load ptr, ptr @hws, align 4
  %arrayidx692 = getelementptr ptr, ptr %418, i32 225
  %419 = ptrtoint ptr %arrayidx692 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %call.i1165, ptr %arrayidx692, align 4
  %add.ptr693 = getelementptr i8, ptr %call26, i32 17136
  %call.i1166 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.133, i32 noundef 4100, ptr noundef %add.ptr693, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %420 = load ptr, ptr @hws, align 4
  %arrayidx695 = getelementptr ptr, ptr %420, i32 226
  %421 = ptrtoint ptr %arrayidx695 to i32
  call void @__asan_store4_noabort(i32 %421)
  store ptr %call.i1166, ptr %arrayidx695, align 4
  %add.ptr696 = getelementptr i8, ptr %call26, i32 17152
  %call.i1167 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.132, i32 noundef 4100, ptr noundef %add.ptr696, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #4
  %422 = load ptr, ptr @hws, align 4
  %arrayidx698 = getelementptr ptr, ptr %422, i32 227
  %423 = ptrtoint ptr %arrayidx698 to i32
  call void @__asan_store4_noabort(i32 %423)
  store ptr %call.i1167, ptr %arrayidx698, align 4
  %call.i1168 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.96, i32 noundef 4100, ptr noundef %add.ptr696, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #4
  %424 = load ptr, ptr @hws, align 4
  %arrayidx701 = getelementptr ptr, ptr %424, i32 228
  %425 = ptrtoint ptr %arrayidx701 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %call.i1168, ptr %arrayidx701, align 4
  %add.ptr702 = getelementptr i8, ptr %call26, i32 17200
  %call.i1169 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.119, i32 noundef 4, ptr noundef %add.ptr702, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %426 = load ptr, ptr @hws, align 4
  %arrayidx704 = getelementptr ptr, ptr %426, i32 231
  %427 = ptrtoint ptr %arrayidx704 to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %call.i1169, ptr %arrayidx704, align 4
  %add.ptr705 = getelementptr i8, ptr %call26, i32 17216
  %call.i1170 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %add.ptr705, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %428 = load ptr, ptr @hws, align 4
  %arrayidx707 = getelementptr ptr, ptr %428, i32 232
  %429 = ptrtoint ptr %arrayidx707 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %call.i1170, ptr %arrayidx707, align 4
  %add.ptr708 = getelementptr i8, ptr %call26, i32 17232
  %call.i1171 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef %add.ptr708, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %430 = load ptr, ptr @hws, align 4
  %arrayidx710 = getelementptr ptr, ptr %430, i32 233
  %431 = ptrtoint ptr %arrayidx710 to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr %call.i1171, ptr %arrayidx710, align 4
  %add.ptr711 = getelementptr i8, ptr %call26, i32 17248
  %call.i1172 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %add.ptr711, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %432 = load ptr, ptr @hws, align 4
  %arrayidx713 = getelementptr ptr, ptr %432, i32 234
  %433 = ptrtoint ptr %arrayidx713 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %call.i1172, ptr %arrayidx713, align 4
  %add.ptr714 = getelementptr i8, ptr %call26, i32 17312
  %call.i1173 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr714, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %434 = load ptr, ptr @hws, align 4
  %arrayidx716 = getelementptr ptr, ptr %434, i32 236
  %435 = ptrtoint ptr %arrayidx716 to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %call.i1173, ptr %arrayidx716, align 4
  %add.ptr717 = getelementptr i8, ptr %call26, i32 17328
  %call.i1174 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.218, i32 noundef 4100, ptr noundef %add.ptr717, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %436 = load ptr, ptr @hws, align 4
  %arrayidx719 = getelementptr ptr, ptr %436, i32 237
  %437 = ptrtoint ptr %arrayidx719 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %call.i1174, ptr %arrayidx719, align 4
  %add.ptr720 = getelementptr i8, ptr %call26, i32 17408
  %call.i1175 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.95, i32 noundef 4100, ptr noundef %add.ptr720, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %438 = load ptr, ptr @hws, align 4
  %arrayidx722 = getelementptr ptr, ptr %438, i32 242
  %439 = ptrtoint ptr %arrayidx722 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %call.i1175, ptr %arrayidx722, align 4
  %add.ptr723 = getelementptr i8, ptr %call26, i32 17488
  %call.i1176 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.89, i32 noundef 4100, ptr noundef %add.ptr723, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %440 = load ptr, ptr @hws, align 4
  %arrayidx725 = getelementptr ptr, ptr %440, i32 247
  %441 = ptrtoint ptr %arrayidx725 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %call.i1176, ptr %arrayidx725, align 4
  %add.ptr726 = getelementptr i8, ptr %call26, i32 17504
  %call.i1177 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.87, i32 noundef 4100, ptr noundef %add.ptr726, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %442 = load ptr, ptr @hws, align 4
  %arrayidx728 = getelementptr ptr, ptr %442, i32 248
  %443 = ptrtoint ptr %arrayidx728 to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call.i1177, ptr %arrayidx728, align 4
  %add.ptr729 = getelementptr i8, ptr %call26, i32 17520
  %call.i1178 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr729, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %444 = load ptr, ptr @hws, align 4
  %arrayidx731 = getelementptr ptr, ptr %444, i32 249
  %445 = ptrtoint ptr %arrayidx731 to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %call.i1178, ptr %arrayidx731, align 4
  %add.ptr732 = getelementptr i8, ptr %call26, i32 17552
  %call.i1179 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.140, i32 noundef 4100, ptr noundef %add.ptr732, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %446 = load ptr, ptr @hws, align 4
  %arrayidx734 = getelementptr ptr, ptr %446, i32 251
  %447 = ptrtoint ptr %arrayidx734 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %call.i1179, ptr %arrayidx734, align 4
  %add.ptr735 = getelementptr i8, ptr %call26, i32 17568
  %call.i1180 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.141, i32 noundef 4100, ptr noundef %add.ptr735, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %448 = load ptr, ptr @hws, align 4
  %arrayidx737 = getelementptr ptr, ptr %448, i32 252
  %449 = ptrtoint ptr %arrayidx737 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %call.i1180, ptr %arrayidx737, align 4
  %add.ptr738 = getelementptr i8, ptr %call26, i32 17584
  %call.i1181 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.142, i32 noundef 4100, ptr noundef %add.ptr738, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %450 = load ptr, ptr @hws, align 4
  %arrayidx740 = getelementptr ptr, ptr %450, i32 253
  %451 = ptrtoint ptr %arrayidx740 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call.i1181, ptr %arrayidx740, align 4
  %add.ptr741 = getelementptr i8, ptr %call26, i32 17600
  %call.i1182 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.143, i32 noundef 4100, ptr noundef %add.ptr741, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %452 = load ptr, ptr @hws, align 4
  %arrayidx743 = getelementptr ptr, ptr %452, i32 254
  %453 = ptrtoint ptr %arrayidx743 to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %call.i1182, ptr %arrayidx743, align 4
  %add.ptr744 = getelementptr i8, ptr %call26, i32 17616
  %call.i1183 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.5, i32 noundef 4100, ptr noundef %add.ptr744, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %454 = load ptr, ptr @hws, align 4
  %arrayidx746 = getelementptr ptr, ptr %454, i32 255
  %455 = ptrtoint ptr %arrayidx746 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %call.i1183, ptr %arrayidx746, align 4
  %add.ptr747 = getelementptr i8, ptr %call26, i32 17648
  %call.i1184 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.145, i32 noundef 4100, ptr noundef %add.ptr747, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %456 = load ptr, ptr @hws, align 4
  %arrayidx749 = getelementptr ptr, ptr %456, i32 256
  %457 = ptrtoint ptr %arrayidx749 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %call.i1184, ptr %arrayidx749, align 4
  %add.ptr750 = getelementptr i8, ptr %call26, i32 17680
  %call.i1185 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.134, i32 noundef 4100, ptr noundef %add.ptr750, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %458 = load ptr, ptr @hws, align 4
  %arrayidx752 = getelementptr ptr, ptr %458, i32 257
  %459 = ptrtoint ptr %arrayidx752 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %call.i1185, ptr %arrayidx752, align 4
  %add.ptr753 = getelementptr i8, ptr %call26, i32 17696
  %call.i1186 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.135, i32 noundef 4100, ptr noundef %add.ptr753, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %460 = load ptr, ptr @hws, align 4
  %arrayidx755 = getelementptr ptr, ptr %460, i32 258
  %461 = ptrtoint ptr %arrayidx755 to i32
  call void @__asan_store4_noabort(i32 %461)
  store ptr %call.i1186, ptr %arrayidx755, align 4
  %add.ptr756 = getelementptr i8, ptr %call26, i32 17712
  %call.i1187 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.159, i32 noundef 4100, ptr noundef %add.ptr756, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %462 = load ptr, ptr @hws, align 4
  %arrayidx758 = getelementptr ptr, ptr %462, i32 259
  %463 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %call.i1187, ptr %arrayidx758, align 4
  %add.ptr759 = getelementptr i8, ptr %call26, i32 17728
  %call.i1188 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.159, i32 noundef 4100, ptr noundef %add.ptr759, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %464 = load ptr, ptr @hws, align 4
  %arrayidx761 = getelementptr ptr, ptr %464, i32 260
  %465 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %call.i1188, ptr %arrayidx761, align 4
  %add.ptr762 = getelementptr i8, ptr %call26, i32 17744
  %call.i1189 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.159, i32 noundef 4100, ptr noundef %add.ptr762, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %466 = load ptr, ptr @hws, align 4
  %arrayidx764 = getelementptr ptr, ptr %466, i32 261
  %467 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %call.i1189, ptr %arrayidx764, align 4
  %add.ptr765 = getelementptr i8, ptr %call26, i32 17760
  %call.i1190 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.114, i32 noundef 4100, ptr noundef %add.ptr765, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %468 = load ptr, ptr @hws, align 4
  %arrayidx767 = getelementptr ptr, ptr %468, i32 262
  %469 = ptrtoint ptr %arrayidx767 to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %call.i1190, ptr %arrayidx767, align 4
  %add.ptr768 = getelementptr i8, ptr %call26, i32 17776
  %call.i1191 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.102, i32 noundef 4100, ptr noundef %add.ptr768, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %470 = load ptr, ptr @hws, align 4
  %arrayidx770 = getelementptr ptr, ptr %470, i32 263
  %471 = ptrtoint ptr %arrayidx770 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr %call.i1191, ptr %arrayidx770, align 4
  %add.ptr771 = getelementptr i8, ptr %call26, i32 17808
  %call.i1192 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.176, i32 noundef 4100, ptr noundef %add.ptr771, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %472 = load ptr, ptr @hws, align 4
  %arrayidx773 = getelementptr ptr, ptr %472, i32 265
  %473 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %call.i1192, ptr %arrayidx773, align 4
  %add.ptr774 = getelementptr i8, ptr %call26, i32 17824
  %call.i1193 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.115, i32 noundef 4100, ptr noundef %add.ptr774, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %474 = load ptr, ptr @hws, align 4
  %arrayidx776 = getelementptr ptr, ptr %474, i32 266
  %475 = ptrtoint ptr %arrayidx776 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %call.i1193, ptr %arrayidx776, align 4
  %add.ptr777 = getelementptr i8, ptr %call26, i32 17840
  %call.i1194 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.86, i32 noundef 4100, ptr noundef %add.ptr777, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %476 = load ptr, ptr @hws, align 4
  %arrayidx779 = getelementptr ptr, ptr %476, i32 267
  %477 = ptrtoint ptr %arrayidx779 to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %call.i1194, ptr %arrayidx779, align 4
  %add.ptr780 = getelementptr i8, ptr %call26, i32 17856
  %call.i1195 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr780, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %478 = load ptr, ptr @hws, align 4
  %arrayidx782 = getelementptr ptr, ptr %478, i32 268
  %479 = ptrtoint ptr %arrayidx782 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %call.i1195, ptr %arrayidx782, align 4
  %add.ptr783 = getelementptr i8, ptr %call26, i32 17872
  %call.i1196 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.99, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %480 = load ptr, ptr @hws, align 4
  %arrayidx785 = getelementptr ptr, ptr %480, i32 269
  %481 = ptrtoint ptr %arrayidx785 to i32
  call void @__asan_store4_noabort(i32 %481)
  store ptr %call.i1196, ptr %arrayidx785, align 4
  %call.i1197 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.98, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %482 = load ptr, ptr @hws, align 4
  %arrayidx788 = getelementptr ptr, ptr %482, i32 270
  %483 = ptrtoint ptr %arrayidx788 to i32
  call void @__asan_store4_noabort(i32 %483)
  store ptr %call.i1197, ptr %arrayidx788, align 4
  %call.i1198 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.167, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %484 = load ptr, ptr @hws, align 4
  %arrayidx791 = getelementptr ptr, ptr %484, i32 271
  %485 = ptrtoint ptr %arrayidx791 to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %call.i1198, ptr %arrayidx791, align 4
  %call.i1199 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.170, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %486 = load ptr, ptr @hws, align 4
  %arrayidx794 = getelementptr ptr, ptr %486, i32 272
  %487 = ptrtoint ptr %arrayidx794 to i32
  call void @__asan_store4_noabort(i32 %487)
  store ptr %call.i1199, ptr %arrayidx794, align 4
  %call.i1200 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.169, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %488 = load ptr, ptr @hws, align 4
  %arrayidx797 = getelementptr ptr, ptr %488, i32 273
  %489 = ptrtoint ptr %arrayidx797 to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call.i1200, ptr %arrayidx797, align 4
  %call.i1201 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.245, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %490 = load ptr, ptr @hws, align 4
  %arrayidx800 = getelementptr ptr, ptr %490, i32 274
  %491 = ptrtoint ptr %arrayidx800 to i32
  call void @__asan_store4_noabort(i32 %491)
  store ptr %call.i1201, ptr %arrayidx800, align 4
  %call.i1202 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.92, i32 noundef 4100, ptr noundef %add.ptr783, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_media) #4
  %492 = load ptr, ptr @hws, align 4
  %arrayidx803 = getelementptr ptr, ptr %492, i32 276
  %493 = ptrtoint ptr %arrayidx803 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %call.i1202, ptr %arrayidx803, align 4
  %add.ptr804 = getelementptr i8, ptr %call26, i32 17888
  %call.i1203 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.166, i32 noundef 4100, ptr noundef %add.ptr804, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %494 = load ptr, ptr @hws, align 4
  %arrayidx806 = getelementptr ptr, ptr %494, i32 277
  %495 = ptrtoint ptr %arrayidx806 to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %call.i1203, ptr %arrayidx806, align 4
  %add.ptr807 = getelementptr i8, ptr %call26, i32 17904
  %call.i1204 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.101, i32 noundef 4100, ptr noundef %add.ptr807, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %496 = load ptr, ptr @hws, align 4
  %arrayidx809 = getelementptr ptr, ptr %496, i32 278
  %497 = ptrtoint ptr %arrayidx809 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %call.i1204, ptr %arrayidx809, align 4
  %add.ptr810 = getelementptr i8, ptr %call26, i32 17952
  %call.i1205 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.111, i32 noundef 4100, ptr noundef %add.ptr810, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %498 = load ptr, ptr @hws, align 4
  %arrayidx812 = getelementptr ptr, ptr %498, i32 281
  %499 = ptrtoint ptr %arrayidx812 to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr %call.i1205, ptr %arrayidx812, align 4
  %add.ptr813 = getelementptr i8, ptr %call26, i32 17968
  %call.i1206 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.97, i32 noundef 4100, ptr noundef %add.ptr813, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %500 = load ptr, ptr @hws, align 4
  %arrayidx815 = getelementptr ptr, ptr %500, i32 282
  %501 = ptrtoint ptr %arrayidx815 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %call.i1206, ptr %arrayidx815, align 4
  %add.ptr816 = getelementptr i8, ptr %call26, i32 18000
  %call.i1207 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.109, i32 noundef 4100, ptr noundef %add.ptr816, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %502 = load ptr, ptr @hws, align 4
  %arrayidx818 = getelementptr ptr, ptr %502, i32 284
  %503 = ptrtoint ptr %arrayidx818 to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %call.i1207, ptr %arrayidx818, align 4
  %arrayidx819 = getelementptr ptr, ptr %502, i32 288
  %504 = ptrtoint ptr %arrayidx819 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %arrayidx819, align 4
  %clk = getelementptr inbounds %struct.clk_hw, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %clk, align 4
  %arrayidx822 = getelementptr ptr, ptr %502, i32 44
  %508 = ptrtoint ptr %arrayidx822 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %arrayidx822, align 4
  %clk823 = getelementptr inbounds %struct.clk_hw, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %clk823 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %clk823, align 4
  %arrayidx824 = getelementptr ptr, ptr %502, i32 84
  %512 = ptrtoint ptr %arrayidx824 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx824, align 4
  %clk825 = getelementptr inbounds %struct.clk_hw, ptr %513, i32 0, i32 1
  %514 = ptrtoint ptr %clk825 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %clk825, align 4
  %call826 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.93, ptr noundef %507, ptr noundef %507, ptr noundef %511, ptr noundef %515) #4
  %516 = load ptr, ptr @hws, align 4
  %arrayidx827 = getelementptr ptr, ptr %516, i32 287
  %517 = ptrtoint ptr %arrayidx827 to i32
  call void @__asan_store4_noabort(i32 %517)
  store ptr %call826, ptr %arrayidx827, align 4
  tail call void @imx_check_clk_hws(ptr noundef %516, i32 noundef 313) #4
  %518 = load ptr, ptr @clk_hw_data, align 4
  %call828 = tail call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %518) #4
  tail call void @imx_register_uart_clocks(i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %do.end83, %do.end44, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %2, %do.end44 ], [ -12, %do.end83 ], [ 0, %if.end99 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_dev_clk_hw_pll14xx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 364)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 364)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734}
!llvm.module.flags = !{!736, !737, !738, !739, !740, !741, !742, !743}
!llvm.ident = !{!744}

!0 = !{ptr @__initcall__kmod_clk_imx8mp__183_738_imx8mp_clk_driver_init6, !1, !"__initcall__kmod_clk_imx8mp__183_738_imx8mp_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 738, i32 1}
!2 = !{ptr @__exitcall_imx8mp_clk_driver_exit, !1, !"__exitcall_imx8mp_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 740, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 741, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 742, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 729, i32 11}
!12 = !{ptr @imx8mp_clk_driver, !13, !"imx8mp_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 726, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 411, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 414, i32 6}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 433, i32 43}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 434, i32 52}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 435, i32 52}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 436, i32 53}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 437, i32 53}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 438, i32 53}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 439, i32 53}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 441, i32 35}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 442, i32 35}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 443, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 444, i32 33}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 445, i32 32}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 446, i32 32}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 447, i32 32}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 448, i32 33}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 449, i32 33}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 450, i32 33}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 452, i32 27}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 453, i32 27}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 454, i32 27}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 455, i32 25}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 456, i32 24}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 457, i32 24}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 458, i32 24}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 459, i32 25}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 460, i32 25}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 461, i32 25}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 463, i32 34}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 464, i32 34}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 465, i32 34}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 466, i32 32}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 467, i32 31}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 468, i32 31}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 469, i32 31}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 470, i32 32}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 471, i32 32}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 472, i32 32}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 474, i32 31}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 475, i32 31}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 476, i32 31}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 477, i32 29}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 478, i32 28}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 479, i32 28}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 480, i32 28}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 481, i32 29}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 483, i32 32}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 484, i32 32}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 485, i32 33}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 486, i32 33}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 487, i32 33}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 488, i32 33}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 489, i32 33}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 490, i32 33}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 491, i32 29}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 493, i32 53}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 494, i32 53}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 495, i32 54}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 496, i32 54}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 497, i32 54}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 498, i32 54}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 499, i32 54}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 500, i32 54}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 501, i32 54}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 503, i32 32}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 504, i32 33}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 505, i32 33}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 506, i32 33}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 507, i32 33}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 508, i32 33}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 509, i32 33}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 510, i32 33}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 511, i32 29}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 513, i32 53}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 514, i32 54}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 515, i32 54}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 516, i32 54}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 517, i32 54}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 518, i32 54}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 519, i32 54}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 520, i32 54}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 521, i32 55}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 523, i32 28}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 526, i32 28}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 527, i32 28}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 528, i32 31}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 529, i32 38}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 530, i32 31}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 531, i32 30}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 533, i32 29}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 534, i32 30}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 537, i32 29}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 539, i32 29}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 540, i32 29}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 541, i32 35}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 542, i32 28}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 543, i32 30}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 544, i32 30}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 545, i32 29}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 546, i32 29}
!216 = !{ptr @.str.102, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 547, i32 28}
!218 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 548, i32 28}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 549, i32 24}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 550, i32 27}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 551, i32 27}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 552, i32 27}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 554, i32 24}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 555, i32 30}
!232 = !{ptr @.str.110, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 556, i32 36}
!234 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 558, i32 29}
!236 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 560, i32 29}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 561, i32 29}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 562, i32 27}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 563, i32 27}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 564, i32 25}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 565, i32 25}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 566, i32 29}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 567, i32 25}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 568, i32 25}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 569, i32 25}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 570, i32 25}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 571, i32 25}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 572, i32 25}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 573, i32 25}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 574, i32 25}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 575, i32 29}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 576, i32 35}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 577, i32 29}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 578, i32 31}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 579, i32 33}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 580, i32 25}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 581, i32 25}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 582, i32 27}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 583, i32 27}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 584, i32 25}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 585, i32 25}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 586, i32 25}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 587, i32 25}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 589, i32 26}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 590, i32 26}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 591, i32 26}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 592, i32 26}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 593, i32 33}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 594, i32 32}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 595, i32 24}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 596, i32 27}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 597, i32 27}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 598, i32 25}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 599, i32 25}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 600, i32 25}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 601, i32 25}
!318 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 603, i32 25}
!320 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 604, i32 25}
!322 = !{ptr @.str.155, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 605, i32 25}
!324 = !{ptr @.str.156, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 606, i32 25}
!326 = !{ptr @.str.157, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 607, i32 25}
!328 = !{ptr @.str.158, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 608, i32 25}
!330 = !{ptr @.str.159, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 609, i32 25}
!332 = !{ptr @.str.160, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 610, i32 26}
!334 = !{ptr @.str.161, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 611, i32 33}
!336 = !{ptr @.str.162, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 612, i32 33}
!338 = !{ptr @.str.163, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 613, i32 34}
!340 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 614, i32 29}
!342 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 615, i32 34}
!344 = !{ptr @.str.166, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 616, i32 27}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 617, i32 35}
!348 = !{ptr @.str.168, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 618, i32 40}
!350 = !{ptr @.str.169, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 619, i32 36}
!352 = !{ptr @.str.170, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 620, i32 35}
!354 = !{ptr @.str.171, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 621, i32 30}
!356 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 622, i32 30}
!358 = !{ptr @.str.173, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 623, i32 41}
!360 = !{ptr @.str.174, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 624, i32 27}
!362 = !{ptr @.str.175, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 625, i32 24}
!364 = !{ptr @.str.176, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 626, i32 32}
!366 = !{ptr @.str.177, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 627, i32 25}
!368 = !{ptr @.str.178, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 629, i32 58}
!370 = !{ptr @.str.179, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 630, i32 30}
!372 = !{ptr @.str.180, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 632, i32 31}
!374 = !{ptr @.str.181, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 633, i32 32}
!376 = !{ptr @.str.182, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 634, i32 32}
!378 = !{ptr @.str.183, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 635, i32 32}
!380 = !{ptr @.str.184, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 636, i32 31}
!382 = !{ptr @.str.185, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 637, i32 31}
!384 = !{ptr @.str.186, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 638, i32 31}
!386 = !{ptr @.str.187, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 639, i32 31}
!388 = !{ptr @.str.188, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 640, i32 31}
!390 = !{ptr @.str.189, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 641, i32 31}
!392 = !{ptr @.str.190, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 642, i32 30}
!394 = !{ptr @.str.191, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 643, i32 30}
!396 = !{ptr @.str.192, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 644, i32 30}
!398 = !{ptr @.str.193, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 645, i32 30}
!400 = !{ptr @.str.194, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 646, i32 30}
!402 = !{ptr @.str.195, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 647, i32 30}
!404 = !{ptr @.str.196, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 648, i32 30}
!406 = !{ptr @.str.197, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 649, i32 30}
!408 = !{ptr @.str.198, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 650, i32 30}
!410 = !{ptr @.str.199, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 651, i32 30}
!412 = !{ptr @.str.200, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 652, i32 28}
!414 = !{ptr @.str.201, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 653, i32 31}
!416 = !{ptr @.str.202, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 654, i32 30}
!418 = !{ptr @.str.203, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 655, i32 30}
!420 = !{ptr @.str.204, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 656, i32 30}
!422 = !{ptr @.str.205, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 657, i32 30}
!424 = !{ptr @.str.206, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 658, i32 30}
!426 = !{ptr @.str.207, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 659, i32 29}
!428 = !{ptr @.str.208, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 660, i32 34}
!430 = !{ptr @.str.209, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 661, i32 30}
!432 = !{ptr @.str.210, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 662, i32 30}
!434 = !{ptr @.str.211, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 663, i32 47}
!436 = !{ptr @.str.212, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 664, i32 30}
!438 = !{ptr @.str.213, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 665, i32 30}
!440 = !{ptr @.str.214, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 666, i32 30}
!442 = !{ptr @.str.215, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 667, i32 30}
!444 = !{ptr @.str.216, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 668, i32 31}
!446 = !{ptr @.str.217, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 669, i32 34}
!448 = !{ptr @.str.218, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.219, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 671, i32 31}
!451 = !{ptr @.str.220, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 672, i32 31}
!453 = !{ptr @.str.221, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 673, i32 30}
!455 = !{ptr @.str.222, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 674, i32 31}
!457 = !{ptr @.str.223, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 675, i32 31}
!459 = !{ptr @.str.224, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 676, i32 31}
!461 = !{ptr @.str.225, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 677, i32 31}
!463 = !{ptr @.str.226, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 678, i32 29}
!465 = !{ptr @.str.227, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 679, i32 33}
!467 = !{ptr @.str.228, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 680, i32 32}
!469 = !{ptr @.str.229, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 681, i32 32}
!471 = !{ptr @.str.230, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 682, i32 31}
!473 = !{ptr @.str.231, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 683, i32 31}
!475 = !{ptr @.str.232, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 684, i32 31}
!477 = !{ptr @.str.233, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 685, i32 32}
!479 = !{ptr @.str.234, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 686, i32 29}
!481 = !{ptr @.str.235, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 687, i32 35}
!483 = !{ptr @.str.236, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 688, i32 32}
!485 = !{ptr @.str.237, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 689, i32 29}
!487 = !{ptr @.str.238, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 690, i32 30}
!489 = !{ptr @.str.239, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 691, i32 35}
!491 = !{ptr @.str.240, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 692, i32 35}
!493 = !{ptr @.str.241, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 693, i32 40}
!495 = !{ptr @.str.242, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 694, i32 40}
!497 = !{ptr @.str.243, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 695, i32 41}
!499 = !{ptr @.str.244, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 696, i32 41}
!501 = !{ptr @.str.245, !500, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.246, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 697, i32 35}
!504 = !{ptr @.str.247, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 699, i32 32}
!506 = !{ptr @.str.248, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 700, i32 30}
!508 = !{ptr @.str.249, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 701, i32 33}
!510 = !{ptr @.str.250, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 702, i32 29}
!512 = !{ptr @.str.251, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 703, i32 31}
!514 = !{ptr @.str.252, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 705, i32 39}
!516 = !{ptr @clk_hw_data, !517, !"clk_hw_data", i1 false, i1 false}
!517 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 403, i32 36}
!518 = !{ptr @hws, !519, !"hws", i1 false, i1 false}
!519 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 402, i32 24}
!520 = !{ptr @pll_ref_sels, !521, !"pll_ref_sels", i1 false, i1 false}
!521 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 21, i32 27}
!522 = !{ptr @audio_pll1_bypass_sels, !523, !"audio_pll1_bypass_sels", i1 false, i1 false}
!523 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 22, i32 27}
!524 = !{ptr @audio_pll2_bypass_sels, !525, !"audio_pll2_bypass_sels", i1 false, i1 false}
!525 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 23, i32 27}
!526 = !{ptr @video_pll1_bypass_sels, !527, !"video_pll1_bypass_sels", i1 false, i1 false}
!527 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 24, i32 27}
!528 = !{ptr @dram_pll_bypass_sels, !529, !"dram_pll_bypass_sels", i1 false, i1 false}
!529 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 25, i32 27}
!530 = !{ptr @gpu_pll_bypass_sels, !531, !"gpu_pll_bypass_sels", i1 false, i1 false}
!531 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 26, i32 27}
!532 = !{ptr @vpu_pll_bypass_sels, !533, !"vpu_pll_bypass_sels", i1 false, i1 false}
!533 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 27, i32 27}
!534 = !{ptr @arm_pll_bypass_sels, !535, !"arm_pll_bypass_sels", i1 false, i1 false}
!535 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 28, i32 27}
!536 = !{ptr @sys_pll1_bypass_sels, !537, !"sys_pll1_bypass_sels", i1 false, i1 false}
!537 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 29, i32 27}
!538 = !{ptr @sys_pll2_bypass_sels, !539, !"sys_pll2_bypass_sels", i1 false, i1 false}
!539 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 30, i32 27}
!540 = !{ptr @sys_pll3_bypass_sels, !541, !"sys_pll3_bypass_sels", i1 false, i1 false}
!541 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 31, i32 27}
!542 = !{ptr @imx8mp_a53_sels, !543, !"imx8mp_a53_sels", i1 false, i1 false}
!543 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 33, i32 27}
!544 = !{ptr @imx8mp_m7_sels, !545, !"imx8mp_m7_sels", i1 false, i1 false}
!545 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 39, i32 27}
!546 = !{ptr @imx8mp_ml_sels, !547, !"imx8mp_ml_sels", i1 false, i1 false}
!547 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 43, i32 27}
!548 = !{ptr @imx8mp_gpu3d_core_sels, !549, !"imx8mp_gpu3d_core_sels", i1 false, i1 false}
!549 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 47, i32 27}
!550 = !{ptr @imx8mp_gpu3d_shader_sels, !551, !"imx8mp_gpu3d_shader_sels", i1 false, i1 false}
!551 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 51, i32 27}
!552 = !{ptr @imx8mp_gpu2d_sels, !553, !"imx8mp_gpu2d_sels", i1 false, i1 false}
!553 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 55, i32 27}
!554 = !{ptr @imx8mp_audio_axi_sels, !555, !"imx8mp_audio_axi_sels", i1 false, i1 false}
!555 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 59, i32 27}
!556 = !{ptr @imx8mp_hsio_axi_sels, !557, !"imx8mp_hsio_axi_sels", i1 false, i1 false}
!557 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 63, i32 27}
!558 = !{ptr @imx8mp_media_isp_sels, !559, !"imx8mp_media_isp_sels", i1 false, i1 false}
!559 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 67, i32 27}
!560 = !{ptr @imx8mp_a53_core_sels, !561, !"imx8mp_a53_core_sels", i1 false, i1 false}
!561 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 37, i32 27}
!562 = !{ptr @imx8mp_main_axi_sels, !563, !"imx8mp_main_axi_sels", i1 false, i1 false}
!563 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 71, i32 27}
!564 = !{ptr @imx8mp_enet_axi_sels, !565, !"imx8mp_enet_axi_sels", i1 false, i1 false}
!565 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 75, i32 27}
!566 = !{ptr @imx8mp_nand_usdhc_sels, !567, !"imx8mp_nand_usdhc_sels", i1 false, i1 false}
!567 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 79, i32 27}
!568 = !{ptr @imx8mp_vpu_bus_sels, !569, !"imx8mp_vpu_bus_sels", i1 false, i1 false}
!569 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 83, i32 27}
!570 = !{ptr @imx8mp_media_axi_sels, !571, !"imx8mp_media_axi_sels", i1 false, i1 false}
!571 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 87, i32 27}
!572 = !{ptr @imx8mp_media_apb_sels, !573, !"imx8mp_media_apb_sels", i1 false, i1 false}
!573 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 91, i32 27}
!574 = !{ptr @imx8mp_gpu_axi_sels, !575, !"imx8mp_gpu_axi_sels", i1 false, i1 false}
!575 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 95, i32 27}
!576 = !{ptr @imx8mp_gpu_ahb_sels, !577, !"imx8mp_gpu_ahb_sels", i1 false, i1 false}
!577 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 99, i32 27}
!578 = !{ptr @imx8mp_noc_sels, !579, !"imx8mp_noc_sels", i1 false, i1 false}
!579 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 103, i32 27}
!580 = !{ptr @imx8mp_noc_io_sels, !581, !"imx8mp_noc_io_sels", i1 false, i1 false}
!581 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 107, i32 27}
!582 = !{ptr @imx8mp_ml_axi_sels, !583, !"imx8mp_ml_axi_sels", i1 false, i1 false}
!583 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 111, i32 27}
!584 = !{ptr @imx8mp_ml_ahb_sels, !585, !"imx8mp_ml_ahb_sels", i1 false, i1 false}
!585 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 115, i32 27}
!586 = !{ptr @imx8mp_ahb_sels, !587, !"imx8mp_ahb_sels", i1 false, i1 false}
!587 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 119, i32 27}
!588 = !{ptr @imx8mp_audio_ahb_sels, !589, !"imx8mp_audio_ahb_sels", i1 false, i1 false}
!589 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 123, i32 27}
!590 = !{ptr @imx8mp_mipi_dsi_esc_rx_sels, !591, !"imx8mp_mipi_dsi_esc_rx_sels", i1 false, i1 false}
!591 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 127, i32 27}
!592 = !{ptr @imx8mp_dram_alt_sels, !593, !"imx8mp_dram_alt_sels", i1 false, i1 false}
!593 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 131, i32 27}
!594 = !{ptr @imx8mp_dram_apb_sels, !595, !"imx8mp_dram_apb_sels", i1 false, i1 false}
!595 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 135, i32 27}
!596 = !{ptr @imx8mp_vpu_g1_sels, !597, !"imx8mp_vpu_g1_sels", i1 false, i1 false}
!597 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 139, i32 27}
!598 = !{ptr @imx8mp_vpu_g2_sels, !599, !"imx8mp_vpu_g2_sels", i1 false, i1 false}
!599 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 143, i32 27}
!600 = !{ptr @imx8mp_can1_sels, !601, !"imx8mp_can1_sels", i1 false, i1 false}
!601 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 147, i32 27}
!602 = !{ptr @imx8mp_can2_sels, !603, !"imx8mp_can2_sels", i1 false, i1 false}
!603 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 151, i32 27}
!604 = !{ptr @imx8mp_pcie_aux_sels, !605, !"imx8mp_pcie_aux_sels", i1 false, i1 false}
!605 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 155, i32 27}
!606 = !{ptr @imx8mp_i2c5_sels, !607, !"imx8mp_i2c5_sels", i1 false, i1 false}
!607 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 159, i32 27}
!608 = !{ptr @imx8mp_i2c6_sels, !609, !"imx8mp_i2c6_sels", i1 false, i1 false}
!609 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 163, i32 27}
!610 = !{ptr @.str.253, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 168, i32 42}
!612 = !{ptr @imx8mp_sai1_sels, !613, !"imx8mp_sai1_sels", i1 false, i1 false}
!613 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 167, i32 27}
!614 = !{ptr @imx8mp_sai2_sels, !615, !"imx8mp_sai2_sels", i1 false, i1 false}
!615 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 171, i32 27}
!616 = !{ptr @imx8mp_sai3_sels, !617, !"imx8mp_sai3_sels", i1 false, i1 false}
!617 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 175, i32 27}
!618 = !{ptr @imx8mp_sai4_sels, !619, !"imx8mp_sai4_sels", i1 false, i1 false}
!619 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 179, i32 27}
!620 = !{ptr @imx8mp_sai5_sels, !621, !"imx8mp_sai5_sels", i1 false, i1 false}
!621 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 183, i32 27}
!622 = !{ptr @imx8mp_sai6_sels, !623, !"imx8mp_sai6_sels", i1 false, i1 false}
!623 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 187, i32 27}
!624 = !{ptr @imx8mp_enet_qos_sels, !625, !"imx8mp_enet_qos_sels", i1 false, i1 false}
!625 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 191, i32 27}
!626 = !{ptr @imx8mp_enet_qos_timer_sels, !627, !"imx8mp_enet_qos_timer_sels", i1 false, i1 false}
!627 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 195, i32 27}
!628 = !{ptr @imx8mp_enet_ref_sels, !629, !"imx8mp_enet_ref_sels", i1 false, i1 false}
!629 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 199, i32 27}
!630 = !{ptr @imx8mp_enet_timer_sels, !631, !"imx8mp_enet_timer_sels", i1 false, i1 false}
!631 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 203, i32 27}
!632 = !{ptr @imx8mp_enet_phy_ref_sels, !633, !"imx8mp_enet_phy_ref_sels", i1 false, i1 false}
!633 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 207, i32 27}
!634 = !{ptr @imx8mp_nand_sels, !635, !"imx8mp_nand_sels", i1 false, i1 false}
!635 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 211, i32 27}
!636 = !{ptr @imx8mp_qspi_sels, !637, !"imx8mp_qspi_sels", i1 false, i1 false}
!637 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 215, i32 27}
!638 = !{ptr @imx8mp_usdhc1_sels, !639, !"imx8mp_usdhc1_sels", i1 false, i1 false}
!639 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 219, i32 27}
!640 = !{ptr @imx8mp_usdhc2_sels, !641, !"imx8mp_usdhc2_sels", i1 false, i1 false}
!641 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 223, i32 27}
!642 = !{ptr @imx8mp_i2c1_sels, !643, !"imx8mp_i2c1_sels", i1 false, i1 false}
!643 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 227, i32 27}
!644 = !{ptr @imx8mp_i2c2_sels, !645, !"imx8mp_i2c2_sels", i1 false, i1 false}
!645 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 231, i32 27}
!646 = !{ptr @imx8mp_i2c3_sels, !647, !"imx8mp_i2c3_sels", i1 false, i1 false}
!647 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 235, i32 27}
!648 = !{ptr @imx8mp_i2c4_sels, !649, !"imx8mp_i2c4_sels", i1 false, i1 false}
!649 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 239, i32 27}
!650 = !{ptr @imx8mp_uart1_sels, !651, !"imx8mp_uart1_sels", i1 false, i1 false}
!651 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 243, i32 27}
!652 = !{ptr @imx8mp_uart2_sels, !653, !"imx8mp_uart2_sels", i1 false, i1 false}
!653 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 247, i32 27}
!654 = !{ptr @imx8mp_uart3_sels, !655, !"imx8mp_uart3_sels", i1 false, i1 false}
!655 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 251, i32 27}
!656 = !{ptr @imx8mp_uart4_sels, !657, !"imx8mp_uart4_sels", i1 false, i1 false}
!657 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 255, i32 27}
!658 = !{ptr @imx8mp_usb_core_ref_sels, !659, !"imx8mp_usb_core_ref_sels", i1 false, i1 false}
!659 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 259, i32 27}
!660 = !{ptr @imx8mp_usb_phy_ref_sels, !661, !"imx8mp_usb_phy_ref_sels", i1 false, i1 false}
!661 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 263, i32 27}
!662 = !{ptr @imx8mp_gic_sels, !663, !"imx8mp_gic_sels", i1 false, i1 false}
!663 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 267, i32 27}
!664 = !{ptr @imx8mp_ecspi1_sels, !665, !"imx8mp_ecspi1_sels", i1 false, i1 false}
!665 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 271, i32 27}
!666 = !{ptr @imx8mp_ecspi2_sels, !667, !"imx8mp_ecspi2_sels", i1 false, i1 false}
!667 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 275, i32 27}
!668 = !{ptr @imx8mp_pwm1_sels, !669, !"imx8mp_pwm1_sels", i1 false, i1 false}
!669 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 279, i32 27}
!670 = !{ptr @imx8mp_pwm2_sels, !671, !"imx8mp_pwm2_sels", i1 false, i1 false}
!671 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 283, i32 27}
!672 = !{ptr @imx8mp_pwm3_sels, !673, !"imx8mp_pwm3_sels", i1 false, i1 false}
!673 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 287, i32 27}
!674 = !{ptr @imx8mp_pwm4_sels, !675, !"imx8mp_pwm4_sels", i1 false, i1 false}
!675 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 291, i32 27}
!676 = !{ptr @imx8mp_gpt1_sels, !677, !"imx8mp_gpt1_sels", i1 false, i1 false}
!677 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 295, i32 27}
!678 = !{ptr @imx8mp_gpt2_sels, !679, !"imx8mp_gpt2_sels", i1 false, i1 false}
!679 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 299, i32 27}
!680 = !{ptr @imx8mp_gpt3_sels, !681, !"imx8mp_gpt3_sels", i1 false, i1 false}
!681 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 303, i32 27}
!682 = !{ptr @imx8mp_gpt4_sels, !683, !"imx8mp_gpt4_sels", i1 false, i1 false}
!683 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 307, i32 27}
!684 = !{ptr @imx8mp_gpt5_sels, !685, !"imx8mp_gpt5_sels", i1 false, i1 false}
!685 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 311, i32 27}
!686 = !{ptr @imx8mp_gpt6_sels, !687, !"imx8mp_gpt6_sels", i1 false, i1 false}
!687 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 315, i32 27}
!688 = !{ptr @imx8mp_wdog_sels, !689, !"imx8mp_wdog_sels", i1 false, i1 false}
!689 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 319, i32 27}
!690 = !{ptr @imx8mp_wrclk_sels, !691, !"imx8mp_wrclk_sels", i1 false, i1 false}
!691 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 323, i32 27}
!692 = !{ptr @imx8mp_ipp_do_clko1_sels, !693, !"imx8mp_ipp_do_clko1_sels", i1 false, i1 false}
!693 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 327, i32 27}
!694 = !{ptr @.str.254, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 332, i32 8}
!696 = !{ptr @imx8mp_ipp_do_clko2_sels, !697, !"imx8mp_ipp_do_clko2_sels", i1 false, i1 false}
!697 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 331, i32 27}
!698 = !{ptr @imx8mp_hdmi_fdcc_tst_sels, !699, !"imx8mp_hdmi_fdcc_tst_sels", i1 false, i1 false}
!699 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 335, i32 27}
!700 = !{ptr @imx8mp_hdmi_24m_sels, !701, !"imx8mp_hdmi_24m_sels", i1 false, i1 false}
!701 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 339, i32 27}
!702 = !{ptr @imx8mp_hdmi_ref_266m_sels, !703, !"imx8mp_hdmi_ref_266m_sels", i1 false, i1 false}
!703 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 343, i32 27}
!704 = !{ptr @imx8mp_usdhc3_sels, !705, !"imx8mp_usdhc3_sels", i1 false, i1 false}
!705 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 347, i32 27}
!706 = !{ptr @imx8mp_media_cam1_pix_sels, !707, !"imx8mp_media_cam1_pix_sels", i1 false, i1 false}
!707 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 351, i32 27}
!708 = !{ptr @imx8mp_media_mipi_phy1_ref_sels, !709, !"imx8mp_media_mipi_phy1_ref_sels", i1 false, i1 false}
!709 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 356, i32 27}
!710 = !{ptr @imx8mp_media_disp1_pix_sels, !711, !"imx8mp_media_disp1_pix_sels", i1 false, i1 false}
!711 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 361, i32 27}
!712 = !{ptr @imx8mp_media_cam2_pix_sels, !713, !"imx8mp_media_cam2_pix_sels", i1 false, i1 false}
!713 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 365, i32 27}
!714 = !{ptr @imx8mp_media_ldb_sels, !715, !"imx8mp_media_ldb_sels", i1 false, i1 false}
!715 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 370, i32 27}
!716 = !{ptr @imx8mp_memrepair_sels, !717, !"imx8mp_memrepair_sels", i1 false, i1 false}
!717 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 375, i32 27}
!718 = !{ptr @imx8mp_media_mipi_test_byte_sels, !719, !"imx8mp_media_mipi_test_byte_sels", i1 false, i1 false}
!719 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 379, i32 27}
!720 = !{ptr @imx8mp_ecspi3_sels, !721, !"imx8mp_ecspi3_sels", i1 false, i1 false}
!721 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 384, i32 27}
!722 = !{ptr @imx8mp_pdm_sels, !723, !"imx8mp_pdm_sels", i1 false, i1 false}
!723 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 388, i32 27}
!724 = !{ptr @imx8mp_vpu_vc8000e_sels, !725, !"imx8mp_vpu_vc8000e_sels", i1 false, i1 false}
!725 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 392, i32 27}
!726 = !{ptr @imx8mp_sai7_sels, !727, !"imx8mp_sai7_sels", i1 false, i1 false}
!727 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 396, i32 27}
!728 = !{ptr @imx8mp_dram_core_sels, !729, !"imx8mp_dram_core_sels", i1 false, i1 false}
!729 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 400, i32 27}
!730 = !{ptr @share_count_nand, !731, !"share_count_nand", i1 false, i1 false}
!731 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 18, i32 12}
!732 = !{ptr @share_count_media, !733, !"share_count_media", i1 false, i1 false}
!733 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 19, i32 12}
!734 = !{ptr @imx8mp_clk_of_match, !735, !"imx8mp_clk_of_match", i1 false, i1 false}
!735 = !{!"../drivers/clk/imx/clk-imx8mp.c", i32 720, i32 34}
!736 = !{i32 1, !"wchar_size", i32 2}
!737 = !{i32 1, !"min_enum_size", i32 4}
!738 = !{i32 8, !"branch-target-enforcement", i32 0}
!739 = !{i32 8, !"sign-return-address", i32 0}
!740 = !{i32 8, !"sign-return-address-all", i32 0}
!741 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!742 = !{i32 7, !"uwtable", i32 1}
!743 = !{i32 7, !"frame-pointer", i32 2}
!744 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!745 = !{!"branch_weights", i32 1, i32 2000}
