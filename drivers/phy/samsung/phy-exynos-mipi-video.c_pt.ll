; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynos-mipi-video.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos-mipi-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_phy_device_desc = type { i32, i32, [4 x ptr], [5 x %struct.exynos_mipi_phy_desc] }
%struct.exynos_mipi_phy_desc = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.exynos_mipi_video_phy = type { [4 x ptr], i32, [5 x %struct.video_phy_desc], %struct.spinlock }
%struct.video_phy_desc = type { ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@__initcall__kmod_phy_exynos_mipi_video__289_365_exynos_mipi_video_phy_driver_init6 = internal global ptr @exynos_mipi_video_phy_driver_init, section ".initcall6.init", align 4
@exynos_mipi_video_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @exynos_mipi_video_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos_mipi_video_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_exynos_mipi_video_phy_driver_exit = internal global ptr @exynos_mipi_video_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [83 x i8] c"phy_exynos_mipi_video.description=Samsung S5P/Exynos SoC MIPI CSI-2/DSI PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [73 x i8] c"phy_exynos_mipi_video.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [69 x i8] c"phy_exynos_mipi_video.file=drivers/phy/samsung/phy-exynos-mipi-video\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [37 x i8] c"phy_exynos_mipi_video.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"exynos-mipi-video-phy\00", [42 x i8] zeroinitializer }, align 32
@exynos_mipi_video_phy_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-mipi-video-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_mipi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-mipi-video-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_mipi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mipi-video-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_mipi_phy }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@exynos_mipi_video_phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->slock\00", [18 x i8] zeroinitializer }, align 32
@exynos_mipi_video_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr @exynos_mipi_video_phy_power_on, ptr @exynos_mipi_video_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@exynos_mipi_video_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to create PHY %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"exynos_mipi_video_phy_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/phy/samsung/phy-exynos-mipi-video.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exynos_mipi_video_phy_probe._entry_ptr = internal global ptr @exynos_mipi_video_phy_probe._entry, section ".printk_index", align 4
@s5pv210_mipi_phy = internal constant { %struct.mipi_phy_device_desc, [60 x i8] } { %struct.mipi_phy_device_desc { i32 4, i32 1, [4 x ptr] [ptr @.str.7, ptr null, ptr null, ptr null], [5 x %struct.exynos_mipi_phy_desc] [%struct.exynos_mipi_phy_desc { i32 1, i32 1, i32 1808, i32 0, i32 2, i32 1808, i32 0 }, %struct.exynos_mipi_phy_desc { i32 0, i32 1, i32 1808, i32 0, i32 4, i32 1808, i32 0 }, %struct.exynos_mipi_phy_desc { i32 3, i32 1, i32 1812, i32 0, i32 2, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc { i32 2, i32 1, i32 1812, i32 0, i32 4, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@exynos5420_mipi_phy = internal constant { %struct.mipi_phy_device_desc, [60 x i8] } { %struct.mipi_phy_device_desc { i32 5, i32 1, [4 x ptr] [ptr @.str.7, ptr null, ptr null, ptr null], [5 x %struct.exynos_mipi_phy_desc] [%struct.exynos_mipi_phy_desc { i32 1, i32 1, i32 1812, i32 0, i32 2, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc { i32 0, i32 1, i32 1812, i32 0, i32 4, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc { i32 3, i32 1, i32 1816, i32 0, i32 2, i32 1816, i32 0 }, %struct.exynos_mipi_phy_desc { i32 2, i32 1, i32 1816, i32 0, i32 4, i32 1816, i32 0 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1820, i32 0, i32 2, i32 1820, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@exynos5433_mipi_phy = internal constant { %struct.mipi_phy_device_desc, [60 x i8] } { %struct.mipi_phy_device_desc { i32 5, i32 4, [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [5 x %struct.exynos_mipi_phy_desc] [%struct.exynos_mipi_phy_desc { i32 1, i32 1, i32 1808, i32 0, i32 1, i32 4116, i32 2 }, %struct.exynos_mipi_phy_desc { i32 0, i32 1, i32 1808, i32 0, i32 1, i32 4108, i32 1 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1812, i32 0, i32 2, i32 4116, i32 2 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1812, i32 0, i32 2, i32 4108, i32 1 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1816, i32 0, i32 1, i32 4128, i32 3 }] }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"samsung,pmu-syscon\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,disp-sysreg\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,cam0-sysreg\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung,cam1-sysreg\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"exynos_mipi_video_phy_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 357, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 361, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [31 x i8] c"exynos_mipi_video_phy_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 342, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 318, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"exynos_mipi_video_phy_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 288, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 326, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"s5pv210_mipi_phy\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 55, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"exynos5420_mipi_phy\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 100, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"exynos5433_mipi_phy\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 158, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 57, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 161, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 162, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 163, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [47 x i8] c"../drivers/phy/samsung/phy-exynos-mipi-video.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 164, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_exynos_mipi_video_phy_driver_exit, ptr @__initcall__kmod_phy_exynos_mipi_video__289_365_exynos_mipi_video_phy_driver_init6, ptr @exynos_mipi_video_phy_driver_exit, ptr @exynos_mipi_video_phy_probe._entry, ptr @exynos_mipi_video_phy_probe._entry_ptr, ptr @exynos_mipi_video_phy_driver, ptr @.str, ptr @exynos_mipi_video_phy_of_match, ptr @exynos_mipi_video_phy_probe.__key, ptr @.str.1, ptr @exynos_mipi_video_phy_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @s5pv210_mipi_phy, ptr @exynos5420_mipi_phy, ptr @exynos5433_mipi_phy, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mipi_video_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mipi_video_phy_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mipi_video_phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mipi_video_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mipi_video_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_mipi_phy to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_mipi_phy to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_mipi_phy to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_mipi_video_phy_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos_mipi_video_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_mipi_video_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup45_crit_edge, label %for.cond.preheader

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

for.cond.preheader:                               ; preds = %if.end
  %num_regmaps = getelementptr inbounds %struct.mipi_phy_device_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %num_regmaps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_regmaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp92.not = icmp eq i32 %3, 0
  br i1 %cmp92.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.093, 1
  %4 = ptrtoint ptr %num_regmaps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_regmaps, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mipi_phy_device_desc, ptr %call, i32 0, i32 2, i32 %i.093
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef %7) #4
  %arrayidx7 = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 %i.093
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %arrayidx7, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %for.cond

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call6 to i32
  br label %cleanup45

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %num_phys16 = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %num_phys16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_phys16, align 4
  %slock = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_mipi_video_phy_probe.__key, i16 noundef signext 3) #4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %14 = ptrtoint ptr %num_phys16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2094.not = icmp eq i32 %15, 0
  br i1 %cmp2094.not, label %for.end.for.end42_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42

for.body21:                                       ; preds = %for.inc40.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %i.195 = phi i32 [ %inc41, %for.inc40.for.body21_crit_edge ], [ 0, %for.end.for.body21_crit_edge ]
  %call22 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull @exynos_mipi_video_phy_ops) #4
  %cmp.i89 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %cleanup.thread, label %for.inc40

cleanup.thread:                                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %i.195) #7
  %16 = ptrtoint ptr %call22 to i32
  br label %cleanup45

for.inc40:                                        ; preds = %for.body21
  %arrayidx30 = getelementptr %struct.exynos_mipi_video_phy, ptr %call.i, i32 0, i32 2, i32 %i.195
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %arrayidx30, align 4
  %index = getelementptr %struct.exynos_mipi_video_phy, ptr %call.i, i32 0, i32 2, i32 %i.195, i32 1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.195, ptr %index, align 4
  %arrayidx35 = getelementptr %struct.mipi_phy_device_desc, ptr %call, i32 0, i32 3, i32 %i.195
  %data = getelementptr %struct.exynos_mipi_video_phy, ptr %call.i, i32 0, i32 2, i32 %i.195, i32 2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx35, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx30, ptr %driver_data.i.i, align 4
  %inc41 = add nuw i32 %i.195, 1
  %21 = ptrtoint ptr %num_phys16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_phys16, align 4
  %cmp20 = icmp ult i32 %inc41, %22
  br i1 %cmp20, label %for.inc40.for.body21_crit_edge, label %for.inc40.for.end42_crit_edge

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end42

for.inc40.for.body21_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body21

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %for.end.for.end42_crit_edge
  %call43 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @exynos_mipi_video_phy_xlate) #4
  %cmp.i.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %call43 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %23, i32 0
  br label %cleanup45

cleanup45:                                        ; preds = %for.end42, %cleanup.thread, %if.then11, %if.end.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.2 = phi i32 [ %9, %if.then11 ], [ %spec.select.i, %for.end42 ], [ -19, %entry.cleanup45_crit_edge ], [ -12, %if.end.cleanup45_crit_edge ], [ %16, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @exynos_mipi_video_phy_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args1 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args1, align 4
  %num_phys = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !54

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 282, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx26 = getelementptr %struct.exynos_mipi_video_phy, ptr %1, i32 0, i32 2, i32 %3
  %6 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %7, %if.end23 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.video_phy_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -12
  %idx.neg = add i32 %.neg, -20
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %data = getelementptr inbounds %struct.video_phy_desc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %enable_map1.i = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable_map1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_map1.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr %add.ptr, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %resetn_map3.i = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %resetn_map3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resetn_map3.i, align 4
  %arrayidx4.i = getelementptr [4 x ptr], ptr %add.ptr, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %slock.i = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %add.ptr, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock.i) #4
  %resetn_reg.i = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %resetn_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resetn_reg.i, align 4
  %resetn_val.i = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %resetn_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resetn_val.i, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %enable_reg19.i = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %enable_reg19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enable_reg19.i, align 4
  %enable_val20.i = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %enable_val20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_val20.i, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %19, i32 noundef %21, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @_raw_spin_unlock(ptr noundef %slock.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.video_phy_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg = mul i32 %3, -12
  %idx.neg = add i32 %.neg, -20
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %data = getelementptr inbounds %struct.video_phy_desc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call fastcc void @__set_phy_state(ptr noundef %5, ptr noundef %add.ptr, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_phy_state(ptr nocapture noundef readonly %data, ptr noundef %state, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_map1 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %enable_map1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_map1, align 4
  %arrayidx = getelementptr [4 x ptr], ptr %state, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %resetn_map3 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %resetn_map3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resetn_map3, align 4
  %arrayidx4 = getelementptr [4 x ptr], ptr %state, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %slock = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %state, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then10.critedge

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr %struct.exynos_mipi_video_phy, ptr %state, i32 0, i32 2, i32 %9
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %power_count = getelementptr inbounds %struct.phy, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %power_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  %enable_reg = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_reg, align 4
  %enable_val = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %enable_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_val, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %15, i32 noundef %17, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.else

if.then10.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %resetn_reg = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %resetn_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resetn_reg, align 4
  %resetn_val = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %resetn_val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resetn_val, align 4
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %19, i32 noundef %21, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %enable_reg19 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %enable_reg19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enable_reg19, align 4
  %enable_val20 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %enable_val20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enable_val20, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %23, i32 noundef %25, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end23

if.else:                                          ; preds = %if.then, %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %resetn_reg13 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 5
  %26 = ptrtoint ptr %resetn_reg13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resetn_reg13, align 4
  %resetn_val14 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %resetn_val14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resetn_val14, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %27, i32 noundef %29, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then10.critedge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_phy_exynos_mipi_video__289_365_exynos_mipi_video_phy_driver_init6, !1, !"__initcall__kmod_phy_exynos_mipi_video__289_365_exynos_mipi_video_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 365, i32 1}
!2 = !{ptr @__exitcall_exynos_mipi_video_phy_driver_exit, !1, !"__exitcall_exynos_mipi_video_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description290, !4, !"__UNIQUE_ID_description290", i1 false, i1 false}
!4 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 367, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 368, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 369, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 361, i32 12}
!12 = !{ptr @exynos_mipi_video_phy_driver, !13, !"exynos_mipi_video_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 357, i32 31}
!14 = !{ptr @exynos_mipi_video_phy_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 318, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 326, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @exynos_mipi_video_phy_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @exynos_mipi_video_phy_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @exynos_mipi_video_phy_ops, !26, !"exynos_mipi_video_phy_ops", i1 false, i1 false}
!26 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 288, i32 29}
!27 = !{ptr @exynos_mipi_video_phy_of_match, !28, !"exynos_mipi_video_phy_of_match", i1 false, i1 false}
!28 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 342, i32 34}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 57, i32 19}
!31 = !{ptr @s5pv210_mipi_phy, !32, !"s5pv210_mipi_phy", i1 false, i1 false}
!32 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 55, i32 42}
!33 = !{ptr @exynos5420_mipi_phy, !34, !"exynos5420_mipi_phy", i1 false, i1 false}
!34 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 100, i32 42}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 161, i32 3}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 162, i32 3}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 163, i32 3}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 164, i32 3}
!43 = !{ptr @exynos5433_mipi_phy, !44, !"exynos5433_mipi_phy", i1 false, i1 false}
!44 = !{!"../drivers/phy/samsung/phy-exynos-mipi-video.c", i32 158, i32 42}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
