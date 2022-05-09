; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.85 = type { i32, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.inno_dsidphy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.phy_configure_opts_mipi_dphy, ptr, %struct.anon.84 }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.84 = type { %struct.clk_hw, i8, i16, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_phy_rockchip_inno_dsidphy__289_681_inno_dsidphy_driver_init6 = internal global ptr @inno_dsidphy_driver_init, section ".initcall6.init", align 4
@inno_dsidphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @inno_dsidphy_probe, ptr @inno_dsidphy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @inno_dsidphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_inno_dsidphy_driver_exit = internal global ptr @inno_dsidphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [67 x i8] c"phy_rockchip_inno_dsidphy.author=Wyon Bi <bivvy.bi@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [87 x i8] c"phy_rockchip_inno_dsidphy.description=Innosilicon MIPI/LVDS/TTL Video Combo PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [78 x i8] c"phy_rockchip_inno_dsidphy.file=drivers/phy/rockchip/phy-rockchip-inno-dsidphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [41 x i8] c"phy_rockchip_inno_dsidphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"inno-dsidphy\00", [19 x i8] zeroinitializer }, align 32
@inno_dsidphy_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-dsi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-dsi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-dsi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 617, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ref clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inno_dsidphy_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry_ptr = internal global ptr @inno_dsidphy_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get phy pclk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry_ptr.10 = internal global ptr @inno_dsidphy_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get system reset control: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry_ptr.14 = internal global ptr @inno_dsidphy_probe._entry.12, section ".printk_index", align 4
@inno_dsidphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @inno_dsidphy_power_on, ptr @inno_dsidphy_power_off, ptr @inno_dsidphy_set_mode, ptr null, ptr null, ptr @inno_dsidphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 638, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to create phy: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry_ptr.17 = internal global ptr @inno_dsidphy_probe._entry.15, section ".printk_index", align 4
@inno_dsidphy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register phy provider: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@inno_dsidphy_probe._entry_ptr.20 = internal global ptr @inno_dsidphy_probe._entry.18, section ".printk_index", align 4
@__const.inno_dsidphy_mipi_mode_enable.timings = private unnamed_addr constant [11 x %struct.anon.85] [%struct.anon.85 { i32 110000000, i8 32, i8 22, i8 2, i8 34 }, %struct.anon.85 { i32 150000000, i8 6, i8 22, i8 3, i8 69 }, %struct.anon.85 { i32 200000000, i8 24, i8 23, i8 4, i8 11 }, %struct.anon.85 { i32 250000000, i8 5, i8 23, i8 5, i8 22 }, %struct.anon.85 { i32 300000000, i8 81, i8 24, i8 6, i8 44 }, %struct.anon.85 { i32 400000000, i8 100, i8 25, i8 7, i8 51 }, %struct.anon.85 { i32 500000000, i8 32, i8 27, i8 7, i8 78 }, %struct.anon.85 { i32 600000000, i8 106, i8 29, i8 8, i8 58 }, %struct.anon.85 { i32 700000000, i8 62, i8 30, i8 8, i8 106 }, %struct.anon.85 { i32 800000000, i8 33, i8 31, i8 9, i8 41 }, %struct.anon.85 { i32 1000000000, i8 9, i8 32, i8 9, i8 39 }], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 18]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 18]
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"inno_dsidphy_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 673, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 675, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"inno_dsidphy_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 665, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 614, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 617, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 621, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 624, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 628, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 631, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"inno_dsidphy_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 587, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 638, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [52 x i8] c"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 647, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_inno_dsidphy_driver_exit, ptr @__initcall__kmod_phy_rockchip_inno_dsidphy__289_681_inno_dsidphy_driver_init6, ptr @inno_dsidphy_driver_exit, ptr @inno_dsidphy_probe._entry, ptr @inno_dsidphy_probe._entry.12, ptr @inno_dsidphy_probe._entry.15, ptr @inno_dsidphy_probe._entry.18, ptr @inno_dsidphy_probe._entry.8, ptr @inno_dsidphy_probe._entry_ptr, ptr @inno_dsidphy_probe._entry_ptr.10, ptr @inno_dsidphy_probe._entry_ptr.14, ptr @inno_dsidphy_probe._entry_ptr.17, ptr @inno_dsidphy_probe._entry_ptr.20, ptr @inno_dsidphy_driver, ptr @.str, ptr @inno_dsidphy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @inno_dsidphy_ops, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inno_dsidphy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_dsidphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @inno_dsidphy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @inno_dsidphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @inno_dsidphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_dsidphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %phy_base = getelementptr inbounds %struct.inno_dsidphy, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %phy_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %ref_clk = getelementptr inbounds %struct.inno_dsidphy, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %ref_clk, align 4
  %cmp.i98 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %5) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %pclk_phy = getelementptr inbounds %struct.inno_dsidphy, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pclk_phy to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %pclk_phy, align 4
  %cmp.i99 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %7) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.inno_dsidphy, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i100 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %9) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %call37 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @inno_dsidphy_ops) #6
  %cmp.i101 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %if.then39, label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %10) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %driver_data.i.i102 = getelementptr inbounds %struct.device, ptr %call37, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i102 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i102, align 4
  %call45 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i103 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %12) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then47, %if.then39, %if.then30, %if.then20, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then13 ], [ %7, %if.then20 ], [ %9, %if.then30 ], [ %10, %if.then39 ], [ %12, %if.then47 ], [ 0, %if.end52 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_dsidphy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_dsidphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pclk_phy = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk_phy, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %ref_clk = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref_clk, align 4
  %call.i12 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not.i13 = icmp eq i32 %call.i12, 0
  br i1 %tobool.not.i13, label %if.end.i16, label %clk_prepare_enable.exit.clk_prepare_enable.exit18_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit18_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit18

if.end.i16:                                       ; preds = %clk_prepare_enable.exit
  %call1.i14 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool2.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool2.not.i15, label %if.end.i16.clk_prepare_enable.exit18_crit_edge, label %if.then3.i17

if.end.i16.clk_prepare_enable.exit18_crit_edge:   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit18

if.then3.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit18

clk_prepare_enable.exit18:                        ; preds = %if.then3.i17, %if.end.i16.clk_prepare_enable.exit18_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit18_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i19 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %phy_base.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %11 = and i32 %10, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !60
  %14 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %17 = and i32 %16, -50331649
  %18 = or i32 %17, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !60
  %mode = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %clk_prepare_enable.exit18.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 18, label %sw.bb4
  ]

