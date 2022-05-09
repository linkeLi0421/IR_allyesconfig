; ModuleID = '/llk/IR_all_yes/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c_pt.bc'
source_filename = "../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dphy_drv_data = type { i32, i32, i32, ptr, i32, ptr }
%struct.hsfreq_range = type { i32, i8 }
%struct.dphy_reg = type { i32, i32, i32 }
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
%struct.rockchip_inno_csidphy = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.phy_configure_opts_mipi_dphy, i8 }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@__initcall__kmod_phy_rockchip_inno_csidphy__305_456_rockchip_inno_csidphy_driver_init6 = internal global ptr @rockchip_inno_csidphy_driver_init, section ".initcall6.init", align 4
@rockchip_inno_csidphy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_inno_csidphy_probe, ptr @rockchip_inno_csidphy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_inno_csidphy_match_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_inno_csidphy_driver_exit = internal global ptr @rockchip_inno_csidphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [87 x i8] c"phy_rockchip_inno_csidphy.author=Heiko Stuebner <heiko.stuebner@theobroma-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [80 x i8] c"phy_rockchip_inno_csidphy.description=Rockchip MIPI Innosilicon CSI-DPHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [78 x i8] c"phy_rockchip_inno_csidphy.file=drivers/phy/rockchip/phy-rockchip-inno-csidphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [41 x i8] c"phy_rockchip_inno_csidphy.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip-inno-csidphy\00", [42 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_match_id = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-csi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3326_mipidphy_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk1808-csi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk1808_mipidphy_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3326-csi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3326_mipidphy_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-csi-dphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_mipidphy_drv_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't find device data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_inno_csidphy_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/phy/rockchip/phy-rockchip-inno-csidphy.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry_ptr = internal global ptr @rockchip_inno_csidphy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't find GRF syscon\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry_ptr.9 = internal global ptr @rockchip_inno_csidphy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get pclk\0A\00", [44 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry_ptr.13 = internal global ptr @rockchip_inno_csidphy_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get system reset control\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry_ptr.17 = internal global ptr @rockchip_inno_csidphy_probe._entry.15, section ".printk_index", align 4
@rockchip_inno_csidphy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @rockchip_inno_csidphy_init, ptr @rockchip_inno_csidphy_exit, ptr @rockchip_inno_csidphy_power_on, ptr @rockchip_inno_csidphy_power_off, ptr null, ptr null, ptr null, ptr @rockchip_inno_csidphy_configure, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry_ptr.20 = internal global ptr @rockchip_inno_csidphy_probe._entry.18, section ".printk_index", align 4
@rockchip_inno_csidphy_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register phy provider\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_inno_csidphy_probe._entry_ptr.23 = internal global ptr @rockchip_inno_csidphy_probe._entry.21, section ".printk_index", align 4
@rockchip_inno_csidphy_configure.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"phy_rockchip_inno_csidphy\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip_inno_csidphy_configure\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lanes %d - data_rate_mbps %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@rk3326_mipidphy_drv_data = internal constant { %struct.dphy_drv_data, [40 x i8] } { %struct.dphy_drv_data { i32 4, i32 256, i32 -1, ptr @rk3326_mipidphy_hsfreq_ranges, i32 15, ptr @rk3326_grf_dphy_regs }, [40 x i8] zeroinitializer }, align 32
@rk1808_mipidphy_drv_data = internal constant { %struct.dphy_drv_data, [40 x i8] } { %struct.dphy_drv_data { i32 -1, i32 352, i32 360, ptr @rk1808_mipidphy_hsfreq_ranges, i32 19, ptr @rk1808_grf_dphy_regs }, [40 x i8] zeroinitializer }, align 32
@rk3368_mipidphy_drv_data = internal constant { %struct.dphy_drv_data, [40 x i8] } { %struct.dphy_drv_data { i32 4, i32 256, i32 -1, ptr @rk3368_mipidphy_hsfreq_ranges, i32 15, ptr @rk3368_grf_dphy_regs }, [40 x i8] zeroinitializer }, align 32
@rk3326_mipidphy_hsfreq_ranges = internal constant { [15 x %struct.hsfreq_range], [40 x i8] } { [15 x %struct.hsfreq_range] [%struct.hsfreq_range { i32 109, i8 0 }, %struct.hsfreq_range { i32 149, i8 1 }, %struct.hsfreq_range { i32 199, i8 2 }, %struct.hsfreq_range { i32 249, i8 3 }, %struct.hsfreq_range { i32 299, i8 4 }, %struct.hsfreq_range { i32 399, i8 5 }, %struct.hsfreq_range { i32 499, i8 6 }, %struct.hsfreq_range { i32 599, i8 7 }, %struct.hsfreq_range { i32 699, i8 8 }, %struct.hsfreq_range { i32 799, i8 9 }, %struct.hsfreq_range { i32 899, i8 10 }, %struct.hsfreq_range { i32 1099, i8 11 }, %struct.hsfreq_range { i32 1249, i8 12 }, %struct.hsfreq_range { i32 1349, i8 13 }, %struct.hsfreq_range { i32 1500, i8 14 }], [40 x i8] zeroinitializer }, align 32
@rk3326_grf_dphy_regs = internal constant { [3 x %struct.dphy_reg], [60 x i8] } { [3 x %struct.dphy_reg] [%struct.dphy_reg { i32 1072, i32 15, i32 0 }, %struct.dphy_reg { i32 1072, i32 1, i32 8 }, %struct.dphy_reg { i32 1072, i32 15, i32 4 }], [60 x i8] zeroinitializer }, align 32
@rk1808_mipidphy_hsfreq_ranges = internal constant { [19 x %struct.hsfreq_range], [40 x i8] } { [19 x %struct.hsfreq_range] [%struct.hsfreq_range { i32 109, i8 2 }, %struct.hsfreq_range { i32 149, i8 3 }, %struct.hsfreq_range { i32 199, i8 6 }, %struct.hsfreq_range { i32 249, i8 6 }, %struct.hsfreq_range { i32 299, i8 6 }, %struct.hsfreq_range { i32 399, i8 8 }, %struct.hsfreq_range { i32 499, i8 11 }, %struct.hsfreq_range { i32 599, i8 14 }, %struct.hsfreq_range { i32 699, i8 16 }, %struct.hsfreq_range { i32 799, i8 18 }, %struct.hsfreq_range { i32 999, i8 22 }, %struct.hsfreq_range { i32 1199, i8 30 }, %struct.hsfreq_range { i32 1399, i8 35 }, %struct.hsfreq_range { i32 1599, i8 45 }, %struct.hsfreq_range { i32 1799, i8 50 }, %struct.hsfreq_range { i32 1999, i8 55 }, %struct.hsfreq_range { i32 2199, i8 60 }, %struct.hsfreq_range { i32 2399, i8 65 }, %struct.hsfreq_range { i32 2499, i8 70 }], [40 x i8] zeroinitializer }, align 32
@rk1808_grf_dphy_regs = internal constant { [3 x %struct.dphy_reg], [60 x i8] } { [3 x %struct.dphy_reg] [%struct.dphy_reg { i32 1072, i32 15, i32 0 }, %struct.dphy_reg { i32 1072, i32 1, i32 8 }, %struct.dphy_reg { i32 1072, i32 15, i32 4 }], [60 x i8] zeroinitializer }, align 32
@rk3368_mipidphy_hsfreq_ranges = internal constant { [15 x %struct.hsfreq_range], [40 x i8] } { [15 x %struct.hsfreq_range] [%struct.hsfreq_range { i32 109, i8 0 }, %struct.hsfreq_range { i32 149, i8 1 }, %struct.hsfreq_range { i32 199, i8 2 }, %struct.hsfreq_range { i32 249, i8 3 }, %struct.hsfreq_range { i32 299, i8 4 }, %struct.hsfreq_range { i32 399, i8 5 }, %struct.hsfreq_range { i32 499, i8 6 }, %struct.hsfreq_range { i32 599, i8 7 }, %struct.hsfreq_range { i32 699, i8 8 }, %struct.hsfreq_range { i32 799, i8 9 }, %struct.hsfreq_range { i32 899, i8 10 }, %struct.hsfreq_range { i32 1099, i8 11 }, %struct.hsfreq_range { i32 1249, i8 12 }, %struct.hsfreq_range { i32 1349, i8 13 }, %struct.hsfreq_range { i32 1500, i8 14 }], [40 x i8] zeroinitializer }, align 32
@rk3368_grf_dphy_regs = internal constant { [1 x %struct.dphy_reg], [20 x i8] } { [1 x %struct.dphy_reg] [%struct.dphy_reg { i32 1048, i32 15, i32 8 }], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"rockchip_inno_csidphy_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 447, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 449, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"rockchip_inno_csidphy_match_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 355, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 392, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 397, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 399, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 407, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 409, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 413, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 415, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"rockchip_inno_csidphy_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 319, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 421, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 429, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 195, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"rk3326_mipidphy_drv_data\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 337, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"rk1808_mipidphy_drv_data\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 328, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"rk3368_mipidphy_drv_data\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 346, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"rk3326_mipidphy_hsfreq_ranges\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 151, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"rk3326_grf_dphy_regs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 96, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [30 x i8] c"rk1808_mipidphy_hsfreq_ranges\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 143, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"rk1808_grf_dphy_regs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 90, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [30 x i8] c"rk3368_mipidphy_hsfreq_ranges\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 158, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [21 x i8] c"rk3368_grf_dphy_regs\00", align 1
@___asan_gen_.130 = private constant [52 x i8] c"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 102, i32 30 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_rockchip_inno_csidphy_driver_exit, ptr @__initcall__kmod_phy_rockchip_inno_csidphy__305_456_rockchip_inno_csidphy_driver_init6, ptr @rockchip_inno_csidphy_driver_exit, ptr @rockchip_inno_csidphy_probe._entry, ptr @rockchip_inno_csidphy_probe._entry.11, ptr @rockchip_inno_csidphy_probe._entry.15, ptr @rockchip_inno_csidphy_probe._entry.18, ptr @rockchip_inno_csidphy_probe._entry.21, ptr @rockchip_inno_csidphy_probe._entry.7, ptr @rockchip_inno_csidphy_probe._entry_ptr, ptr @rockchip_inno_csidphy_probe._entry_ptr.13, ptr @rockchip_inno_csidphy_probe._entry_ptr.17, ptr @rockchip_inno_csidphy_probe._entry_ptr.20, ptr @rockchip_inno_csidphy_probe._entry_ptr.23, ptr @rockchip_inno_csidphy_probe._entry_ptr.9, ptr @rockchip_inno_csidphy_driver, ptr @.str, ptr @rockchip_inno_csidphy_match_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @rockchip_inno_csidphy_ops, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @rk3326_mipidphy_drv_data, ptr @rk1808_mipidphy_drv_data, ptr @rk3368_mipidphy_drv_data, ptr @rk3326_mipidphy_hsfreq_ranges, ptr @rk3326_grf_dphy_regs, ptr @rk1808_mipidphy_hsfreq_ranges, ptr @rk1808_grf_dphy_regs, ptr @rk3368_mipidphy_hsfreq_ranges, ptr @rk3368_grf_dphy_regs], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_match_id to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_inno_csidphy_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3326_mipidphy_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk1808_mipidphy_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_mipidphy_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3326_mipidphy_hsfreq_ranges to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3326_grf_dphy_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk1808_mipidphy_hsfreq_ranges to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk1808_grf_dphy_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_mipidphy_hsfreq_ranges to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_grf_dphy_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_inno_csidphy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_inno_csidphy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_inno_csidphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #6
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
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %drv_data = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %drv_data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  %grf = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %6 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grf, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %phy_base = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call18, ptr %phy_base, align 4
  %cmp.i100 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  %pclk = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %pclk, align 4
  %cmp.i101 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i102 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call45 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @rockchip_inno_csidphy_ops) #6
  %cmp.i103 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  %19 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %driver_data.i.i104 = getelementptr inbounds %struct.device, ptr %call45, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i104 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i104, align 4
  %call53 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i105 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  %21 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end58, %do.end50, %do.end41, %do.end31, %if.then21, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end14 ], [ %10, %if.then21 ], [ %14, %do.end31 ], [ %18, %do.end41 ], [ %19, %do.end50 ], [ %21, %do.end58 ], [ 0, %if.end60 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @rockchip_inno_csidphy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call1 = tail call i32 @clk_prepare(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data1 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data1, align 4
  %hs_clk_rate = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 6, i32 22
  %4 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_clk_rate, align 4
  %conv = zext i32 %5 to i64
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv) #10, !srcloc !84
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv, i64 %6, i32 0) #10, !srcloc !85
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %pclk = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !87
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then8_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then8_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  br label %if.then8

