; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-mipi-dsi.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-mipi-dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_mipitx_data = type { i32, ptr, ptr, ptr }
%struct.mtk_mipi_tx = type { ptr, ptr, i32, i32, [5 x i32], ptr, %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
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

@mtk_mipi_tx_pll_set_rate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_mtk_mipi_dsi_drv\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_mipi_tx_pll_set_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/phy/mediatek/phy-mtk-mipi-dsi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set rate: %lu Hz\0A\00", [46 x i8] zeroinitializer }, align 32
@__initcall__kmod_phy_mtk_mipi_dsi_drv__294_241_mtk_mipi_tx_driver_init6 = internal global ptr @mtk_mipi_tx_driver_init, section ".initcall6.init", align 4
@mtk_mipi_tx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_mipi_tx_probe, ptr @mtk_mipi_tx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_mipi_tx_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_mipi_tx_driver_exit = internal global ptr @mtk_mipi_tx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [57 x i8] c"phy_mtk_mipi_dsi_drv.description=MediaTek MIPI TX Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [68 x i8] c"phy_mtk_mipi_dsi_drv.file=drivers/phy/mediatek/phy-mtk-mipi-dsi-drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [36 x i8] c"phy_mtk_mipi_dsi_drv.license=GPL v2\00", section ".modinfo", align 1
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek-mipi-tx\00", [47 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-mipi-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_mipitx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mipi-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_mipitx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mipi-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mipitx_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 159, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get reference clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_mipi_tx_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry_ptr = internal global ptr @mtk_mipi_tx_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drive-strength-microamp\00", [40 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 172, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drive-strength-microamp is invalid %d, not in 3000 ~ 6000\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry_ptr.13 = internal global ptr @mtk_mipi_tx_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 182, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read clock-output-names: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry_ptr.17 = internal global ptr @mtk_mipi_tx_probe._entry.15, section ".printk_index", align 4
@mtk_mipi_tx_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.2, i32 192, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register PLL: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry_ptr.20 = internal global ptr @mtk_mipi_tx_probe._entry.18, section ".printk_index", align 4
@mtk_mipi_tx_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @mtk_mipi_tx_power_on, ptr @mtk_mipi_tx_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.2, i32 199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create MIPI D-PHY: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_probe._entry_ptr.23 = internal global ptr @mtk_mipi_tx_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calibration-data\00", [47 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_get_calibration_datal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 99, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't get nvmem_cell_get, ignore it\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mtk_mipi_tx_get_calibration_datal\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_get_calibration_datal._entry_ptr = internal global ptr @mtk_mipi_tx_get_calibration_datal._entry, section ".printk_index", align 4
@mtk_mipi_tx_get_calibration_datal._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.2, i32 106, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't get data, ignore it\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_get_calibration_datal._entry_ptr.30 = internal global ptr @mtk_mipi_tx_get_calibration_datal._entry.28, section ".printk_index", align 4
@mtk_mipi_tx_get_calibration_datal._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 111, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid calibration data\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_get_calibration_datal._entry_ptr.33 = internal global ptr @mtk_mipi_tx_get_calibration_datal._entry.31, section ".printk_index", align 4
@mt2701_mipitx_data = external dso_local constant %struct.mtk_mipitx_data, align 4
@mt8173_mipitx_data = external dso_local constant %struct.mtk_mipitx_data, align 4
@mt8183_mipitx_data = external dso_local constant %struct.mtk_mipitx_data, align 4
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 42, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"mtk_mipi_tx_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 233, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 237, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"mtk_mipi_tx_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 222, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 159, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 163, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 171, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 179, i32 46 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 182, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 192, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"mtk_mipi_tx_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 85, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 199, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 97, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 99, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 106, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [43 x i8] c"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 111, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_mtk_mipi_tx_driver_exit, ptr @__initcall__kmod_phy_mtk_mipi_dsi_drv__294_241_mtk_mipi_tx_driver_init6, ptr @mtk_mipi_tx_driver_exit, ptr @mtk_mipi_tx_get_calibration_datal._entry, ptr @mtk_mipi_tx_get_calibration_datal._entry.28, ptr @mtk_mipi_tx_get_calibration_datal._entry.31, ptr @mtk_mipi_tx_get_calibration_datal._entry_ptr, ptr @mtk_mipi_tx_get_calibration_datal._entry_ptr.30, ptr @mtk_mipi_tx_get_calibration_datal._entry_ptr.33, ptr @mtk_mipi_tx_probe._entry, ptr @mtk_mipi_tx_probe._entry.10, ptr @mtk_mipi_tx_probe._entry.15, ptr @mtk_mipi_tx_probe._entry.18, ptr @mtk_mipi_tx_probe._entry.21, ptr @mtk_mipi_tx_probe._entry_ptr, ptr @mtk_mipi_tx_probe._entry_ptr.13, ptr @mtk_mipi_tx_probe._entry_ptr.17, ptr @mtk_mipi_tx_probe._entry_ptr.20, ptr @mtk_mipi_tx_probe._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mtk_mipi_tx_driver, ptr @.str.4, ptr @mtk_mipi_tx_match, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @mtk_mipi_tx_ops, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_get_calibration_datal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_get_calibration_datal._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_get_calibration_datal._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mtk_mipi_tx_from_clk_hw(ptr noundef readnone %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %hw, i32 -40
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mipi_tx_clear_bits(ptr nocapture noundef readonly %mipi_tx, i32 noundef %offset, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %mipi_tx, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %neg = xor i32 %bits, -1
  %and = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #8, !srcloc !78
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mipi_tx_set_bits(ptr nocapture noundef readonly %mipi_tx, i32 noundef %offset, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %mipi_tx, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %or = or i32 %3, %bits
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #8, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mipi_tx_update_bits(ptr nocapture noundef readonly %mipi_tx, i32 noundef %offset, i32 noundef %mask, i32 noundef %data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %mipi_tx, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !75
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %and2 = and i32 %data, %mask
  %or = or i32 %and, %and2
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #8, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_mipi_tx_pll_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mipi_tx_pll_set_rate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mipi_tx_pll_set_rate, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -40
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mipi_tx_pll_set_rate.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %rate) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_rate = getelementptr i8, ptr %hw, i32 -32
  %2 = ptrtoint ptr %data_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rate, ptr %data_rate, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_mipi_tx_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_rate = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_rate, align 4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_mipi_tx_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mipi_tx_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_mipi_tx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %len.i = alloca i32, align 4
  %ref_clk_name = alloca ptr, align 4
  %clk_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_clk_name) #8
  %0 = ptrtoint ptr %ref_clk_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ref_clk_name, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %clk_init) #8
  %1 = getelementptr inbounds i8, ptr %clk_init, i32 20
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %clk_init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %clk_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ref_clk_name, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 3
  %6 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %parent_data, align 4
  %parent_hws = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 4
  %7 = ptrtoint ptr %parent_hws to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %parent_hws, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %clk_init, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %flags, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %driver_data = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %driver_data, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %cmp.i145 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %13) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %mipitx_drive = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 3
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef %mipitx_drive, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then20, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %mipitx_drive to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4600, ptr %mipitx_drive, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %17 = ptrtoint ptr %mipitx_drive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mipitx_drive, align 4
  %19 = add i32 %18, -6001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3001, i32 %19)
  %20 = icmp ult i32 %19, -3001
  br i1 %20, label %do.end30, label %if.end22.if.end41_crit_edge

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %18) #11
  %21 = ptrtoint ptr %mipitx_drive to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mipitx_drive, align 4
  %23 = call i32 @llvm.umax.i32(i32 %22, i32 3000)
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 6000)
  %25 = ptrtoint ptr %mipitx_drive to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mipitx_drive, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end30, %if.end22.if.end41_crit_edge
  %call42 = call ptr @__clk_get_name(ptr noundef %call14) #8
  %26 = ptrtoint ptr %ref_clk_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call42, ptr %ref_clk_name, align 4
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call45 = call i32 @of_property_read_string(ptr noundef %28, ptr noundef nonnull @.str.14, ptr noundef nonnull %clk_init) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %if.end51

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call45) #11
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  %29 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data, align 4
  %mipi_tx_clk_ops = getelementptr inbounds %struct.mtk_mipitx_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %mipi_tx_clk_ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mipi_tx_clk_ops, align 4
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %ops, align 4
  %pll_hw = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 6
  %init = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %clk_init, ptr %init, align 4
  %call55 = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %pll_hw) #8
  %pll = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call55, ptr %pll, align 4
  %cmp.i146 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %36) #11
  br label %cleanup

