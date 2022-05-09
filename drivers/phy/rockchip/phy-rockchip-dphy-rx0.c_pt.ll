; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rk_dphy_drv_data = type { ptr, i32, ptr, i32, ptr }
%struct.hsfreq_range = type { i16, i8 }
%struct.dphy_reg = type { i16, i8, i8 }
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
%struct.rk_dphy = type { ptr, ptr, ptr, ptr, %struct.phy_configure_opts_mipi_dphy, i8 }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_phy_rockchip_dphy_rx0__290_385_rk_dphy_driver_init6 = internal global ptr @rk_dphy_driver_init, section ".initcall6.init", align 4
@rk_dphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk_dphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk_dphy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk_dphy_driver_exit = internal global ptr @rk_dphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [70 x i8] c"phy_rockchip_dphy_rx0.author=Ezequiel Garcia <ezequiel@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [73 x i8] c"phy_rockchip_dphy_rx0.description=Rockchip MIPI Synopsys DPHY RX0 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [70 x i8] c"phy_rockchip_dphy_rx0.file=drivers/phy/rockchip/phy-rockchip-dphy-rx0\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [43 x i8] c"phy_rockchip_dphy_rx0.license=Dual MIT/GPL\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip-mipi-dphy-rx0\00", [41 x i8] zeroinitializer }, align 32
@rk_dphy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-mipi-dphy-rx0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_mipidphy_drv_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rk_dphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't find GRF syscon\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rk_dphy_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/phy/rockchip/phy-rockchip-dphy-rx0.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk_dphy_probe._entry_ptr = internal global ptr @rk_dphy_probe._entry, section ".printk_index", align 4
@rk_dphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rk_dphy_init, ptr @rk_dphy_exit, ptr @rk_dphy_power_on, ptr @rk_dphy_power_off, ptr null, ptr null, ptr null, ptr @rk_dphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rk_dphy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@rk_dphy_probe._entry_ptr.8 = internal global ptr @rk_dphy_probe._entry.6, section ".printk_index", align 4
@rk_dphy_configure.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy_rockchip_dphy_rx0\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rk_dphy_configure\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lanes %d - data_rate_mbps %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@rk3399_mipidphy_drv_data = internal constant { %struct.rk_dphy_drv_data, [44 x i8] } { %struct.rk_dphy_drv_data { ptr @rk3399_mipidphy_clks, i32 3, ptr @rk3399_mipidphy_hsfreq_ranges, i32 39, ptr @rk3399_grf_dphy_regs }, [44 x i8] zeroinitializer }, align 32
@rk3399_mipidphy_clks = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@rk3399_mipidphy_hsfreq_ranges = internal constant { [39 x %struct.hsfreq_range], [36 x i8] } { [39 x %struct.hsfreq_range] [%struct.hsfreq_range { i16 89, i8 0 }, %struct.hsfreq_range { i16 99, i8 16 }, %struct.hsfreq_range { i16 109, i8 32 }, %struct.hsfreq_range { i16 129, i8 1 }, %struct.hsfreq_range { i16 139, i8 17 }, %struct.hsfreq_range { i16 149, i8 33 }, %struct.hsfreq_range { i16 169, i8 2 }, %struct.hsfreq_range { i16 179, i8 18 }, %struct.hsfreq_range { i16 199, i8 34 }, %struct.hsfreq_range { i16 219, i8 3 }, %struct.hsfreq_range { i16 239, i8 19 }, %struct.hsfreq_range { i16 249, i8 35 }, %struct.hsfreq_range { i16 269, i8 4 }, %struct.hsfreq_range { i16 299, i8 20 }, %struct.hsfreq_range { i16 329, i8 5 }, %struct.hsfreq_range { i16 359, i8 21 }, %struct.hsfreq_range { i16 399, i8 37 }, %struct.hsfreq_range { i16 449, i8 6 }, %struct.hsfreq_range { i16 499, i8 22 }, %struct.hsfreq_range { i16 549, i8 7 }, %struct.hsfreq_range { i16 599, i8 23 }, %struct.hsfreq_range { i16 649, i8 8 }, %struct.hsfreq_range { i16 699, i8 24 }, %struct.hsfreq_range { i16 749, i8 9 }, %struct.hsfreq_range { i16 799, i8 25 }, %struct.hsfreq_range { i16 849, i8 41 }, %struct.hsfreq_range { i16 899, i8 57 }, %struct.hsfreq_range { i16 949, i8 10 }, %struct.hsfreq_range { i16 999, i8 26 }, %struct.hsfreq_range { i16 1049, i8 42 }, %struct.hsfreq_range { i16 1099, i8 58 }, %struct.hsfreq_range { i16 1149, i8 11 }, %struct.hsfreq_range { i16 1199, i8 27 }, %struct.hsfreq_range { i16 1249, i8 43 }, %struct.hsfreq_range { i16 1299, i8 59 }, %struct.hsfreq_range { i16 1349, i8 12 }, %struct.hsfreq_range { i16 1399, i8 28 }, %struct.hsfreq_range { i16 1449, i8 44 }, %struct.hsfreq_range { i16 1500, i8 60 }], [36 x i8] zeroinitializer }, align 32
@rk3399_grf_dphy_regs = internal constant { [29 x %struct.dphy_reg], [44 x i8] } { [29 x %struct.dphy_reg] [%struct.dphy_reg { i16 25172, i8 15, i8 12 }, %struct.dphy_reg { i16 25172, i8 15, i8 4 }, %struct.dphy_reg { i16 25172, i8 15, i8 8 }, %struct.dphy_reg { i16 25172, i8 15, i8 0 }, %struct.dphy_reg { i16 25188, i8 1, i8 10 }, %struct.dphy_reg { i16 25188, i8 1, i8 9 }, %struct.dphy_reg { i16 25188, i8 1, i8 8 }, %struct.dphy_reg { i16 25188, i8 -1, i8 0 }, %struct.dphy_reg { i16 25124, i8 15, i8 0 }, %struct.dphy_reg { i16 -7516, i8 -1, i8 0 }, %struct.dphy_reg { i16 25176, i8 15, i8 8 }, %struct.dphy_reg { i16 25176, i8 15, i8 0 }, %struct.dphy_reg { i16 25176, i8 15, i8 4 }, %struct.dphy_reg { i16 25176, i8 15, i8 12 }, %struct.dphy_reg { i16 25180, i8 15, i8 12 }, %struct.dphy_reg { i16 25180, i8 15, i8 4 }, %struct.dphy_reg { i16 25180, i8 15, i8 8 }, %struct.dphy_reg { i16 25180, i8 15, i8 0 }, %struct.dphy_reg { i16 25184, i8 1, i8 7 }, %struct.dphy_reg { i16 25184, i8 1, i8 5 }, %struct.dphy_reg { i16 25184, i8 1, i8 6 }, %struct.dphy_reg { i16 25184, i8 15, i8 0 }, %struct.dphy_reg { i16 25184, i8 1, i8 4 }, %struct.dphy_reg zeroinitializer, %struct.dphy_reg zeroinitializer, %struct.dphy_reg zeroinitializer, %struct.dphy_reg zeroinitializer, %struct.dphy_reg { i16 25124, i8 1, i8 10 }, %struct.dphy_reg { i16 25124, i8 1, i8 11 }], [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dphy-ref\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dphy-cfg\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"grf\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"rk_dphy_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 378, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 381, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"rk_dphy_dt_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 315, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 346, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"rk_dphy_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 298, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 368, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 244, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"rk3399_mipidphy_drv_data\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 307, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"rk3399_mipidphy_clks\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 64, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"rk3399_mipidphy_hsfreq_ranges\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 51, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"rk3399_grf_dphy_regs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 113, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 65, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 66, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [48 x i8] c"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 67, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_rk_dphy_driver_exit, ptr @__initcall__kmod_phy_rockchip_dphy_rx0__290_385_rk_dphy_driver_init6, ptr @rk_dphy_driver_exit, ptr @rk_dphy_probe._entry, ptr @rk_dphy_probe._entry.6, ptr @rk_dphy_probe._entry_ptr, ptr @rk_dphy_probe._entry_ptr.8, ptr @rk_dphy_driver, ptr @.str, ptr @rk_dphy_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rk_dphy_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rk3399_mipidphy_drv_data, ptr @rk3399_mipidphy_clks, ptr @rk3399_mipidphy_hsfreq_ranges, ptr @rk3399_grf_dphy_regs, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_dphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_dphy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_dphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_dphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk_dphy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_mipidphy_drv_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_mipidphy_clks to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_mipidphy_hsfreq_ranges to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_grf_dphy_regs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk_dphy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk_dphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk_dphy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node3, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %of_node10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node10, align 8
  %call11 = tail call ptr @syscon_node_to_regmap(ptr noundef %10) #5
  %grf = getelementptr inbounds %struct.rk_dphy, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call ptr @of_match_device(ptr noundef nonnull @rk_dphy_dt_ids, ptr noundef %dev1) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %data = getelementptr inbounds %struct.of_device_id, ptr %call16, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %drv_data20 = getelementptr inbounds %struct.rk_dphy, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %drv_data20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %drv_data20, align 4
  %num_clks = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_clks, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 8) #5
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !58

devm_kcalloc.exit.thread:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %clks91 = getelementptr inbounds %struct.rk_dphy, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %clks91 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clks91, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end19
  %20 = extractvalue { i32, i1 } %17, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %20, i32 noundef 3520) #5
  %clks = getelementptr inbounds %struct.rk_dphy, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool24.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool24.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %22 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp93.not = icmp eq i32 %23, 0
  br i1 %cmp93.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %13, align 4
  %arrayidx = getelementptr ptr, ptr %25, i32 %i.094
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clks, align 4
  %arrayidx30 = getelementptr %struct.clk_bulk_data, ptr %29, i32 %i.094
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %arrayidx30, align 4
  %inc = add nuw i32 %i.094, 1
  %31 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_clks, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %32, %for.body.for.end_crit_edge ]
  %33 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clks, align 4
  %call34 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %for.end
  %call38 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @rk_dphy_ops) #5
  %cmp.i89 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %35 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call38, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call46 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  %37 = ptrtoint ptr %call46 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %37, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end43, %for.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end15.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %35, %do.end43 ], [ %spec.select.i, %if.end45 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call34, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %num_clks = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %call1 = tail call i32 @clk_bulk_prepare(i32 noundef %5, ptr noundef %7) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %num_clks = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %num_clks = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clks, align 4
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drv_data, align 4
  %regs.i.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.dphy_reg, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end28.i.i, !prof !58

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit.i

if.end28.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i.i = getelementptr %struct.dphy_reg, ptr %11, i32 1, i32 2
  %14 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift.i.i, align 1
  %conv1.i.i = zext i8 %15 to i32
  %mask.i.i = getelementptr %struct.dphy_reg, ptr %11, i32 1, i32 1
  %16 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask.i.i, align 2
  %conv2.i.i = zext i8 %17 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, 16
  %shl5.i.i = shl i32 %conv2.i.i, %add.i.i
  %grf.i.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %grf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %grf.i.i, align 4
  %conv30.i.i = zext i16 %13 to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %conv30.i.i, i32 noundef %shl5.i.i) #5
  br label %rk_dphy_write_grf.exit.i

