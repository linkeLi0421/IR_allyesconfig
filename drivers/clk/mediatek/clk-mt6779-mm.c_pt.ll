; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt6779-mm.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt6779-mm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_clk_mt6779_mm__170_109_clk_mt6779_mm_drv_init6 = internal global ptr @clk_mt6779_mm_drv_init, section ".initcall6.init", align 4
@clk_mt6779_mm_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt6779_mm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clk_mt6779_mm_drv_exit = internal global ptr @clk_mt6779_mm_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [54 x i8] c"clk_mt6779_mm.file=drivers/clk/mediatek/clk-mt6779-mm\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [26 x i8] c"clk_mt6779_mm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk-mt6779-mm\00", [18 x i8] zeroinitializer }, align 32
@mm_clks = internal constant { [49 x %struct.mtk_gate], [324 x i8] } { [49 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.1, ptr @.str.2, ptr @mm0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.3, ptr @.str.2, ptr @mm0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.4, ptr @.str.2, ptr @mm0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.5, ptr @.str.2, ptr @mm0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.6, ptr @.str.2, ptr @mm0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.7, ptr @.str.2, ptr @mm0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.8, ptr @.str.2, ptr @mm0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.9, ptr @.str.2, ptr @mm0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.10, ptr @.str.2, ptr @mm0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.11, ptr @.str.2, ptr @mm0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.12, ptr @.str.2, ptr @mm0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.13, ptr @.str.2, ptr @mm0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.14, ptr @.str.2, ptr @mm0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.15, ptr @.str.2, ptr @mm0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.16, ptr @.str.2, ptr @mm0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.17, ptr @.str.2, ptr @mm0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.18, ptr @.str.2, ptr @mm0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.19, ptr @.str.2, ptr @mm0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.20, ptr @.str.2, ptr @mm0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.21, ptr @.str.2, ptr @mm0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.22, ptr @.str.2, ptr @mm0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.23, ptr @.str.2, ptr @mm0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.24, ptr @.str.2, ptr @mm0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.25, ptr @.str.2, ptr @mm0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.26, ptr @.str.2, ptr @mm0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.27, ptr @.str.2, ptr @mm0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.28, ptr @.str.2, ptr @mm0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.29, ptr @.str.2, ptr @mm0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.30, ptr @.str.2, ptr @mm0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.31, ptr @.str.2, ptr @mm0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.32, ptr @.str.2, ptr @mm0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.33, ptr @.str.2, ptr @mm0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.34, ptr @.str.2, ptr @mm1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.35, ptr @.str.2, ptr @mm1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.36, ptr @.str.2, ptr @mm1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.37, ptr @.str.38, ptr @mm1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.39, ptr @.str.2, ptr @mm1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.40, ptr @.str.2, ptr @mm1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.41, ptr @.str.2, ptr @mm1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.42, ptr @.str.43, ptr @mm1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.44, ptr @.str.2, ptr @mm1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.45, ptr @.str.2, ptr @mm1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.46, ptr @.str.2, ptr @mm1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.47, ptr @.str.2, ptr @mm1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.48, ptr @.str.2, ptr @mm1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.49, ptr @.str.38, ptr @mm1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.50, ptr @.str.2, ptr @mm1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.51, ptr @.str.2, ptr @mm1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.52, ptr @.str.2, ptr @mm1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_smi_common\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@mm0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 256, i32 264, i32 260 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_smi_larb0\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_smi_larb1\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_gals_comm0\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_gals_comm1\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_gals_ccu2mm\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm_gals_ipu12mm\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_gals_img2mm\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_gals_cam2mm\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_gals_ipu2mm\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_mdp_dl_txck\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_ipu_dl_txck\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_mdp_rdma0\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_mdp_rdma1\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_mdp_rsz0\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_mdp_rsz1\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_mdp_tdshp\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_mdp_wrot0\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_mdp_wrot1\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_fake_eng\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_disp_ovl0\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm_disp_ovl0_2l\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm_disp_ovl1_2l\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_disp_rdma0\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_disp_rdma1\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_disp_wdma0\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_disp_color0\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_disp_ccorr0\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_disp_aal0\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_disp_gamma0\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm_disp_dither0\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm_disp_split\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_dsi0_mmck\00", [19 x i8] zeroinitializer }, align 32
@mm1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 272, i32 280, i32 276 }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_dsi0_ifck\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_dpi_mmck\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_dpi_ifck\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi0_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_fake_eng2\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_mdp_dl_rxck\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_ipu_dl_rxck\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_26m\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_f26m_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm_mmsys_r2y\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_disp_rsz\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm_mdp_aal\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mm_mdp_hdr\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_dbi_mmck\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_dbi_ifck\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm_disp_pm0\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm_disp_hrt_bw\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm_disp_ovl_fbdc\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"clk_mt6779_mm_drv\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 102, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 105, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"mm_clks\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 34, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 36, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"mm0_cg_regs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 15, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 37, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 38, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 39, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 40, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 41, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 42, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 43, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 44, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 45, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 46, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 47, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 48, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 49, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 50, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 51, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 52, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 53, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 54, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 55, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 56, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 57, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 58, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 59, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 60, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 61, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 62, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 63, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 64, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 65, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 66, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 67, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 69, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"mm1_cg_regs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 21, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 70, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 71, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 72, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 73, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 74, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 75, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 76, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 77, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 78, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 79, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 80, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 81, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 82, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 83, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 84, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [40 x i8] c"../drivers/clk/mediatek/clk-mt6779-mm.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 85, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_clk_mt6779_mm_drv_exit, ptr @__initcall__kmod_clk_mt6779_mm__170_109_clk_mt6779_mm_drv_init6, ptr @clk_mt6779_mm_drv_exit, ptr @clk_mt6779_mm_drv, ptr @.str, ptr @mm_clks, ptr @.str.1, ptr @.str.2, ptr @mm0_cg_regs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mm1_cg_regs, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6779_mm_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_clks to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6779_mm_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt6779_mm_drv, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clk_mt6779_mm_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @clk_mt6779_mm_drv) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6779_mm_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 51) #3
  %call2 = tail call i32 @mtk_clk_register_gates(ptr noundef %3, ptr noundef nonnull @mm_clks, i32 noundef 49, ptr noundef %call) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_clk_mt6779_mm__170_109_clk_mt6779_mm_drv_init6, !1, !"__initcall__kmod_clk_mt6779_mm__170_109_clk_mt6779_mm_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 109, i32 1}
!2 = !{ptr @__exitcall_clk_mt6779_mm_drv_exit, !1, !"__exitcall_clk_mt6779_mm_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 110, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 105, i32 11}
!8 = !{ptr @clk_mt6779_mm_drv, !9, !"clk_mt6779_mm_drv", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 102, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 36, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 37, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 38, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 39, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 40, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 41, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 42, i32 2}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 43, i32 2}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 44, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 45, i32 2}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 46, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 47, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 48, i32 2}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 49, i32 2}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 50, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 51, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 52, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 53, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 54, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 55, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 56, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 57, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 58, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 59, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 60, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 61, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 62, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 63, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 64, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 65, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 66, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 67, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 69, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 70, i32 2}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 71, i32 2}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 72, i32 2}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 73, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 74, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 75, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 76, i32 2}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 77, i32 2}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 78, i32 2}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 79, i32 2}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 80, i32 2}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 81, i32 2}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 82, i32 2}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 83, i32 2}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 84, i32 2}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 85, i32 2}
!111 = !{ptr @mm_clks, !112, !"mm_clks", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 34, i32 30}
!113 = !{ptr @mm0_cg_regs, !114, !"mm0_cg_regs", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 15, i32 35}
!115 = !{ptr @mm1_cg_regs, !116, !"mm1_cg_regs", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt6779-mm.c", i32 21, i32 35}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