if.then8:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then8_crit_edge
  %13 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp11 = icmp sgt i32 %16, -1
  br i1 %cmp11, label %do.body, label %if.end10.do.body22_crit_edge

if.end10.do.body22_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %phy_base = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_base, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -469762048) #6, !srcloc !90
  br label %do.body22

do.body22:                                        ; preds = %do.body, %if.end10.do.body22_crit_edge
  %lanes = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 6, i32 24
  %21 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lanes, align 4
  %conv24 = zext i8 %22 to i32
  %sub25 = sub nsw i32 32, %conv24
  %shr = lshr i32 -1, %sub25
  %shl = shl i32 %shr, 26
  %and53 = and i32 %shl, 1006632960
  %or86 = or i32 %and53, 1090519040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %phy_base90 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_base90, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %or86) #6, !srcloc !90
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp93 = icmp sgt i32 %26, -1
  br i1 %cmp93, label %do.body96, label %do.body22.if.end102_crit_edge

do.body22.if.end102_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.body96:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_base90, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %add.ptr101 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 -536870912) #6, !srcloc !90
  br label %if.end102

if.end102:                                        ; preds = %do.body96, %do.body22.if.end102_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_base90, align 4
  %add.ptr107 = getelementptr i8, ptr %32, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 503316480) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_base90, align 4
  %add.ptr112 = getelementptr i8, ptr %34, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 520093696) #6, !srcloc !90
  %35 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drv_data1, align 4
  %grf_regs.i = getelementptr inbounds %struct.dphy_drv_data, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %grf_regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %grf_regs.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.end102.write_grf_reg.exit_crit_edge, label %if.then.i207

