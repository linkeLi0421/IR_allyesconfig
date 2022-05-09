; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_power.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dp_power = type { i8, i8, i8 }
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.dp_power_private = type { ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.regulator_bulk_data], %struct.dp_power }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
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
%struct.dp_regulator_cfg = type { i32, [4 x %struct.dp_reg_entry] }
%struct.dp_reg_entry = type { [32 x i8], i32, i32 }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"core_clk_on=%d link_clk_on=%d stream_clk_on=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported power module: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"core clks already enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"links clks already enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pixel clks already enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Enable core clks before link clks\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to enable clks: %s. err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to '%s' clks for: %s. err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s clocks for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"strem_clks:%s link_clks:%s core_clks:%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid power data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to init regulators %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to init clocks %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable DP core clocks, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DP_CORE_PM\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DP_CTRL_PM\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP_STREAM_PM\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DP_PHY_PM\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set link clks rate\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set clks rate\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to %d clks, err: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dp_power_regulator_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm-dp] %s: %s: failed to init regulator, ret=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dp_power_regulator_init\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/msm/dp/dp_power.c\00", [62 x i8] zeroinitializer }, align 32
@dp_power_regulator_init._entry_ptr = internal global ptr @dp_power_regulator_init._entry, section ".printk_index", align 4
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get %s clk. err=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid power_data\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dp_power_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.30, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[drm-dp] %s: regulator %d set op mode failed, %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dp_power_regulator_enable\00", [38 x i8] zeroinitializer }, align 32
@dp_power_regulator_enable._entry_ptr = internal global ptr @dp_power_regulator_enable._entry, section ".printk_index", align 4
@dp_power_regulator_enable._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.30, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[drm-dp] %s: regulator enable failed, %d\0A\00", [52 x i8] zeroinitializer }, align 32
@dp_power_regulator_enable._entry_ptr.38 = internal global ptr @dp_power_regulator_enable._entry.36, section ".printk_index", align 4
@switch.table.dp_power_clk_enable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 211, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 236, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 243, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 248, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 253, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 258, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 262, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 272, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 285, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 288, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 302, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 312, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 318, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 359, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 365, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 396, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 43, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 44, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 45, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 46, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [38 x i8] c"../drivers/gpu/drm/msm/dp/dp_parser.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 47, i32 19 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 186, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 194, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 202, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 90, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 110, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 143, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 50, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 56, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [37 x i8] c"../drivers/gpu/drm/msm/dp/dp_power.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 65, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [33 x i8] c"switch.table.dp_power_clk_enable\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @dp_power_regulator_enable._entry, ptr @dp_power_regulator_enable._entry.36, ptr @dp_power_regulator_enable._entry_ptr, ptr @dp_power_regulator_enable._entry_ptr.38, ptr @dp_power_regulator_init._entry, ptr @dp_power_regulator_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @switch.table.dp_power_clk_enable], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_power_regulator_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_power_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_power_regulator_enable._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dp_power_clk_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_power_clk_status(ptr nocapture noundef readonly %dp_power, i32 noundef %pm_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp_power to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_power, align 1, !range !82
  %2 = zext i8 %1 to i32
  %link_clks_on = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 1
  %3 = ptrtoint ptr %link_clks_on to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_clks_on, align 1, !range !82
  %5 = zext i8 %4 to i32
  %stream_clks_on = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 2
  %6 = ptrtoint ptr %stream_clks_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_clks_on, align 1, !range !82
  %8 = zext i8 %7 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %5, i32 noundef %8) #3
  %9 = zext i32 %pm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pm_type, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %if.then11
    i32 2, label %if.then18
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then18, %if.then11, %entry.return.sink.split_crit_edge
  %stream_clks_on.sink = phi ptr [ %stream_clks_on, %if.then18 ], [ %link_clks_on, %if.then11 ], [ %dp_power, %entry.return.sink.split_crit_edge ]
  %10 = ptrtoint ptr %stream_clks_on.sink to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_clks_on.sink, align 1, !range !82
  %phi.cast = zext i8 %11 to i32
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0.shrunk.shrunk = phi i32 [ 0, %entry.return_crit_edge ], [ %phi.cast, %return.sink.split ]
  ret i32 %retval.0.shrunk.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_power_clk_enable(ptr nocapture noundef %dp_power, i32 noundef %pm_type, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %add.ptr = getelementptr i8, ptr %dp_power, i32 -72
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pm_type)
  %switch = icmp ult i32 %pm_type, 3
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pm_type)
  %cond132 = icmp eq i32 %pm_type, 3
  %.str.23..str.24 = select i1 %cond132, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull %.str.23..str.24) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then4, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then4:                                         ; preds = %if.end
  %0 = zext i32 %pm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %pm_type, label %land.lhs.true16 [
    i32 0, label %land.lhs.true6
    i32 1, label %land.lhs.true11
  ]