rk_dphy_write_grf.exit.i:                         ; preds = %if.end28.i.i, %do.end.i.i
  %20 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv_data, align 4
  %regs.i37.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %regs.i37.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i37.i, align 4
  %arrayidx.i38.i = getelementptr %struct.dphy_reg, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i38.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i39.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i39.i, label %do.end.i40.i, label %if.end28.i50.i, !prof !58

do.end.i40.i:                                     ; preds = %rk_dphy_write_grf.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit51.i

if.end28.i50.i:                                   ; preds = %rk_dphy_write_grf.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i41.i = getelementptr %struct.dphy_reg, ptr %23, i32 2, i32 2
  %26 = ptrtoint ptr %shift.i41.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shift.i41.i, align 1
  %conv1.i42.i = zext i8 %27 to i32
  %mask.i43.i = getelementptr %struct.dphy_reg, ptr %23, i32 2, i32 1
  %28 = ptrtoint ptr %mask.i43.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mask.i43.i, align 2
  %conv2.i44.i = zext i8 %29 to i32
  %add.i45.i = add nuw nsw i32 %conv1.i42.i, 16
  %shl5.i46.i = shl i32 %conv2.i44.i, %add.i45.i
  %grf.i47.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %grf.i47.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %grf.i47.i, align 4
  %conv30.i48.i = zext i16 %25 to i32
  %call.i49.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %conv30.i48.i, i32 noundef %shl5.i46.i) #5
  br label %rk_dphy_write_grf.exit51.i