clk_prepare_enable.exit18.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %clk_prepare_enable.exit18
  %hs_clk_rate.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 22
  %24 = ptrtoint ptr %hs_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hs_clk_rate.i, align 4
  %26 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ref_clk, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %27) #6
  %div3.i.i = lshr i32 %call.i.i, 1
  %sub.i.i = add nuw i32 %div3.i.i, 39999999
  %div1.i.i = udiv i32 %sub.i.i, 40000000
  %div2.i.i = udiv i32 %call.i.i, 10000000
  %conv5.i.i = and i32 %div2.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i, i32 %div1.i.i)
  %cmp6.not103.i.i = icmp ult i32 %conv5.i.i, %div1.i.i
  br i1 %cmp6.not103.i.i, label %sw.bb.inno_dsidphy_pll_calc_rate.exit.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb.inno_dsidphy_pll_calc_rate.exit.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_dsidphy_pll_calc_rate.exit.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb
  %conv.i.i = trunc i32 %div1.i.i to i8
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 1000000000) #6
  %conv8.i.i = zext i32 %28 to i64
  %conv45.i.i = zext i32 %div3.i.i to i64
  %29 = trunc i32 %div2.i.i to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %conv4110.i.i = phi i32 [ %div1.i.i, %for.body.lr.ph.i.i ], [ %conv4.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %best_freq.0109.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %best_freq.2.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %min_delta.0108.i.i = phi i32 [ -1, %for.body.lr.ph.i.i ], [ %min_delta.2.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %best_fbdiv.0107.i.i = phi i16 [ 1, %for.body.lr.ph.i.i ], [ %best_fbdiv.2.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %best_prediv.0106.i.i = phi i8 [ 1, %for.body.lr.ph.i.i ], [ %best_prediv.2.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %_prediv.0104.i.i = phi i8 [ %conv.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %conv9.i.i = zext i8 %_prediv.0104.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv9.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp185.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp185.i.i, label %if.then189.i.i, label %if.else195.i.i, !prof !61

if.then189.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv190.i.i = trunc i64 %mul.i.i to i32
  %div193.i.i = udiv i32 %conv190.i.i, %div3.i.i
  %conv194.i.i = zext i32 %div193.i.i to i64
  br label %if.end199.i.i

if.else195.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div3.i.i, i64 %mul.i.i) #10, !srcloc !62
  %asmresult1.i.i.i = extractvalue { i64, i64 } %30, 1
  br label %if.end199.i.i

if.end199.i.i:                                    ; preds = %if.else195.i.i, %if.then189.i.i
  %tmp.0.i.i = phi i64 [ %conv194.i.i, %if.then189.i.i ], [ %asmresult1.i.i.i, %if.else195.i.i ]
  %conv201.i.i = trunc i64 %tmp.0.i.i to i16
  %31 = trunc i64 %tmp.0.i.i to i32
  %conv202.i.i = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv202.i.i)
  %cmp203.i.i = icmp eq i32 %conv202.i.i, 15
  %32 = add nsw i32 %conv202.i.i, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500, i32 %32)
  %33 = icmp ult i32 %32, -500
  %or.cond.i.i = select i1 %cmp203.i.i, i1 true, i1 %33
  br i1 %or.cond.i.i, label %if.end199.i.i.for.inc.i.i_crit_edge, label %if.end214.i.i

if.end199.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end199.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end214.i.i:                                    ; preds = %if.end199.i.i
  %conv215.i.i = and i64 %tmp.0.i.i, 65535
  %mul217.i.i = mul nuw nsw i64 %conv215.i.i, %conv45.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul217.i.i)
  %cmp420.i.i = icmp ult i64 %mul217.i.i, 4294967296
  br i1 %cmp420.i.i, label %if.then428.i.i, label %if.else434.i.i, !prof !61

if.then428.i.i:                                   ; preds = %if.end214.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv429.i.i = trunc i64 %mul217.i.i to i32
  %div432.i.i = udiv i32 %conv429.i.i, %conv4110.i.i
  %conv433.i.i = zext i32 %div432.i.i to i64
  br label %if.end438.i.i

if.else434.i.i:                                   ; preds = %if.end214.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv4110.i.i, i64 %mul217.i.i) #10, !srcloc !62
  %asmresult1.i34.i.i = extractvalue { i64, i64 } %34, 1
  br label %if.end438.i.i