land.lhs.true6:                                   ; preds = %if.then4
  %1 = ptrtoint ptr %dp_power to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_power, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end33_crit_edge, label %if.then8

land.lhs.true6.if.end33_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.2) #3
  br label %cleanup

land.lhs.true11:                                  ; preds = %if.then4
  %link_clks_on = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 1
  %3 = ptrtoint ptr %link_clks_on to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link_clks_on, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %land.lhs.true21, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.3) #3
  br label %cleanup

land.lhs.true16:                                  ; preds = %if.then4
  %stream_clks_on = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 2
  %5 = ptrtoint ptr %stream_clks_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stream_clks_on, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool17.not = icmp eq i8 %6, 0
  br i1 %tobool17.not, label %land.lhs.true16.if.end33_crit_edge, label %if.then18

land.lhs.true16.if.end33_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.4) #3
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true11
  %7 = ptrtoint ptr %dp_power to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_power, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool23.not = icmp eq i8 %8, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true21.if.end33_crit_edge

land.lhs.true21.if.end33_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then24:                                        ; preds = %land.lhs.true21
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5) #3
  %call26 = tail call fastcc i32 @dp_power_clk_set_rate(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef %call26) #3
  br label %cleanup

if.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %dp_power to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %dp_power, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %land.lhs.true21.if.end33_crit_edge, %land.lhs.true16.if.end33_crit_edge, %land.lhs.true6.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %call35 = tail call fastcc i32 @dp_power_clk_set_rate(ptr noundef %add.ptr, i32 noundef %pm_type, i1 noundef zeroext %enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end33
  %cond = select i1 %enable, ptr @.str.8, ptr @.str.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pm_type)
  %10 = icmp ult i32 %pm_type, 3
  br i1 %10, label %switch.lookup, label %if.then37.dp_parser_pm_name.exit112_crit_edge

if.then37.dp_parser_pm_name.exit112_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_parser_pm_name.exit112

switch.lookup:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.dp_power_clk_enable, i32 0, i32 %pm_type
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dp_parser_pm_name.exit112

dp_parser_pm_name.exit112:                        ; preds = %switch.lookup, %if.then37.dp_parser_pm_name.exit112_crit_edge
  %retval.0.i111 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.24, %if.then37.dp_parser_pm_name.exit112_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i111, i32 noundef %call35) #3
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %12 = zext i32 %pm_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %pm_type, label %if.end56 [
    i32 0, label %if.end56.thread
    i32 2, label %if.end56.thread129
  ]

if.end56.thread:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %dp_power to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %dp_power, align 1
  %cond58127 = select i1 %enable, ptr @.str.8, ptr @.str.9
  br label %dp_parser_pm_name.exit118

if.end56.thread129:                               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %stream_clks_on49 = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 2
  %14 = ptrtoint ptr %stream_clks_on49 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %stream_clks_on49, align 1
  %cond58130 = select i1 %enable, ptr @.str.8, ptr @.str.9
  br label %dp_parser_pm_name.exit118

if.end56:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %link_clks_on53 = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 1
  %15 = ptrtoint ptr %link_clks_on53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %link_clks_on53, align 1
  %cond58 = select i1 %enable, ptr @.str.8, ptr @.str.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pm_type)
  %cond133 = icmp eq i32 %pm_type, 1
  %.str.21..str.24 = select i1 %cond133, ptr @.str.21, ptr @.str.24
  br label %dp_parser_pm_name.exit118

