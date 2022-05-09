; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_parser.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_regulator_cfg = type { i32, [4 x %struct.dp_reg_entry] }
%struct.dp_reg_entry = type { [32 x i8], i32, i32 }
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
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@sdm845_dp_reg_cfg = internal constant { %struct.dp_regulator_cfg, [60 x i8] } { %struct.dp_regulator_cfg { i32 2, [4 x %struct.dp_reg_entry] [%struct.dp_reg_entry { [32 x i8] c"vdda-1p2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21800, i32 4 }, %struct.dp_reg_entry { [32 x i8] c"vdda-0p9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dp_reg_entry zeroinitializer, %struct.dp_reg_entry zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"legacy memory region not large enough\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to remap aux region: %pe\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to remap link region: %pe\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to remap p0 region: %pe\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dp\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@dp_parser_misc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014[drm] Invalid property %s, default max DP lanes = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dp_parser_misc\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/msm/dp/dp_parser.c\00", [61 x i8] zeroinitializer }, align 32
@dp_parser_misc._entry_ptr = internal global ptr @dp_parser_misc._entry, section ".printk_index", align 4
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize power data %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error reading clock-names %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stream\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctrl_link\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stream_pixel\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clock parsing successful\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no clocks are defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no core clocks are defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no ctrl clocks are defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no stream (pixel) clocks are defined\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to acquire DRM panel: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create panel bridge\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 294, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"sdm845_dp_reg_cfg\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 25, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 66, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 78, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 84, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 90, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 95, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 106, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 111, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 218, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 229, i32 52 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 232, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 235, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 242, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 249, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 255, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 256, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 263, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 138, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 160, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 173, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 188, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 276, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [38 x i8] c"../drivers/gpu/drm/msm/dp/dp_parser.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 282, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @dp_parser_misc._entry, ptr @dp_parser_misc._entry_ptr, ptr @.str, ptr @sdm845_dp_reg_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dp_reg_cfg to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_parser_misc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_parser_get(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 224, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parse = getelementptr inbounds %struct.dp_parser, ptr %call.i, i32 0, i32 8
  %0 = ptrtoint ptr %parse to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dp_parser_parse, ptr %parse, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_parser_parse(ptr noundef %parser, i32 noundef %connector_type) #0 align 64 {
entry:
  %panel.i = alloca ptr, align 4
  %clk_name.i.i = alloca ptr, align 4
  %clk_name.i = alloca ptr, align 4
  %res.i150.i = alloca ptr, align 4
  %res.i141.i = alloca ptr, align 4
  %res.i132.i = alloca ptr, align 4
  %res.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parser, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser, align 4
  %io2.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i.i) #6
  %2 = ptrtoint ptr %res.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i.i, align 4, !annotation !61
  %call.i.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res.i.i) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i.i) #6
  %base160.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %base160.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %base160.i, align 4
  br label %dp_parser_ctrl_res.exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %sub.i.i.i = add i32 %7, 1
  %add.i.i.i = sub i32 %sub.i.i.i, %9
  %10 = ptrtoint ptr %io2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i.i.i, ptr %io2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i.i) #6
  %base.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %base.i, align 4
  %aux.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i132.i) #6
  %12 = ptrtoint ptr %res.i132.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i132.i, align 4, !annotation !61
  %call.i133.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %res.i132.i) #6
  %cmp.i.i134.i = icmp ugt ptr %call.i133.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i134.i, label %if.then17.i, label %if.else53.i

if.then17.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i132.i) #6
  %base13161.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %base13161.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i133.i, ptr %base13161.i, align 4
  %cmp.i = icmp eq ptr %call.i133.i, inttoptr (i32 -22 to ptr)
  br i1 %cmp.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %if.then17.i
  %14 = ptrtoint ptr %io2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %io2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %15)
  %cmp24.i = icmp ult i32 %15, 5120
  br i1 %cmp24.i, label %dp_parser_ctrl_res.exit.thread45, label %if.end26.i

