; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c_pt.bc'
source_filename = "../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_plat_data = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dw_mipi_dsi_stm = type { ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.dw_mipi_dsi_dphy_timing = type { i16, i16, i16, i16 }

@__initcall__kmod_dw_mipi_dsi_stm__302_503_dw_mipi_dsi_stm_driver_init6 = internal global ptr @dw_mipi_dsi_stm_driver_init, section ".initcall6.init", align 4
@dw_mipi_dsi_stm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_mipi_dsi_stm_probe, ptr @dw_mipi_dsi_stm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_mipi_dsi_stm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_stm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_mipi_dsi_stm_driver_exit = internal global ptr @dw_mipi_dsi_stm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [62 x i8] c"dw_mipi_dsi_stm.author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [62 x i8] c"dw_mipi_dsi_stm.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [82 x i8] c"dw_mipi_dsi_stm.description=STMicroelectronics DW MIPI DSI host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [57 x i8] c"dw_mipi_dsi_stm.file=drivers/gpu/drm/stm/dw_mipi_dsi-stm\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [31 x i8] c"dw_mipi_dsi_stm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32-display-dsi\00", [46 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_stm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_mipi_dsi_stm_plat_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_stm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dw_mipi_dsi_stm_suspend, ptr @dw_mipi_dsi_stm_resume, ptr @dw_mipi_dsi_stm_suspend, ptr @dw_mipi_dsi_stm_resume, ptr @dw_mipi_dsi_stm_suspend, ptr @dw_mipi_dsi_stm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get dsi registers %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phy-dsi\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to get pll reference clock\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable pllref_clk: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to get peripheral clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Failed to enable peripheral clk\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.dw_mipi_dsi_stm_probe = private unnamed_addr constant [22 x i8] c"dw_mipi_dsi_stm_probe\00", align 1
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad dsi hardware version\0A\00", [38 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_stm_plat_data = internal global { %struct.dw_mipi_dsi_plat_data, [40 x i8] } { %struct.dw_mipi_dsi_plat_data { ptr null, i32 2, ptr null, ptr @dw_mipi_dsi_stm_phy_ops, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to initialize mipi dsi host\0A\00", [60 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_stm_phy_ops = internal constant { %struct.dw_mipi_dsi_phy_ops, [40 x i8] } { %struct.dw_mipi_dsi_phy_ops { ptr @dw_mipi_dsi_phy_init, ptr @dw_mipi_dsi_phy_power_on, ptr @dw_mipi_dsi_phy_power_off, ptr @dw_mipi_dsi_get_lane_mbps, ptr @dw_mipi_dsi_phy_get_timing, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/stm/dw_mipi_dsi-stm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"!TIMEOUT! waiting REGU, let's continue\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"!TIMEOUT! waiting PLL, let's continue\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_get_lane_mbps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] Warning max phy mbps is used\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dw_mipi_dsi_get_lane_mbps\00", [38 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_get_lane_mbps._entry_ptr = internal global ptr @dw_mipi_dsi_get_lane_mbps._entry, section ".printk_index", align 4
@dw_mipi_dsi_get_lane_mbps._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.13, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] Warning min phy mbps is used\0A\00", [58 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_get_lane_mbps._entry_ptr.21 = internal global ptr @dw_mipi_dsi_get_lane_mbps._entry.19, section ".printk_index", align 4
@dw_mipi_dsi_get_lane_mbps._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.13, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014[drm] Warning dsi_pll_get_params(): bad params\0A\00", [46 x i8] zeroinitializer }, align 32
@dw_mipi_dsi_get_lane_mbps._entry_ptr.24 = internal global ptr @dw_mipi_dsi_get_lane_mbps._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pll_in %ukHz pll_out %ukHz lane_mbps %uMHz\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MIPI color invalid, so we use rgb888\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.dw_mipi_dsi_get_lane_mbps = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.dw_mipi_dsi_get_lane_mbps.27 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 8, i32 6, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 825438208, i64 825438464]
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"dw_mipi_dsi_stm_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 493, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 498, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"dw_mipi_dsi_stm_dt_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 346, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"dw_mipi_dsi_stm_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 488, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 368, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 372, i32 44 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 375, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 381, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 385, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 388, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 394, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 398, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 401, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 407, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 416, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"dw_mipi_dsi_stm_plat_data\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 341, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 428, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"dw_mipi_dsi_stm_phy_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 333, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 205, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 208, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 215, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 224, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 270, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 274, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 284, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 306, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [41 x i8] c"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 125, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [39 x i8] c"switch.table.dw_mipi_dsi_get_lane_mbps\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [42 x i8] c"switch.table.dw_mipi_dsi_get_lane_mbps.27\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_dw_mipi_dsi_stm_driver_exit, ptr @__initcall__kmod_dw_mipi_dsi_stm__302_503_dw_mipi_dsi_stm_driver_init6, ptr @dw_mipi_dsi_get_lane_mbps._entry, ptr @dw_mipi_dsi_get_lane_mbps._entry.19, ptr @dw_mipi_dsi_get_lane_mbps._entry.22, ptr @dw_mipi_dsi_get_lane_mbps._entry_ptr, ptr @dw_mipi_dsi_get_lane_mbps._entry_ptr.21, ptr @dw_mipi_dsi_get_lane_mbps._entry_ptr.24, ptr @dw_mipi_dsi_stm_driver_exit, ptr @dw_mipi_dsi_stm_driver, ptr @.str, ptr @dw_mipi_dsi_stm_dt_ids, ptr @dw_mipi_dsi_stm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dw_mipi_dsi_stm_plat_data, ptr @.str.12, ptr @dw_mipi_dsi_stm_phy_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @switch.table.dw_mipi_dsi_get_lane_mbps, ptr @switch.table.dw_mipi_dsi_get_lane_mbps.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_stm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_stm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_stm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_stm_plat_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_stm_phy_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_get_lane_mbps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_get_lane_mbps._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_mipi_dsi_get_lane_mbps._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mipi_dsi_get_lane_mbps to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw_mipi_dsi_get_lane_mbps.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mipi_dsi_stm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_stm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mipi_dsi_stm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %1) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %vdd_supply = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %vdd_supply, align 4
  %cmp.i117 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call10 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call i32 @regulator_enable(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %call19) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #7
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call23, ptr %pllref_clk, align 4
  %cmp.i118 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call23 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.6) #7
  br label %err_clk_get