if.end438.i.i:                                    ; preds = %if.else434.i.i, %if.then428.i.i
  %tmp.1.i.i = phi i64 [ %conv433.i.i, %if.then428.i.i ], [ %asmresult1.i34.i.i, %if.else434.i.i ]
  %sub441.i.i = sub i64 %conv8.i.i, %tmp.1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub441.i.i)
  %cmp443.i.i = icmp slt i64 %sub441.i.i, 0
  %35 = trunc i64 %sub441.i.i to i32
  %extract.t.i.i = sub i32 0, %35
  %cond449.off0.i.i = select i1 %cmp443.i.i, i32 %extract.t.i.i, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond449.off0.i.i)
  %tobool451.not.i.i = icmp eq i32 %cond449.off0.i.i, 0
  br i1 %tobool451.not.i.i, label %cleanup.i.i, label %if.else454.i.i

if.else454.i.i:                                   ; preds = %if.end438.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond449.off0.i.i, i32 %min_delta.0108.i.i)
  %cmp455.i.i = icmp ult i32 %cond449.off0.i.i, %min_delta.0108.i.i
  br i1 %cmp455.i.i, label %if.then457.i.i, label %if.else454.i.i.for.inc.i.i_crit_edge

if.else454.i.i.for.inc.i.i_crit_edge:             ; preds = %if.else454.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then457.i.i:                                   ; preds = %if.else454.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv458.i.i = trunc i64 %tmp.1.i.i to i32
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %if.end438.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv201.i.i.le = trunc i64 %tmp.0.i.i to i16
  %conv453.i.i = trunc i64 %tmp.1.i.i to i32
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.then457.i.i, %if.else454.i.i.for.inc.i.i_crit_edge, %if.end199.i.i.for.inc.i.i_crit_edge
  %best_prediv.2.ph.i.i = phi i8 [ %best_prediv.0106.i.i, %if.else454.i.i.for.inc.i.i_crit_edge ], [ %_prediv.0104.i.i, %if.then457.i.i ], [ %best_prediv.0106.i.i, %if.end199.i.i.for.inc.i.i_crit_edge ]
  %best_fbdiv.2.ph.i.i = phi i16 [ %best_fbdiv.0107.i.i, %if.else454.i.i.for.inc.i.i_crit_edge ], [ %conv201.i.i, %if.then457.i.i ], [ %best_fbdiv.0107.i.i, %if.end199.i.i.for.inc.i.i_crit_edge ]
  %min_delta.2.ph.i.i = phi i32 [ %min_delta.0108.i.i, %if.else454.i.i.for.inc.i.i_crit_edge ], [ %cond449.off0.i.i, %if.then457.i.i ], [ %min_delta.0108.i.i, %if.end199.i.i.for.inc.i.i_crit_edge ]
  %best_freq.2.ph.i.i = phi i32 [ %best_freq.0109.i.i, %if.else454.i.i.for.inc.i.i_crit_edge ], [ %conv458.i.i, %if.then457.i.i ], [ %best_freq.0109.i.i, %if.end199.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add i8 %_prediv.0104.i.i, 1
  %conv4.i.i = zext i8 %inc.i.i to i32
  %cmp6.not.i.i = icmp ugt i8 %inc.i.i, %29
  br i1 %cmp6.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %cleanup.i.i
  %best_prediv.3.i.i = phi i8 [ %_prediv.0104.i.i, %cleanup.i.i ], [ %best_prediv.2.ph.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %best_fbdiv.3.i.i = phi i16 [ %conv201.i.i.le, %cleanup.i.i ], [ %best_fbdiv.2.ph.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %best_freq.3.i.i = phi i32 [ %conv453.i.i, %cleanup.i.i ], [ %best_freq.2.ph.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_freq.3.i.i)
  %tobool462.not.i.i = icmp eq i32 %best_freq.3.i.i, 0
  br i1 %tobool462.not.i.i, label %for.end.i.i.inno_dsidphy_pll_calc_rate.exit.i_crit_edge, label %if.then463.i.i

for.end.i.i.inno_dsidphy_pll_calc_rate.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inno_dsidphy_pll_calc_rate.exit.i

if.then463.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %prediv.i.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prediv.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %best_prediv.3.i.i, ptr %prediv.i.i, align 4
  %fbdiv.i.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %fbdiv.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %best_fbdiv.3.i.i, ptr %fbdiv.i.i, align 2
  %rate466.i.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 10, i32 3
  %38 = ptrtoint ptr %rate466.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %best_freq.3.i.i, ptr %rate466.i.i, align 4
  br label %inno_dsidphy_pll_calc_rate.exit.i

inno_dsidphy_pll_calc_rate.exit.i:                ; preds = %if.then463.i.i, %for.end.i.i.inno_dsidphy_pll_calc_rate.exit.i_crit_edge, %sw.bb.inno_dsidphy_pll_calc_rate.exit.i_crit_edge
  %39 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 908
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %42 = and i32 %41, -117440513
  %43 = or i32 %42, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %45, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 %43) #6, !srcloc !60
  %prediv.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %prediv.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %prediv.i, align 4
  %48 = and i8 %47, 31
  %49 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %52 = and i32 %51, -520093697
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %and11.i.i = zext i8 %48 to i32
  %or12.i213.i = or i32 %53, %and11.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %or12.i213.i) #6
  %55 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i214.i = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i214.i, i32 %54) #6, !srcloc !60
  %fbdiv.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 10, i32 2
  %57 = ptrtoint ptr %fbdiv.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fbdiv.i, align 2
  %59 = lshr i16 %58, 3
  %60 = and i16 %59, 32
  %conv6.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i216.i = getelementptr i8, ptr %62, i32 12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %64 = and i32 %63, -536870913
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %or12.i219.i = or i32 %65, %conv6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %or12.i219.i) #6
  %67 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i220.i = getelementptr i8, ptr %68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i220.i, i32 %66) #6, !srcloc !60
  %69 = ptrtoint ptr %fbdiv.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %fbdiv.i, align 2
  %71 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i222.i = getelementptr i8, ptr %72, i32 16
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %74 = and i32 %73, 16777215
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  %76 = and i16 %70, 255
  %and11.i224.i = zext i16 %76 to i32
  %or12.i225.i = or i32 %75, %and11.i224.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %77 = tail call i32 @llvm.bswap.i32(i32 %or12.i225.i) #6
  %78 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i226.i = getelementptr i8, ptr %79, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i226.i, i32 %77) #6, !srcloc !60
  %80 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i228.i = getelementptr i8, ptr %81, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %83 = and i32 %82, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i230.i = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i230.i, i32 %83) #6, !srcloc !60
  %86 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i232.i = getelementptr i8, ptr %87, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %89 = or i32 %88, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i235.i = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i235.i, i32 %89) #6, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748) #6
  %93 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i237.i = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %96 = and i32 %95, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i239.i = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i239.i, i32 %96) #6, !srcloc !60
  %99 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i241.i = getelementptr i8, ptr %100, i32 128
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %102 = and i32 %101, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i243.i = getelementptr i8, ptr %104, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i243.i, i32 %102) #6, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748) #6
  %106 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i245.i = getelementptr i8, ptr %107, i32 128
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %109 = or i32 %108, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i248.i = getelementptr i8, ptr %111, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i248.i, i32 %109) #6, !srcloc !60
  %rate.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 10, i32 3
  %112 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rate.i, align 4
  %div207.i = lshr i32 %113, 3
  %114 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div207.i, i64 1000000000000) #10, !srcloc !62
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %114, 1
  %extract.t = trunc i64 %asmresult1.i.i.i.i to i32
  %sub.i = add nuw nsw i32 %div207.i, 19999999
  %div16.i = udiv i32 %sub.i, 20000000
  %div17.i = udiv i32 %div207.i, %div16.i
  %115 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div17.i, i64 1000000000000) #10, !srcloc !62
  %asmresult1.i.i.i353.i = extractvalue { i64, i64 } %115, 1
  %extract.t33 = trunc i64 %asmresult1.i.i.i353.i to i32
  %hs_exit20.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 10
  %116 = ptrtoint ptr %hs_exit20.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %hs_exit20.i, align 4
  %add21.i = add i32 %extract.t, -1
  %sub22.i = add i32 %117, %add21.i
  %div23.i = udiv i32 %sub22.i, %extract.t
  %clk_post24.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 1
  %118 = ptrtoint ptr %clk_post24.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %clk_post24.i, align 4
  %sub26.i = add i32 %119, %add21.i
  %div27.i = udiv i32 %sub26.i, %extract.t
  %clk_pre28.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 2
  %120 = ptrtoint ptr %clk_pre28.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %clk_pre28.i, align 4
  %lpx32.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 17
  %122 = ptrtoint ptr %lpx32.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %lpx32.i, align 4
  %sub34.i = add i32 %123, %add21.i
  %div35.i = udiv i32 %sub34.i, %extract.t
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div35.i)
  %cmp.i = icmp ugt i32 %div35.i, 1
  %sub37.i = add i32 %div35.i, 62
  %spec.select.i = select i1 %cmp.i, i32 %sub37.i, i32 %div35.i
  %ta_go38.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 19
  %124 = ptrtoint ptr %ta_go38.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ta_go38.i, align 4
  %add39.i = add i32 %extract.t33, -1
  %sub40.i = add i32 %125, %add39.i
  %div41.i = udiv i32 %sub40.i, %extract.t33
  %ta_sure42.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 20
  %126 = ptrtoint ptr %ta_sure42.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ta_sure42.i, align 4
  %sub44.i = add i32 %127, %add39.i
  %div45.i = udiv i32 %sub44.i, %extract.t33
  %ta_get.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8, i32 18
  %128 = ptrtoint ptr %ta_get.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ta_get.i, align 4
  %sub47.i = add i32 %129, %add39.i
  %div48.i = udiv i32 %sub47.i, %extract.t33
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000000, i32 %113)
  %cmp54.not.i = icmp ugt i32 %113, 110000000
  br i1 %cmp54.not.i, label %for.inc.i, label %inno_dsidphy_pll_calc_rate.exit.i.for.end.i_crit_edge