dp_parser_ctrl_res.exit.thread45:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end26.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %io2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %io2.i, align 4
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 512
  %19 = ptrtoint ptr %base13161.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %base13161.i, align 4
  %20 = ptrtoint ptr %aux.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %aux.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %18, i32 1024
  %link.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 2
  %base38.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %base38.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr37.i, ptr %base38.i, align 4
  %22 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3072, ptr %link.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %18, i32 4096
  %p0.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 3
  %base44.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %base44.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr43.i, ptr %base44.i, align 4
  %24 = ptrtoint ptr %p0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024, ptr %p0.i, align 4
  br label %if.end84.i

if.else.i:                                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i133.i) #6
  %25 = ptrtoint ptr %base13161.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base13161.i, align 4
  br label %dp_parser_ctrl_res.exit

if.else53.i:                                      ; preds = %if.end.i
  %27 = ptrtoint ptr %res.i132.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %res.i132.i, align 4
  %end.i.i135.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %end.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i.i135.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %sub.i.i136.i = add i32 %30, 1
  %add.i.i137.i = sub i32 %sub.i.i136.i, %32
  %33 = ptrtoint ptr %aux.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i.i137.i, ptr %aux.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i132.i) #6
  %base13.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %base13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i133.i, ptr %base13.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i141.i) #6
  %35 = ptrtoint ptr %res.i141.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i141.i, align 4, !annotation !61
  %call.i142.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %res.i141.i) #6
  %cmp.i.i143.i = icmp ugt ptr %call.i142.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i143.i, label %if.then62.i, label %if.end68.i

if.then62.i:                                      ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i141.i) #6
  %base58163.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %base58163.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i142.i, ptr %base58163.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i142.i) #6
  %37 = ptrtoint ptr %base58163.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base58163.i, align 4
  br label %dp_parser_ctrl_res.exit

if.end68.i:                                       ; preds = %if.else53.i
  %link54.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 2
  %39 = ptrtoint ptr %res.i141.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %res.i141.i, align 4
  %end.i.i144.i = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %end.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end.i.i144.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %sub.i.i145.i = add i32 %42, 1
  %add.i.i146.i = sub i32 %sub.i.i145.i, %44
  %45 = ptrtoint ptr %link54.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i.i146.i, ptr %link54.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i141.i) #6
  %base58.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %base58.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i142.i, ptr %base58.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i150.i) #6
  %47 = ptrtoint ptr %res.i150.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i150.i, align 4, !annotation !61
  %call.i151.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %res.i150.i) #6
  %cmp.i.i152.i = icmp ugt ptr %call.i151.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i152.i, label %if.then77.i, label %dp_ioremap.exit157.i

dp_ioremap.exit157.i:                             ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %p069.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 3
  %48 = ptrtoint ptr %res.i150.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %res.i150.i, align 4
  %end.i.i153.i = getelementptr inbounds %struct.resource, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %end.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end.i.i153.i, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %49, align 4
  %sub.i.i154.i = add i32 %51, 1
  %add.i.i155.i = sub i32 %sub.i.i154.i, %53
  %54 = ptrtoint ptr %p069.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i155.i, ptr %p069.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i150.i) #6
  %base73.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %base73.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i151.i, ptr %base73.i, align 4
  br label %if.end84.i

if.then77.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i150.i) #6
  %base73165.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %base73165.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i151.i, ptr %base73165.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i151.i) #6
  %57 = ptrtoint ptr %base73165.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base73165.i, align 4
  br label %dp_parser_ctrl_res.exit

if.end84.i:                                       ; preds = %dp_ioremap.exit157.i, %if.end26.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call85.i = call ptr @devm_phy_get(ptr noundef %dev.i, ptr noundef nonnull @.str.5) #6
  %phy.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call85.i, ptr %phy.i, align 4
  %cmp.i159.i = icmp ugt ptr %call85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159.i, label %if.end84.i.dp_parser_ctrl_res.exit_crit_edge, label %if.end84.i.if.end3_crit_edge