if.end30:                                         ; preds = %if.end22
  %call.i119 = tail call i32 @clk_prepare(ptr noundef %call23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.if.then34_crit_edge

if.end30.if.then34_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call23) #7
  br label %if.then34

if.then34:                                        ; preds = %if.then3.i, %if.end30.if.then34_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i119, %if.end30.if.then34_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #7
  br label %err_clk_get

if.end35:                                         ; preds = %if.end.i
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %cmp.i120 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %6) #7
  br label %err_dsi_probe

if.end40:                                         ; preds = %if.end35
  %call41 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dw_mipi_dsi_stm_probe) #7
  br label %err_dsi_probe

if.end44:                                         ; preds = %if.end40
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %10 = and i32 %9, 16777215
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %hw_version = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %hw_version to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hw_version, align 4
  tail call void @clk_disable(ptr noundef %call36) #7
  tail call void @clk_unprepare(ptr noundef %call36) #7
  %13 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then49 [
    i32 825438208, label %if.end44.if.end50_crit_edge
    i32 825438464, label %if.end44.if.end50_crit_edge125
  ]

if.end44.if.end50_crit_edge125:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %err_dsi_probe

if.end50:                                         ; preds = %if.end44.if.end50_crit_edge, %if.end44.if.end50_crit_edge125
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  store ptr %15, ptr @dw_mipi_dsi_stm_plat_data, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.dw_mipi_dsi_plat_data, ptr @dw_mipi_dsi_stm_plat_data, i32 0, i32 5), align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call52 = tail call ptr @dw_mipi_dsi_probe(ptr noundef %pdev, ptr noundef nonnull @dw_mipi_dsi_stm_plat_data) #7
  %dsi53 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %dsi53 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call52, ptr %dsi53, align 4
  %cmp.i121 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then56, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call52 to i32
  %call59 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @.str.12) #7
  br label %err_dsi_probe

err_dsi_probe:                                    ; preds = %if.then56, %if.then49, %if.then43, %if.then38
  %ret.0 = phi i32 [ %6, %if.then38 ], [ %call41, %if.then43 ], [ -19, %if.then49 ], [ %18, %if.then56 ]
  %19 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %err_clk_get

err_clk_get:                                      ; preds = %err_dsi_probe, %if.then34, %if.then26
  %ret.1 = phi i32 [ %5, %if.then26 ], [ %retval.0.i.ph, %if.then34 ], [ %ret.0, %err_dsi_probe ]
  %21 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdd_supply, align 4
  %call63 = tail call i32 @regulator_disable(ptr noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk_get, %if.end50.cleanup_crit_edge, %if.then21, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %3, %if.then13 ], [ %call19, %if.then21 ], [ %ret.1, %err_clk_get ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi1, align 4
  tail call void @dw_mipi_dsi_remove(ptr noundef %3) #7
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %vdd_supply = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd_supply, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_mipi_dsi_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_init(ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1072
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %3 = or i32 %2, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %3) #7, !srcloc !86
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 206) #7
  %6 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_data, align 4
  %add.ptr118 = getelementptr i8, ptr %7, i32 1036
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #7, !srcloc !83
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %and119 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool.not120 = icmp eq i32 %and119, 0
  br i1 %tobool.not120, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv_data, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 1036
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !83
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %14 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv_data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1036
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %and = and i32 %17, 4096
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.land.lhs.true_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %13, %if.then16 ], [ %9, %entry.for.end_crit_edge ], [ %17, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %val.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then32, label %for.end.if.end33_crit_edge

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end.if.end33_crit_edge
  %18 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %19, i32 1072
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %21 = or i32 %20, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i109 = getelementptr i8, ptr %23, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i109, i32 %21) #7, !srcloc !86
  %call37 = tail call i64 @ktime_get() #7
  %add.i110 = add i64 %call37, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 213) #7
  %24 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv_data, align 4
  %add.ptr55121 = getelementptr i8, ptr %25, i32 1036
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55121) #7, !srcloc !83
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and59122 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59122)
  %tobool60.not123 = icmp eq i32 %and59122, 0
  br i1 %tobool60.not123, label %if.end33.land.lhs.true64_crit_edge, label %if.end33.for.end82_crit_edge

if.end33.for.end82_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

if.end33.land.lhs.true64_crit_edge:               ; preds = %if.end33
  br label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.then78.land.lhs.true64_crit_edge, %if.end33.land.lhs.true64_crit_edge
  %call65 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call65, i64 %add.i110)
  %cmp3.i112 = icmp sgt i64 %call65, %add.i110
  br i1 %cmp3.i112, label %if.then68, label %if.then78