if.end64:                                         ; preds = %if.end51
  %call65 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @mtk_mipi_tx_ops) #8
  %cmp.i147 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call65 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %37) #11
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call65, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call73 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #8
  %cmp.i148 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call73 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev1, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %len.i, align 4, !annotation !84
  %call.i149 = call ptr @nvmem_cell_get(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  %cmp.i.i = icmp ugt ptr %call.i149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.25) #11
  br label %mtk_mipi_tx_get_calibration_datal.exit

if.end.i:                                         ; preds = %if.end77
  %call3.i = call ptr @nvmem_cell_read(ptr noundef %call.i149, ptr noundef nonnull %len.i) #8
  call void @nvmem_cell_put(ptr noundef %call.i149) #8
  %cmp.i85.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85.i, label %do.end8.i, label %if.end10.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.29) #11
  br label %mtk_mipi_tx_get_calibration_datal.exit

if.end10.i:                                       ; preds = %if.end.i
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %47)
  %cmp.i150 = icmp ult i32 %47, 12
  br i1 %cmp.i150, label %do.end14.i, label %if.end16.i

do.end14.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.32) #11
  call void @kfree(ptr noundef %call3.i) #8
  br label %mtk_mipi_tx_get_calibration_datal.exit

if.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call3.i, align 4
  %52 = lshr i32 %51, 1
  %shl.i = and i32 %52, 992
  %shr18.i = lshr i32 %51, 11
  %and19.i = and i32 %shr18.i, 31
  %or.i = or i32 %shl.i, %and19.i
  %rt_code.i = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 4
  %53 = ptrtoint ptr %rt_code.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i, ptr %rt_code.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %call3.i, i32 1
  %54 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx21.i, align 4
  %56 = lshr i32 %55, 22
  %shl24.i = and i32 %56, 992
  %57 = load i32, ptr %call3.i, align 4
  %shr26.i = lshr i32 %57, 1
  %and27.i = and i32 %shr26.i, 31
  %or28.i = or i32 %and27.i, %shl24.i
  %arrayidx30.i = getelementptr %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or28.i, ptr %arrayidx30.i, align 4
  %59 = load i32, ptr %arrayidx21.i, align 4
  %60 = lshr i32 %59, 12
  %shl34.i = and i32 %60, 992
  %shr36.i = lshr i32 %59, 22
  %and37.i = and i32 %shr36.i, 31
  %or38.i = or i32 %shl34.i, %and37.i
  %arrayidx40.i = getelementptr %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 4, i32 2
  %61 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or38.i, ptr %arrayidx40.i, align 4
  %62 = load i32, ptr %arrayidx21.i, align 4
  %63 = lshr i32 %62, 2
  %shl44.i = and i32 %63, 992
  %shr46.i = lshr i32 %62, 12
  %and47.i = and i32 %shr46.i, 31
  %or48.i = or i32 %shl44.i, %and47.i
  %arrayidx50.i = getelementptr %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or48.i, ptr %arrayidx50.i, align 4
  %arrayidx51.i = getelementptr i32, ptr %call3.i, i32 2
  %65 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx51.i, align 4
  %67 = lshr i32 %66, 22
  %shl54.i = and i32 %67, 992
  %68 = load i32, ptr %arrayidx21.i, align 4
  %shr56.i = lshr i32 %68, 2
  %and57.i = and i32 %shr56.i, 31
  %or58.i = or i32 %and57.i, %shl54.i
  %arrayidx60.i = getelementptr %struct.mtk_mipi_tx, ptr %call.i, i32 0, i32 4, i32 4
  %69 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or58.i, ptr %arrayidx60.i, align 4
  call void @kfree(ptr noundef %call3.i) #8
  br label %mtk_mipi_tx_get_calibration_datal.exit