rk_dphy_write_grf.exit51.i:                       ; preds = %if.end28.i50.i, %do.end.i40.i
  %32 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv_data, align 4
  %regs.i53.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %regs.i53.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i53.i, align 4
  %arrayidx.i54.i = getelementptr %struct.dphy_reg, ptr %35, i32 8
  %36 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i54.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i55.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i55.i, label %do.end.i56.i, label %if.end28.i66.i, !prof !58

do.end.i56.i:                                     ; preds = %rk_dphy_write_grf.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit67.i

if.end28.i66.i:                                   ; preds = %rk_dphy_write_grf.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i57.i = getelementptr %struct.dphy_reg, ptr %35, i32 8, i32 2
  %38 = ptrtoint ptr %shift.i57.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %shift.i57.i, align 1
  %conv1.i58.i = zext i8 %39 to i32
  %mask.i59.i = getelementptr %struct.dphy_reg, ptr %35, i32 8, i32 1
  %40 = ptrtoint ptr %mask.i59.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mask.i59.i, align 2
  %conv2.i60.i = zext i8 %41 to i32
  %add.i61.i = add nuw nsw i32 %conv1.i58.i, 16
  %shl5.i62.i = shl i32 %conv2.i60.i, %add.i61.i
  %grf.i63.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %grf.i63.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %grf.i63.i, align 4
  %conv30.i64.i = zext i16 %37 to i32
  %call.i65.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %conv30.i64.i, i32 noundef %shl5.i62.i) #5
  br label %rk_dphy_write_grf.exit67.i