dp_parser_pm_name.exit118:                        ; preds = %if.end56, %if.end56.thread129, %if.end56.thread
  %cond58128 = phi ptr [ %cond58130, %if.end56.thread129 ], [ %cond58127, %if.end56.thread ], [ %cond58, %if.end56 ]
  %retval.0.i117 = phi ptr [ @.str.22, %if.end56.thread129 ], [ @.str.20, %if.end56.thread ], [ %.str.21..str.24, %if.end56 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond58128, ptr noundef nonnull %retval.0.i117) #3
  %stream_clks_on60 = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 2
  %16 = ptrtoint ptr %stream_clks_on60 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stream_clks_on60, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool61.not = icmp eq i8 %17, 0
  %cond62 = select i1 %tobool61.not, ptr @.str.13, ptr @.str.12
  %link_clks_on63 = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 1
  %18 = ptrtoint ptr %link_clks_on63 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %link_clks_on63, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool64.not = icmp eq i8 %19, 0
  %cond65 = select i1 %tobool64.not, ptr @.str.13, ptr @.str.12
  %20 = ptrtoint ptr %dp_power to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_power, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool67.not = icmp eq i8 %21, 0
  %cond68 = select i1 %tobool67.not, ptr @.str.13, ptr @.str.12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond62, ptr noundef nonnull %cond65, ptr noundef nonnull %cond68) #3
  br label %cleanup

cleanup:                                          ; preds = %dp_parser_pm_name.exit118, %dp_parser_pm_name.exit112, %if.then28, %if.then18, %if.then13, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then8 ], [ 0, %if.then13 ], [ 0, %if.then18 ], [ %call35, %dp_parser_pm_name.exit112 ], [ 0, %dp_parser_pm_name.exit118 ], [ %call26, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_power_clk_set_rate(ptr nocapture noundef readonly %power, i32 noundef %module, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %arrayidx = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 %module
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %module)
  %cmp = icmp eq i32 %module, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %clk_config = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_config, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.i = icmp sgt i32 %5, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

for.body.lr.ph.i:                                 ; preds = %if.then
  %dev.i = getelementptr inbounds %struct.dp_power_private, ptr %power, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dss_clk, ptr %3, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %type.i = getelementptr %struct.dss_clk, ptr %3, i32 %i.021.i, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2.i = icmp eq i32 %9, 1
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.then.i
  br i1 %enable, label %if.then5.i, label %if.then3.i.if.end.i_crit_edge

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #5
  %rate7.i = getelementptr %struct.dss_clk, ptr %3, i32 %i.021.i, i32 3
  %10 = ptrtoint ptr %rate7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate7.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then3.i.if.end.i_crit_edge
  %rate.0.i = phi i32 [ %11, %if.then5.i ], [ 0, %if.then3.i.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %13, i32 noundef %rate.0.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then3

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.if.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then3:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #3
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %enable, label %if.then5, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then5:                                         ; preds = %if.else
  %clk_config6 = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 %module, i32 1
  %14 = ptrtoint ptr %clk_config6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_config6, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call8 = tail call i32 @msm_dss_clk_set_rate(ptr noundef %15, i32 noundef %17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end13_crit_edge, label %if.then10

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #3
  br label %cleanup

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.else.if.end13_crit_edge, %for.inc.i.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %clk_config14 = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 %module, i32 1
  %18 = ptrtoint ptr %clk_config14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_config14, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %conv17 = zext i1 %enable to i32
  %call18 = tail call i32 @msm_dss_enable_clk(ptr noundef %19, i32 noundef %21, i32 noundef %conv17) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end13.cleanup_crit_edge, label %if.then20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %conv17, i32 noundef %call18) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end13.cleanup_crit_edge, %if.then10, %if.then3
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ %call18, %if.then20 ], [ %call8, %if.then10 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_power_client_init(ptr noundef %dp_power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_power, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dp_power, i32 -72
  %pdev = getelementptr i8, ptr %dp_power, i32 -68
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev) #3
  %supplies.i = getelementptr i8, ptr %dp_power, i32 -48
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %regulator_cfg.i = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regulator_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator_cfg.i, align 4
  %regs1.i = getelementptr inbounds %struct.dp_regulator_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26.i = icmp sgt i32 %9, 0
  br i1 %cmp26.i, label %if.end.for.body.i_crit_edge, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dp_reg_entry, ptr %regs1.i, i32 %i.027.i
  %arrayidx8.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.027.i
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.i, ptr %arrayidx8.i, align 4
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef %9, ptr noundef %supplies.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  br i1 %cmp9.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29, i32 noundef %call.i) #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %call.i) #3
  br label %error

if.end3:                                          ; preds = %for.end.i
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %mp.i = getelementptr inbounds %struct.dp_parser, ptr %14, i32 0, i32 1
  %arrayidx7.i = getelementptr %struct.dp_parser, ptr %14, i32 0, i32 1, i32 2
  %clk_config.i = getelementptr inbounds %struct.dp_parser, ptr %14, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %clk_config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_config.i, align 4
  %17 = ptrtoint ptr %mp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mp.i, align 4
  %call.i19 = tail call i32 @msm_dss_get_clk(ptr noundef %dev1.i, ptr noundef %16, i32 noundef %18) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.20, i32 noundef %call.i19) #3
  br label %if.then6