inno_dsidphy_pll_calc_rate.exit.i.for.end.i_crit_edge: ; preds = %inno_dsidphy_pll_calc_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %inno_dsidphy_pll_calc_rate.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %113)
  %cmp54.not.1.i = icmp ugt i32 %113, 150000000
  br i1 %cmp54.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %113)
  %cmp54.not.2.i = icmp ugt i32 %113, 200000000
  br i1 %cmp54.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %113)
  %cmp54.not.3.i = icmp ugt i32 %113, 250000000
  br i1 %cmp54.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %113)
  %cmp54.not.4.i = icmp ugt i32 %113, 300000000
  br i1 %cmp54.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %113)
  %cmp54.not.5.i = icmp ugt i32 %113, 400000000
  br i1 %cmp54.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %113)
  %cmp54.not.6.i = icmp ugt i32 %113, 500000000
  br i1 %cmp54.not.6.i, label %for.inc.6.i, label %for.inc.5.i.for.end.i_crit_edge

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %113)
  %cmp54.not.7.i = icmp ugt i32 %113, 600000000
  br i1 %cmp54.not.7.i, label %for.inc.7.i, label %for.inc.6.i.for.end.i_crit_edge

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000000, i32 %113)
  %cmp54.not.8.i = icmp ugt i32 %113, 700000000
  br i1 %cmp54.not.8.i, label %for.inc.8.i, label %for.inc.7.i.for.end.i_crit_edge

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %113)
  %cmp54.not.9.i = icmp ugt i32 %113, 800000000
  %spec.select476.i = select i1 %cmp54.not.9.i, i32 10, i32 9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.8.i, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %inno_dsidphy_pll_calc_rate.exit.i.for.end.i_crit_edge
  %cmp58.i = phi i32 [ 8, %for.inc.7.i.for.end.i_crit_edge ], [ 7, %for.inc.6.i.for.end.i_crit_edge ], [ 6, %for.inc.5.i.for.end.i_crit_edge ], [ 5, %for.inc.4.i.for.end.i_crit_edge ], [ 4, %for.inc.3.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 0, %inno_dsidphy_pll_calc_rate.exit.i.for.end.i_crit_edge ], [ %spec.select476.i, %for.inc.8.i ]
  %hs_prepare63.i = getelementptr [11 x %struct.anon.85], ptr @__const.inno_dsidphy_mipi_mode_enable.timings, i32 0, i32 %cmp58.i, i32 1
  %130 = ptrtoint ptr %hs_prepare63.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %hs_prepare63.i, align 4
  %hs_trail66.i = getelementptr [11 x %struct.anon.85], ptr @__const.inno_dsidphy_mipi_mode_enable.timings, i32 0, i32 %cmp58.i, i32 4
  %132 = ptrtoint ptr %hs_trail66.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %hs_trail66.i, align 1
  %clk_lane_hs_zero69.i = getelementptr [11 x %struct.anon.85], ptr @__const.inno_dsidphy_mipi_mode_enable.timings, i32 0, i32 %cmp58.i, i32 2
  %134 = ptrtoint ptr %clk_lane_hs_zero69.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %clk_lane_hs_zero69.i, align 1
  %data_lane_hs_zero72.i = getelementptr [11 x %struct.anon.85], ptr @__const.inno_dsidphy_mipi_mode_enable.timings, i32 0, i32 %cmp58.i, i32 3
  %136 = ptrtoint ptr %data_lane_hs_zero72.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %data_lane_hs_zero72.i, align 2
  %conv85.i = and i32 %spec.select.i, 63
  %138 = and i8 %131, 127
  %and11.i369.i = zext i8 %138 to i32
  %139 = and i8 %133, 127
  %and11.i387.i = zext i8 %139 to i32
  %conv101.i = and i32 %div23.i, 31
  %conv105.i = and i32 %div27.i, 15
  %140 = add i32 %121, 7
  %141 = lshr i32 %140, 3
  %conv109.i = and i32 %141, 15
  %conv122.i = and i32 %div41.i, 63
  %conv126.i = and i32 %div45.i, 63
  %conv130.i = and i32 %div48.i, 63
  br label %for.body77.i