if.end84.i.if.end3_crit_edge:                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end84.i.dp_parser_ctrl_res.exit_crit_edge:     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_parser_ctrl_res.exit

dp_parser_ctrl_res.exit:                          ; preds = %if.end84.i.dp_parser_ctrl_res.exit_crit_edge, %if.then77.i, %if.then62.i, %if.else.i, %if.then.i
  %retval.0.i.in = phi ptr [ %call.i.i, %if.then.i ], [ %26, %if.else.i ], [ %38, %if.then62.i ], [ %58, %if.then77.i ], [ %call85.i, %if.end84.i.dp_parser_ctrl_res.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool1.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool1.not, label %dp_parser_ctrl_res.exit.if.end3_crit_edge, label %dp_parser_ctrl_res.exit.cleanup_crit_edge

dp_parser_ctrl_res.exit.cleanup_crit_edge:        ; preds = %dp_parser_ctrl_res.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dp_parser_ctrl_res.exit.if.end3_crit_edge:        ; preds = %dp_parser_ctrl_res.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %dp_parser_ctrl_res.exit.if.end3_crit_edge, %if.end84.i.if.end3_crit_edge
  %60 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parser, align 4
  %of_node1.i = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3, i32 27
  %62 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node1.i, align 8
  %call.i = call i32 @of_property_count_elems_of_size(ptr noundef %63, ptr noundef nonnull @.str.6, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i30 = icmp slt i32 %call.i, 0
  br i1 %cmp.i30, label %do.end.i, label %if.end3.dp_parser_misc.exit_crit_edge

if.end3.dp_parser_misc.exit_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %dp_parser_misc.exit

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 4) #9
  br label %dp_parser_misc.exit

dp_parser_misc.exit:                              ; preds = %do.end.i, %if.end3.dp_parser_misc.exit_crit_edge
  %len.0.i = phi i32 [ 4, %do.end.i ], [ %call.i, %if.end3.dp_parser_misc.exit_crit_edge ]
  %max_dp_lanes.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 6
  %64 = ptrtoint ptr %max_dp_lanes.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %len.0.i, ptr %max_dp_lanes.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i) #6
  %65 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name.i, align 4, !annotation !61
  %66 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parser, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i.i) #6
  %68 = ptrtoint ptr %clk_name.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name.i.i, align 4, !annotation !61
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  %mp.i.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 1
  %arrayidx3.i.i = getelementptr %struct.dp_parser, ptr %parser, i32 0, i32 1, i32 1
  %arrayidx5.i.i = getelementptr %struct.dp_parser, ptr %parser, i32 0, i32 1, i32 2
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3, i32 27
  %69 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i = call i32 @of_property_read_string_helper(ptr noundef %70, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %dp_parser_misc.exit.for.body.i.i_crit_edge

dp_parser_misc.exit.for.body.i.i_crit_edge:       ; preds = %dp_parser_misc.exit
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %dp_parser_misc.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %if.then.i32

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %dp_parser_misc.exit.for.body.i.i_crit_edge
  %stream_clk_count.0115.i.i = phi i32 [ %stream_clk_count.1.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %dp_parser_misc.exit.for.body.i.i_crit_edge ]
  %ctrl_clk_count.0114.i.i = phi i32 [ %ctrl_clk_count.1.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %dp_parser_misc.exit.for.body.i.i_crit_edge ]
  %core_clk_count.0113.i.i = phi i32 [ %spec.select.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %dp_parser_misc.exit.for.body.i.i_crit_edge ]
  %i.0112.i.i = phi i32 [ %inc23.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %dp_parser_misc.exit.for.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %of_node.i.i, align 8
  %call.i97.i.i = call i32 @of_property_read_string_helper(ptr noundef %72, ptr noundef nonnull @.str.11, ptr noundef nonnull %clk_name.i.i, i32 noundef 1, i32 noundef %i.0112.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i.i)
  %cmp9.i.i = icmp slt i32 %call.i97.i.i, 0
  br i1 %cmp9.i.i, label %for.body.i.i.if.then.i32_crit_edge, label %if.end11.i.i

for.body.i.i.if.then.i32_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i32

if.end11.i.i:                                     ; preds = %for.body.i.i
  %73 = ptrtoint ptr %clk_name.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk_name.i.i, align 4
  %call1.i.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %74, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  %inc.i.i = zext i1 %tobool.not.i.i.i to i32
  %spec.select.i.i = add i32 %core_clk_count.0113.i.i, %inc.i.i
  %call1.i100.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.15, ptr noundef %74, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100.i.i)
  %tobool.not.i101.i.i = icmp eq i32 %call1.i100.i.i, 0
  %inc17.i.i = zext i1 %tobool.not.i101.i.i to i32
  %ctrl_clk_count.1.i.i = add i32 %ctrl_clk_count.0114.i.i, %inc17.i.i
  %call1.i103.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.14, ptr noundef %74, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103.i.i)
  %tobool.not.i104.i.i = icmp eq i32 %call1.i103.i.i, 0
  %inc21.i.i = zext i1 %tobool.not.i104.i.i to i32
  %stream_clk_count.1.i.i = add i32 %stream_clk_count.0115.i.i, %inc21.i.i
  %inc23.i.i = add nuw nsw i32 %i.0112.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc23.i.i, %call.i.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp24.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i