rk_dphy_write_grf.exit67.i:                       ; preds = %if.end28.i66.i, %do.end.i56.i
  %44 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %drv_data, align 4
  %regs.i69.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %regs.i69.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i69.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i70.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i70.i, label %do.end.i71.i, label %if.end28.i81.i, !prof !58

do.end.i71.i:                                     ; preds = %rk_dphy_write_grf.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit82.i

if.end28.i81.i:                                   ; preds = %rk_dphy_write_grf.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i72.i = getelementptr %struct.dphy_reg, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %shift.i72.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %shift.i72.i, align 1
  %conv1.i73.i = zext i8 %51 to i32
  %shl.i.i = shl i32 15, %conv1.i73.i
  %mask.i74.i = getelementptr %struct.dphy_reg, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %mask.i74.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mask.i74.i, align 2
  %conv2.i75.i = zext i8 %53 to i32
  %add.i76.i = add nuw nsw i32 %conv1.i73.i, 16
  %shl5.i77.i = shl i32 %conv2.i75.i, %add.i76.i
  %or.i.i = or i32 %shl5.i77.i, %shl.i.i
  %grf.i78.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %grf.i78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %grf.i78.i, align 4
  %conv30.i79.i = zext i16 %49 to i32
  %call.i80.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef %conv30.i79.i, i32 noundef %or.i.i) #5
  br label %rk_dphy_write_grf.exit82.i

rk_dphy_write_grf.exit82.i:                       ; preds = %if.end28.i81.i, %do.end.i71.i
  %56 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drv_data, align 4
  %regs.i84.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %regs.i84.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i84.i, align 4
  %arrayidx.i85.i = getelementptr %struct.dphy_reg, ptr %59, i32 3
  %60 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i85.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i86.i = icmp eq i16 %61, 0
  br i1 %tobool.not.i86.i, label %do.end.i87.i, label %if.end28.i99.i, !prof !58

do.end.i87.i:                                     ; preds = %rk_dphy_write_grf.exit82.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit100.i

if.end28.i99.i:                                   ; preds = %rk_dphy_write_grf.exit82.i
  call void @__sanitizer_cov_trace_pc() #7
  %lanes.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 4, i32 24
  %62 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %lanes.i, align 4
  %conv.i = zext i8 %63 to i32
  %sub1.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub1.i
  %conv.i.i = and i32 %shr.i, 255
  %shift.i88.i = getelementptr %struct.dphy_reg, ptr %59, i32 3, i32 2
  %64 = ptrtoint ptr %shift.i88.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %shift.i88.i, align 1
  %conv1.i89.i = zext i8 %65 to i32
  %shl.i90.i = shl i32 %conv.i.i, %conv1.i89.i
  %mask.i91.i = getelementptr %struct.dphy_reg, ptr %59, i32 3, i32 1
  %66 = ptrtoint ptr %mask.i91.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %mask.i91.i, align 2
  %conv2.i92.i = zext i8 %67 to i32
  %add.i93.i = add nuw nsw i32 %conv1.i89.i, 16
  %shl5.i94.i = shl i32 %conv2.i92.i, %add.i93.i
  %or.i95.i = or i32 %shl.i90.i, %shl5.i94.i
  %grf.i96.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %grf.i96.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %grf.i96.i, align 4
  %conv30.i97.i = zext i16 %61 to i32
  %call.i98.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef %conv30.i97.i, i32 noundef %or.i95.i) #5
  br label %rk_dphy_write_grf.exit100.i

rk_dphy_write_grf.exit100.i:                      ; preds = %if.end28.i99.i, %do.end.i87.i
  %70 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drv_data, align 4
  %regs.i102.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %regs.i102.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i102.i, align 4
  %arrayidx.i103.i = getelementptr %struct.dphy_reg, ptr %73, i32 5
  %74 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i103.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i104.i = icmp eq i16 %75, 0
  br i1 %tobool.not.i104.i, label %do.end.i105.i, label %if.end28.i117.i, !prof !58

do.end.i105.i:                                    ; preds = %rk_dphy_write_grf.exit100.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit118.i

if.end28.i117.i:                                  ; preds = %rk_dphy_write_grf.exit100.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i106.i = getelementptr %struct.dphy_reg, ptr %73, i32 5, i32 2
  %76 = ptrtoint ptr %shift.i106.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %shift.i106.i, align 1
  %conv1.i107.i = zext i8 %77 to i32
  %shl.i108.i = shl nuw i32 1, %conv1.i107.i
  %mask.i109.i = getelementptr %struct.dphy_reg, ptr %73, i32 5, i32 1
  %78 = ptrtoint ptr %mask.i109.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %mask.i109.i, align 2
  %conv2.i110.i = zext i8 %79 to i32
  %add.i111.i = add nuw nsw i32 %conv1.i107.i, 16
  %shl5.i112.i = shl i32 %conv2.i110.i, %add.i111.i
  %or.i113.i = or i32 %shl5.i112.i, %shl.i108.i
  %grf.i114.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %80 = ptrtoint ptr %grf.i114.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %grf.i114.i, align 4
  %conv30.i115.i = zext i16 %75 to i32
  %call.i116.i = tail call i32 @regmap_write(ptr noundef %81, i32 noundef %conv30.i115.i, i32 noundef %or.i113.i) #5
  br label %rk_dphy_write_grf.exit118.i