if.then68:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv_data, align 4
  %add.ptr72 = getelementptr i8, ptr %29, i32 1036
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #7, !srcloc !83
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  br label %for.end82

if.then78:                                        ; preds = %land.lhs.true64
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %32 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv_data, align 4
  %add.ptr55 = getelementptr i8, ptr %33, i32 1036
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #7, !srcloc !83
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and59 = and i32 %35, 256
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then78.land.lhs.true64_crit_edge, label %if.then78.for.end82_crit_edge

if.then78.for.end82_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

if.then78.land.lhs.true64_crit_edge:              ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true64

for.end82:                                        ; preds = %if.then78.for.end82_crit_edge, %if.then68, %if.end33.for.end82_crit_edge
  %val.1 = phi i32 [ %31, %if.then68 ], [ %27, %if.end33.for.end82_crit_edge ], [ %35, %if.then78.for.end82_crit_edge ]
  %and84 = and i32 %val.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then88, label %for.end82.if.end89_crit_edge

for.end82.if.end89_crit_edge:                     ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then88:                                        ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %for.end82.if.end89_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_on(ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #7
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %3 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %3) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_off(ptr nocapture noundef readonly %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #7
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1028
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %3 = and i32 %2, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %3) #7, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_get_lane_mbps(ptr nocapture noundef %priv_data, ptr nocapture noundef readonly %mode, i32 noundef %mode_flags, i32 noundef %lanes, i32 noundef %format, ptr nocapture noundef writeonly %lane_mbps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lane_min_kbps = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %priv_data, i32 0, i32 4
  %0 = ptrtoint ptr %lane_min_kbps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 31250, ptr %lane_min_kbps, align 4
  %lane_max_kbps = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %priv_data, i32 0, i32 5
  %1 = ptrtoint ptr %lane_max_kbps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 500000, ptr %lane_max_kbps, align 4
  %hw_version = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %priv_data, i32 0, i32 3
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825438464, i32 %3)
  %cmp = icmp eq i32 %3, 825438464
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %lane_min_kbps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 62500, ptr %lane_min_kbps, align 4
  %5 = ptrtoint ptr %lane_max_kbps to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000000, ptr %lane_max_kbps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %priv_data, i32 0, i32 1
  %6 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pllref_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %7) #7
  %div = udiv i32 %call, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %format)
  %8 = icmp ult i32 %format, 4
  br i1 %8, label %switch.lookup, label %if.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

if.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dw_mipi_dsi_get_lane_mbps, i32 0, i32 %format
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %if.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.end.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mul5 = mul i32 %11, %retval.0.i
  %div6 = udiv i32 %mul5, %lanes
  %and = and i32 %mode_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mul8 = mul i32 %div6, 12
  %div9 = udiv i32 %mul8, 10
  %pll_out_khz.0 = select i1 %tobool.not, i32 %div6, i32 %div9
  %12 = ptrtoint ptr %lane_max_kbps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lane_max_kbps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pll_out_khz.0, i32 %13)
  %cmp12 = icmp ugt i32 %pll_out_khz.0, %13
  br i1 %cmp12, label %if.then13, label %mipi_dsi_pixel_format_to_bpp.exit.if.end16_crit_edge

mipi_dsi_pixel_format_to_bpp.exit.if.end16_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %mipi_dsi_pixel_format_to_bpp.exit.if.end16_crit_edge
  %pll_out_khz.1 = phi i32 [ %13, %if.then13 ], [ %pll_out_khz.0, %mipi_dsi_pixel_format_to_bpp.exit.if.end16_crit_edge ]
  %14 = ptrtoint ptr %lane_min_kbps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lane_min_kbps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pll_out_khz.1, i32 %15)
  %cmp18 = icmp ult i32 %pll_out_khz.1, %15
  br i1 %cmp18, label %if.then19, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %if.end16.if.end26_crit_edge
  %pll_out_khz.2 = phi i32 [ %15, %if.then19 ], [ %pll_out_khz.1, %if.end16.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call)
  %16 = icmp ult i32 %call, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pll_out_khz.2)
  %cmp1.i = icmp slt i32 %pll_out_khz.2, 1
  %or.cond.i = or i1 %16, %cmp1.i
  br i1 %or.cond.i, label %do.end32, label %if.end.i

if.end.i:                                         ; preds = %if.end26
  %17 = ptrtoint ptr %lane_min_kbps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lane_min_kbps, align 4
  %mul2.i = shl i32 %18, 4
  %19 = ptrtoint ptr %lane_max_kbps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lane_max_kbps, align 4
  %mul3.i = shl i32 %20, 1
  %mul7.i = shl nuw nsw i32 %div, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.3.i.for.body.i_crit_edge, %if.end.i
  %idf.0 = phi i32 [ 0, %if.end.i ], [ %idf.8, %for.inc.3.i.for.body.i_crit_edge ]
  %ndiv.0 = phi i32 [ 0, %if.end.i ], [ %ndiv.8, %for.inc.3.i.for.body.i_crit_edge ]
  %odf.0 = phi i32 [ 0, %if.end.i ], [ %odf.8, %for.inc.3.i.for.body.i_crit_edge ]
  %best_delta.0105.i = phi i32 [ 1000000, %if.end.i ], [ %best_delta.3.3.i, %for.inc.3.i.for.body.i_crit_edge ]
  %i.0104.i = phi i32 [ 1, %if.end.i ], [ %inc.i, %for.inc.3.i.for.body.i_crit_edge ]
  %mul6.i = mul i32 %mul2.i, %i.0104.i
  %div.i = sdiv i32 %mul6.i, %mul7.i
  %add.i = add i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %add.i)
  %cmp11.i = icmp sgt i32 %add.i, 124
  br i1 %cmp11.i, label %for.body.i.if.end35_crit_edge, label %if.end13.i