for.body77.i:                                     ; preds = %for.body77.i.for.body77.i_crit_edge, %for.end.i
  %i.2471.i = phi i32 [ 2, %for.end.i ], [ %inc132.i, %for.body77.i.for.body77.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.2471.i)
  %cmp78.i = icmp eq i32 %i.2471.i, 2
  %..i = select i1 %cmp78.i, i8 %135, i8 %137
  %conv82.i = trunc i32 %i.2471.i to i8
  %142 = shl nuw i8 %conv82.i, 5
  %or19.i.i = or i8 %142, 5
  %or.i.i = zext i8 %or19.i.i to i32
  %shl4.i.i = shl nuw nsw i32 %or.i.i, 2
  %143 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i358.i = getelementptr i8, ptr %144, i32 %shl4.i.i
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i358.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %146 = and i32 %145, -1056964609
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #6
  %or12.i361.i = or i32 %147, %conv85.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %148 = tail call i32 @llvm.bswap.i32(i32 %or12.i361.i) #6
  %149 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i362.i = getelementptr i8, ptr %150, i32 %shl4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i362.i, i32 %148) #6, !srcloc !60
  %or19.i363.i = or i8 %142, 6
  %or.i364.i = zext i8 %or19.i363.i to i32
  %shl4.i365.i = shl nuw nsw i32 %or.i364.i, 2
  %151 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i367.i = getelementptr i8, ptr %152, i32 %shl4.i365.i
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i367.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %154 = and i32 %153, -2130706433
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #6
  %or12.i370.i = or i32 %155, %and11.i369.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %156 = tail call i32 @llvm.bswap.i32(i32 %or12.i370.i) #6
  %157 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i371.i = getelementptr i8, ptr %158, i32 %shl4.i365.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i371.i, i32 %156) #6, !srcloc !60
  %159 = and i8 %..i, 63
  %or19.i372.i = or i8 %142, 7
  %or.i373.i = zext i8 %or19.i372.i to i32
  %shl4.i374.i = shl nuw nsw i32 %or.i373.i, 2
  %160 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i376.i = getelementptr i8, ptr %161, i32 %shl4.i374.i
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i376.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %163 = and i32 %162, -1056964609
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #6
  %and11.i378.i = zext i8 %159 to i32
  %or12.i379.i = or i32 %164, %and11.i378.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %165 = tail call i32 @llvm.bswap.i32(i32 %or12.i379.i) #6
  %166 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i380.i = getelementptr i8, ptr %167, i32 %shl4.i374.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i380.i, i32 %165) #6, !srcloc !60
  %or19.i381.i = or i8 %142, 8
  %or.i382.i = zext i8 %or19.i381.i to i32
  %shl4.i383.i = shl nuw nsw i32 %or.i382.i, 2
  %168 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i385.i = getelementptr i8, ptr %169, i32 %shl4.i383.i
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %171 = and i32 %170, -2130706433
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #6
  %or12.i388.i = or i32 %172, %and11.i387.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %173 = tail call i32 @llvm.bswap.i32(i32 %or12.i388.i) #6
  %174 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i389.i = getelementptr i8, ptr %175, i32 %shl4.i383.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i389.i, i32 %173) #6, !srcloc !60
  %or19.i390.i = or i8 %142, 9
  %or.i391.i = zext i8 %or19.i390.i to i32
  %shl4.i392.i = shl nuw nsw i32 %or.i391.i, 2
  %176 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i394.i = getelementptr i8, ptr %177, i32 %shl4.i392.i
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i394.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %179 = and i32 %178, -520093697
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #6
  %or12.i397.i = or i32 %180, %conv101.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %181 = tail call i32 @llvm.bswap.i32(i32 %or12.i397.i) #6
  %182 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i398.i = getelementptr i8, ptr %183, i32 %shl4.i392.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i398.i, i32 %181) #6, !srcloc !60
  %or19.i399.i = or i8 %142, 10
  %or.i400.i = zext i8 %or19.i399.i to i32
  %shl4.i401.i = shl nuw nsw i32 %or.i400.i, 2
  %184 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i403.i = getelementptr i8, ptr %185, i32 %shl4.i401.i
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i403.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %187 = and i32 %186, -251658241
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #6
  %or12.i406.i = or i32 %188, %conv105.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %189 = tail call i32 @llvm.bswap.i32(i32 %or12.i406.i) #6
  %190 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i407.i = getelementptr i8, ptr %191, i32 %shl4.i401.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i407.i, i32 %189) #6, !srcloc !60
  %or19.i408.i = or i8 %142, 14
  %or.i409.i = zext i8 %or19.i408.i to i32
  %shl4.i410.i = shl nuw nsw i32 %or.i409.i, 2
  %192 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i412.i = getelementptr i8, ptr %193, i32 %shl4.i410.i
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %195 = and i32 %194, -251658241
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #6
  %or12.i415.i = or i32 %196, %conv109.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %197 = tail call i32 @llvm.bswap.i32(i32 %or12.i415.i) #6
  %198 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i416.i = getelementptr i8, ptr %199, i32 %shl4.i410.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i416.i, i32 %197) #6, !srcloc !60
  %or19.i417.i = or i8 %142, 12
  %or.i418.i = zext i8 %or19.i417.i to i32
  %shl4.i419.i = shl nuw nsw i32 %or.i418.i, 2
  %200 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i421.i = getelementptr i8, ptr %201, i32 %shl4.i419.i
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i421.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %203 = or i32 %202, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %204 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i424.i = getelementptr i8, ptr %205, i32 %shl4.i419.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i424.i, i32 %203) #6, !srcloc !60
  %or19.i425.i = or i8 %142, 13
  %or.i426.i = zext i8 %or19.i425.i to i32
  %shl4.i427.i = shl nuw nsw i32 %or.i426.i, 2
  %206 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i429.i = getelementptr i8, ptr %207, i32 %shl4.i427.i
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %209 = or i32 %208, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %210 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i432.i = getelementptr i8, ptr %211, i32 %shl4.i427.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i432.i, i32 %209) #6, !srcloc !60
  %or19.i433.i = or i8 %142, 16
  %or.i434.i = zext i8 %or19.i433.i to i32
  %shl4.i435.i = shl nuw nsw i32 %or.i434.i, 2
  %212 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i437.i = getelementptr i8, ptr %213, i32 %shl4.i435.i
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i437.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %215 = and i32 %214, -1056964609
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #6
  %or12.i440.i = or i32 %216, %conv122.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %217 = tail call i32 @llvm.bswap.i32(i32 %or12.i440.i) #6
  %218 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i441.i = getelementptr i8, ptr %219, i32 %shl4.i435.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i441.i, i32 %217) #6, !srcloc !60
  %or19.i442.i = or i8 %142, 17
  %or.i443.i = zext i8 %or19.i442.i to i32
  %shl4.i444.i = shl nuw nsw i32 %or.i443.i, 2
  %220 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i446.i = getelementptr i8, ptr %221, i32 %shl4.i444.i
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %223 = and i32 %222, -1056964609
  %224 = tail call i32 @llvm.bswap.i32(i32 %223) #6
  %or12.i449.i = or i32 %224, %conv126.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %225 = tail call i32 @llvm.bswap.i32(i32 %or12.i449.i) #6
  %226 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i450.i = getelementptr i8, ptr %227, i32 %shl4.i444.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i450.i, i32 %225) #6, !srcloc !60
  %or19.i451.i = or i8 %142, 18
  %or.i452.i = zext i8 %or19.i451.i to i32
  %shl4.i453.i = shl nuw nsw i32 %or.i452.i, 2
  %228 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i455.i = getelementptr i8, ptr %229, i32 %shl4.i453.i
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i455.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %231 = and i32 %230, -1056964609
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #6
  %or12.i458.i = or i32 %232, %conv130.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %233 = tail call i32 @llvm.bswap.i32(i32 %or12.i458.i) #6
  %234 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i459.i = getelementptr i8, ptr %235, i32 %shl4.i453.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i459.i, i32 %233) #6, !srcloc !60
  %inc132.i = add nuw nsw i32 %i.2471.i, 1
  %exitcond.not.i = icmp eq i32 %inc132.i, 7
  br i1 %exitcond.not.i, label %inno_dsidphy_mipi_mode_enable.exit, label %for.body77.i.for.body77.i_crit_edge