if.then25.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #6
  br label %if.then.i32

if.end26.i.i:                                     ; preds = %for.end.i.i
  %75 = ptrtoint ptr %mp.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.select.i.i, ptr %mp.i.i, align 4
  %mul.i.i = mul i32 %spec.select.i.i, 48
  %call.i105.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i, i32 noundef %mul.i.i, i32 noundef 3520) #6
  %clk_config.i.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %clk_config.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i105.i.i, ptr %clk_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i105.i.i, null
  br i1 %tobool.not.i.i, label %if.end26.i.i.if.then.i32_crit_edge, label %if.end32.i.i

if.end26.i.i.if.then.i32_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i32

if.end32.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctrl_clk_count.1.i.i)
  %cmp33.i.i = icmp eq i32 %ctrl_clk_count.1.i.i, 0
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i

if.then34.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #6
  br label %if.then.i32

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %77 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %ctrl_clk_count.1.i.i, ptr %arrayidx3.i.i, align 4
  %mul38.i.i = mul i32 %ctrl_clk_count.1.i.i, 48
  %call.i106.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i, i32 noundef %mul38.i.i, i32 noundef 3520) #6
  %clk_config40.i.i = getelementptr %struct.dp_parser, ptr %parser, i32 0, i32 1, i32 1, i32 1
  %78 = ptrtoint ptr %clk_config40.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i106.i.i, ptr %clk_config40.i.i, align 4
  %tobool42.not.i.i = icmp eq ptr %call.i106.i.i, null
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx3.i.i, align 4
  br label %if.then.i32

if.end45.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream_clk_count.1.i.i)
  %cmp46.i.i = icmp eq i32 %stream_clk_count.1.i.i, 0
  br i1 %cmp46.i.i, label %if.then47.i.i, label %if.end48.i.i

if.then47.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %if.then.i32

if.end48.i.i:                                     ; preds = %if.end45.i.i
  %80 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %stream_clk_count.1.i.i, ptr %arrayidx5.i.i, align 4
  %mul51.i.i = mul i32 %stream_clk_count.1.i.i, 48
  %call.i107.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i, i32 noundef %mul51.i.i, i32 noundef 3520) #6
  %clk_config53.i.i = getelementptr %struct.dp_parser, ptr %parser, i32 0, i32 1, i32 2, i32 1
  %81 = ptrtoint ptr %clk_config53.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i107.i.i, ptr %clk_config53.i.i, align 4
  %tobool55.not.i.i = icmp eq ptr %call.i107.i.i, null
  br i1 %tobool55.not.i.i, label %if.then56.i.i, label %if.end.i33