for.body.i.if.end35_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end13.i:                                       ; preds = %for.body.i
  %mul8.i = mul i32 %mul3.i, %i.0104.i
  %div10.i = sdiv i32 %mul8.i, %mul7.i
  %21 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 10) #7
  %22 = tail call i32 @llvm.smin.i32(i32 %div10.i, i32 125) #7
  %mul24.i = mul i32 %i.0104.i, %pll_out_khz.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul24.i)
  %cmp25.i = icmp sgt i32 %mul24.i, 0
  %add31.pn.v.v.i = select i1 %cmp25.i, i32 2, i32 -2
  %add31.pn.v.i = sdiv i32 %div, %add31.pn.v.v.i
  %add31.pn.i = add i32 %add31.pn.v.i, %mul24.i
  %cond.i = sdiv i32 %add31.pn.i, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %21)
  %cmp35.i = icmp slt i32 %cond.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %22)
  %cmp38.i = icmp sgt i32 %cond.i, %22
  %or.cond99.i = select i1 %cmp35.i, i1 true, i1 %cmp38.i
  br i1 %or.cond99.i, label %if.end13.i.for.inc.i_crit_edge, label %dsi_pll_get_clkout_khz.exit.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

dsi_pll_get_clkout_khz.exit.i:                    ; preds = %if.end13.i
  %mul1.i.i = mul i32 %cond.i, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.i)
  %cmp.i.i = icmp sgt i32 %mul1.i.i, 0
  %add.pn.v.v.i.i = select i1 %cmp.i.i, i32 2, i32 -2
  %add.pn.v.i.i = sdiv i32 %i.0104.i, %add.pn.v.v.i.i
  %add.pn.i.i = add i32 %add.pn.v.i.i, %mul1.i.i
  %cond.i.i = sdiv i32 %add.pn.i.i, %i.0104.i
  %sub42.i = sub i32 %cond.i.i, %pll_out_khz.2
  %23 = tail call i32 @llvm.abs.i32(i32 %sub42.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %best_delta.0105.i)
  %cmp48.i = icmp slt i32 %23, %best_delta.0105.i
  br i1 %cmp48.i, label %if.then50.i, label %dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge

dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge: ; preds = %dsi_pll_get_clkout_khz.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.then50.i:                                      ; preds = %dsi_pll_get_clkout_khz.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge
  %idf.1 = phi i32 [ %i.0104.i, %if.then50.i ], [ %idf.0, %dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge ]
  %ndiv.1 = phi i32 [ %cond.i, %if.then50.i ], [ %ndiv.0, %dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge ]
  %odf.1 = phi i32 [ 1, %if.then50.i ], [ %odf.0, %dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge ]
  %best_delta.2.i = phi i32 [ %23, %if.then50.i ], [ %best_delta.0105.i, %dsi_pll_get_clkout_khz.exit.i.if.end51.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %pll_out_khz.2)
  %tobool.not.i = icmp eq i32 %cond.i.i, %pll_out_khz.2
  br i1 %tobool.not.i, label %if.end51.i.if.end35_crit_edge, label %if.end51.i.for.inc.i_crit_edge

if.end51.i.for.inc.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end51.i.if.end35_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.inc.i:                                        ; preds = %if.end51.i.for.inc.i_crit_edge, %if.end13.i.for.inc.i_crit_edge
  %idf.2 = phi i32 [ %idf.0, %if.end13.i.for.inc.i_crit_edge ], [ %idf.1, %if.end51.i.for.inc.i_crit_edge ]
  %ndiv.2 = phi i32 [ %ndiv.0, %if.end13.i.for.inc.i_crit_edge ], [ %ndiv.1, %if.end51.i.for.inc.i_crit_edge ]
  %odf.2 = phi i32 [ %odf.0, %if.end13.i.for.inc.i_crit_edge ], [ %odf.1, %if.end51.i.for.inc.i_crit_edge ]
  %best_delta.3.i = phi i32 [ %best_delta.0105.i, %if.end13.i.for.inc.i_crit_edge ], [ %best_delta.2.i, %if.end51.i.for.inc.i_crit_edge ]
  %mul23.1.i = shl nuw nsw i32 %i.0104.i, 1
  %mul24.1.i = mul i32 %mul23.1.i, %pll_out_khz.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul24.1.i)
  %cmp25.1.i = icmp sgt i32 %mul24.1.i, 0
  %add31.pn.v.v.1.i = select i1 %cmp25.1.i, i32 2, i32 -2
  %add31.pn.v.1.i = sdiv i32 %div, %add31.pn.v.v.1.i
  %add31.pn.1.i = add i32 %add31.pn.v.1.i, %mul24.1.i
  %cond.1.i = sdiv i32 %add31.pn.1.i, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1.i, i32 %21)
  %cmp35.1.i = icmp slt i32 %cond.1.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1.i, i32 %22)
  %cmp38.1.i = icmp sgt i32 %cond.1.i, %22
  %or.cond99.1.i = select i1 %cmp35.1.i, i1 true, i1 %cmp38.1.i
  br i1 %or.cond99.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %dsi_pll_get_clkout_khz.exit.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