rk_dphy_write_grf.exit118.i:                      ; preds = %if.end28.i117.i, %do.end.i105.i
  %82 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %drv_data, align 4
  %regs.i120.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %regs.i120.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i120.i, align 4
  %arrayidx.i121.i = getelementptr %struct.dphy_reg, ptr %85, i32 4
  %86 = ptrtoint ptr %arrayidx.i121.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i121.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool.not.i122.i = icmp eq i16 %87, 0
  br i1 %tobool.not.i122.i, label %do.end.i123.i, label %if.end28.i135.i, !prof !58

do.end.i123.i:                                    ; preds = %rk_dphy_write_grf.exit118.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit136.i

if.end28.i135.i:                                  ; preds = %rk_dphy_write_grf.exit118.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i124.i = getelementptr %struct.dphy_reg, ptr %85, i32 4, i32 2
  %88 = ptrtoint ptr %shift.i124.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %shift.i124.i, align 1
  %conv1.i125.i = zext i8 %89 to i32
  %shl.i126.i = shl nuw i32 1, %conv1.i125.i
  %mask.i127.i = getelementptr %struct.dphy_reg, ptr %85, i32 4, i32 1
  %90 = ptrtoint ptr %mask.i127.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mask.i127.i, align 2
  %conv2.i128.i = zext i8 %91 to i32
  %add.i129.i = add nuw nsw i32 %conv1.i125.i, 16
  %shl5.i130.i = shl i32 %conv2.i128.i, %add.i129.i
  %or.i131.i = or i32 %shl5.i130.i, %shl.i126.i
  %grf.i132.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %grf.i132.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %grf.i132.i, align 4
  %conv30.i133.i = zext i16 %87 to i32
  %call.i134.i = tail call i32 @regmap_write(ptr noundef %93, i32 noundef %conv30.i133.i, i32 noundef %or.i131.i) #5
  br label %rk_dphy_write_grf.exit136.i

rk_dphy_write_grf.exit136.i:                      ; preds = %if.end28.i135.i, %do.end.i123.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #5
  %94 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %drv_data, align 4
  %regs.i138.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %regs.i138.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i138.i, align 4
  %arrayidx.i139.i = getelementptr %struct.dphy_reg, ptr %97, i32 4
  %98 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i139.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool.not.i140.i = icmp eq i16 %99, 0
  br i1 %tobool.not.i140.i, label %do.end.i141.i, label %if.end28.i151.i, !prof !58

do.end.i141.i:                                    ; preds = %rk_dphy_write_grf.exit136.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_enable.exit

if.end28.i151.i:                                  ; preds = %rk_dphy_write_grf.exit136.i
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i142.i = getelementptr %struct.dphy_reg, ptr %97, i32 4, i32 2
  %100 = ptrtoint ptr %shift.i142.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %shift.i142.i, align 1
  %conv1.i143.i = zext i8 %101 to i32
  %mask.i144.i = getelementptr %struct.dphy_reg, ptr %97, i32 4, i32 1
  %102 = ptrtoint ptr %mask.i144.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mask.i144.i, align 2
  %conv2.i145.i = zext i8 %103 to i32
  %add.i146.i = add nuw nsw i32 %conv1.i143.i, 16
  %shl5.i147.i = shl i32 %conv2.i145.i, %add.i146.i
  %grf.i148.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %grf.i148.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %grf.i148.i, align 4
  %conv30.i149.i = zext i16 %99 to i32
  %call.i150.i = tail call i32 @regmap_write(ptr noundef %105, i32 noundef %conv30.i149.i, i32 noundef %shl5.i147.i) #5
  br label %rk_dphy_enable.exit