if.then56.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx5.i.i, align 4
  br label %if.then.i32

if.then.i32:                                      ; preds = %if.then56.i.i, %if.then47.i.i, %if.then43.i.i, %if.then34.i.i, %if.end26.i.i.if.then.i32_crit_edge, %if.then25.i.i, %for.body.i.i.if.then.i32_crit_edge, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %if.end26.i.i.if.then.i32_crit_edge ], [ -22, %if.then43.i.i ], [ -22, %if.then56.i.i ], [ -22, %if.then47.i.i ], [ -22, %if.then34.i.i ], [ -22, %if.then25.i.i ], [ -22, %if.then.i.i ], [ %call.i97.i.i, %for.body.i.i.if.then.i32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i.i) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph.i) #6
  br label %dp_parser_clock.exit.thread

if.end.i33:                                       ; preds = %if.end48.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i.i) #6
  %83 = ptrtoint ptr %mp.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mp.i.i, align 4
  %85 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx3.i.i, align 4
  %87 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx5.i.i, align 4
  %add.i = add i32 %86, %84
  %add9.i = add i32 %add.i, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i)
  %cmp114.i = icmp sgt i32 %add9.i, 0
  br i1 %cmp114.i, label %if.end.i33.for.body.i_crit_edge, label %if.end.i33.if.end11_crit_edge

if.end.i33.if.end11_crit_edge:                    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i33.for.body.i_crit_edge:                  ; preds = %if.end.i33
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i33.for.body.i_crit_edge
  %stream_clk_index.0118.i = phi i32 [ %stream_clk_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i33.for.body.i_crit_edge ]
  %ctrl_clk_index.0117.i = phi i32 [ %ctrl_clk_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i33.for.body.i_crit_edge ]
  %core_clk_index.0116.i = phi i32 [ %core_clk_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i33.for.body.i_crit_edge ]
  %i.0115.i = phi i32 [ %inc54.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i33.for.body.i_crit_edge ]
  %89 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i34 = call i32 @of_property_read_string_helper(ptr noundef %90, ptr noundef nonnull @.str.11, ptr noundef nonnull %clk_name.i, i32 noundef 1, i32 noundef %i.0115.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i34)
  %tobool11.not.i = icmp sgt i32 %call.i.i34, -1
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %call.i.i34) #6
  br label %dp_parser_clock.exit.thread

if.end13.i:                                       ; preds = %for.body.i
  %91 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk_name.i, align 4
  %call1.i.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %92, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i97.i = icmp eq i32 %call1.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %core_clk_index.0116.i, i32 %84)
  %cmp15.i = icmp slt i32 %core_clk_index.0116.i, %84
  %or.cond.i = select i1 %tobool.not.i97.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then16.i, label %if.else.i35

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %clk_config.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clk_config.i.i, align 4
  %clk_name18.i = getelementptr %struct.dss_clk, ptr %94, i32 %core_clk_index.0116.i, i32 1
  %call19.i = call i32 @strlcpy(ptr noundef %clk_name18.i, ptr noundef %92, i32 noundef 32) #6
  %type.i = getelementptr %struct.dss_clk, ptr %94, i32 %core_clk_index.0116.i, i32 2
  %95 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %type.i, align 4
  %inc.i = add nsw i32 %core_clk_index.0116.i, 1
  br label %for.inc.i

if.else.i35:                                      ; preds = %if.end13.i
  %call1.i99.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.14, ptr noundef %92, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call1.i99.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %stream_clk_index.0118.i, i32 %88)
  %cmp22.i = icmp slt i32 %stream_clk_index.0118.i, %88
  %or.cond94.i = select i1 %tobool.not.i100.i, i1 %cmp22.i, i1 false
  br i1 %or.cond94.i, label %if.then23.i, label %if.else32.i