dsi_pll_get_clkout_khz.exit.1.i:                  ; preds = %for.inc.i
  %mul1.i.1.i = mul i32 %cond.1.i, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.1.i)
  %cmp.i.1.i = icmp sgt i32 %mul1.i.1.i, 0
  %add.pn.v.v.i.1.i = select i1 %cmp.i.1.i, i32 2, i32 -2
  %add.pn.v.i.1.i = sdiv i32 %mul23.1.i, %add.pn.v.v.i.1.i
  %add.pn.i.1.i = add i32 %add.pn.v.i.1.i, %mul1.i.1.i
  %cond.i.1.i = sdiv i32 %add.pn.i.1.i, %mul23.1.i
  %sub42.1.i = sub i32 %cond.i.1.i, %pll_out_khz.2
  %24 = tail call i32 @llvm.abs.i32(i32 %sub42.1.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %best_delta.3.i)
  %cmp48.1.i = icmp slt i32 %24, %best_delta.3.i
  br i1 %cmp48.1.i, label %if.then50.1.i, label %dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge

dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge: ; preds = %dsi_pll_get_clkout_khz.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.1.i

if.then50.1.i:                                    ; preds = %dsi_pll_get_clkout_khz.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.1.i

if.end51.1.i:                                     ; preds = %if.then50.1.i, %dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge
  %idf.3 = phi i32 [ %i.0104.i, %if.then50.1.i ], [ %idf.2, %dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge ]
  %ndiv.3 = phi i32 [ %cond.1.i, %if.then50.1.i ], [ %ndiv.2, %dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge ]
  %odf.3 = phi i32 [ 2, %if.then50.1.i ], [ %odf.2, %dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge ]
  %best_delta.2.1.i = phi i32 [ %24, %if.then50.1.i ], [ %best_delta.3.i, %dsi_pll_get_clkout_khz.exit.1.i.if.end51.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.1.i, i32 %pll_out_khz.2)
  %tobool.not.1.i = icmp eq i32 %cond.i.1.i, %pll_out_khz.2
  br i1 %tobool.not.1.i, label %if.end51.1.i.if.end35_crit_edge, label %if.end51.1.i.for.inc.1.i_crit_edge

if.end51.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end51.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end51.1.i.if.end35_crit_edge:                  ; preds = %if.end51.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.inc.1.i:                                      ; preds = %if.end51.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %idf.4 = phi i32 [ %idf.2, %for.inc.i.for.inc.1.i_crit_edge ], [ %idf.3, %if.end51.1.i.for.inc.1.i_crit_edge ]
  %ndiv.4 = phi i32 [ %ndiv.2, %for.inc.i.for.inc.1.i_crit_edge ], [ %ndiv.3, %if.end51.1.i.for.inc.1.i_crit_edge ]
  %odf.4 = phi i32 [ %odf.2, %for.inc.i.for.inc.1.i_crit_edge ], [ %odf.3, %if.end51.1.i.for.inc.1.i_crit_edge ]
  %best_delta.3.1.i = phi i32 [ %best_delta.3.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %best_delta.2.1.i, %if.end51.1.i.for.inc.1.i_crit_edge ]
  %mul23.2.i = shl nuw nsw i32 %i.0104.i, 2
  %mul24.2.i = mul i32 %mul23.2.i, %pll_out_khz.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul24.2.i)
  %cmp25.2.i = icmp sgt i32 %mul24.2.i, 0
  %add31.pn.v.v.2.i = select i1 %cmp25.2.i, i32 2, i32 -2
  %add31.pn.v.2.i = sdiv i32 %div, %add31.pn.v.v.2.i
  %add31.pn.2.i = add i32 %add31.pn.v.2.i, %mul24.2.i
  %cond.2.i = sdiv i32 %add31.pn.2.i, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2.i, i32 %21)
  %cmp35.2.i = icmp slt i32 %cond.2.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2.i, i32 %22)
  %cmp38.2.i = icmp sgt i32 %cond.2.i, %22
  %or.cond99.2.i = select i1 %cmp35.2.i, i1 true, i1 %cmp38.2.i
  br i1 %or.cond99.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %dsi_pll_get_clkout_khz.exit.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

dsi_pll_get_clkout_khz.exit.2.i:                  ; preds = %for.inc.1.i
  %mul1.i.2.i = mul i32 %cond.2.i, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.2.i)
  %cmp.i.2.i = icmp sgt i32 %mul1.i.2.i, 0
  %add.pn.v.v.i.2.i = select i1 %cmp.i.2.i, i32 2, i32 -2
  %add.pn.v.i.2.i = sdiv i32 %mul23.2.i, %add.pn.v.v.i.2.i
  %add.pn.i.2.i = add i32 %add.pn.v.i.2.i, %mul1.i.2.i
  %cond.i.2.i = sdiv i32 %add.pn.i.2.i, %mul23.2.i
  %sub42.2.i = sub i32 %cond.i.2.i, %pll_out_khz.2
  %25 = tail call i32 @llvm.abs.i32(i32 %sub42.2.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %best_delta.3.1.i)
  %cmp48.2.i = icmp slt i32 %25, %best_delta.3.1.i
  br i1 %cmp48.2.i, label %if.then50.2.i, label %dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge

dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge: ; preds = %dsi_pll_get_clkout_khz.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.2.i

if.then50.2.i:                                    ; preds = %dsi_pll_get_clkout_khz.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.2.i

if.end51.2.i:                                     ; preds = %if.then50.2.i, %dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge
  %idf.5 = phi i32 [ %i.0104.i, %if.then50.2.i ], [ %idf.4, %dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge ]
  %ndiv.5 = phi i32 [ %cond.2.i, %if.then50.2.i ], [ %ndiv.4, %dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge ]
  %odf.5 = phi i32 [ 4, %if.then50.2.i ], [ %odf.4, %dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge ]
  %best_delta.2.2.i = phi i32 [ %25, %if.then50.2.i ], [ %best_delta.3.1.i, %dsi_pll_get_clkout_khz.exit.2.i.if.end51.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.2.i, i32 %pll_out_khz.2)
  %tobool.not.2.i = icmp eq i32 %cond.i.2.i, %pll_out_khz.2
  br i1 %tobool.not.2.i, label %if.end51.2.i.if.end35_crit_edge, label %if.end51.2.i.for.inc.2.i_crit_edge

if.end51.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end51.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end51.2.i.if.end35_crit_edge:                  ; preds = %if.end51.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.inc.2.i:                                      ; preds = %if.end51.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %idf.6 = phi i32 [ %idf.4, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %idf.5, %if.end51.2.i.for.inc.2.i_crit_edge ]
  %ndiv.6 = phi i32 [ %ndiv.4, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %ndiv.5, %if.end51.2.i.for.inc.2.i_crit_edge ]
  %odf.6 = phi i32 [ %odf.4, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %odf.5, %if.end51.2.i.for.inc.2.i_crit_edge ]
  %best_delta.3.2.i = phi i32 [ %best_delta.3.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %best_delta.2.2.i, %if.end51.2.i.for.inc.2.i_crit_edge ]
  %mul23.3.i = shl nuw nsw i32 %i.0104.i, 3
  %mul24.3.i = mul i32 %mul23.3.i, %pll_out_khz.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul24.3.i)
  %cmp25.3.i = icmp sgt i32 %mul24.3.i, 0
  %add31.pn.v.v.3.i = select i1 %cmp25.3.i, i32 2, i32 -2
  %add31.pn.v.3.i = sdiv i32 %div, %add31.pn.v.v.3.i
  %add31.pn.3.i = add i32 %add31.pn.v.3.i, %mul24.3.i
  %cond.3.i = sdiv i32 %add31.pn.3.i, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3.i, i32 %21)
  %cmp35.3.i = icmp slt i32 %cond.3.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3.i, i32 %22)
  %cmp38.3.i = icmp sgt i32 %cond.3.i, %22
  %or.cond99.3.i = select i1 %cmp35.3.i, i1 true, i1 %cmp38.3.i
  br i1 %or.cond99.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %dsi_pll_get_clkout_khz.exit.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

dsi_pll_get_clkout_khz.exit.3.i:                  ; preds = %for.inc.2.i
  %mul1.i.3.i = mul i32 %cond.3.i, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.3.i)
  %cmp.i.3.i = icmp sgt i32 %mul1.i.3.i, 0
  %add.pn.v.v.i.3.i = select i1 %cmp.i.3.i, i32 2, i32 -2
  %add.pn.v.i.3.i = sdiv i32 %mul23.3.i, %add.pn.v.v.i.3.i
  %add.pn.i.3.i = add i32 %add.pn.v.i.3.i, %mul1.i.3.i
  %cond.i.3.i = sdiv i32 %add.pn.i.3.i, %mul23.3.i
  %sub42.3.i = sub i32 %cond.i.3.i, %pll_out_khz.2
  %26 = tail call i32 @llvm.abs.i32(i32 %sub42.3.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %best_delta.3.2.i)
  %cmp48.3.i = icmp slt i32 %26, %best_delta.3.2.i
  br i1 %cmp48.3.i, label %if.then50.3.i, label %dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge

dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge: ; preds = %dsi_pll_get_clkout_khz.exit.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.3.i

if.then50.3.i:                                    ; preds = %dsi_pll_get_clkout_khz.exit.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.3.i

if.end51.3.i:                                     ; preds = %if.then50.3.i, %dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge
  %idf.7 = phi i32 [ %i.0104.i, %if.then50.3.i ], [ %idf.6, %dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge ]
  %ndiv.7 = phi i32 [ %cond.3.i, %if.then50.3.i ], [ %ndiv.6, %dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge ]
  %odf.7 = phi i32 [ 8, %if.then50.3.i ], [ %odf.6, %dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge ]
  %best_delta.2.3.i = phi i32 [ %26, %if.then50.3.i ], [ %best_delta.3.2.i, %dsi_pll_get_clkout_khz.exit.3.i.if.end51.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.3.i, i32 %pll_out_khz.2)
  %tobool.not.3.i = icmp eq i32 %cond.i.3.i, %pll_out_khz.2
  br i1 %tobool.not.3.i, label %if.end51.3.i.if.end35_crit_edge, label %if.end51.3.i.for.inc.3.i_crit_edge