rk_dphy_enable.exit:                              ; preds = %if.end28.i151.i, %do.end.i141.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #5
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext 52, i8 noundef zeroext 0) #5
  %hsfreq.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 5
  %106 = ptrtoint ptr %hsfreq.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %hsfreq.i, align 4
  %shl.i = shl i8 %107, 1
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext 68, i8 noundef zeroext %shl.i) #5
  %108 = ptrtoint ptr %hsfreq.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %hsfreq.i, align 4
  %shl7.i = shl i8 %109, 1
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %shl7.i) #5
  %110 = ptrtoint ptr %hsfreq.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %hsfreq.i, align 4
  %shl11.i = shl i8 %111, 1
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext -124, i8 noundef zeroext %shl11.i) #5
  %112 = ptrtoint ptr %hsfreq.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %hsfreq.i, align 4
  %shl15.i = shl i8 %113, 1
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext -108, i8 noundef zeroext %shl15.i) #5
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext 117, i8 noundef zeroext 4) #5
  tail call fastcc void @rk_dphy_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %rk_dphy_enable.exit, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data.i, align 4
  %regs.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr %struct.dphy_reg, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end28.i, !prof !58

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit

if.end28.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i = getelementptr %struct.dphy_reg, ptr %5, i32 3, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift.i, align 1
  %conv1.i = zext i8 %9 to i32
  %mask.i = getelementptr %struct.dphy_reg, ptr %5, i32 3, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask.i, align 2
  %conv2.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %conv1.i, 16
  %shl5.i = shl i32 %conv2.i, %add.i
  %grf.i = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %grf.i, align 4
  %conv30.i = zext i16 %7 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %conv30.i, i32 noundef %shl5.i) #5
  br label %rk_dphy_write_grf.exit

rk_dphy_write_grf.exit:                           ; preds = %if.end28.i, %do.end.i
  %14 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drv_data.i, align 4
  %num_clks = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %17, ptr noundef %19) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk_dphy_configure(ptr nocapture noundef readonly %phy, ptr noundef %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data1 = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data1, align 4
  %call2 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %opts) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hs_clk_rate = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 22
  %4 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_clk_rate, align 4
  %conv = zext i32 %5 to i64
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv) #9, !srcloc !59
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv, i64 %6, i32 0) #9, !srcloc !60
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk_dphy_configure.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rk_dphy_configure, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !61

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %lanes = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 24
  %10 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lanes, align 4
  %conv9 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk_dphy_configure.__UNIQUE_ID_ddebug289, ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %conv9, i64 noundef %div1581.i.i) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %num_hsfreq_ranges = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %num_hsfreq_ranges to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_hsfreq_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp50.not = icmp eq i32 %13, 0
  br i1 %cmp50.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %hsfreq_ranges = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %hsfreq_ranges to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsfreq_ranges, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hsfreq_range, ptr %15, i32 %i.051
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %conv12 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i, i64 %conv12)
  %cmp13.not = icmp ugt i64 %div1581.i.i, %conv12
  br i1 %cmp13.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.body
  %cfg_bit = getelementptr %struct.hsfreq_range, ptr %15, i32 %i.051, i32 1
  %18 = ptrtoint ptr %cfg_bit to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cfg_bit, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %hsfreq24 = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %hsfreq24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %hsfreq24, align 4
  %config25 = getelementptr inbounds %struct.rk_dphy, ptr %1, i32 0, i32 4
  %21 = call ptr @memcpy(ptr %config25, ptr %opts, i32 100)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk_dphy_write(ptr nocapture noundef readonly %priv, i8 noundef zeroext %test_code, i8 noundef zeroext %test_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data.i = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data.i, align 4
  %regs.i = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr %struct.dphy_reg, ptr %3, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end28.i, !prof !58

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit

if.end28.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %test_code to i32
  %shift.i = getelementptr %struct.dphy_reg, ptr %3, i32 7, i32 2
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift.i, align 1
  %conv1.i = zext i8 %7 to i32
  %shl.i = shl i32 %conv.i, %conv1.i
  %mask.i = getelementptr %struct.dphy_reg, ptr %3, i32 7, i32 1
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mask.i, align 2
  %conv2.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv1.i, 16
  %shl5.i = shl i32 %conv2.i, %add.i
  %or.i = or i32 %shl5.i, %shl.i
  %grf.i = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %grf.i, align 4
  %conv30.i = zext i16 %5 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv30.i, i32 noundef %or.i) #5
  br label %rk_dphy_write_grf.exit

rk_dphy_write_grf.exit:                           ; preds = %if.end28.i, %do.end.i
  %12 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data.i, align 4
  %regs.i7 = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i7, align 4
  %arrayidx.i8 = getelementptr %struct.dphy_reg, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i9 = icmp eq i16 %17, 0
  br i1 %tobool.not.i9, label %do.end.i10, label %if.end28.i22, !prof !58

do.end.i10:                                       ; preds = %rk_dphy_write_grf.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit23