if.end.i:                                         ; preds = %if.end3
  %arrayidx4.i = getelementptr %struct.dp_parser, ptr %14, i32 0, i32 1, i32 1
  %clk_config9.i = getelementptr %struct.dp_parser, ptr %14, i32 0, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %clk_config9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_config9.i, align 4
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx4.i, align 4
  %call11.i = tail call i32 @msm_dss_get_clk(ptr noundef %dev1.i, ptr noundef %20, i32 noundef %22) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end17.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.21, i32 noundef %call11.i) #3
  %23 = ptrtoint ptr %clk_config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_config.i, align 4
  %25 = ptrtoint ptr %mp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mp.i, align 4
  tail call void @msm_dss_put_clk(ptr noundef %24, i32 noundef %26) #3
  br label %if.then6

if.end17.i:                                       ; preds = %if.end.i
  %clk_config18.i = getelementptr %struct.dp_parser, ptr %14, i32 0, i32 1, i32 2, i32 1
  %27 = ptrtoint ptr %clk_config18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_config18.i, align 4
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.i, align 4
  %call20.i = tail call i32 @msm_dss_get_clk(ptr noundef %dev1.i, ptr noundef %28, i32 noundef %30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end17.i.cleanup_crit_edge, label %if.then22.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.21, i32 noundef %call20.i) #3
  %31 = ptrtoint ptr %clk_config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_config.i, align 4
  %33 = ptrtoint ptr %mp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mp.i, align 4
  tail call void @msm_dss_put_clk(ptr noundef %32, i32 noundef %34) #3
  br label %if.then6

if.then6:                                         ; preds = %if.then22.i, %if.then13.i, %if.then.i
  %retval.0.i20.ph = phi i32 [ -19, %if.then22.i ], [ -19, %if.then13.i ], [ %call.i19, %if.then.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %retval.0.i20.ph) #3
  br label %error