if.end51.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end51.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.end51.3.i.if.end35_crit_edge:                  ; preds = %if.end51.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.inc.3.i:                                      ; preds = %if.end51.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %idf.8 = phi i32 [ %idf.6, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %idf.7, %if.end51.3.i.for.inc.3.i_crit_edge ]
  %ndiv.8 = phi i32 [ %ndiv.6, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %ndiv.7, %if.end51.3.i.for.inc.3.i_crit_edge ]
  %odf.8 = phi i32 [ %odf.6, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %odf.7, %if.end51.3.i.for.inc.3.i_crit_edge ]
  %best_delta.3.3.i = phi i32 [ %best_delta.3.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %best_delta.2.3.i, %if.end51.3.i.for.inc.3.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0104.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc.3.i.if.end35_crit_edge, label %for.inc.3.i.for.body.i_crit_edge

for.inc.3.i.for.body.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.3.i.if.end35_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end32, %for.inc.3.i.if.end35_crit_edge, %if.end51.3.i.if.end35_crit_edge, %if.end51.2.i.if.end35_crit_edge, %if.end51.1.i.if.end35_crit_edge, %if.end51.i.if.end35_crit_edge, %for.body.i.if.end35_crit_edge
  %odf.9100 = phi i32 [ 0, %do.end32 ], [ %odf.0, %for.body.i.if.end35_crit_edge ], [ %odf.8, %for.inc.3.i.if.end35_crit_edge ], [ %odf.7, %if.end51.3.i.if.end35_crit_edge ], [ %odf.5, %if.end51.2.i.if.end35_crit_edge ], [ %odf.3, %if.end51.1.i.if.end35_crit_edge ], [ %odf.1, %if.end51.i.if.end35_crit_edge ]
  %ndiv.998 = phi i32 [ 0, %do.end32 ], [ %ndiv.0, %for.body.i.if.end35_crit_edge ], [ %ndiv.8, %for.inc.3.i.if.end35_crit_edge ], [ %ndiv.7, %if.end51.3.i.if.end35_crit_edge ], [ %ndiv.5, %if.end51.2.i.if.end35_crit_edge ], [ %ndiv.3, %if.end51.1.i.if.end35_crit_edge ], [ %ndiv.1, %if.end51.i.if.end35_crit_edge ]
  %idf.997 = phi i32 [ 0, %do.end32 ], [ %idf.0, %for.body.i.if.end35_crit_edge ], [ %idf.8, %for.inc.3.i.if.end35_crit_edge ], [ %idf.7, %if.end51.3.i.if.end35_crit_edge ], [ %idf.5, %if.end51.2.i.if.end35_crit_edge ], [ %idf.3, %if.end51.1.i.if.end35_crit_edge ], [ %idf.1, %if.end51.i.if.end35_crit_edge ]
  %mul.i = mul i32 %idf.997, %odf.9100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i70 = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i70, label %if.end35.dsi_pll_get_clkout_khz.exit_crit_edge, label %if.end.i73

if.end35.dsi_pll_get_clkout_khz.exit_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_pll_get_clkout_khz.exit

if.end.i73:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %mul1.i = mul i32 %ndiv.998, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul1.i)
  %cmp.i71 = icmp slt i32 %mul1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp2.i = icmp sgt i32 %mul.i, 0
  %cmp4.i = xor i1 %cmp.i71, %cmp2.i
  %add.pn.v.v.i = select i1 %cmp4.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %mul.i, %add.pn.v.v.i
  %add.pn.i = add i32 %add.pn.v.i, %mul1.i
  %cond.i72 = sdiv i32 %add.pn.i, %mul.i
  br label %dsi_pll_get_clkout_khz.exit

dsi_pll_get_clkout_khz.exit:                      ; preds = %if.end.i73, %if.end35.dsi_pll_get_clkout_khz.exit_crit_edge
  %retval.0.i74 = phi i32 [ %cond.i72, %if.end.i73 ], [ 0, %if.end35.dsi_pll_get_clkout_khz.exit_crit_edge ]
  %shl = shl i32 %ndiv.998, 2
  %shl37 = shl i32 %idf.997, 11
  %or = or i32 %shl37, %shl
  %27 = tail call i32 @llvm.cttz.i32(i32 %odf.9100, i1 true), !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %odf.9100)
  %iszero = icmp eq i32 %odf.9100, 0
  %.op = shl nuw nsw i32 %27, 16
  %shl38 = select i1 %iszero, i32 -65536, i32 %.op
  %or39 = or i32 %or, %shl38
  %28 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 1072
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %31 = and i32 %30, 59178239
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %or.i = or i32 %or39, %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %34 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %35, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %33) #7, !srcloc !86
  %div40 = udiv i32 4000000, %retval.0.i74
  %36 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %37, i32 1048
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %39 = and i32 %38, -1056964609
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %or.i77 = or i32 %40, %div40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i77) #7
  %42 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i78 = getelementptr i8, ptr %43, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i78, i32 %41) #7, !srcloc !86
  %44 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %45, i32 1024
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %47 = and i32 %46, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i81 = getelementptr i8, ptr %49, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i81, i32 %47) #7, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %format)
  %50 = icmp ult i32 %format, 4
  br i1 %50, label %switch.lookup101, label %sw.default.i

sw.default.i:                                     ; preds = %dsi_pll_get_clkout_khz.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26) #7
  br label %dsi_color_from_mipi.exit

switch.lookup101:                                 ; preds = %dsi_pll_get_clkout_khz.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep102 = getelementptr inbounds [4 x i32], ptr @switch.table.dw_mipi_dsi_get_lane_mbps.27, i32 0, i32 %format
  %51 = ptrtoint ptr %switch.gep102 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load103 = load i32, ptr %switch.gep102, align 4
  br label %dsi_color_from_mipi.exit