if.end102.write_grf_reg.exit_crit_edge:           ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_grf_reg.exit

if.then.i207:                                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %grf.i, align 4
  %shift.i = getelementptr %struct.dphy_reg, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %shift.i, align 4
  %mask.i = getelementptr %struct.dphy_reg, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask.i, align 4
  %add.i = add i32 %44, 16
  %shl4.i = shl i32 %46, %add.i
  %call.i206 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %40, i32 noundef %shl4.i) #6
  br label %write_grf_reg.exit

write_grf_reg.exit:                               ; preds = %if.then.i207, %if.end102.write_grf_reg.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 393478143, i64 %asmresult10.i.i.i)
  %cmp113 = icmp ugt i64 %asmresult10.i.i.i, 393478143
  br i1 %cmp113, label %land.lhs.true, label %write_grf_reg.exit.if.end138_crit_edge

write_grf_reg.exit.if.end138_crit_edge:           ; preds = %write_grf_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

land.lhs.true:                                    ; preds = %write_grf_reg.exit
  %calib_offset = getelementptr inbounds %struct.dphy_drv_data, ptr %3, i32 0, i32 2
  %47 = ptrtoint ptr %calib_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %calib_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp115 = icmp sgt i32 %48, -1
  br i1 %cmp115, label %do.body118, label %land.lhs.true.if.end138_crit_edge