error:                                            ; preds = %if.then6, %if.then2
  %rc.0 = phi i32 [ %call.i, %if.then2 ], [ %retval.0.i20.ph, %if.then6 ]
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev9, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end17.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %rc.0, %error ], [ -22, %if.then ], [ 0, %if.end17.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_power_client_deinit(ptr noundef readonly %dp_power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_power, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dp_power, i32 -72
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %arrayidx3.i = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 1
  %arrayidx6.i = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 2
  %tobool7.not.i = icmp eq ptr %arrayidx3.i, null
  %tobool9.not.i = icmp eq ptr %arrayidx6.i, null
  %or.cond1.i = or i1 %tobool7.not.i, %tobool9.not.i
  br i1 %or.cond1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #3
  br label %dp_power_clk_deinit.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mp.i = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 1
  %clk_config.i = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %clk_config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_config.i, align 4
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3.i, align 4
  tail call void @msm_dss_put_clk(ptr noundef %3, i32 noundef %5) #3
  %clk_config10.i = getelementptr inbounds %struct.dp_parser, ptr %1, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %clk_config10.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_config10.i, align 4
  %8 = ptrtoint ptr %mp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mp.i, align 4
  tail call void @msm_dss_put_clk(ptr noundef %7, i32 noundef %9) #3
  %clk_config12.i = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %clk_config12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_config12.i, align 4
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i, align 4
  tail call void @msm_dss_put_clk(ptr noundef %11, i32 noundef %13) #3
  br label %dp_power_clk_deinit.exit

dp_power_clk_deinit.exit:                         ; preds = %if.end.i, %if.then.i
  %pdev = getelementptr i8, ptr %dp_power, i32 -68
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %dp_power_clk_deinit.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_power_init(ptr noundef %dp_power, i1 noundef zeroext %flip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_power, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dp_power, i32 -72
  %pdev = getelementptr i8, ptr %dp_power, i32 -68
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #3
  %supplies.i = getelementptr i8, ptr %dp_power, i32 -48
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %regulator_cfg.i = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regulator_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator_cfg.i, align 4
  %regs1.i = getelementptr inbounds %struct.dp_regulator_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp61.i = icmp sgt i32 %7, 0
  br i1 %cmp61.i, label %if.end.for.body.i_crit_edge, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %enable_load.i = getelementptr %struct.dp_reg_entry, ptr %regs1.i, i32 %i.062.i, i32 1
  %8 = ptrtoint ptr %enable_load.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp6.i = icmp sgt i32 %9, -1
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.062.i, i32 1
  %10 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.i, align 4
  %call.i22 = tail call i32 @regulator_set_load(ptr noundef %11, i32 noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp10.i = icmp slt i32 %call.i22, 0
  br i1 %cmp10.i, label %do.end.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %i.062.i, i32 noundef %call.i22) #6
  br label %fail.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %7, %for.inc.i.for.end.i_crit_edge ]
  %call14.i = tail call i32 @regulator_bulk_enable(i32 noundef %7, ptr noundef %supplies.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end4

do.end19.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %call14.i) #6
  br label %fail.i

fail.i:                                           ; preds = %do.end19.i, %do.end.i
  %i.060.i = phi i32 [ %i.062.i, %do.end.i ], [ %i.0.lcssa.i, %do.end19.i ]
  %ret.0.i = phi i32 [ %call.i22, %do.end.i ], [ %call14.i, %do.end19.i ]
  %i.164.i = add i32 %i.060.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.164.i)
  %cmp2465.i = icmp sgt i32 %i.164.i, -1
  br i1 %cmp2465.i, label %fail.i.for.body25.i_crit_edge, label %fail.i.if.then3_crit_edge

fail.i.if.then3_crit_edge:                        ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

fail.i.for.body25.i_crit_edge:                    ; preds = %fail.i
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %fail.i.for.body25.i_crit_edge
  %i.166.i = phi i32 [ %i.1.i, %for.body25.i.for.body25.i_crit_edge ], [ %i.164.i, %fail.i.for.body25.i_crit_edge ]
  %consumer27.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.166.i, i32 1
  %12 = ptrtoint ptr %consumer27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer27.i, align 4
  %disable_load.i = getelementptr %struct.dp_reg_entry, ptr %regs1.i, i32 %i.166.i, i32 2
  %14 = ptrtoint ptr %disable_load.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %disable_load.i, align 4
  %call29.i = tail call i32 @regulator_set_load(ptr noundef %13, i32 noundef %15) #3
  %i.1.i = add nsw i32 %i.166.i, -1
  %cmp24.not.i = icmp eq i32 %i.166.i, 0
  br i1 %cmp24.not.i, label %for.body25.i.if.then3_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body25.i

for.body25.i.if.then3_crit_edge:                  ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

if.then3:                                         ; preds = %for.body25.i.if.then3_crit_edge, %fail.i.if.then3_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %ret.0.i) #3
  br label %exit