if.end28.i22:                                     ; preds = %rk_dphy_write_grf.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i11 = getelementptr %struct.dphy_reg, ptr %15, i32 6, i32 2
  %18 = ptrtoint ptr %shift.i11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shift.i11, align 1
  %conv1.i12 = zext i8 %19 to i32
  %shl.i13 = shl nuw i32 1, %conv1.i12
  %mask.i14 = getelementptr %struct.dphy_reg, ptr %15, i32 6, i32 1
  %20 = ptrtoint ptr %mask.i14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mask.i14, align 2
  %conv2.i15 = zext i8 %21 to i32
  %add.i16 = add nuw nsw i32 %conv1.i12, 16
  %shl5.i17 = shl i32 %conv2.i15, %add.i16
  %or.i18 = or i32 %shl5.i17, %shl.i13
  %grf.i19 = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %grf.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %grf.i19, align 4
  %conv30.i20 = zext i16 %17 to i32
  %call.i21 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %conv30.i20, i32 noundef %or.i18) #5
  br label %rk_dphy_write_grf.exit23

rk_dphy_write_grf.exit23:                         ; preds = %if.end28.i22, %do.end.i10
  %24 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv_data.i, align 4
  %regs.i25 = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %regs.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i25, align 4
  %arrayidx.i26 = getelementptr %struct.dphy_reg, ptr %27, i32 5
  %28 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i27 = icmp eq i16 %29, 0
  br i1 %tobool.not.i27, label %do.end.i28, label %if.end28.i38, !prof !58

do.end.i28:                                       ; preds = %rk_dphy_write_grf.exit23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit39

if.end28.i38:                                     ; preds = %rk_dphy_write_grf.exit23
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i29 = getelementptr %struct.dphy_reg, ptr %27, i32 5, i32 2
  %30 = ptrtoint ptr %shift.i29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift.i29, align 1
  %conv1.i30 = zext i8 %31 to i32
  %mask.i31 = getelementptr %struct.dphy_reg, ptr %27, i32 5, i32 1
  %32 = ptrtoint ptr %mask.i31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mask.i31, align 2
  %conv2.i32 = zext i8 %33 to i32
  %add.i33 = add nuw nsw i32 %conv1.i30, 16
  %shl5.i34 = shl i32 %conv2.i32, %add.i33
  %grf.i35 = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 1
  %34 = ptrtoint ptr %grf.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %grf.i35, align 4
  %conv30.i36 = zext i16 %29 to i32
  %call.i37 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %conv30.i36, i32 noundef %shl5.i34) #5
  br label %rk_dphy_write_grf.exit39

rk_dphy_write_grf.exit39:                         ; preds = %if.end28.i38, %do.end.i28
  %36 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drv_data.i, align 4
  %regs.i41 = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %regs.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i41, align 4
  %arrayidx.i42 = getelementptr %struct.dphy_reg, ptr %39, i32 6
  %40 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i43 = icmp eq i16 %41, 0
  br i1 %tobool.not.i43, label %do.end.i44, label %if.end28.i54, !prof !58

do.end.i44:                                       ; preds = %rk_dphy_write_grf.exit39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit55

if.end28.i54:                                     ; preds = %rk_dphy_write_grf.exit39
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i45 = getelementptr %struct.dphy_reg, ptr %39, i32 6, i32 2
  %42 = ptrtoint ptr %shift.i45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %shift.i45, align 1
  %conv1.i46 = zext i8 %43 to i32
  %mask.i47 = getelementptr %struct.dphy_reg, ptr %39, i32 6, i32 1
  %44 = ptrtoint ptr %mask.i47 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mask.i47, align 2
  %conv2.i48 = zext i8 %45 to i32
  %add.i49 = add nuw nsw i32 %conv1.i46, 16
  %shl5.i50 = shl i32 %conv2.i48, %add.i49
  %grf.i51 = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 1
  %46 = ptrtoint ptr %grf.i51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %grf.i51, align 4
  %conv30.i52 = zext i16 %41 to i32
  %call.i53 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %conv30.i52, i32 noundef %shl5.i50) #5
  br label %rk_dphy_write_grf.exit55

rk_dphy_write_grf.exit55:                         ; preds = %if.end28.i54, %do.end.i44
  %48 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %drv_data.i, align 4
  %regs.i57 = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %regs.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i57, align 4
  %arrayidx.i58 = getelementptr %struct.dphy_reg, ptr %51, i32 7
  %52 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i59 = icmp eq i16 %53, 0
  br i1 %tobool.not.i59, label %do.end.i60, label %if.end28.i73, !prof !58

do.end.i60:                                       ; preds = %rk_dphy_write_grf.exit55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit74