if.then23.i:                                      ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %clk_config53.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk_config53.i.i, align 4
  %clk_name27.i = getelementptr %struct.dss_clk, ptr %97, i32 %stream_clk_index.0118.i, i32 1
  %call29.i = call i32 @strlcpy(ptr noundef %clk_name27.i, ptr noundef %92, i32 noundef 32) #6
  %type30.i = getelementptr %struct.dss_clk, ptr %97, i32 %stream_clk_index.0118.i, i32 2
  %98 = ptrtoint ptr %type30.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %type30.i, align 4
  %inc31.i = add nsw i32 %stream_clk_index.0118.i, 1
  br label %for.inc.i

if.else32.i:                                      ; preds = %if.else.i35
  %call1.i102.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.15, ptr noundef %92, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102.i)
  %tobool.not.i103.i = icmp eq i32 %call1.i102.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %ctrl_clk_index.0117.i, i32 %86)
  %cmp35.i = icmp slt i32 %ctrl_clk_index.0117.i, %86
  %or.cond95.i = select i1 %tobool.not.i103.i, i1 %cmp35.i, i1 false
  br i1 %or.cond95.i, label %if.then36.i, label %if.else32.i.for.inc.i_crit_edge

if.else32.i.for.inc.i_crit_edge:                  ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then36.i:                                      ; preds = %if.else32.i
  %99 = ptrtoint ptr %clk_config40.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clk_config40.i.i, align 4
  %clk_name40.i = getelementptr %struct.dss_clk, ptr %100, i32 %ctrl_clk_index.0117.i, i32 1
  %call42.i = call i32 @strlcpy(ptr noundef %clk_name40.i, ptr noundef %92, i32 noundef 32) #6
  %inc43.i = add nsw i32 %ctrl_clk_index.0117.i, 1
  %101 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %clk_name.i, align 4
  %call1.i105.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.16, ptr noundef %102, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105.i)
  %tobool.not.i106.i = icmp eq i32 %call1.i105.i, 0
  br i1 %tobool.not.i106.i, label %if.then36.i.if.then46.i_crit_edge, label %lor.lhs.false.i

if.then36.i.if.then46.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

lor.lhs.false.i:                                  ; preds = %if.then36.i
  %call1.i108.i = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.17, ptr noundef %102, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call1.i108.i, 0
  br i1 %tobool.not.i109.i, label %lor.lhs.false.i.if.then46.i_crit_edge, label %if.else48.i

lor.lhs.false.i.if.then46.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46.i

if.then46.i:                                      ; preds = %lor.lhs.false.i.if.then46.i_crit_edge, %if.then36.i.if.then46.i_crit_edge
  %type47.i = getelementptr %struct.dss_clk, ptr %100, i32 %ctrl_clk_index.0117.i, i32 2
  %103 = ptrtoint ptr %type47.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %type47.i, align 4
  br label %for.inc.i

if.else48.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %type49.i = getelementptr %struct.dss_clk, ptr %100, i32 %ctrl_clk_index.0117.i, i32 2
  %104 = ptrtoint ptr %type49.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %type49.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else48.i, %if.then46.i, %if.else32.i.for.inc.i_crit_edge, %if.then23.i, %if.then16.i
  %core_clk_index.1.i = phi i32 [ %inc.i, %if.then16.i ], [ %core_clk_index.0116.i, %if.then23.i ], [ %core_clk_index.0116.i, %if.else32.i.for.inc.i_crit_edge ], [ %core_clk_index.0116.i, %if.else48.i ], [ %core_clk_index.0116.i, %if.then46.i ]
  %ctrl_clk_index.1.i = phi i32 [ %ctrl_clk_index.0117.i, %if.then16.i ], [ %ctrl_clk_index.0117.i, %if.then23.i ], [ %ctrl_clk_index.0117.i, %if.else32.i.for.inc.i_crit_edge ], [ %inc43.i, %if.else48.i ], [ %inc43.i, %if.then46.i ]
  %stream_clk_index.1.i = phi i32 [ %stream_clk_index.0118.i, %if.then16.i ], [ %inc31.i, %if.then23.i ], [ %stream_clk_index.0118.i, %if.else32.i.for.inc.i_crit_edge ], [ %stream_clk_index.0118.i, %if.else48.i ], [ %stream_clk_index.0118.i, %if.then46.i ]
  %inc54.i = add nuw nsw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc54.i, %add9.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