if.end4:                                          ; preds = %for.end.i
  %call5 = tail call i32 @dp_power_clk_enable(ptr noundef nonnull %dp_power, i32 noundef 0, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call5) #3
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %regulator_cfg.i24 = getelementptr inbounds %struct.dp_parser, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %regulator_cfg.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regulator_cfg.i24, align 4
  %regs1.i25 = getelementptr inbounds %struct.dp_regulator_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33) #3
  %i.020.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.020.i)
  %cmp21.i = icmp sgt i32 %i.020.i, -1
  br i1 %cmp21.i, label %if.then7.for.body.i28_crit_edge, label %if.then7.dp_power_regulator_disable.exit_crit_edge

if.then7.dp_power_regulator_disable.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_power_regulator_disable.exit

if.then7.for.body.i28_crit_edge:                  ; preds = %if.then7
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.inc.i32.for.body.i28_crit_edge, %if.then7.for.body.i28_crit_edge
  %i.022.i = phi i32 [ %i.0.i, %for.inc.i32.for.body.i28_crit_edge ], [ %i.020.i, %if.then7.for.body.i28_crit_edge ]
  %disable_load.i26 = getelementptr %struct.dp_reg_entry, ptr %regs1.i25, i32 %i.022.i, i32 2
  %22 = ptrtoint ptr %disable_load.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %disable_load.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp6.i27 = icmp sgt i32 %23, -1
  br i1 %cmp6.i27, label %if.then.i31, label %for.body.i28.for.inc.i32_crit_edge

for.body.i28.for.inc.i32_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i32

if.then.i31:                                      ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #5
  %consumer.i29 = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.022.i, i32 1
  %24 = ptrtoint ptr %consumer.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %consumer.i29, align 4
  %call.i30 = tail call i32 @regulator_set_load(ptr noundef %25, i32 noundef %23) #3
  br label %for.inc.i32

for.inc.i32:                                      ; preds = %if.then.i31, %for.body.i28.for.inc.i32_crit_edge
  %i.0.i = add i32 %i.022.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i32.for.body.i28_crit_edge, label %for.inc.i32.dp_power_regulator_disable.exit_crit_edge

for.inc.i32.dp_power_regulator_disable.exit_crit_edge: ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_power_regulator_disable.exit

for.inc.i32.for.body.i28_crit_edge:               ; preds = %for.inc.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i28

dp_power_regulator_disable.exit:                  ; preds = %for.inc.i32.dp_power_regulator_disable.exit_crit_edge, %if.then7.dp_power_regulator_disable.exit_crit_edge
  %call10.i = tail call i32 @regulator_bulk_disable(i32 noundef %21, ptr noundef %supplies.i) #3
  br label %exit

exit:                                             ; preds = %dp_power_regulator_disable.exit, %if.then3
  %rc.0 = phi i32 [ %ret.0.i, %if.then3 ], [ %call5, %dp_power_regulator_disable.exit ]
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %call.i34 = tail call i32 @__pm_runtime_idle(ptr noundef %dev10, i32 noundef 4) #3
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %rc.0, %exit ], [ -22, %if.then ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_power_deinit(ptr noundef %dp_power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dp_power, i32 -72
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 0
  %clk_config14.i = getelementptr %struct.dp_parser, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_config14.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_config14.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call18.i = tail call i32 @msm_dss_enable_clk(ptr noundef %3, i32 noundef %5, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end40.i, label %if.then37.i

if.then37.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %call18.i) #3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20, i32 noundef %call18.i) #3
  br label %dp_power_clk_enable.exit

if.end40.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %dp_power to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %dp_power, align 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.20) #3
  %stream_clks_on60.i = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 2
  %7 = ptrtoint ptr %stream_clks_on60.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stream_clks_on60.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool61.not.i = icmp eq i8 %8, 0
  %cond62.i = select i1 %tobool61.not.i, ptr @.str.13, ptr @.str.12
  %link_clks_on63.i = getelementptr inbounds %struct.dp_power, ptr %dp_power, i32 0, i32 1
  %9 = ptrtoint ptr %link_clks_on63.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %link_clks_on63.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool64.not.i = icmp eq i8 %10, 0
  %cond65.i = select i1 %tobool64.not.i, ptr @.str.13, ptr @.str.12
  %11 = ptrtoint ptr %dp_power to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_power, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool67.not.i = icmp eq i8 %12, 0
  %cond68.i = select i1 %tobool67.not.i, ptr @.str.13, ptr @.str.12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond62.i, ptr noundef nonnull %cond65.i, ptr noundef nonnull %cond68.i) #3
  br label %dp_power_clk_enable.exit