land.lhs.true.if.end138_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

do.body118:                                       ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_base90, align 4
  %51 = ptrtoint ptr %calib_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %calib_offset, align 4
  %add.ptr123 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 -2147483648) #6, !srcloc !90
  %53 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp128245.not = icmp eq i8 %54, 0
  br i1 %cmp128245.not, label %do.body118.if.end138_crit_edge, label %do.body118.do.body130_crit_edge

do.body118.do.body130_crit_edge:                  ; preds = %do.body118
  br label %do.body130

do.body118.if.end138_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

do.body130:                                       ; preds = %do.body130.do.body130_crit_edge, %do.body118.do.body130_crit_edge
  %i.0246 = phi i32 [ %add136, %do.body130.do.body130_crit_edge ], [ 0, %do.body118.do.body130_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_base90, align 4
  %57 = ptrtoint ptr %calib_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %calib_offset, align 4
  %add.ptr135 = getelementptr i8, ptr %56, i32 %58
  %add136 = add nuw nsw i32 %i.0246, 1
  %mul = shl i32 %add136, 7
  %add.ptr137 = getelementptr i8, ptr %add.ptr135, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 -2147483648) #6, !srcloc !90
  %59 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %lanes, align 4
  %conv127 = zext i8 %60 to i32
  %cmp128 = icmp ult i32 %add136, %conv127
  br i1 %cmp128, label %do.body130.do.body130_crit_edge, label %do.body130.if.end138_crit_edge