mtk_mipi_tx_get_calibration_datal.exit:           ; preds = %if.end16.i, %do.end14.i, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  %70 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node, align 8
  %72 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pll, align 4
  %call81 = call i32 @of_clk_add_provider(ptr noundef %71, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %73) #8
  br label %cleanup

cleanup:                                          ; preds = %mtk_mipi_tx_get_calibration_datal.exit, %if.then75, %if.then67, %if.then58, %do.end50, %if.then16, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then10 ], [ %13, %if.then16 ], [ %call45, %do.end50 ], [ %36, %if.then58 ], [ %37, %if.then67 ], [ %39, %if.then75 ], [ %call81, %mtk_mipi_tx_get_calibration_datal.exit ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_init) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_clk_name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_power_on(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pll = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %driver_data = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %mipi_tx_enable_signal = getelementptr inbounds %struct.mtk_mipitx_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mipi_tx_enable_signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mipi_tx_enable_signal, align 4
  tail call void %7(ptr noundef %phy) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_power_off(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %mipi_tx_disable_signal = getelementptr inbounds %struct.mtk_mipitx_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mipi_tx_disable_signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mipi_tx_disable_signal, align 4
  tail call void %5(ptr noundef %phy) #8
  %pll = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 42, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mtk_mipi_tx_pll_set_rate.__UNIQUE_ID_ddebug289, !1, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_phy_mtk_mipi_dsi_drv__294_241_mtk_mipi_tx_driver_init6, !7, !"__initcall__kmod_phy_mtk_mipi_dsi_drv__294_241_mtk_mipi_tx_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 241, i32 1}
!8 = !{ptr @__exitcall_mtk_mipi_tx_driver_exit, !7, !"__exitcall_mtk_mipi_tx_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description295, !10, !"__UNIQUE_ID_description295", i1 false, i1 false}
!10 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 243, i32 1}
!11 = !{ptr @__UNIQUE_ID_file296, !12, !"__UNIQUE_ID_file296", i1 false, i1 false}
!12 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 244, i32 1}
!13 = !{ptr @__UNIQUE_ID_license297, !12, !"__UNIQUE_ID_license297", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 237, i32 11}
!16 = !{ptr @mtk_mipi_tx_driver, !17, !"mtk_mipi_tx_driver", i1 false, i1 false}
!17 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 233, i32 31}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 159, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_mipi_tx_probe._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtk_mipi_tx_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 163, i32 43}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 171, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtk_mipi_tx_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_mipi_tx_probe._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 179, i32 46}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 182, i32 3}
!36 = !{ptr @mtk_mipi_tx_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_mipi_tx_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 192, i32 3}
!40 = !{ptr @mtk_mipi_tx_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_mipi_tx_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 199, i32 3}
!44 = !{ptr @mtk_mipi_tx_probe._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mtk_mipi_tx_probe._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mtk_mipi_tx_ops, !47, !"mtk_mipi_tx_ops", i1 false, i1 false}
!47 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 85, i32 29}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 97, i32 38}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 99, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mtk_mipi_tx_get_calibration_datal._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_mipi_tx_get_calibration_datal._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 106, i32 3}
!58 = !{ptr @mtk_mipi_tx_get_calibration_datal._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_mipi_tx_get_calibration_datal._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 111, i32 3}
!62 = !{ptr @mtk_mipi_tx_get_calibration_datal._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_mipi_tx_get_calibration_datal._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mtk_mipi_tx_match, !65, !"mtk_mipi_tx_match", i1 false, i1 false}
!65 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi.c", i32 222, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 4587548}
!76 = !{i64 2155163408}
!77 = !{i64 2155163636}
!78 = !{i64 4587130}
!79 = !{i64 2155164349}
!80 = !{i64 2155164576}
!81 = !{i64 2155165286}
!82 = !{i64 2155165532}
!83 = !{i64 2148727725, i64 2148727730, i64 2148727743, i64 2148727787, i64 2148727821, i64 2148727842}
!84 = !{!"auto-init"}