if.end28.i73:                                     ; preds = %rk_dphy_write_grf.exit55
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i61 = zext i8 %test_data to i32
  %shift.i62 = getelementptr %struct.dphy_reg, ptr %51, i32 7, i32 2
  %54 = ptrtoint ptr %shift.i62 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %shift.i62, align 1
  %conv1.i63 = zext i8 %55 to i32
  %shl.i64 = shl i32 %conv.i61, %conv1.i63
  %mask.i65 = getelementptr %struct.dphy_reg, ptr %51, i32 7, i32 1
  %56 = ptrtoint ptr %mask.i65 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mask.i65, align 2
  %conv2.i66 = zext i8 %57 to i32
  %add.i67 = add nuw nsw i32 %conv1.i63, 16
  %shl5.i68 = shl i32 %conv2.i66, %add.i67
  %or.i69 = or i32 %shl5.i68, %shl.i64
  %grf.i70 = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 1
  %58 = ptrtoint ptr %grf.i70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %grf.i70, align 4
  %conv30.i71 = zext i16 %53 to i32
  %call.i72 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %conv30.i71, i32 noundef %or.i69) #5
  br label %rk_dphy_write_grf.exit74

rk_dphy_write_grf.exit74:                         ; preds = %if.end28.i73, %do.end.i60
  %60 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %drv_data.i, align 4
  %regs.i76 = getelementptr inbounds %struct.rk_dphy_drv_data, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %regs.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i76, align 4
  %arrayidx.i77 = getelementptr %struct.dphy_reg, ptr %63, i32 5
  %64 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i78 = icmp eq i16 %65, 0
  br i1 %tobool.not.i78, label %do.end.i79, label %if.end28.i91, !prof !58

do.end.i79:                                       ; preds = %rk_dphy_write_grf.exit74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #5
  br label %rk_dphy_write_grf.exit92

if.end28.i91:                                     ; preds = %rk_dphy_write_grf.exit74
  call void @__sanitizer_cov_trace_pc() #7
  %shift.i80 = getelementptr %struct.dphy_reg, ptr %63, i32 5, i32 2
  %66 = ptrtoint ptr %shift.i80 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %shift.i80, align 1
  %conv1.i81 = zext i8 %67 to i32
  %shl.i82 = shl nuw i32 1, %conv1.i81
  %mask.i83 = getelementptr %struct.dphy_reg, ptr %63, i32 5, i32 1
  %68 = ptrtoint ptr %mask.i83 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mask.i83, align 2
  %conv2.i84 = zext i8 %69 to i32
  %add.i85 = add nuw nsw i32 %conv1.i81, 16
  %shl5.i86 = shl i32 %conv2.i84, %add.i85
  %or.i87 = or i32 %shl5.i86, %shl.i82
  %grf.i88 = getelementptr inbounds %struct.rk_dphy, ptr %priv, i32 0, i32 1
  %70 = ptrtoint ptr %grf.i88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %grf.i88, align 4
  %conv30.i89 = zext i16 %65 to i32
  %call.i90 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef %conv30.i89, i32 noundef %or.i87) #5
  br label %rk_dphy_write_grf.exit92

rk_dphy_write_grf.exit92:                         ; preds = %if.end28.i91, %do.end.i79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_phy_rockchip_dphy_rx0__290_385_rk_dphy_driver_init6, !1, !"__initcall__kmod_phy_rockchip_dphy_rx0__290_385_rk_dphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 385, i32 1}
!2 = !{ptr @__exitcall_rk_dphy_driver_exit, !1, !"__exitcall_rk_dphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 387, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 388, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 389, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 381, i32 11}
!12 = !{ptr @rk_dphy_driver, !13, !"rk_dphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 378, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 346, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rk_dphy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rk_dphy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 368, i32 3}
!24 = !{ptr @rk_dphy_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rk_dphy_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @rk_dphy_ops, !27, !"rk_dphy_ops", i1 false, i1 false}
!27 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 298, i32 29}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 244, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rk_dphy_configure.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!33 = !{ptr @rk_dphy_dt_ids, !34, !"rk_dphy_dt_ids", i1 false, i1 false}
!34 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 315, i32 34}
!35 = !{ptr @rk3399_mipidphy_drv_data, !36, !"rk3399_mipidphy_drv_data", i1 false, i1 false}
!36 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 307, i32 38}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 65, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 66, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 67, i32 2}
!43 = !{ptr @rk3399_mipidphy_clks, !44, !"rk3399_mipidphy_clks", i1 false, i1 false}
!44 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 64, i32 27}
!45 = !{ptr @rk3399_mipidphy_hsfreq_ranges, !46, !"rk3399_mipidphy_hsfreq_ranges", i1 false, i1 false}
!46 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 51, i32 34}
!47 = !{ptr @rk3399_grf_dphy_regs, !48, !"rk3399_grf_dphy_regs", i1 false, i1 false}
!48 = !{!"../drivers/phy/rockchip/phy-rockchip-dphy-rx0.c", i32 113, i32 30}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 1154500, i64 1154527}
!60 = !{i64 1155195, i64 1155222, i64 1155255, i64 1155276, i64 1155303, i64 1155329}
!61 = !{i64 2148731612, i64 2148731617, i64 2148731630, i64 2148731674, i64 2148731708, i64 2148731729}