do.body130.if.end138_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

do.body130.do.body130_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body130

if.end138:                                        ; preds = %do.body130.if.end138_crit_edge, %do.body118.if.end138_crit_edge, %land.lhs.true.if.end138_crit_edge, %write_grf_reg.exit.if.end138_crit_edge
  %hsfreq = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 7
  %61 = ptrtoint ptr %hsfreq to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %hsfreq, align 4
  %conv139 = zext i8 %62 to i32
  %63 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drv_data1, align 4
  %65 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phy_base90, align 4
  %ths_settle_offset.i = getelementptr inbounds %struct.dphy_drv_data, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %ths_settle_offset.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ths_settle_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %66, i32 %68
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %70 = and i32 %69, -2130706433
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %or.i = or i32 %71, %conv139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %73 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phy_base90, align 4
  %75 = ptrtoint ptr %ths_settle_offset.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ths_settle_offset.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %74, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %72) #6, !srcloc !90
  %77 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp144248.not = icmp eq i8 %78, 0
  br i1 %cmp144248.not, label %if.end138.for.end153_crit_edge, label %if.end138.for.body146_crit_edge

if.end138.for.body146_crit_edge:                  ; preds = %if.end138
  br label %for.body146

if.end138.for.end153_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end153

for.body146:                                      ; preds = %for.body146.for.body146_crit_edge, %if.end138.for.body146_crit_edge
  %i.1249 = phi i32 [ %add149, %for.body146.for.body146_crit_edge ], [ 0, %if.end138.for.body146_crit_edge ]
  %79 = ptrtoint ptr %hsfreq to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %hsfreq, align 4
  %conv148 = zext i8 %80 to i32
  %add149 = add nuw nsw i32 %i.1249, 1
  %mul150 = shl i32 %add149, 7
  %81 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %drv_data1, align 4
  %83 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy_base90, align 4
  %ths_settle_offset.i211 = getelementptr inbounds %struct.dphy_drv_data, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %ths_settle_offset.i211 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ths_settle_offset.i211, align 4
  %add.ptr.i212 = getelementptr i8, ptr %84, i32 %86
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i212, i32 %mul150
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %88 = and i32 %87, -2130706433
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  %or.i213 = or i32 %89, %conv148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %90 = tail call i32 @llvm.bswap.i32(i32 %or.i213) #6
  %91 = ptrtoint ptr %phy_base90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy_base90, align 4
  %93 = ptrtoint ptr %ths_settle_offset.i211 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ths_settle_offset.i211, align 4
  %add.ptr6.i214 = getelementptr i8, ptr %92, i32 %94
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i214, i32 %mul150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %90) #6, !srcloc !90
  %95 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %lanes, align 4
  %conv143 = zext i8 %96 to i32
  %cmp144 = icmp ult i32 %add149, %conv143
  br i1 %cmp144, label %for.body146.for.body146_crit_edge, label %for.body146.for.end153_crit_edge

for.body146.for.end153_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end153

for.body146.for.body146_crit_edge:                ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body146

for.end153:                                       ; preds = %for.body146.for.end153_crit_edge, %if.end138.for.end153_crit_edge
  %97 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %drv_data1, align 4
  %grf_regs.i216 = getelementptr inbounds %struct.dphy_drv_data, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %grf_regs.i216 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %grf_regs.i216, align 4
  %arrayidx.i = getelementptr %struct.dphy_reg, ptr %100, i32 1
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i217 = icmp eq i32 %102, 0
  br i1 %tobool.not.i217, label %for.end153.write_grf_reg.exit226_crit_edge, label %if.then.i225

for.end153.write_grf_reg.exit226_crit_edge:       ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_grf_reg.exit226

if.then.i225:                                     ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #8
  %grf.i218 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 3
  %103 = ptrtoint ptr %grf.i218 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %grf.i218, align 4
  %shift.i219 = getelementptr %struct.dphy_reg, ptr %100, i32 1, i32 2
  %105 = ptrtoint ptr %shift.i219 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %shift.i219, align 4
  %shl.i = shl nuw i32 1, %106
  %mask.i220 = getelementptr %struct.dphy_reg, ptr %100, i32 1, i32 1
  %107 = ptrtoint ptr %mask.i220 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mask.i220, align 4
  %add.i221 = add i32 %106, 16
  %shl4.i222 = shl i32 %108, %add.i221
  %or.i223 = or i32 %shl4.i222, %shl.i
  %call.i224 = tail call i32 @regmap_write(ptr noundef %104, i32 noundef %102, i32 noundef %or.i223) #6
  br label %write_grf_reg.exit226