dp_power_clk_enable.exit:                         ; preds = %if.end40.i, %if.then37.i
  %supplies.i = getelementptr i8, ptr %dp_power, i32 -48
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %regulator_cfg.i = getelementptr inbounds %struct.dp_parser, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %regulator_cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regulator_cfg.i, align 4
  %regs1.i = getelementptr inbounds %struct.dp_regulator_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33) #3
  %i.020.i = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.020.i)
  %cmp21.i = icmp sgt i32 %i.020.i, -1
  br i1 %cmp21.i, label %dp_power_clk_enable.exit.for.body.i_crit_edge, label %dp_power_clk_enable.exit.dp_power_regulator_disable.exit_crit_edge

dp_power_clk_enable.exit.dp_power_regulator_disable.exit_crit_edge: ; preds = %dp_power_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_power_regulator_disable.exit

dp_power_clk_enable.exit.for.body.i_crit_edge:    ; preds = %dp_power_clk_enable.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dp_power_clk_enable.exit.for.body.i_crit_edge
  %i.022.i = phi i32 [ %i.0.i, %for.inc.i.for.body.i_crit_edge ], [ %i.020.i, %dp_power_clk_enable.exit.for.body.i_crit_edge ]
  %disable_load.i = getelementptr %struct.dp_reg_entry, ptr %regs1.i, i32 %i.022.i, i32 2
  %19 = ptrtoint ptr %disable_load.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %disable_load.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp6.i = icmp sgt i32 %20, -1
  br i1 %cmp6.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %consumer.i = getelementptr %struct.regulator_bulk_data, ptr %supplies.i, i32 %i.022.i, i32 1
  %21 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer.i, align 4
  %call.i = tail call i32 @regulator_set_load(ptr noundef %22, i32 noundef %20) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.022.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.dp_power_regulator_disable.exit_crit_edge

for.inc.i.dp_power_regulator_disable.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_power_regulator_disable.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

dp_power_regulator_disable.exit:                  ; preds = %for.inc.i.dp_power_regulator_disable.exit_crit_edge, %dp_power_clk_enable.exit.dp_power_regulator_disable.exit_crit_edge
  %call10.i = tail call i32 @regulator_bulk_disable(i32 noundef %18, ptr noundef %supplies.i) #3
  %pdev = getelementptr i8, ptr %dp_power, i32 -68
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %call.i4 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_power_get(ptr noundef %dev, ptr noundef %parser) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parser, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 76, i32 noundef 3520) #3
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parser, ptr %call.i, align 4
  %3 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parser, align 4
  %pdev9 = getelementptr inbounds %struct.dp_power_private, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %pdev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pdev9, align 4
  %dev10 = getelementptr inbounds %struct.dp_power_private, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev10, align 4
  %dp_power11 = getelementptr inbounds %struct.dp_power_private, ptr %call.i, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_power11, %if.end6 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_enable_clk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_get_clk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dss_put_clk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 211, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 236, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 243, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 248, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 253, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 258, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 262, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 272, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 285, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 288, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 302, i32 3}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 312, i32 3}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 318, i32 3}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 359, i32 3}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 365, i32 3}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 396, i32 3}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.h", i32 43, i32 26}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.h", i32 44, i32 26}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.h", i32 45, i32 28}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.h", i32 46, i32 26}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.h", i32 47, i32 19}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 186, i32 4}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 194, i32 5}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 202, i32 3}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 90, i32 3}
!54 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dp_power_regulator_init._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @dp_power_regulator_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 110, i32 3}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 143, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 50, i32 2}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 56, i32 5}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dp_power_regulator_enable._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @dp_power_regulator_enable._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/dp/dp_power.c", i32 65, i32 3}
!71 = !{ptr @dp_power_regulator_enable._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @dp_power_regulator_enable._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i8 0, i8 2}