dsi_color_from_mipi.exit:                         ; preds = %switch.lookup101, %sw.default.i
  %retval.0.i84 = phi i32 [ 10, %sw.default.i ], [ %switch.load103, %switch.lookup101 ]
  %52 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv_data, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %53, i32 1024
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %55 = and i32 %54, -234881025
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %or.i87 = or i32 %56, %retval.0.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i87) #7
  %58 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv_data, align 4
  %add.ptr.i3.i88 = getelementptr i8, ptr %59, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i88, i32 %57) #7, !srcloc !86
  %div43 = udiv i32 %retval.0.i74, 1000
  %60 = ptrtoint ptr %lane_mbps to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %div43, ptr %lane_mbps, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %div, i32 noundef %retval.0.i74, i32 noundef %div43) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_get_timing(ptr nocapture noundef readnone %priv_data, i32 noundef %lane_mbps, ptr nocapture noundef writeonly %timing) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %lane_mbps, 272
  %sub = add i32 %mul, 143999
  %div = udiv i32 %sub, 8000
  %conv = trunc i32 %div to i16
  %clk_hs2lp = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %timing, i32 0, i32 2
  %0 = ptrtoint ptr %clk_hs2lp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %clk_hs2lp, align 2
  %mul2 = shl i32 %lane_mbps, 9
  %sub5 = add i32 %mul2, 47999
  %div6 = udiv i32 %sub5, 8000
  %conv7 = trunc i32 %div6 to i16
  %clk_lp2hs = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %timing, i32 0, i32 3
  %1 = ptrtoint ptr %clk_lp2hs to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv7, ptr %clk_lp2hs, align 2
  %mul8 = mul i32 %lane_mbps, 192
  %sub11 = add i32 %mul8, 71999
  %div12 = udiv i32 %sub11, 8000
  %conv13 = trunc i32 %div12 to i16
  %2 = ptrtoint ptr %timing to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv13, ptr %timing, align 2
  %mul14 = shl i32 %lane_mbps, 8
  %sub17 = add i32 %mul14, 39999
  %div18 = udiv i32 %sub17, 8000
  %conv19 = trunc i32 %div18 to i16
  %data_lp2hs = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %timing, i32 0, i32 1
  %3 = ptrtoint ptr %data_lp2hs to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv19, ptr %data_lp2hs, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.dw_mipi_dsi_plat_data, ptr @dw_mipi_dsi_stm_plat_data, i32 0, i32 5), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #7
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pllref_clk, align 4
  tail call void @clk_disable(ptr noundef %2) #7
  tail call void @clk_unprepare(ptr noundef %2) #7
  %vdd_supply = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 6
  %3 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdd_supply, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.dw_mipi_dsi_plat_data, ptr @dw_mipi_dsi_stm_plat_data, i32 0, i32 5), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #7
  %vdd_supply = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdd_supply, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pllref_clk = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %pllref_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pllref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then3_crit_edge ]
  %5 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdd_supply, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %6) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %retval.0.i.ph, %if.then3 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_dw_mipi_dsi_stm__302_503_dw_mipi_dsi_stm_driver_init6, !1, !"__initcall__kmod_dw_mipi_dsi_stm__302_503_dw_mipi_dsi_stm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 503, i32 1}
!2 = !{ptr @__exitcall_dw_mipi_dsi_stm_driver_exit, !1, !"__exitcall_dw_mipi_dsi_stm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 505, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 506, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 507, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 508, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 498, i32 11}
!14 = !{ptr @dw_mipi_dsi_stm_driver, !15, !"dw_mipi_dsi_stm_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 493, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 368, i32 3}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 372, i32 44}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 375, i32 27}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 381, i32 3}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 385, i32 38}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 388, i32 27}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 394, i32 3}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 398, i32 27}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 401, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 407, i32 3}
!36 = !{ptr @__func__.dw_mipi_dsi_stm_probe, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 416, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 428, i32 27}
!41 = !{ptr @dw_mipi_dsi_stm_plat_data, !42, !"dw_mipi_dsi_stm_plat_data", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 341, i32 37}
!43 = !{ptr @dw_mipi_dsi_stm_phy_ops, !44, !"dw_mipi_dsi_stm_phy_ops", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 333, i32 41}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 205, i32 8}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 208, i32 3}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 215, i32 3}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 224, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 270, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dw_mipi_dsi_get_lane_mbps._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dw_mipi_dsi_get_lane_mbps._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 274, i32 3}
!60 = !{ptr @dw_mipi_dsi_get_lane_mbps._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dw_mipi_dsi_get_lane_mbps._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 284, i32 3}
!64 = !{ptr @dw_mipi_dsi_get_lane_mbps._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dw_mipi_dsi_get_lane_mbps._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 306, i32 2}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 125, i32 3}
!70 = !{ptr @dw_mipi_dsi_stm_dt_ids, !71, !"dw_mipi_dsi_stm_dt_ids", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 346, i32 34}
!72 = !{ptr @dw_mipi_dsi_stm_pm_ops, !73, !"dw_mipi_dsi_stm_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c", i32 488, i32 32}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 3089193}
!84 = !{i64 2155432331}
!85 = !{i64 2155431511}
!86 = !{i64 3088775}
!87 = !{i64 2155435604}
!88 = !{i64 2155436094}
!89 = !{i64 2155438047}
!90 = !{i64 2155438537}
!91 = !{i32 0, i32 33}