write_grf_reg.exit226:                            ; preds = %if.then.i225, %for.end153.write_grf_reg.exit226_crit_edge
  %109 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %drv_data1, align 4
  %grf_regs.i228 = getelementptr inbounds %struct.dphy_drv_data, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %grf_regs.i228 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %grf_regs.i228, align 4
  %arrayidx.i229 = getelementptr %struct.dphy_reg, ptr %112, i32 2
  %113 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i230 = icmp eq i32 %114, 0
  br i1 %tobool.not.i230, label %write_grf_reg.exit226.cleanup_crit_edge, label %if.then.i239

write_grf_reg.exit226.cleanup_crit_edge:          ; preds = %write_grf_reg.exit226
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i239:                                     ; preds = %write_grf_reg.exit226
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %lanes, align 4
  %conv156 = zext i8 %116 to i32
  %sub158 = sub nsw i32 32, %conv156
  %shr159 = lshr i32 -1, %sub158
  %grf.i231 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 3
  %117 = ptrtoint ptr %grf.i231 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %grf.i231, align 4
  %conv.i = and i32 %shr159, 255
  %shift.i232 = getelementptr %struct.dphy_reg, ptr %112, i32 2, i32 2
  %119 = ptrtoint ptr %shift.i232 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %shift.i232, align 4
  %shl.i233 = shl i32 %conv.i, %120
  %mask.i234 = getelementptr %struct.dphy_reg, ptr %112, i32 2, i32 1
  %121 = ptrtoint ptr %mask.i234 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mask.i234, align 4
  %add.i235 = add i32 %120, 16
  %shl4.i236 = shl i32 %122, %add.i235
  %or.i237 = or i32 %shl.i233, %shl4.i236
  %call.i238 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef %114, i32 noundef %or.i237) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i239, %write_grf_reg.exit226.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then8 ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %write_grf_reg.exit226.cleanup_crit_edge ], [ 0, %if.then.i239 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data1 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %phy_base = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 16777216) #6, !srcloc !90
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %phy_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_base, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -486539264) #6, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #6
  %pclk = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_inno_csidphy_configure(ptr nocapture noundef readonly %phy, ptr noundef %opts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drv_data1 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data1, align 4
  %call2 = tail call i32 @phy_mipi_dphy_config_validate(ptr noundef %opts) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hs_clk_rate = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 22
  %4 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_clk_rate, align 4
  %conv = zext i32 %5 to i64
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv) #10, !srcloc !84
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv, i64 %6, i32 0) #10, !srcloc !85
  %asmresult10.i.i.i = extractvalue { i64, i32 } %7, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_inno_csidphy_configure.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_inno_csidphy_configure, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !102

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %lanes = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, ptr %opts, i32 0, i32 24
  %10 = ptrtoint ptr %lanes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lanes, align 4
  %conv9 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_inno_csidphy_configure.__UNIQUE_ID_ddebug289, ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %conv9, i64 noundef %div1581.i.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %num_hsfreq_ranges = getelementptr inbounds %struct.dphy_drv_data, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %num_hsfreq_ranges to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_hsfreq_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp50.not = icmp eq i32 %13, 0
  br i1 %cmp50.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %hsfreq_ranges = getelementptr inbounds %struct.dphy_drv_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %hsfreq_ranges to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hsfreq_ranges, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hsfreq_range, ptr %15, i32 %i.051
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %conv12 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i.i, i64 %conv12)
  %cmp13.not = icmp ugt i64 %div1581.i.i, %conv12
  br i1 %cmp13.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.body
  %cfg_bit = getelementptr %struct.hsfreq_range, ptr %15, i32 %i.051, i32 1
  %18 = ptrtoint ptr %cfg_bit to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cfg_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %hsfreq24 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %hsfreq24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %hsfreq24, align 4
  %config25 = getelementptr inbounds %struct.rockchip_inno_csidphy, ptr %1, i32 0, i32 6
  %21 = call ptr @memcpy(ptr %config25, ptr %opts, i32 100)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_config_validate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_phy_rockchip_inno_csidphy__305_456_rockchip_inno_csidphy_driver_init6, !1, !"__initcall__kmod_phy_rockchip_inno_csidphy__305_456_rockchip_inno_csidphy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 456, i32 1}