dp_parser_clock.exit.thread:                      ; preds = %if.then12.i, %if.then.i32
  %retval.0.i36.ph = phi i32 [ %call.i.i34, %if.then12.i ], [ -22, %if.then.i32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #6
  br label %cleanup

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %if.end.i33.if.end11_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %connector_type)
  %cmp = icmp eq i32 %connector_type, 14
  br i1 %cmp, label %if.then12, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %if.end11
  %105 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %parser, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #6
  %107 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !61
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3, i32 27
  %108 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %of_node.i, align 8
  %call.i37 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %109, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i, label %if.end.i41, label %dp_parser_find_panel.exit.thread52

dp_parser_find_panel.exit.thread52:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call.i37) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  br label %cleanup

if.end.i41:                                       ; preds = %if.then12
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %106, i32 0, i32 3
  %110 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %panel.i, align 4
  %call2.i39 = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1.i, ptr noundef %111) #6
  %panel_bridge.i = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 7
  %112 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call2.i39, ptr %panel_bridge.i, align 4
  %cmp.i.i40 = icmp ugt ptr %call2.i39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i40, label %dp_parser_find_panel.exit, label %dp_parser_find_panel.exit.thread

dp_parser_find_panel.exit.thread:                 ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  br label %if.end17

dp_parser_find_panel.exit:                        ; preds = %if.end.i41
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #6
  %113 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %panel_bridge.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #6
  %tobool14.not = icmp eq ptr %114, null
  br i1 %tobool14.not, label %dp_parser_find_panel.exit.if.end17_crit_edge, label %dp_parser_find_panel.exit.cleanup_crit_edge

dp_parser_find_panel.exit.cleanup_crit_edge:      ; preds = %dp_parser_find_panel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dp_parser_find_panel.exit.if.end17_crit_edge:     ; preds = %dp_parser_find_panel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %dp_parser_find_panel.exit.if.end17_crit_edge, %dp_parser_find_panel.exit.thread, %if.end11.if.end17_crit_edge
  %regulator_cfg = getelementptr inbounds %struct.dp_parser, ptr %parser, i32 0, i32 5
  %116 = ptrtoint ptr %regulator_cfg to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @sdm845_dp_reg_cfg, ptr %regulator_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %dp_parser_find_panel.exit.cleanup_crit_edge, %dp_parser_find_panel.exit.thread52, %dp_parser_clock.exit.thread, %dp_parser_ctrl_res.exit.cleanup_crit_edge, %dp_parser_ctrl_res.exit.thread45, %if.then
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -22, %if.then ], [ %retval.0.i, %dp_parser_ctrl_res.exit.cleanup_crit_edge ], [ %115, %dp_parser_find_panel.exit.cleanup_crit_edge ], [ -22, %dp_parser_ctrl_res.exit.thread45 ], [ %retval.0.i36.ph, %dp_parser_clock.exit.thread ], [ %call.i37, %dp_parser_find_panel.exit.thread52 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 294, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 66, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 78, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 84, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 90, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 95, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 106, i32 35}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 111, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dp_parser_misc._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @dp_parser_misc._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 218, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 229, i32 52}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 232, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 235, i32 30}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 242, i32 37}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 249, i32 37}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 255, i32 31}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 256, i32 31}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 263, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 138, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 160, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 173, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 188, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 276, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 282, i32 3}
!50 = !{ptr @sdm845_dp_reg_cfg, !51, !"sdm845_dp_reg_cfg", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dp/dp_parser.c", i32 25, i32 38}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