for.body77.i.for.body77.i_crit_edge:              ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77.i

inno_dsidphy_mipi_mode_enable.exit:               ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #8
  %236 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %phy_base.i, align 4
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %239 = or i32 %238, 2080374784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %240 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %phy_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %239) #6, !srcloc !60
  br label %cleanup

sw.bb4:                                           ; preds = %clk_prepare_enable.exit18
  call void @__sanitizer_cov_trace_pc() #8
  %242 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %243, i32 32
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %245 = or i32 %244, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %246 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i.i24 = getelementptr i8, ptr %247, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i24, i32 %245) #6, !srcloc !60
  %248 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %249, i32 908
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %251 = and i32 %250, -117440513
  %252 = or i32 %251, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %253 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i25.i = getelementptr i8, ptr %254, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i25.i, i32 %252) #6, !srcloc !60
  %255 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %256, i32 12
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %258 = and i32 %257, -520093697
  %259 = or i32 %258, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %260 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i30.i = getelementptr i8, ptr %261, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i30.i, i32 %259) #6, !srcloc !60
  %262 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %263, i32 12
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %265 = and i32 %264, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %266 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i34.i = getelementptr i8, ptr %267, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i34.i, i32 %265) #6, !srcloc !60
  %268 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %269, i32 16
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %271 = and i32 %270, 16777215
  %272 = or i32 %271, 469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %273 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i39.i = getelementptr i8, ptr %274, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i39.i, i32 %272) #6, !srcloc !60
  %275 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %276, i32 928
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %278 = and i32 %277, 16777215
  %279 = or i32 %278, -67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %280 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i44.i = getelementptr i8, ptr %281, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i44.i, i32 %279) #6, !srcloc !60
  %282 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %283, i32 940
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %285 = and i32 %284, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %286 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i48.i = getelementptr i8, ptr %287, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i48.i, i32 %285) #6, !srcloc !60
  tail call void @msleep(i32 noundef 20) #6
  %288 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %289, i32 896
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %291 = and i32 %290, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %292 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i52.i = getelementptr i8, ptr %293, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i52.i, i32 %291) #6, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %294 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %294(i32 noundef 214748) #6
  %295 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %296, i32 896
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %298 = or i32 %297, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %299 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i57.i = getelementptr i8, ptr %300, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i57.i, i32 %298) #6, !srcloc !60
  %301 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %302, i32 900
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %304 = or i32 %303, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %305 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i62.i = getelementptr i8, ptr %306, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i62.i, i32 %304) #6, !srcloc !60
  %307 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %308, i32 940
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %310 = or i32 %309, -134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %311 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i67.i = getelementptr i8, ptr %312, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i67.i, i32 %310) #6, !srcloc !60
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %inno_dsidphy_mipi_mode_enable.exit, %clk_prepare_enable.exit18.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %clk_prepare_enable.exit18.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %inno_dsidphy_mipi_mode_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_dsidphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_base.i = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %5 = and i32 %4, -2080374785
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !60
  %8 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %11 = or i32 %10, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %11) #6, !srcloc !60
  %14 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %17 = and i32 %16, -50331649
  %18 = or i32 %17, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !60
  %21 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_base.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %24 = or i32 %23, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #6, !srcloc !60
  %27 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %28, i32 940
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %30 = and i32 %29, 134217727
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i22 = getelementptr i8, ptr %32, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i22, i32 %30) #6, !srcloc !60
  %33 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %34, i32 900
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %36 = and i32 %35, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i26 = getelementptr i8, ptr %38, i32 900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i26, i32 %36) #6, !srcloc !60
  %39 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %40, i32 940
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %42 = or i32 %41, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_base.i, align 4
  %add.ptr14.i31 = getelementptr i8, ptr %44, i32 940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i31, i32 %42) #6, !srcloc !60
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #6
  %ref_clk = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %48) #6
  tail call void @clk_unprepare(ptr noundef %48) #6
  %pclk_phy = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %pclk_phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pclk_phy, align 4
  tail call void @clk_disable(ptr noundef %50) #6
  tail call void @clk_unprepare(ptr noundef %50) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inno_dsidphy_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.bb_crit_edge
    i32 18, label %entry.sw.bb_crit_edge3
  ]

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge3
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %mode1 = getelementptr inbounds %struct.inno_dsidphy, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %mode1, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inno_dsidphy_configure(ptr nocapture noundef readonly %phy, ptr noundef %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.not = icmp eq i32 %3, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %opts) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dphy_cfg = getelementptr inbounds %struct.inno_dsidphy, ptr %1, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %dphy_cfg, ptr %opts, i32 100)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_phy_rockchip_inno_dsidphy__289_681_inno_dsidphy_driver_init6, !1, !"__initcall__kmod_phy_rockchip_inno_dsidphy__289_681_inno_dsidphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 681, i32 1}
!2 = !{ptr @__exitcall_inno_dsidphy_driver_exit, !1, !"__exitcall_inno_dsidphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 683, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 684, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 685, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 675, i32 11}
!12 = !{ptr @inno_dsidphy_driver, !13, !"inno_dsidphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 673, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 614, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 617, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @inno_dsidphy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @inno_dsidphy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 621, i32 37}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 624, i32 3}
!28 = !{ptr @inno_dsidphy_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @inno_dsidphy_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 628, i32 42}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 631, i32 3}
!34 = !{ptr @inno_dsidphy_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @inno_dsidphy_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 638, i32 3}
!38 = !{ptr @inno_dsidphy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @inno_dsidphy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 647, i32 3}
!42 = !{ptr @inno_dsidphy_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @inno_dsidphy_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @inno_dsidphy_ops, !45, !"inno_dsidphy_ops", i1 false, i1 false}
!45 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 587, i32 29}
!46 = !{ptr @inno_dsidphy_of_match, !47, !"inno_dsidphy_of_match", i1 false, i1 false}
!47 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c", i32 665, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 3096221}
!58 = !{i64 2155217604}
!59 = !{i64 2155217821}
!60 = !{i64 3095803}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2148618872, i64 2148619152, i64 2148619486, i64 2148619820}