!2 = !{ptr @__exitcall_rockchip_inno_csidphy_driver_exit, !1, !"__exitcall_rockchip_inno_csidphy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 457, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 458, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 459, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 449, i32 11}
!12 = !{ptr @rockchip_inno_csidphy_driver, !13, !"rockchip_inno_csidphy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 447, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 392, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rockchip_inno_csidphy_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_inno_csidphy_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 397, i32 11}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 399, i32 3}
!26 = !{ptr @rockchip_inno_csidphy_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rockchip_inno_csidphy_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 407, i32 33}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 409, i32 3}
!32 = !{ptr @rockchip_inno_csidphy_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rockchip_inno_csidphy_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 413, i32 42}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 415, i32 3}
!38 = !{ptr @rockchip_inno_csidphy_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rockchip_inno_csidphy_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 421, i32 3}
!42 = !{ptr @rockchip_inno_csidphy_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rockchip_inno_csidphy_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 429, i32 3}
!46 = !{ptr @rockchip_inno_csidphy_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rockchip_inno_csidphy_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rockchip_inno_csidphy_ops, !49, !"rockchip_inno_csidphy_ops", i1 false, i1 false}
!49 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 319, i32 29}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 195, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rockchip_inno_csidphy_configure.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @rockchip_inno_csidphy_match_id, !56, !"rockchip_inno_csidphy_match_id", i1 false, i1 false}
!56 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 355, i32 34}
!57 = !{ptr @rk3326_mipidphy_drv_data, !58, !"rk3326_mipidphy_drv_data", i1 false, i1 false}
!58 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 337, i32 35}
!59 = !{ptr @rk3326_mipidphy_hsfreq_ranges, !60, !"rk3326_mipidphy_hsfreq_ranges", i1 false, i1 false}
!60 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 151, i32 34}
!61 = !{ptr @rk3326_grf_dphy_regs, !62, !"rk3326_grf_dphy_regs", i1 false, i1 false}
!62 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 96, i32 30}
!63 = !{ptr @rk1808_mipidphy_drv_data, !64, !"rk1808_mipidphy_drv_data", i1 false, i1 false}
!64 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 328, i32 35}
!65 = !{ptr @rk1808_mipidphy_hsfreq_ranges, !66, !"rk1808_mipidphy_hsfreq_ranges", i1 false, i1 false}
!66 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 143, i32 34}
!67 = !{ptr @rk1808_grf_dphy_regs, !68, !"rk1808_grf_dphy_regs", i1 false, i1 false}
!68 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 90, i32 30}
!69 = !{ptr @rk3368_mipidphy_drv_data, !70, !"rk3368_mipidphy_drv_data", i1 false, i1 false}
!70 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 346, i32 35}
!71 = !{ptr @rk3368_mipidphy_hsfreq_ranges, !72, !"rk3368_mipidphy_hsfreq_ranges", i1 false, i1 false}
!72 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 158, i32 34}
!73 = !{ptr @rk3368_grf_dphy_regs, !74, !"rk3368_grf_dphy_regs", i1 false, i1 false}
!74 = !{!"../drivers/phy/rockchip/phy-rockchip-inno-csidphy.c", i32 102, i32 30}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 1187510, i64 1187537}
!85 = !{i64 1188205, i64 1188232, i64 1188265, i64 1188286, i64 1188313, i64 1188339}
!86 = !{i64 2148309556}
!87 = !{i64 794379, i64 794404, i64 794426, i64 794442, i64 794454, i64 794474, i64 794498, i64 794514, i64 794526}
!88 = !{i64 2148309744}
!89 = !{i64 2155255325}
!90 = !{i64 3112212}
!91 = !{i64 2155332158}
!92 = !{i64 2155333529}
!93 = !{i64 2155334799}
!94 = !{i64 2155335322}
!95 = !{i64 2155335942}
!96 = !{i64 2155336601}
!97 = !{i64 3112630}
!98 = !{i64 2155250299}
!99 = !{i64 2155251223}
!100 = !{i64 2155338073}
!101 = !{i64 2155339740}
!102 = !{i64 2148764622, i64 2148764627, i64 2148764640, i64 2148764684, i64 2148764718, i64 2148764739}
