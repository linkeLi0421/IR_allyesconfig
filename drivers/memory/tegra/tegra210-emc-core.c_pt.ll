; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra210-emc-core.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra210-emc-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra210_emc_table_register_offsets = type { [221 x i16], [138 x i16], [33 x i16], [24 x i16], [8 x %struct.tegra210_emc_per_channel_regs], [10 x %struct.tegra210_emc_per_channel_regs], [4 x %struct.tegra210_emc_per_channel_regs] }
%struct.tegra210_emc_per_channel_regs = type { i16, i16 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra210_emc_sequence = type { i8, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra210_emc = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.spinlock, ptr, [2 x ptr], i32, i32, i32, ptr, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.atomic_t, i64, i32, i32, %struct.anon.70, %struct.tegra210_clk_emc_provider }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.70 = type { ptr, i32, i32, i32 }
%struct.tegra210_clk_emc_provider = type { ptr, ptr, ptr, i32, ptr }
%struct.tegra210_clk_emc_config = type { i32, i8, i32, i32, i8 }
%struct.tegra210_emc_timing = type { i32, [60 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [221 x i32], [8 x i32], [221 x i32], [221 x i32], [221 x i32], [138 x i32], [10 x i32], [4 x i32], [5 x i32], [20 x i32], [12 x i32], [33 x i32], [24 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.69 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.69 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/memory/tegra/tegra210-emc-core.c\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timed out waiting for MRR %u (ch=%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra210_emc_do_clock_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clock change completion error: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra210_emc_do_clock_change\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_do_clock_change._entry_ptr = internal global ptr @tegra210_emc_do_clock_change._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra210_emc_timing_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 916, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timing update error: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra210_emc_timing_update\00", [37 x i8] zeroinitializer }, align 32
@tegra210_emc_timing_update._entry_ptr = internal global ptr @tegra210_emc_timing_update._entry, section ".printk_index", align 4
@tegra210_emc_adjust_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set refresh: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra210_emc_adjust_timing\00", [37 x i8] zeroinitializer }, align 32
@tegra210_emc_adjust_timing._entry_ptr = internal global ptr @tegra210_emc_adjust_timing._entry, section ".printk_index", align 4
@__initcall__kmod_tegra210_emc__237_2072_tegra210_emc_driver_init6 = internal global ptr @tegra210_emc_driver_init, section ".initcall6.init", align 4
@tegra210_emc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra210_emc_probe, ptr @tegra210_emc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra210_emc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_emc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra210_emc_driver_exit = internal global ptr @tegra210_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [56 x i8] c"tegra210_emc.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [51 x i8] c"tegra210_emc.author=Joseph Lo <josephl@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [52 x i8] c"tegra210_emc.description=NVIDIA Tegra210 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [52 x i8] c"tegra210_emc.file=drivers/memory/tegra/tegra210-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [28 x i8] c"tegra210_emc.license=GPL v2\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra210-emc\00", [19 x i8] zeroinitializer }, align 32
@tegra210_emc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra210_emc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra210_emc_suspend, ptr @tegra210_emc_resume, ptr @tegra210_emc_suspend, ptr @tegra210_emc_resume, ptr @tegra210_emc_suspend, ptr @tegra210_emc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@tegra210_emc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&emc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nominal\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 1865, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get nominal EMC table: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra210_emc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry_ptr = internal global ptr @tegra210_emc_probe._entry, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"derated\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str, i32 1871, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get derated EMC table: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry_ptr.20 = internal global ptr @tegra210_emc_probe._entry.18, section ".printk_index", align 4
@tegra210_emc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str, i32 1905, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no EMC table entry found for %lu kHz\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry_ptr.23 = internal global ptr @tegra210_emc_probe._entry.21, section ".printk_index", align 4
@tegra210_emc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str, i32 1923, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sequence %u not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry_ptr.26 = internal global ptr @tegra210_emc_probe._entry.24, section ".printk_index", align 4
@tegra210_emc_table_register_offsets = internal constant { %struct.tegra210_emc_table_register_offsets, [232 x i8] } { %struct.tegra210_emc_table_register_offsets { [221 x i16] [i16 44, i16 48, i16 1424, i16 1408, i16 192, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 324, i16 172, i16 1472, i16 76, i16 80, i16 84, i16 88, i16 184, i16 1248, i16 92, i16 1176, i16 1172, i16 720, i16 1168, i16 1164, i16 96, i16 1384, i16 1128, i16 1132, i16 332, i16 1188, i16 336, i16 340, i16 1388, i16 100, i16 104, i16 108, i16 716, i16 728, i16 724, i16 112, i16 116, i16 988, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 284, i16 280, i16 180, i16 144, i16 996, i16 148, i16 344, i16 348, i16 152, i16 156, i16 160, i16 164, i16 1192, i16 168, i16 176, i16 260, i16 1412, i16 700, i16 704, i16 3316, i16 1372, i16 1364, i16 1552, i16 1556, i16 1584, i16 1588, i16 1196, i16 1648, i16 1652, i16 1664, i16 1668, i16 1672, i16 1676, i16 1680, i16 1684, i16 1696, i16 1700, i16 1704, i16 1708, i16 1712, i16 1716, i16 3072, i16 3076, i16 3080, i16 3084, i16 3088, i16 3104, i16 3108, i16 3112, i16 2060, i16 2076, i16 2092, i16 2108, i16 2124, i16 2140, i16 2156, i16 2172, i16 2188, i16 2204, i16 2220, i16 2236, i16 2316, i16 2332, i16 2348, i16 2364, i16 2380, i16 2396, i16 2412, i16 2428, i16 2432, i16 2436, i16 2440, i16 2444, i16 2448, i16 2452, i16 2456, i16 2460, i16 2464, i16 2468, i16 2472, i16 2476, i16 2480, i16 2484, i16 2488, i16 2492, i16 1152, i16 784, i16 788, i16 256, i16 736, i16 740, i16 200, i16 196, i16 1124, i16 1508, i16 1512, i16 3192, i16 3140, i16 12, i16 1376, i16 992, i16 1380, i16 1428, i16 1432, i16 1444, i16 1448, i16 3136, i16 3156, i16 3152, i16 3164, i16 3160, i16 3168, i16 3172, i16 3176, i16 3124, i16 3128, i16 3312, i16 816, i16 792, i16 820, i16 796, i16 3132, i16 1180, i16 1824, i16 1828, i16 1832, i16 1836, i16 1840, i16 1844, i16 1520, i16 1856, i16 1860, i16 1864, i16 1868, i16 1872, i16 1876, i16 1888, i16 1904, i16 1908, i16 1912, i16 1920, i16 1924, i16 1928, i16 948, i16 1120, i16 956, i16 964, i16 1012, i16 1016, i16 1220, i16 1020, i16 1024, i16 3588, i16 3652, i16 3692, i16 3632, i16 3636, i16 3640, i16 3644, i16 3596, i16 3600, i16 3604, i16 3792, i16 3620, i16 3624, i16 3628, i16 3608, i16 3612, i16 3616, i16 3676, i16 1232], [138 x i16] [i16 1728, i16 1732, i16 1736, i16 1740, i16 1760, i16 1764, i16 1768, i16 1772, i16 2560, i16 2564, i16 2568, i16 2576, i16 2580, i16 2584, i16 2592, i16 2596, i16 2600, i16 2608, i16 2612, i16 2616, i16 2624, i16 2628, i16 2632, i16 2640, i16 2644, i16 2648, i16 2656, i16 2660, i16 2664, i16 2672, i16 2676, i16 2680, i16 2816, i16 2820, i16 2824, i16 2832, i16 2836, i16 2840, i16 2848, i16 2852, i16 2856, i16 2864, i16 2868, i16 2872, i16 2880, i16 2884, i16 2888, i16 2896, i16 2900, i16 2904, i16 2912, i16 2916, i16 2920, i16 2928, i16 2932, i16 2936, i16 3056, i16 3060, i16 3040, i16 3044, i16 1600, i16 1604, i16 1608, i16 1612, i16 1616, i16 1620, i16 1632, i16 1636, i16 1640, i16 1644, i16 2048, i16 2052, i16 2056, i16 2064, i16 2068, i16 2072, i16 2080, i16 2084, i16 2088, i16 2096, i16 2100, i16 2104, i16 2112, i16 2116, i16 2120, i16 2128, i16 2132, i16 2136, i16 2144, i16 2148, i16 2152, i16 2160, i16 2164, i16 2168, i16 2176, i16 2180, i16 2184, i16 2192, i16 2196, i16 2200, i16 2208, i16 2212, i16 2216, i16 2224, i16 2228, i16 2232, i16 2304, i16 2308, i16 2312, i16 2320, i16 2324, i16 2328, i16 2336, i16 2340, i16 2344, i16 2352, i16 2356, i16 2360, i16 2368, i16 2372, i16 2376, i16 2384, i16 2388, i16 2392, i16 2400, i16 2404, i16 2408, i16 2416, i16 2420, i16 2424, i16 1536, i16 1540, i16 1544, i16 1548, i16 1568, i16 1572, i16 1576, i16 1580], [33 x i16] [i16 144, i16 148, i16 1776, i16 1780, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172, i16 176, i16 180, i16 184, i16 188, i16 192, i16 1732, i16 196, i16 1728, i16 208, i16 212, i16 216, i16 220, i16 200, i16 224, i16 3020, i16 3024, i16 3028, i16 3032, i16 3036, i16 3040, i16 3044, i16 3048, i16 3052], [24 x i16] [i16 1100, i16 1292, i16 2400, i16 892, i16 896, i16 912, i16 952, i16 956, i16 960, i16 964, i16 836, i16 840, i16 800, i16 784, i16 788, i16 740, i16 940, i16 1000, i16 808, i16 984, i16 916, i16 920, i16 880, i16 884], [8 x %struct.tegra210_emc_per_channel_regs] [%struct.tegra210_emc_per_channel_regs { i16 0, i16 1204 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1204 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1208 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1208 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1212 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1212 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1216 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1216 }], [10 x %struct.tegra210_emc_per_channel_regs] [%struct.tegra210_emc_per_channel_regs { i16 0, i16 1436 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1440 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1416 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1416 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1420 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1420 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1452 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1464 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 1468 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 1476 }], [4 x %struct.tegra210_emc_per_channel_regs] [%struct.tegra210_emc_per_channel_regs { i16 0, i16 3796 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 3796 }, %struct.tegra210_emc_per_channel_regs { i16 0, i16 3800 }, %struct.tegra210_emc_per_channel_regs { i16 1, i16 3800 }] }, [232 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str, i32 1964, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to attach to EMC clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry_ptr.29 = internal global ptr @tegra210_emc_probe._entry.27, section ".printk_index", align 4
@tegra210_emc_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&emc->refresh_timer)\00", [42 x i8] zeroinitializer }, align 32
@tegra210_emc_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&emc->training)\00", [47 x i8] zeroinitializer }, align 32
@tegra210_emc_cd_ops = internal global { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @tegra210_emc_cd_max_state, ptr @tegra210_emc_cd_get_state, ptr @tegra210_emc_cd_set_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str, i32 1986, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register cooling device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra210_emc_probe._entry_ptr.36 = internal global ptr @tegra210_emc_probe._entry.34, section ".printk_index", align 4
@tegra210_emc_r21021 = external dso_local constant %struct.tegra210_emc_sequence, align 4
@tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str, ptr @.str.39, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra210_emc\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra210_emc_poll_refresh\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"switching to nominal refresh...\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str, ptr @.str.40, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"switching to 2x refresh...\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str, ptr @.str.41, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"switching to 4x refresh...\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str, ptr @.str.42, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"switching to throttle refresh...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid DRAM temperature state %u\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra210_emc_get_temperature.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.44, ptr @.str, ptr @.str.45, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra210_emc_get_temperature\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sensor reading changed for device %u: %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra210_emc_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 1757, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set rate range [%lu-%lu] for %pC\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra210_emc_debugfs_init\00", [38 x i8] zeroinitializer }, align 32
@tegra210_emc_debugfs_init._entry_ptr = internal global ptr @tegra210_emc_debugfs_init._entry, section ".printk_index", align 4
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"available_rates\00", [16 x i8] zeroinitializer }, align 32
@tegra210_emc_debug_available_rates_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra210_emc_debug_available_rates_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_debug_min_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra210_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_debug_max_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra210_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@tegra210_emc_debug_temperature_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra210_emc_debug_temperature_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%u\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@tegra210_emc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str, i32 2019, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to acquire clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra210_emc_suspend\00", [43 x i8] zeroinitializer }, align 32
@tegra210_emc_suspend._entry_ptr = internal global ptr @tegra210_emc_suspend._entry, section ".printk_index", align 4
@tegra210_emc_suspend.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.58, ptr @.str, ptr @.str.59, i8 1, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"suspending at %lu Hz\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra210_emc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.60, ptr @.str, i32 2040, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra210_emc_resume\00", [44 x i8] zeroinitializer }, align 32
@tegra210_emc_resume._entry_ptr = internal global ptr @tegra210_emc_resume._entry, section ".printk_index", align 4
@tegra210_emc_resume.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.60, ptr @.str, ptr @.str.61, i8 1, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resuming at %lu Hz\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [12 x i64] [i64 10, i64 32, i64 1416, i64 1420, i64 1600, i64 1604, i64 1608, i64 1612, i64 1632, i64 1636, i64 1640, i64 1644]
@__sancov_gen_cov_switch_values.63 = internal global [11 x i64] [i64 9, i64 32, i64 1420, i64 1600, i64 1604, i64 1608, i64 1612, i64 1632, i64 1636, i64 1640, i64 1644]
@__sancov_gen_cov_switch_values.64 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 825, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 852, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 916, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1517, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"tegra210_emc_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2062, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2064, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"tegra210_emc_of_match\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2056, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"tegra210_emc_pm_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2052, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1836, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1841, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1863, i32 58 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1865, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1869, i32 58 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1871, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1904, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1922, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [36 x i8] c"tegra210_emc_table_register_offsets\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 95, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1964, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1972, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1977, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"tegra210_emc_cd_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 714, i32 42 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1985, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 631, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 636, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 641, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 646, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 651, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 601, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1755, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1763, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant [40 x i8] c"tegra210_emc_debug_available_rates_fops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1632, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1765, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant [33 x i8] c"tegra210_emc_debug_min_rate_fops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1767, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant [33 x i8] c"tegra210_emc_debug_max_rate_fops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1695, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1769, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant [36 x i8] c"tegra210_emc_debug_temperature_fops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1726, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1612, i32 23 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1616, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1617, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1620, i32 14 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1665, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2019, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2028, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2040, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private constant [44 x i8] c"../drivers/memory/tegra/tegra210-emc-core.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 2047, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_tegra210_emc_driver_exit, ptr @__initcall__kmod_tegra210_emc__237_2072_tegra210_emc_driver_init6, ptr @tegra210_emc_adjust_timing._entry, ptr @tegra210_emc_adjust_timing._entry_ptr, ptr @tegra210_emc_debugfs_init._entry, ptr @tegra210_emc_debugfs_init._entry_ptr, ptr @tegra210_emc_do_clock_change._entry, ptr @tegra210_emc_do_clock_change._entry_ptr, ptr @tegra210_emc_driver_exit, ptr @tegra210_emc_probe._entry, ptr @tegra210_emc_probe._entry.18, ptr @tegra210_emc_probe._entry.21, ptr @tegra210_emc_probe._entry.24, ptr @tegra210_emc_probe._entry.27, ptr @tegra210_emc_probe._entry.34, ptr @tegra210_emc_probe._entry_ptr, ptr @tegra210_emc_probe._entry_ptr.20, ptr @tegra210_emc_probe._entry_ptr.23, ptr @tegra210_emc_probe._entry_ptr.26, ptr @tegra210_emc_probe._entry_ptr.29, ptr @tegra210_emc_probe._entry_ptr.36, ptr @tegra210_emc_resume._entry, ptr @tegra210_emc_resume._entry_ptr, ptr @tegra210_emc_suspend._entry, ptr @tegra210_emc_suspend._entry_ptr, ptr @tegra210_emc_timing_update._entry, ptr @tegra210_emc_timing_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tegra210_emc_driver, ptr @.str.10, ptr @tegra210_emc_of_match, ptr @tegra210_emc_pm_ops, ptr @.str.11, ptr @tegra210_emc_probe.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @tegra210_emc_table_register_offsets, ptr @.str.28, ptr @tegra210_emc_probe.__key.30, ptr @.str.31, ptr @tegra210_emc_probe.__key.32, ptr @.str.33, ptr @tegra210_emc_cd_ops, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @tegra210_emc_debug_available_rates_fops, ptr @.str.49, ptr @tegra210_emc_debug_min_rate_fops, ptr @.str.50, ptr @tegra210_emc_debug_max_rate_fops, ptr @.str.51, ptr @tegra210_emc_debug_temperature_fops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_do_clock_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_timing_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_adjust_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_table_register_offsets to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_cd_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_debug_available_rates_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_debug_min_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_debug_max_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_debug_temperature_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_set_refresh(ptr noundef %emc, i32 noundef %refresh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dram_type = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 14
  %0 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dram_type, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %last = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 15
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %last, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %refresh)
  %cmp3 = icmp ugt i32 %refresh, 3
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %refresh6 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 19
  %4 = ptrtoint ptr %refresh6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refresh6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %refresh)
  %cmp7 = icmp eq i32 %5, %refresh
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %do.body10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body10:                                        ; preds = %if.end5
  %lock = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 9
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %refresh)
  %cmp15 = icmp eq i32 %refresh, 3
  br i1 %cmp15, label %land.lhs.true17, label %do.body10.if.else_crit_edge

do.body10.if.else_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true17:                                  ; preds = %do.body10
  %derated = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 4
  %6 = ptrtoint ptr %derated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %derated, align 8
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %land.lhs.true17.if.else_crit_edge, label %land.lhs.true17.if.end21_crit_edge

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %do.body10.if.else_crit_edge
  %nominal = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 3
  %8 = ptrtoint ptr %nominal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nominal, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %land.lhs.true17.if.end21_crit_edge
  %timings.0 = phi ptr [ %9, %if.else ], [ %7, %land.lhs.true17.if.end21_crit_edge ]
  %timings22 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 5
  %10 = ptrtoint ptr %timings22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings22, align 4
  %cmp23.not = icmp eq ptr %timings.0, %11
  %12 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %last, align 8
  br i1 %cmp23.not, label %if.else30, label %if.then25

if.then25:                                        ; preds = %if.end21
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 4928
  %configs = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 28, i32 2
  %14 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %configs, align 8
  %value = getelementptr %struct.tegra210_clk_emc_config, ptr %15, i32 %sub.ptr.div, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value, align 4
  %or = or i32 %17, 134217728
  %arrayidx28 = getelementptr %struct.tegra210_emc_timing, ptr %timings.0, i32 %sub.ptr.div
  %next = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 16
  %18 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx28, ptr %next, align 4
  %19 = ptrtoint ptr %timings22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %timings.0, ptr %timings22, align 4
  %sequence.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 8
  %20 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sequence.i, align 8
  %set_clock.i = getelementptr inbounds %struct.tegra210_emc_sequence, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %set_clock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_clock.i, align 4
  tail call void %23(ptr noundef %emc, i32 noundef %or) #12
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next, align 4
  %periodic_training.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %periodic_training.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %periodic_training.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %training_interval.i.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 17
  %29 = ptrtoint ptr %training_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %training_interval.i.i, align 8
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #12
  %training.i.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 18
  %add.i.i = add i32 %call2.i.i.i, %28
  %call1.i.i = tail call i32 @mod_timer(ptr noundef %training.i.i, i32 noundef %add.i.i) #12
  br label %if.end36

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %training.i5.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 18
  %call.i.i = tail call i32 @del_timer(ptr noundef %training.i5.i) #12
  br label %if.end36

if.else30:                                        ; preds = %if.end21
  tail call void @tegra210_emc_adjust_timing(ptr noundef %emc, ptr noundef %13)
  %regs.i.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %31 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #12, !srcloc !161
  %num_channels.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %33 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp8.not.i = icmp eq i32 %34, 0
  br i1 %cmp8.not.i, label %if.else30.tegra210_emc_timing_update.exit_crit_edge, label %if.else30.for.body.i_crit_edge

if.else30.for.body.i_crit_edge:                   ; preds = %if.else30
  br label %for.body.i

if.else30.tegra210_emc_timing_update.exit_crit_edge: ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_timing_update.exit

for.body.i:                                       ; preds = %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge, %if.else30.for.body.i_crit_edge
  %err.010.i = phi i32 [ %or.i, %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge ], [ 0, %if.else30.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ %inc.i, %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge ], [ 0, %if.else30.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.09.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.07.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 692
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !162
  %38 = and i32 %37, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.i = icmp eq i32 %38, 0
  br i1 %tobool.i.i, label %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit.i

tegra210_emc_wait_for_update.exit.i:              ; preds = %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge ], [ -110, %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i.i, %err.010.i
  %inc.i = add nuw i32 %i.09.i, 1
  %40 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge, label %for.end.i

tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %tegra210_emc_wait_for_update.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i66 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i66, label %for.end.i.tegra210_emc_timing_update.exit_crit_edge, label %do.end.i

for.end.i.tegra210_emc_timing_update.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_timing_update.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.6, i32 noundef %or.i) #15
  br label %tegra210_emc_timing_update.exit

tegra210_emc_timing_update.exit:                  ; preds = %do.end.i, %for.end.i.tegra210_emc_timing_update.exit_crit_edge, %if.else30.tegra210_emc_timing_update.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %refresh)
  %cmp32.not = icmp eq i32 %refresh, 0
  br i1 %cmp32.not, label %tegra210_emc_timing_update.exit.if.end36_crit_edge, label %if.then34

tegra210_emc_timing_update.exit.if.end36_crit_edge: ; preds = %tegra210_emc_timing_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then34:                                        ; preds = %tegra210_emc_timing_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %45, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !161
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %tegra210_emc_timing_update.exit.if.end36_crit_edge, %if.else.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_adjust_timing(ptr nocapture noundef readonly %emc, ptr nocapture noundef readonly %timing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 25, i32 150
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 25, i32 43
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 25, i32 41
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %refresh = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 19
  %6 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refresh, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge66
    i32 1, label %sw.bb5
    i32 2, label %sw.bb15
  ]

entry.sw.epilog_crit_edge66:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %5, -65536
  %and6 = shl i32 %5, 1
  %mul = and i32 %and6, 131070
  %or = or i32 %mul, %and
  %and7 = and i32 %3, -65536
  %and8 = shl i32 %3, 1
  %mul9 = and i32 %and8, 131070
  %or10 = or i32 %mul9, %and7
  %and11 = and i32 %1, -65536
  %and12 = shl i32 %1, 1
  %mul13 = and i32 %and12, 131070
  %or14 = or i32 %mul13, %and11
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and16 = and i32 %5, -65536
  %and17 = shl i32 %5, 2
  %mul18 = and i32 %and17, 262140
  %or19 = or i32 %mul18, %and16
  %and20 = and i32 %3, -65536
  %and21 = shl i32 %3, 2
  %mul22 = and i32 %and21, 262140
  %or23 = or i32 %mul22, %and20
  %and24 = and i32 %1, -65536
  %and25 = shl i32 %1, 2
  %mul26 = and i32 %and25, 262140
  %or27 = or i32 %mul26, %and24
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef %7) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb5, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge66
  %dsr_cntrl.0 = phi i32 [ %or27, %sw.bb15 ], [ %or14, %sw.bb5 ], [ %1, %entry.sw.epilog_crit_edge ], [ %1, %entry.sw.epilog_crit_edge66 ]
  %pre_ref.0 = phi i32 [ %or23, %sw.bb15 ], [ %or10, %sw.bb5 ], [ %3, %entry.sw.epilog_crit_edge ], [ %3, %entry.sw.epilog_crit_edge66 ]
  %ref.0 = phi i32 [ %or19, %sw.bb15 ], [ %or, %sw.bb5 ], [ %5, %entry.sw.epilog_crit_edge ], [ %5, %entry.sw.epilog_crit_edge66 ]
  %offsets = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %11 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %offsets, align 4
  %arrayidx29 = getelementptr [221 x i16], ptr %12, i32 0, i32 41
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx29, align 2
  %conv = zext i16 %14 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %ref.0) #12
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #12, !srcloc !161
  %18 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %offsets, align 4
  %arrayidx32 = getelementptr [221 x i16], ptr %19, i32 0, i32 43
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %21 to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %pre_ref.0) #12
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %24, i32 %conv33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %22) #12, !srcloc !161
  %25 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %offsets, align 4
  %arrayidx36 = getelementptr [221 x i16], ptr %26, i32 0, i32 150
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %28 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %dsr_cntrl.0) #12
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %31, i32 %conv37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %29) #12, !srcloc !161
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_timing_update(ptr nocapture noundef readonly %emc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !161
  %num_channels = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body:                                         ; preds = %tegra210_emc_wait_for_update.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %err.010 = phi i32 [ %or, %tegra210_emc_wait_for_update.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.09 = phi i32 [ %inc, %tegra210_emc_wait_for_update.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.09
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.07.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 692
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !162
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i = icmp eq i32 %7, 0
  br i1 %tobool.i, label %for.body.i.tegra210_emc_wait_for_update.exit_crit_edge, label %if.end.i

for.body.i.tegra210_emc_wait_for_update.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.tegra210_emc_wait_for_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit

tegra210_emc_wait_for_update.exit:                ; preds = %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge, %for.body.i.tegra210_emc_wait_for_update.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.i.tegra210_emc_wait_for_update.exit_crit_edge ], [ -110, %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge ]
  %or = or i32 %retval.0.i, %err.010
  %inc = add nuw i32 %i.09, 1
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %tegra210_emc_wait_for_update.exit.for.body_crit_edge, label %for.end

tegra210_emc_wait_for_update.exit.for.body_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %tegra210_emc_wait_for_update.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.end

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %or) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_mrr_read(ptr nocapture noundef readonly %emc, i32 noundef %chip, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %chip, 30
  %and1 = shl i32 %address, 16
  %shl2 = and i32 %and1, 16711680
  %or = or i32 %shl2, %shl
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #12, !srcloc !161
  %num_channels = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp51.not = icmp eq i32 %4, 0
  br i1 %cmp51.not, label %entry.for.end32_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

for.cond22.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2454.not = icmp eq i32 %11, 0
  br i1 %cmp2454.not, label %for.cond22.preheader.for.end32_crit_edge, label %for.cond22.preheader.for.body25_crit_edge

for.cond22.preheader.for.body25_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body25

for.cond22.preheader.for.end32_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.052
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.07.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 692
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !162
  %8 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 827, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %address, i32 noundef %i.052) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.i.if.end_crit_edge
  %inc = add nuw i32 %i.052, 1
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.cond22.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.cond22.preheader.for.body25_crit_edge
  %i.156 = phi i32 [ %inc31, %for.body25.for.body25_crit_edge ], [ 0, %for.cond22.preheader.for.body25_crit_edge ]
  %ret.055 = phi i32 [ %or29, %for.body25.for.body25_crit_edge ], [ 0, %for.cond22.preheader.for.body25_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.156
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %13, i32 236
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #12, !srcloc !162
  %15 = and i32 %14, -65536
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %shl28 = shl i32 %ret.055, 16
  %or29 = or i32 %16, %shl28
  %inc31 = add nuw i32 %i.156, 1
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  %cmp24 = icmp ult i32 %inc31, %18
  br i1 %cmp24, label %for.body25.for.body25_crit_edge, label %for.body25.for.end32_crit_edge

for.body25.for.end32_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end32

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25

for.end32:                                        ; preds = %for.body25.for.end32_crit_edge, %for.cond22.preheader.for.end32_crit_edge, %entry.for.end32_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %for.cond22.preheader.for.end32_crit_edge ], [ 0, %entry.for.end32_crit_edge ], [ %or29, %for.body25.for.end32_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_wait_for_update(ptr nocapture noundef readonly %emc, i32 noundef %channel, i32 noundef %offset, i32 noundef %bit_mask, i1 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %channel
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %and = and i32 %3, %bit_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp eq i32 %and, 0
  %cmp3 = xor i1 %tobool, %state
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #12
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_do_clock_change(ptr nocapture noundef readonly %emc, i32 noundef %clksrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emc, align 8
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !162
  %regs.i7 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %5 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i7, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !162
  %arrayidx.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !162
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %if.end.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.end, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef -110) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.i.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra210_emc_find_timing(ptr nocapture noundef readonly %emc, i32 noundef %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 6
  %0 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 5
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rate1 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 %i.012, i32 2
  %4 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate1, align 4
  %mul = mul i32 %5, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp2 = icmp eq i32 %mul, %rate
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 %i.012
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_set_shadow_bypass(ptr nocapture noundef readonly %emc, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %3, 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %4) #12, !srcloc !161
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %3, -3
  %7 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %7) #12, !srcloc !161
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tegra210_emc_get_dll_state(ptr nocapture noundef readonly %next) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %emc_emrs = getelementptr inbounds %struct.tegra210_emc_timing, ptr %next, i32 0, i32 45
  %0 = ptrtoint ptr %emc_emrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %emc_emrs, align 4
  %and = and i32 %1, 1
  %2 = xor i32 %and, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tegra210_emc_actual_osc_clocks(i32 noundef %in) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %in)
  %cmp = icmp ult i32 %in, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl nuw nsw i32 %in, 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %in)
  %cmp1 = icmp ult i32 %in, 128
  br i1 %cmp1, label %if.else.return_crit_edge, label %if.else3

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %in)
  %cmp4 = icmp ult i32 %in, 192
  %. = select i1 %cmp4, i32 4096, i32 8192
  br label %return

return:                                           ; preds = %if.else3, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %mul, %if.then ], [ 2048, %if.else.return_crit_edge ], [ %., %if.else3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_start_periodic_compensation(ptr nocapture noundef readonly %emc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1258291200) #12, !srcloc !161
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 296
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #12, !srcloc !162
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_compensate(ptr noundef readonly %next, i32 noundef %offset) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rate1 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %next, i32 0, i32 2
  %0 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate1, align 4
  %div = udiv i32 %1, 1000
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 60
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, 1023
  %arrayidx2 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 31, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %and3 = shl i32 %5, 6
  %mul = and i32 %and3, 448
  %add = add nuw nsw i32 %mul, %and
  %and7 = lshr i32 %3, 16
  %shr8 = and i32 %and7, 1023
  %6 = shl i32 %5, 3
  %mul13 = and i32 %6, 448
  %add14 = add nuw nsw i32 %mul13, %shr8
  %arrayidx17 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 61
  %7 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %8, 1023
  %shr23 = and i32 %5, 448
  %add25 = add nuw nsw i32 %and18, %shr23
  %and29 = lshr i32 %8, 16
  %shr30 = and i32 %and29, 1023
  %9 = lshr i32 %5, 3
  %mul35 = and i32 %9, 448
  %add36 = add nuw nsw i32 %shr30, %mul35
  %arrayidx39 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 62
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx39, align 4
  %and40 = and i32 %11, 1023
  %arrayidx43 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 31, i32 3
  %12 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx43, align 4
  %14 = lshr i32 %13, 6
  %mul46 = and i32 %14, 448
  %add47 = add nuw nsw i32 %mul46, %and40
  %and51 = lshr i32 %11, 16
  %shr52 = and i32 %and51, 1023
  %15 = lshr i32 %13, 9
  %mul57 = and i32 %15, 448
  %add58 = add nuw nsw i32 %mul57, %shr52
  %arrayidx61 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 63
  %16 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx61, align 4
  %and62 = and i32 %17, 1023
  %18 = lshr i32 %13, 12
  %mul68 = and i32 %18, 448
  %add69 = add nuw nsw i32 %and62, %mul68
  %and73 = lshr i32 %17, 16
  %shr74 = and i32 %and73, 1023
  %19 = lshr i32 %13, 15
  %mul79 = and i32 %19, 448
  %add80 = add nuw nsw i32 %shr74, %mul79
  %arrayidx83 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 66
  %20 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx83, align 4
  %and84 = and i32 %21, 1023
  %arrayidx87 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 31, i32 4
  %22 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx87, align 4
  %and88 = shl i32 %23, 6
  %mul90 = and i32 %and88, 448
  %add91 = add nuw nsw i32 %mul90, %and84
  %and95 = lshr i32 %21, 16
  %shr96 = and i32 %and95, 1023
  %24 = shl i32 %23, 3
  %mul101 = and i32 %24, 448
  %add102 = add nuw nsw i32 %mul101, %shr96
  %arrayidx105 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 67
  %25 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx105, align 4
  %and106 = and i32 %26, 1023
  %shr111 = and i32 %23, 448
  %add113 = add nuw nsw i32 %and106, %shr111
  %and117 = lshr i32 %26, 16
  %shr118 = and i32 %and117, 1023
  %27 = lshr i32 %23, 3
  %mul123 = and i32 %27, 448
  %add124 = add nuw nsw i32 %shr118, %mul123
  %arrayidx127 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 68
  %28 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx127, align 4
  %and128 = and i32 %29, 1023
  %arrayidx131 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 31, i32 5
  %30 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx131, align 4
  %32 = lshr i32 %31, 6
  %mul134 = and i32 %32, 448
  %add135 = add nuw nsw i32 %mul134, %and128
  %and139 = lshr i32 %29, 16
  %shr140 = and i32 %and139, 1023
  %33 = lshr i32 %31, 9
  %mul145 = and i32 %33, 448
  %add146 = add nuw nsw i32 %mul145, %shr140
  %arrayidx149 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 30, i32 69
  %34 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx149, align 4
  %and150 = and i32 %35, 1023
  %36 = lshr i32 %31, 12
  %mul156 = and i32 %36, 448
  %add157 = add nuw nsw i32 %and150, %mul156
  %and161 = lshr i32 %35, 16
  %shr162 = and i32 %and161, 1023
  %37 = lshr i32 %31, 15
  %mul167 = and i32 %37, 448
  %add168 = add nuw nsw i32 %shr162, %mul167
  %38 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %offset, label %entry.sw.epilog481_crit_edge [
    i32 1600, label %entry.sw.bb_crit_edge
    i32 1604, label %entry.sw.bb_crit_edge812
    i32 1608, label %entry.sw.bb_crit_edge813
    i32 1612, label %entry.sw.bb_crit_edge814
    i32 1416, label %entry.sw.bb_crit_edge815
    i32 1632, label %entry.sw.bb250_crit_edge
    i32 1636, label %entry.sw.bb250_crit_edge816
    i32 1640, label %entry.sw.bb250_crit_edge817
    i32 1644, label %entry.sw.bb250_crit_edge818
    i32 1420, label %entry.sw.bb250_crit_edge819
  ]

entry.sw.bb250_crit_edge819:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb250

entry.sw.bb250_crit_edge818:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb250

entry.sw.bb250_crit_edge817:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb250

entry.sw.bb250_crit_edge816:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb250

entry.sw.bb250_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb250

entry.sw.bb_crit_edge815:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge814:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge813:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge812:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog481_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog481

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge812, %entry.sw.bb_crit_edge813, %entry.sw.bb_crit_edge814, %entry.sw.bb_crit_edge815
  %current_dram_clktree = getelementptr inbounds %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12
  %39 = ptrtoint ptr %current_dram_clktree to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_dram_clktree, align 4
  %trained_dram_clktree = getelementptr inbounds %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11
  %41 = ptrtoint ptr %trained_dram_clktree to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %trained_dram_clktree, align 4
  %sub = sub i32 %40, %42
  %arrayidx174 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx174, align 4
  %arrayidx176 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 1
  %45 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx176, align 4
  %sub177 = sub i32 %44, %46
  %arrayidx181 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 4
  %47 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx181, align 4
  %arrayidx183 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 4
  %49 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx183, align 4
  %sub184 = sub i32 %48, %50
  %arrayidx188 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 5
  %51 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx188, align 4
  %arrayidx190 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 5
  %53 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx190, align 4
  %sub191 = sub i32 %52, %54
  %mul171 = shl nuw nsw i32 %div, 7
  %mul195 = mul i32 %mul171, %sub
  %div196 = sdiv i32 %mul195, 1000000
  %mul199 = mul i32 %mul171, %sub177
  %div200 = sdiv i32 %mul199, 1000000
  %mul203 = mul i32 %mul171, %sub184
  %div204 = sdiv i32 %mul203, 1000000
  %mul207 = mul i32 %mul171, %sub191
  %div208 = sdiv i32 %mul207, 1000000
  %tree_margin = getelementptr inbounds %struct.tegra210_emc_timing, ptr %next, i32 0, i32 14
  %55 = ptrtoint ptr %tree_margin to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tree_margin, align 4
  %mul214 = sub i32 0, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %div196, i32 %56)
  %cmp211 = icmp ugt i32 %div196, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %div196, i32 %mul214)
  %cmp215 = icmp ult i32 %div196, %mul214
  %or.cond = or i1 %cmp211, %cmp215
  %add219 = select i1 %or.cond, i32 %div196, i32 0
  %new.sroa.0.0 = add nsw i32 %add, %add219
  %add226 = select i1 %or.cond, i32 %div196, i32 0
  %new.sroa.12.0 = add nsw i32 %add14, %add226
  call void @__sanitizer_cov_trace_cmp4(i32 %div200, i32 %56)
  %cmp211.1 = icmp ugt i32 %div200, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %div200, i32 %mul214)
  %cmp215.1 = icmp ult i32 %div200, %mul214
  %or.cond.1 = or i1 %cmp211.1, %cmp215.1
  %add219.1 = select i1 %or.cond.1, i32 %div200, i32 0
  %new.sroa.21.0 = add nsw i32 %add25, %add219.1
  %add226.1 = select i1 %or.cond.1, i32 %div200, i32 0
  %new.sroa.30.0 = add nsw i32 %add36, %add226.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div204, i32 %56)
  %cmp211.2 = icmp ugt i32 %div204, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %div204, i32 %mul214)
  %cmp215.2 = icmp ult i32 %div204, %mul214
  %or.cond.2 = or i1 %cmp211.2, %cmp215.2
  %add219.2 = select i1 %or.cond.2, i32 %div204, i32 0
  %new.sroa.39.0 = add nsw i32 %add47, %add219.2
  %add226.2 = select i1 %or.cond.2, i32 %div204, i32 0
  %new.sroa.48.0 = add nsw i32 %add58, %add226.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div208, i32 %56)
  %cmp211.3 = icmp ugt i32 %div208, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %div208, i32 %mul214)
  %cmp215.3 = icmp ult i32 %div208, %mul214
  %or.cond.3 = or i1 %cmp211.3, %cmp215.3
  %add219.3 = select i1 %or.cond.3, i32 %div208, i32 0
  %new.sroa.57.0 = add nsw i32 %add69, %add219.3
  %add226.3 = select i1 %or.cond.3, i32 %div208, i32 0
  %new.sroa.66.0 = add nsw i32 %add80, %add226.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1416, i32 %offset)
  %cmp230 = icmp eq i32 %offset, 1416
  %div236.lhs.trunc = trunc i32 %new.sroa.0.0 to i16
  br i1 %cmp230, label %sw.epilog.thread, label %for.body243.preheader

for.body243.preheader:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %rem786 = srem i16 %div236.lhs.trunc, 64
  %rem.sext = sext i16 %rem786 to i32
  %rem.1.lhs.trunc = trunc i32 %new.sroa.12.0 to i16
  %rem.1787 = srem i16 %rem.1.lhs.trunc, 64
  %rem.1.sext = sext i16 %rem.1787 to i32
  %rem.2.lhs.trunc = trunc i32 %new.sroa.21.0 to i16
  %rem.2788 = srem i16 %rem.2.lhs.trunc, 64
  %rem.2.sext = sext i16 %rem.2788 to i32
  %rem.3.lhs.trunc = trunc i32 %new.sroa.30.0 to i16
  %rem.3789 = srem i16 %rem.3.lhs.trunc, 64
  %rem.3.sext = sext i16 %rem.3789 to i32
  %rem.4.lhs.trunc = trunc i32 %new.sroa.39.0 to i16
  %rem.4790 = srem i16 %rem.4.lhs.trunc, 64
  %rem.4.sext = sext i16 %rem.4790 to i32
  %rem.5.lhs.trunc = trunc i32 %new.sroa.48.0 to i16
  %rem.5791 = srem i16 %rem.5.lhs.trunc, 64
  %rem.5.sext = sext i16 %rem.5791 to i32
  %rem.6.lhs.trunc = trunc i32 %new.sroa.57.0 to i16
  %rem.6792 = srem i16 %rem.6.lhs.trunc, 64
  %rem.6.sext = sext i16 %rem.6792 to i32
  %rem.7.lhs.trunc = trunc i32 %new.sroa.66.0 to i16
  %rem.7793 = srem i16 %rem.7.lhs.trunc, 64
  %rem.7.sext = sext i16 %rem.7793 to i32
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %div236778 = sdiv i16 %div236.lhs.trunc, 64
  %div236.1.lhs.trunc = trunc i32 %new.sroa.12.0 to i16
  %div236.1779 = sdiv i16 %div236.1.lhs.trunc, 64
  %div236.1.sext = sext i16 %div236.1779 to i32
  %div236.2.lhs.trunc = trunc i32 %new.sroa.21.0 to i16
  %div236.2780 = sdiv i16 %div236.2.lhs.trunc, 64
  %div236.2.sext = sext i16 %div236.2780 to i32
  %div236.3.lhs.trunc = trunc i32 %new.sroa.30.0 to i16
  %div236.3781 = sdiv i16 %div236.3.lhs.trunc, 64
  %div236.3.sext = sext i16 %div236.3781 to i32
  %div236.4.lhs.trunc = trunc i32 %new.sroa.39.0 to i16
  %div236.4782 = sdiv i16 %div236.4.lhs.trunc, 64
  %div236.4.sext = sext i16 %div236.4782 to i32
  %div236.5.lhs.trunc = trunc i32 %new.sroa.48.0 to i16
  %div236.5783 = sdiv i16 %div236.5.lhs.trunc, 64
  %div236.5.sext = sext i16 %div236.5783 to i32
  %div236.6.lhs.trunc = trunc i32 %new.sroa.57.0 to i16
  %div236.6784 = sdiv i16 %div236.6.lhs.trunc, 64
  %div236.6.sext = sext i16 %div236.6784 to i32
  %div236.7.lhs.trunc = trunc i32 %new.sroa.66.0 to i16
  %div236.7785 = sdiv i16 %div236.7.lhs.trunc, 64
  %div236.7.sext811 = zext i16 %div236.7785 to i32
  %57 = and i16 %div236778, 7
  %and420 = zext i16 %57 to i32
  %shl422 = shl nsw i32 %div236.1.sext, 3
  %and423 = and i32 %shl422, 56
  %or424 = or i32 %and423, %and420
  %shl426 = shl nsw i32 %div236.2.sext, 6
  %and427 = and i32 %shl426, 448
  %or428 = or i32 %or424, %and427
  %shl430 = shl nsw i32 %div236.3.sext, 9
  %and431 = and i32 %shl430, 3584
  %or432 = or i32 %or428, %and431
  %shl434 = shl nsw i32 %div236.4.sext, 12
  %and435 = and i32 %shl434, 28672
  %or436 = or i32 %or432, %and435
  %shl438 = shl nsw i32 %div236.5.sext, 15
  %and439 = and i32 %shl438, 229376
  %or440 = or i32 %or436, %and439
  %shl442 = shl nsw i32 %div236.6.sext, 18
  %and443 = and i32 %shl442, 1835008
  %or444 = or i32 %or440, %and443
  %shl446 = shl i32 %div236.7.sext811, 21
  %and447 = and i32 %shl446, 14680064
  %or448 = or i32 %or444, %and447
  br label %sw.epilog481

sw.bb250:                                         ; preds = %entry.sw.bb250_crit_edge, %entry.sw.bb250_crit_edge816, %entry.sw.bb250_crit_edge817, %entry.sw.bb250_crit_edge818, %entry.sw.bb250_crit_edge819
  %arrayidx252 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 2
  %58 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx252, align 4
  %arrayidx254 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 2
  %60 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx254, align 4
  %sub255 = sub i32 %59, %61
  %arrayidx259 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 3
  %62 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx259, align 4
  %arrayidx261 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 3
  %64 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx261, align 4
  %sub262 = sub i32 %63, %65
  %arrayidx266 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 6
  %66 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx266, align 4
  %arrayidx268 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 6
  %68 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx268, align 4
  %sub269 = sub i32 %67, %69
  %arrayidx273 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 12, i32 7
  %70 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx273, align 4
  %arrayidx275 = getelementptr %struct.tegra210_emc_timing, ptr %next, i32 0, i32 11, i32 7
  %72 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx275, align 4
  %sub276 = sub i32 %71, %73
  %mul256 = shl nuw nsw i32 %div, 7
  %mul280 = mul i32 %mul256, %sub255
  %div281 = sdiv i32 %mul280, 1000000
  %mul284 = mul i32 %mul256, %sub262
  %div285 = sdiv i32 %mul284, 1000000
  %mul288 = mul i32 %mul256, %sub269
  %div289 = sdiv i32 %mul288, 1000000
  %mul292 = mul i32 %mul256, %sub276
  %div293 = sdiv i32 %mul292, 1000000
  %tree_margin299 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %next, i32 0, i32 14
  %74 = ptrtoint ptr %tree_margin299 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tree_margin299, align 4
  %mul304 = sub i32 0, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %div281, i32 %75)
  %cmp300 = icmp ugt i32 %div281, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %div281, i32 %mul304)
  %cmp305 = icmp ult i32 %div281, %mul304
  %or.cond586 = or i1 %cmp300, %cmp305
  %add311 = select i1 %or.cond586, i32 %div281, i32 0
  %new.sroa.75.0 = add nsw i32 %add91, %add311
  %add320 = select i1 %or.cond586, i32 %div281, i32 0
  %new.sroa.84.0 = add nsw i32 %add102, %add320
  call void @__sanitizer_cov_trace_cmp4(i32 %div285, i32 %75)
  %cmp300.1 = icmp ugt i32 %div285, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %div285, i32 %mul304)
  %cmp305.1 = icmp ult i32 %div285, %mul304
  %or.cond586.1 = or i1 %cmp300.1, %cmp305.1
  %add311.1 = select i1 %or.cond586.1, i32 %div285, i32 0
  %new.sroa.93.0 = add nsw i32 %add113, %add311.1
  %add320.1 = select i1 %or.cond586.1, i32 %div285, i32 0
  %new.sroa.102.0 = add nsw i32 %add124, %add320.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div289, i32 %75)
  %cmp300.2 = icmp ugt i32 %div289, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %div289, i32 %mul304)
  %cmp305.2 = icmp ult i32 %div289, %mul304
  %or.cond586.2 = or i1 %cmp300.2, %cmp305.2
  %add311.2 = select i1 %or.cond586.2, i32 %div289, i32 0
  %new.sroa.111.0 = add nsw i32 %add135, %add311.2
  %add320.2 = select i1 %or.cond586.2, i32 %div289, i32 0
  %new.sroa.120.0 = add nsw i32 %add146, %add320.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div293, i32 %75)
  %cmp300.3 = icmp ugt i32 %div293, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %div293, i32 %mul304)
  %cmp305.3 = icmp ult i32 %div293, %mul304
  %or.cond586.3 = or i1 %cmp300.3, %cmp305.3
  %add311.3 = select i1 %or.cond586.3, i32 %div293, i32 0
  %new.sroa.129.0 = add nsw i32 %add157, %add311.3
  %add320.3 = select i1 %or.cond586.3, i32 %div293, i32 0
  %new.sroa.138.0 = add nsw i32 %add168, %add320.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1420, i32 %offset)
  %cmp329 = icmp eq i32 %offset, 1420
  %div336.lhs.trunc = trunc i32 %new.sroa.75.0 to i16
  br i1 %cmp329, label %sw.epilog.thread753, label %for.body345.preheader

for.body345.preheader:                            ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #14
  %rem348802 = srem i16 %div336.lhs.trunc, 64
  %rem348.sext = sext i16 %rem348802 to i32
  %rem348.1.lhs.trunc = trunc i32 %new.sroa.84.0 to i16
  %rem348.1803 = srem i16 %rem348.1.lhs.trunc, 64
  %rem348.1.sext = sext i16 %rem348.1803 to i32
  %rem348.2.lhs.trunc = trunc i32 %new.sroa.93.0 to i16
  %rem348.2804 = srem i16 %rem348.2.lhs.trunc, 64
  %rem348.2.sext = sext i16 %rem348.2804 to i32
  %rem348.3.lhs.trunc = trunc i32 %new.sroa.102.0 to i16
  %rem348.3805 = srem i16 %rem348.3.lhs.trunc, 64
  %rem348.3.sext = sext i16 %rem348.3805 to i32
  %rem348.4.lhs.trunc = trunc i32 %new.sroa.111.0 to i16
  %rem348.4806 = srem i16 %rem348.4.lhs.trunc, 64
  %rem348.4.sext = sext i16 %rem348.4806 to i32
  %rem348.5.lhs.trunc = trunc i32 %new.sroa.120.0 to i16
  %rem348.5807 = srem i16 %rem348.5.lhs.trunc, 64
  %rem348.5.sext = sext i16 %rem348.5807 to i32
  %rem348.6.lhs.trunc = trunc i32 %new.sroa.129.0 to i16
  %rem348.6808 = srem i16 %rem348.6.lhs.trunc, 64
  %rem348.6.sext = sext i16 %rem348.6808 to i32
  %rem348.7.lhs.trunc = trunc i32 %new.sroa.138.0 to i16
  %rem348.7809 = srem i16 %rem348.7.lhs.trunc, 64
  %rem348.7.sext = sext i16 %rem348.7809 to i32
  br label %sw.epilog

sw.epilog.thread753:                              ; preds = %sw.bb250
  call void @__sanitizer_cov_trace_pc() #14
  %div336794 = sdiv i16 %div336.lhs.trunc, 64
  %div336.sext = sext i16 %div336794 to i32
  %div336.1.lhs.trunc = trunc i32 %new.sroa.84.0 to i16
  %div336.1795 = sdiv i16 %div336.1.lhs.trunc, 64
  %div336.1.sext = sext i16 %div336.1795 to i32
  %div336.2.lhs.trunc = trunc i32 %new.sroa.93.0 to i16
  %div336.2796 = sdiv i16 %div336.2.lhs.trunc, 64
  %div336.2.sext = sext i16 %div336.2796 to i32
  %div336.3.lhs.trunc = trunc i32 %new.sroa.102.0 to i16
  %div336.3797 = sdiv i16 %div336.3.lhs.trunc, 64
  %div336.3.sext = sext i16 %div336.3797 to i32
  %div336.4.lhs.trunc = trunc i32 %new.sroa.111.0 to i16
  %div336.4798 = sdiv i16 %div336.4.lhs.trunc, 64
  %div336.4.sext = sext i16 %div336.4798 to i32
  %div336.5.lhs.trunc = trunc i32 %new.sroa.120.0 to i16
  %div336.5799 = sdiv i16 %div336.5.lhs.trunc, 64
  %div336.5.sext = sext i16 %div336.5799 to i32
  %div336.6.lhs.trunc = trunc i32 %new.sroa.129.0 to i16
  %div336.6800 = sdiv i16 %div336.6.lhs.trunc, 64
  %div336.6.sext = sext i16 %div336.6800 to i32
  %div336.7.lhs.trunc = trunc i32 %new.sroa.138.0 to i16
  %div336.7801 = sdiv i16 %div336.7.lhs.trunc, 64
  %div336.7.sext = sext i16 %div336.7801 to i32
  br label %sw.bb449

sw.epilog:                                        ; preds = %for.body345.preheader, %for.body243.preheader
  %new.sroa.0.1 = phi i32 [ %add, %for.body345.preheader ], [ %rem.sext, %for.body243.preheader ]
  %new.sroa.12.1 = phi i32 [ %add14, %for.body345.preheader ], [ %rem.1.sext, %for.body243.preheader ]
  %new.sroa.21.1 = phi i32 [ %add25, %for.body345.preheader ], [ %rem.2.sext, %for.body243.preheader ]
  %new.sroa.30.1 = phi i32 [ %add36, %for.body345.preheader ], [ %rem.3.sext, %for.body243.preheader ]
  %new.sroa.39.1 = phi i32 [ %add47, %for.body345.preheader ], [ %rem.4.sext, %for.body243.preheader ]
  %new.sroa.48.1 = phi i32 [ %add58, %for.body345.preheader ], [ %rem.5.sext, %for.body243.preheader ]
  %new.sroa.57.1 = phi i32 [ %add69, %for.body345.preheader ], [ %rem.6.sext, %for.body243.preheader ]
  %new.sroa.66.1 = phi i32 [ %add80, %for.body345.preheader ], [ %rem.7.sext, %for.body243.preheader ]
  %new.sroa.75.1 = phi i32 [ %rem348.sext, %for.body345.preheader ], [ %add91, %for.body243.preheader ]
  %new.sroa.84.1 = phi i32 [ %rem348.1.sext, %for.body345.preheader ], [ %add102, %for.body243.preheader ]
  %new.sroa.93.1 = phi i32 [ %rem348.2.sext, %for.body345.preheader ], [ %add113, %for.body243.preheader ]
  %new.sroa.102.1 = phi i32 [ %rem348.3.sext, %for.body345.preheader ], [ %add124, %for.body243.preheader ]
  %new.sroa.111.1 = phi i32 [ %rem348.4.sext, %for.body345.preheader ], [ %add135, %for.body243.preheader ]
  %new.sroa.120.1 = phi i32 [ %rem348.5.sext, %for.body345.preheader ], [ %add146, %for.body243.preheader ]
  %new.sroa.129.1 = phi i32 [ %rem348.6.sext, %for.body345.preheader ], [ %add157, %for.body243.preheader ]
  %new.sroa.138.1 = phi i32 [ %rem348.7.sext, %for.body345.preheader ], [ %add168, %for.body243.preheader ]
  %76 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %offset, label %sw.epilog.sw.epilog481_crit_edge [
    i32 1600, label %sw.bb355
    i32 1604, label %sw.bb361
    i32 1608, label %sw.bb369
    i32 1612, label %sw.bb377
    i32 1632, label %sw.bb385
    i32 1636, label %sw.bb393
    i32 1640, label %sw.bb401
    i32 1644, label %sw.bb409
    i32 1420, label %sw.epilog.sw.bb449_crit_edge
  ]

sw.epilog.sw.bb449_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb449

sw.epilog.sw.epilog481_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog481

sw.bb355:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and357 = and i32 %new.sroa.0.1, 1023
  %shl359 = shl nsw i32 %new.sroa.12.1, 16
  %and360 = and i32 %shl359, 67043328
  %or = or i32 %and360, %and357
  br label %sw.epilog481

sw.bb361:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and364 = and i32 %new.sroa.21.1, 1023
  %shl366 = shl nsw i32 %new.sroa.30.1, 16
  %and367 = and i32 %shl366, 67043328
  %or368 = or i32 %and367, %and364
  br label %sw.epilog481

sw.bb369:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and372 = and i32 %new.sroa.39.1, 1023
  %shl374 = shl nsw i32 %new.sroa.48.1, 16
  %and375 = and i32 %shl374, 67043328
  %or376 = or i32 %and375, %and372
  br label %sw.epilog481

sw.bb377:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and380 = and i32 %new.sroa.57.1, 1023
  %shl382 = shl nsw i32 %new.sroa.66.1, 16
  %and383 = and i32 %shl382, 67043328
  %or384 = or i32 %and383, %and380
  br label %sw.epilog481

sw.bb385:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and388 = and i32 %new.sroa.75.1, 1023
  %shl390 = shl nsw i32 %new.sroa.84.1, 16
  %and391 = and i32 %shl390, 67043328
  %or392 = or i32 %and391, %and388
  br label %sw.epilog481

sw.bb393:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and396 = and i32 %new.sroa.93.1, 1023
  %shl398 = shl nsw i32 %new.sroa.102.1, 16
  %and399 = and i32 %shl398, 67043328
  %or400 = or i32 %and399, %and396
  br label %sw.epilog481

sw.bb401:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and404 = and i32 %new.sroa.111.1, 1023
  %shl406 = shl nsw i32 %new.sroa.120.1, 16
  %and407 = and i32 %shl406, 67043328
  %or408 = or i32 %and407, %and404
  br label %sw.epilog481

sw.bb409:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %and412 = and i32 %new.sroa.129.1, 1023
  %shl414 = shl nsw i32 %new.sroa.138.1, 16
  %and415 = and i32 %shl414, 67043328
  %or416 = or i32 %and415, %and412
  br label %sw.epilog481

sw.bb449:                                         ; preds = %sw.epilog.sw.bb449_crit_edge, %sw.epilog.thread753
  %new.sroa.138.1777 = phi i32 [ %div336.7.sext, %sw.epilog.thread753 ], [ %new.sroa.138.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.129.1776 = phi i32 [ %div336.6.sext, %sw.epilog.thread753 ], [ %new.sroa.129.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.120.1775 = phi i32 [ %div336.5.sext, %sw.epilog.thread753 ], [ %new.sroa.120.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.111.1774 = phi i32 [ %div336.4.sext, %sw.epilog.thread753 ], [ %new.sroa.111.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.102.1773 = phi i32 [ %div336.3.sext, %sw.epilog.thread753 ], [ %new.sroa.102.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.93.1772 = phi i32 [ %div336.2.sext, %sw.epilog.thread753 ], [ %new.sroa.93.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.84.1771 = phi i32 [ %div336.1.sext, %sw.epilog.thread753 ], [ %new.sroa.84.1, %sw.epilog.sw.bb449_crit_edge ]
  %new.sroa.75.1770 = phi i32 [ %div336.sext, %sw.epilog.thread753 ], [ %new.sroa.75.1, %sw.epilog.sw.bb449_crit_edge ]
  %and452 = and i32 %new.sroa.75.1770, 7
  %shl454 = shl nsw i32 %new.sroa.84.1771, 3
  %and455 = and i32 %shl454, 56
  %or456 = or i32 %and455, %and452
  %shl458 = shl nsw i32 %new.sroa.93.1772, 6
  %and459 = and i32 %shl458, 448
  %or460 = or i32 %or456, %and459
  %shl462 = shl nsw i32 %new.sroa.102.1773, 9
  %and463 = and i32 %shl462, 3584
  %or464 = or i32 %or460, %and463
  %shl466 = shl nsw i32 %new.sroa.111.1774, 12
  %and467 = and i32 %shl466, 28672
  %or468 = or i32 %or464, %and467
  %shl470 = shl nsw i32 %new.sroa.120.1775, 15
  %and471 = and i32 %shl470, 229376
  %or472 = or i32 %or468, %and471
  %shl474 = shl nsw i32 %new.sroa.129.1776, 18
  %and475 = and i32 %shl474, 1835008
  %or476 = or i32 %or472, %and475
  %shl478 = shl i32 %new.sroa.138.1777, 21
  %and479 = and i32 %shl478, 14680064
  %or480 = or i32 %or476, %and479
  br label %sw.epilog481

sw.epilog481:                                     ; preds = %sw.bb449, %sw.bb409, %sw.bb401, %sw.bb393, %sw.bb385, %sw.bb377, %sw.bb369, %sw.bb361, %sw.bb355, %sw.epilog.sw.epilog481_crit_edge, %sw.epilog.thread, %entry.sw.epilog481_crit_edge
  %temp.0 = phi i32 [ 0, %sw.epilog.sw.epilog481_crit_edge ], [ %or480, %sw.bb449 ], [ %or448, %sw.epilog.thread ], [ %or416, %sw.bb409 ], [ %or408, %sw.bb401 ], [ %or400, %sw.bb393 ], [ %or392, %sw.bb385 ], [ %or384, %sw.bb377 ], [ %or376, %sw.bb369 ], [ %or368, %sw.bb361 ], [ %or, %sw.bb355 ], [ 0, %entry.sw.epilog481_crit_edge ]
  ret i32 %temp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_dll_prelock(ptr nocapture noundef readonly %emc, i32 noundef %clksrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 700
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !162
  %3 = and i32 %2, 620298239
  %4 = or i32 %3, -939327488
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i156 = getelementptr i8, ptr %6, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %4) #12, !srcloc !161
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %add.ptr.i158 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 16777216) #12, !srcloc !161
  %num_channels = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp180.not = icmp eq i32 %10, 0
  br i1 %cmp180.not, label %entry.for.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.cond8.preheader:                              ; preds = %tegra210_emc_wait_for_update.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10182.not = icmp eq i32 %17, 0
  br i1 %cmp10182.not, label %for.cond8.preheader.for.end17_crit_edge, label %for.cond8.preheader.while.cond.preheader_crit_edge

for.cond8.preheader.while.cond.preheader_crit_edge: ; preds = %for.cond8.preheader
  br label %while.cond.preheader

for.cond8.preheader.for.end17_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.body:                                         ; preds = %tegra210_emc_wait_for_update.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0181 = phi i32 [ %inc, %tegra210_emc_wait_for_update.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.0181
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.07.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 692
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !162
  %14 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i = icmp eq i32 %14, 0
  br i1 %tobool.i, label %for.body.i.tegra210_emc_wait_for_update.exit_crit_edge, label %if.end.i

for.body.i.tegra210_emc_wait_for_update.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.tegra210_emc_wait_for_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit

tegra210_emc_wait_for_update.exit:                ; preds = %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge, %for.body.i.tegra210_emc_wait_for_update.exit_crit_edge
  %inc = add nuw i32 %i.0181, 1
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %tegra210_emc_wait_for_update.exit.for.body_crit_edge, label %for.cond8.preheader

tegra210_emc_wait_for_update.exit.for.body_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

while.cond.preheader:                             ; preds = %for.inc15.while.cond.preheader_crit_edge, %for.cond8.preheader.while.cond.preheader_crit_edge
  %i.1183 = phi i32 [ %inc16, %for.inc15.while.cond.preheader_crit_edge ], [ 0, %for.cond8.preheader.while.cond.preheader_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.1183
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %19, i32 700
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #12, !srcloc !162
  %21 = and i32 %20, 16777216
  %cmp14 = icmp eq i32 %21, 0
  br i1 %cmp14, label %for.inc15, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

for.inc15:                                        ; preds = %while.cond
  %inc16 = add nuw i32 %i.1183, 1
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels, align 4
  %cmp10 = icmp ult i32 %inc16, %23
  br i1 %cmp10, label %for.inc15.while.cond.preheader_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end17

for.inc15.while.cond.preheader_crit_edge:         ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %for.cond8.preheader.for.end17_crit_edge, %entry.for.end17_crit_edge
  %next = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 16
  %24 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %next, align 4
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %25, i32 0, i32 25, i32 144
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %add.ptr.i161 = getelementptr i8, ptr %30, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %28) #12, !srcloc !161
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 8
  %add.ptr.i163 = getelementptr i8, ptr %32, i32 1512
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #12, !srcloc !162
  %34 = and i32 %33, 16523008
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next, align 4
  %rate = getelementptr inbounds %struct.tegra210_emc_timing, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate, align 4
  %40 = add i32 %39, -400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %40)
  %41 = icmp ult i32 %40, 200000
  br i1 %41, label %for.end17.if.end61_crit_edge, label %if.else

for.end17.if.end61_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.else:                                          ; preds = %for.end17
  %42 = add i32 %39, -600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %42)
  %43 = icmp ult i32 %42, 200000
  br i1 %43, label %if.else.if.end61_crit_edge, label %if.else36

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.else36:                                        ; preds = %if.else
  %44 = add i32 %39, -800000
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %44)
  %45 = icmp ult i32 %44, 200000
  br i1 %45, label %if.else36.if.end61_crit_edge, label %if.else46

if.else36.if.end61_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.else46:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #14
  %46 = add i32 %39, -1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %46)
  %47 = icmp ult i32 %46, 200000
  %. = select i1 %47, i32 30, i32 20
  br label %if.end61

if.end61:                                         ; preds = %if.else46, %if.else36.if.end61_crit_edge, %if.else.if.end61_crit_edge, %for.end17.if.end61_crit_edge
  %.sink = phi i32 [ 150, %for.end17.if.end61_crit_edge ], [ 100, %if.else.if.end61_crit_edge ], [ 70, %if.else36.if.end61_crit_edge ], [ %., %if.else46 ]
  %or35 = or i32 %35, %.sink
  %48 = tail call i32 @llvm.bswap.i32(i32 %or35) #12
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %add.ptr.i165 = getelementptr i8, ptr %50, i32 1512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %48) #12, !srcloc !161
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 8
  %add.ptr.i167 = getelementptr i8, ptr %52, i32 700
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #12, !srcloc !162
  %54 = or i32 %53, 16777216
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 8
  %add.ptr.i169 = getelementptr i8, ptr %56, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %54) #12, !srcloc !161
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i170 = getelementptr i8, ptr %58, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i170, i32 16777216) #12, !srcloc !161
  %59 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp8.not.i = icmp eq i32 %60, 0
  br i1 %cmp8.not.i, label %if.end61.while.cond78.preheader_crit_edge, label %if.end61.for.body.i171_crit_edge

if.end61.for.body.i171_crit_edge:                 ; preds = %if.end61
  br label %for.body.i171

if.end61.while.cond78.preheader_crit_edge:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond78.preheader

for.body.i171:                                    ; preds = %tegra210_emc_wait_for_update.exit.i.for.body.i171_crit_edge, %if.end61.for.body.i171_crit_edge
  %err.010.i = phi i32 [ %or.i, %tegra210_emc_wait_for_update.exit.i.for.body.i171_crit_edge ], [ 0, %if.end61.for.body.i171_crit_edge ]
  %i.09.i = phi i32 [ %inc.i172, %tegra210_emc_wait_for_update.exit.i.for.body.i171_crit_edge ], [ 0, %if.end61.for.body.i171_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.09.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i171
  %i.07.i.i = phi i32 [ 0, %for.body.i171 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 692
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !162
  %64 = and i32 %63, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.i = icmp eq i32 %64, 0
  br i1 %tobool.i.i, label %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit.i

tegra210_emc_wait_for_update.exit.i:              ; preds = %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge ], [ -110, %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i.i, %err.010.i
  %inc.i172 = add nuw i32 %i.09.i, 1
  %66 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_channels, align 4
  %cmp.i = icmp ult i32 %inc.i172, %67
  br i1 %cmp.i, label %tegra210_emc_wait_for_update.exit.i.for.body.i171_crit_edge, label %for.end.i

tegra210_emc_wait_for_update.exit.i.for.body.i171_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i171

for.end.i:                                        ; preds = %tegra210_emc_wait_for_update.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %for.end.i.tegra210_emc_timing_update.exit_crit_edge, label %do.end.i

for.end.i.tegra210_emc_timing_update.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_timing_update.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.6, i32 noundef %or.i) #15
  %70 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %num_channels, align 4
  br label %tegra210_emc_timing_update.exit

tegra210_emc_timing_update.exit:                  ; preds = %do.end.i, %for.end.i.tegra210_emc_timing_update.exit_crit_edge
  %71 = phi i32 [ %67, %for.end.i.tegra210_emc_timing_update.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp66184.not = icmp eq i32 %71, 0
  br i1 %cmp66184.not, label %tegra210_emc_timing_update.exit.while.cond78.preheader_crit_edge, label %while.cond68.preheader.lr.ph

tegra210_emc_timing_update.exit.while.cond78.preheader_crit_edge: ; preds = %tegra210_emc_timing_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond78.preheader

while.cond68.preheader.lr.ph:                     ; preds = %tegra210_emc_timing_update.exit
  %arrayidx.i174 = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 0
  br label %while.cond68.preheader

while.cond68.preheader:                           ; preds = %for.inc75.while.cond68.preheader_crit_edge, %while.cond68.preheader.lr.ph
  %i.2185 = phi i32 [ 0, %while.cond68.preheader.lr.ph ], [ %inc76, %for.inc75.while.cond68.preheader_crit_edge ]
  br label %while.cond68

while.cond68:                                     ; preds = %while.cond68.while.cond68_crit_edge, %while.cond68.preheader
  %72 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i174, align 4
  %add.ptr.i175 = getelementptr i8, ptr %73, i32 700
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #12, !srcloc !162
  %75 = and i32 %74, 16777216
  %tobool.not = icmp eq i32 %75, 0
  br i1 %tobool.not, label %while.cond68.while.cond68_crit_edge, label %for.inc75

while.cond68.while.cond68_crit_edge:              ; preds = %while.cond68
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond68

for.inc75:                                        ; preds = %while.cond68
  %inc76 = add nuw i32 %i.2185, 1
  %76 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_channels, align 4
  %cmp66 = icmp ult i32 %inc76, %77
  br i1 %cmp66, label %for.inc75.while.cond68.preheader_crit_edge, label %for.inc75.while.cond78.preheader_crit_edge

for.inc75.while.cond78.preheader_crit_edge:       ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond78.preheader

for.inc75.while.cond68.preheader_crit_edge:       ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond68.preheader

while.cond78.preheader:                           ; preds = %for.inc75.while.cond78.preheader_crit_edge, %tegra210_emc_timing_update.exit.while.cond78.preheader_crit_edge, %if.end61.while.cond78.preheader_crit_edge
  br label %while.cond78

while.cond78:                                     ; preds = %while.cond78.while.cond78_crit_edge, %while.cond78.preheader
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %79, i32 708
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #12, !srcloc !162
  %81 = and i32 %80, 8389120
  %.not = icmp eq i32 %81, 8389120
  br i1 %.not, label %while.end89, label %while.cond78.while.cond78_crit_edge

while.cond78.while.cond78_crit_edge:              ; preds = %while.cond78
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond78

while.end89:                                      ; preds = %while.cond78
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 8
  %add.ptr.i179 = getelementptr i8, ptr %83, i32 708
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #12, !srcloc !162
  %85 = and i32 %84, -16318464
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_dvfs_power_ramp_up(ptr nocapture noundef readonly %emc, i32 noundef %clk, i1 noundef zeroext %flip_backward) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %last = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 15
  %next = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 16
  %timing.0.in = select i1 %flip_backward, ptr %last, ptr %next
  %0 = ptrtoint ptr %timing.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %timing.0 = load ptr, ptr %timing.0.in, align 4
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %timing.0, i32 0, i32 25, i32 161
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.tegra210_emc_timing, ptr %timing.0, i32 0, i32 25, i32 162
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.tegra210_emc_timing, ptr %timing.0, i32 0, i32 25, i32 167
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.tegra210_emc_timing, ptr %timing.0, i32 0, i32 25, i32 65
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.tegra210_emc_timing, ptr %timing.0, i32 0, i32 25, i32 163
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %or = or i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1666, i32 %clk)
  %cmp = icmp ult i32 %clk, 1666
  br i1 %cmp, label %if.end14, label %if.else66

if.end14:                                         ; preds = %entry
  %and = shl i32 %10, 24
  %11 = and i32 %and, 167772160
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #12, !srcloc !161
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %15, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1745617024) #12, !srcloc !161
  %div = udiv i32 100000, %clk
  %16 = and i32 %and, 251658240
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i144 = getelementptr i8, ptr %18, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %16) #12, !srcloc !161
  %add = shl i32 %div, 16
  %and.i = add i32 %add, 65536
  %or2.i = or i32 %and.i, -2147480472
  %19 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #12
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i145 = getelementptr i8, ptr %21, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i145, i32 %19) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %clk)
  %cmp15 = icmp ult i32 %clk, 1000
  br i1 %cmp15, label %if.then16, label %if.then56

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 416, i32 %clk)
  %cmp17 = icmp ult i32 %clk, 416
  br i1 %cmp17, label %if.then18, label %if.else27

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %or19 = and i32 %2, -83952131
  %and20 = or i32 %or19, 67174912
  %22 = tail call i32 @llvm.bswap.i32(i32 %and20) #12
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i150 = getelementptr i8, ptr %24, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %22) #12, !srcloc !161
  %or2.i153 = or i32 %and.i, -2147480480
  %25 = tail call i32 @llvm.bswap.i32(i32 %or2.i153) #12
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i154 = getelementptr i8, ptr %27, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i154, i32 %25) #12, !srcloc !161
  %or24 = and i32 %4, -16843267
  %and25 = or i32 %or24, 66048
  %28 = tail call i32 @llvm.bswap.i32(i32 %and25) #12
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %add.ptr.i156 = getelementptr i8, ptr %30, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %28) #12, !srcloc !161
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i157 = getelementptr i8, ptr %32, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i157, i32 1678508160) #12, !srcloc !161
  %and26 = and i32 %6, -29295040
  %33 = tail call i32 @llvm.bswap.i32(i32 %and26) #12
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr.i159 = getelementptr i8, ptr %35, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %33) #12, !srcloc !161
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i160 = getelementptr i8, ptr %37, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i160, i32 805503104) #12, !srcloc !161
  %.pre = or i32 %and.i, -2147482832
  %.pre223 = tail call i32 @llvm.bswap.i32(i32 %.pre) #12
  br label %if.end32

if.else27:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %and28 = and i32 %6, -29295040
  %38 = tail call i32 @llvm.bswap.i32(i32 %and28) #12
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 8
  %add.ptr.i162 = getelementptr i8, ptr %40, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %38) #12, !srcloc !161
  %or2.i165 = or i32 %and.i, -2147482832
  %41 = tail call i32 @llvm.bswap.i32(i32 %or2.i165) #12
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i166 = getelementptr i8, ptr %43, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i166, i32 %41) #12, !srcloc !161
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then18
  %.pre-phi = phi i32 [ %41, %if.else27 ], [ %.pre223, %if.then18 ]
  %cmd_pad.0 = phi i32 [ %or, %if.else27 ], [ %and20, %if.then18 ]
  %dq_pad.0 = phi i32 [ %4, %if.else27 ], [ %and25, %if.then18 ]
  %and33 = and i32 %6, -17957139
  %44 = tail call i32 @llvm.bswap.i32(i32 %and33) #12
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 8
  %add.ptr.i168 = getelementptr i8, ptr %46, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %44) #12, !srcloc !161
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i172 = getelementptr i8, ptr %48, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i172, i32 %.pre-phi) #12, !srcloc !161
  br i1 %cmp17, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %or39 = or i32 %cmd_pad.0, 16843266
  %49 = tail call i32 @llvm.bswap.i32(i32 %or39) #12
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 8
  %add.ptr.i174 = getelementptr i8, ptr %51, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %49) #12, !srcloc !161
  %or2.i177 = or i32 %and.i, -2147480480
  %52 = tail call i32 @llvm.bswap.i32(i32 %or2.i177) #12
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i178 = getelementptr i8, ptr %54, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i178, i32 %52) #12, !srcloc !161
  %or43 = or i32 %dq_pad.0, 16843266
  %55 = tail call i32 @llvm.bswap.i32(i32 %or43) #12
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 8
  %add.ptr.i180 = getelementptr i8, ptr %57, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %55) #12, !srcloc !161
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i181 = getelementptr i8, ptr %59, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i181, i32 1678508160) #12, !srcloc !161
  %60 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 8
  %add.ptr.i183 = getelementptr i8, ptr %62, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %60) #12, !srcloc !161
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i184 = getelementptr i8, ptr %64, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i184, i32 805503104) #12, !srcloc !161
  br label %if.end48

if.else44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %65 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 8
  %add.ptr.i186 = getelementptr i8, ptr %67, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %65) #12, !srcloc !161
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i190 = getelementptr i8, ptr %69, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i190, i32 %.pre-phi) #12, !srcloc !161
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then38
  %cmd_pad.1 = phi i32 [ %or39, %if.then38 ], [ %cmd_pad.0, %if.else44 ]
  %and49 = and i32 %8, -257
  %70 = tail call i32 @llvm.bswap.i32(i32 %and49) #12
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 8
  %add.ptr.i192 = getelementptr i8, ptr %72, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 %70) #12, !srcloc !161
  %and.i193 = add i32 %add, 655360
  %or2.i195 = or i32 %and.i193, -2147483388
  %73 = tail call i32 @llvm.bswap.i32(i32 %or2.i195) #12
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i196 = getelementptr i8, ptr %75, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i196, i32 %73) #12, !srcloc !161
  %mul = mul nuw nsw i32 %clk, 10
  %add53 = add nuw nsw i32 %mul, 500000
  br label %if.end72

if.then56:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %or57 = or i32 %6, 100664832
  %76 = tail call i32 @llvm.bswap.i32(i32 %or57) #12
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 8
  %add.ptr.i198 = getelementptr i8, ptr %78, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %76) #12, !srcloc !161
  %or2.i201 = or i32 %and.i, -2147482832
  %79 = tail call i32 @llvm.bswap.i32(i32 %or2.i201) #12
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i202 = getelementptr i8, ptr %81, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i202, i32 %79) #12, !srcloc !161
  %and60 = and i32 %8, -257
  %82 = tail call i32 @llvm.bswap.i32(i32 %and60) #12
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 8
  %add.ptr.i204 = getelementptr i8, ptr %84, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %82) #12, !srcloc !161
  %and.i205 = add i32 %add, 655360
  %or2.i207 = or i32 %and.i205, -2147483388
  %85 = tail call i32 @llvm.bswap.i32(i32 %or2.i207) #12
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i208 = getelementptr i8, ptr %87, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i208, i32 %85) #12, !srcloc !161
  %mul63 = mul nuw nsw i32 %clk, 10
  %add65 = add nuw nsw i32 %mul63, 200000
  br label %if.end72

if.else66:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or13 = or i32 %10, 8
  %88 = tail call i32 @llvm.bswap.i32(i32 %or13) #12
  %regs.i146 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %89 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i146, align 8
  %add.ptr.i147 = getelementptr i8, ptr %90, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %88) #12, !srcloc !161
  %91 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i146, align 8
  %add.ptr4.i148 = getelementptr i8, ptr %92, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i148, i32 1745617024) #12, !srcloc !161
  %or67 = or i32 %6, 1536
  %93 = tail call i32 @llvm.bswap.i32(i32 %or67) #12
  %94 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i146, align 8
  %add.ptr.i210 = getelementptr i8, ptr %95, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210, i32 %93) #12, !srcloc !161
  %96 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i146, align 8
  %add.ptr4.i211 = getelementptr i8, ptr %97, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i211, i32 805503104) #12, !srcloc !161
  %and68 = and i32 %8, -257
  %98 = tail call i32 @llvm.bswap.i32(i32 %and68) #12
  %99 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i146, align 8
  %add.ptr.i213 = getelementptr i8, ptr %100, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %98) #12, !srcloc !161
  %101 = ptrtoint ptr %regs.i146 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i146, align 8
  %add.ptr4.i214 = getelementptr i8, ptr %102, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i214, i32 67177600) #12, !srcloc !161
  %mul69 = mul i32 %clk, 12
  br label %if.end72

if.end72:                                         ; preds = %if.else66, %if.then56, %if.end48
  %cmd_pad.2 = phi i32 [ %cmd_pad.1, %if.end48 ], [ %or, %if.then56 ], [ %or, %if.else66 ]
  %ramp_up_wait.3 = phi i32 [ %add53, %if.end48 ], [ %add65, %if.then56 ], [ %mul69, %if.else66 ]
  %and73 = and i32 %cmd_pad.2, -67108865
  %103 = tail call i32 @llvm.bswap.i32(i32 %and73) #12
  %regs.i215 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %104 = ptrtoint ptr %regs.i215 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i215, align 8
  %add.ptr.i216 = getelementptr i8, ptr %105, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %103) #12, !srcloc !161
  %106 = ptrtoint ptr %regs.i215 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i215, align 8
  %add.ptr4.i217 = getelementptr i8, ptr %107, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i217, i32 1611400576) #12, !srcloc !161
  ret i32 %ramp_up_wait.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra210_emc_dvfs_power_ramp_down(ptr nocapture noundef readonly %emc, i32 noundef %clk, i1 noundef zeroext %flip_backward) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 16
  %last = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 15
  %entry1.0.in = select i1 %flip_backward, ptr %next, ptr %last
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %entry1.0, i32 0, i32 25, i32 161
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.tegra210_emc_timing, ptr %entry1.0, i32 0, i32 25, i32 162
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.tegra210_emc_timing, ptr %entry1.0, i32 0, i32 25, i32 167
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.tegra210_emc_timing, ptr %entry1.0, i32 0, i32 25, i32 65
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.tegra210_emc_timing, ptr %entry1.0, i32 0, i32 25, i32 163
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9, align 4
  %or = or i32 %2, 67108864
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #12, !srcloc !161
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %15, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 1611399296) #12, !srcloc !161
  %or10 = or i32 %8, 256
  %16 = tail call i32 @llvm.bswap.i32(i32 %or10) #12
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %18, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %16) #12, !srcloc !161
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i118 = getelementptr i8, ptr %20, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i118, i32 67177600) #12, !srcloc !161
  %mul = mul i32 %clk, 12
  %div = udiv i32 100000, %clk
  %add = add nuw nsw i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %clk)
  %cmp = icmp ult i32 %clk, 1000
  br i1 %cmp, label %if.then11, label %if.end41

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 416, i32 %clk)
  %cmp12 = icmp ult i32 %clk, 416
  br i1 %cmp12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %or, -16843267
  %or14 = or i32 %and, 66048
  %21 = tail call i32 @llvm.bswap.i32(i32 %or14) #12
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr.i120 = getelementptr i8, ptr %23, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %21) #12, !srcloc !161
  %and.i = shl i32 %add, 16
  %or2.i = or i32 %and.i, -2147480480
  %24 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #12
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i121 = getelementptr i8, ptr %26, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i121, i32 %24) #12, !srcloc !161
  %and16 = and i32 %4, -16843267
  %or17 = or i32 %and16, 66048
  %27 = tail call i32 @llvm.bswap.i32(i32 %or17) #12
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr.i123 = getelementptr i8, ptr %29, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %27) #12, !srcloc !161
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i124 = getelementptr i8, ptr %31, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i124, i32 1678508160) #12, !srcloc !161
  %and18 = and i32 %6, -17957139
  %32 = tail call i32 @llvm.bswap.i32(i32 %and18) #12
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %add.ptr.i126 = getelementptr i8, ptr %34, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %32) #12, !srcloc !161
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i127 = getelementptr i8, ptr %36, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i127, i32 805503104) #12, !srcloc !161
  %.pre = or i32 %and.i, -2147482832
  %.pre190 = tail call i32 @llvm.bswap.i32(i32 %.pre) #12
  br label %if.end22

if.else19:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %and20 = and i32 %6, -17957139
  %37 = tail call i32 @llvm.bswap.i32(i32 %and20) #12
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %add.ptr.i129 = getelementptr i8, ptr %39, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %37) #12, !srcloc !161
  %and.i130 = shl i32 %add, 16
  %or2.i132 = or i32 %and.i130, -2147482832
  %40 = tail call i32 @llvm.bswap.i32(i32 %or2.i132) #12
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i133 = getelementptr i8, ptr %42, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i133, i32 %40) #12, !srcloc !161
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then13
  %.pre-phi = phi i32 [ %40, %if.else19 ], [ %.pre190, %if.then13 ]
  %and.i136.pre-phi = phi i32 [ %and.i130, %if.else19 ], [ %and.i, %if.then13 ]
  %cmd_pad.0 = phi i32 [ %or, %if.else19 ], [ %or14, %if.then13 ]
  %dq_pad.0 = phi i32 [ %4, %if.else19 ], [ %or17, %if.then13 ]
  %and23 = and i32 %6, -29295040
  %43 = tail call i32 @llvm.bswap.i32(i32 %and23) #12
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr.i135 = getelementptr i8, ptr %45, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %43) #12, !srcloc !161
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i139 = getelementptr i8, ptr %47, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i139, i32 %.pre-phi) #12, !srcloc !161
  br i1 %cmp12, label %if.then26, label %if.else31

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %and27 = and i32 %cmd_pad.0, -16843267
  %48 = tail call i32 @llvm.bswap.i32(i32 %and27) #12
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %add.ptr.i141 = getelementptr i8, ptr %50, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %48) #12, !srcloc !161
  %or2.i144 = or i32 %and.i136.pre-phi, -2147480480
  %51 = tail call i32 @llvm.bswap.i32(i32 %or2.i144) #12
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i145 = getelementptr i8, ptr %53, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i145, i32 %51) #12, !srcloc !161
  %add28 = add i32 %mul, 300000
  %and29 = and i32 %dq_pad.0, -16843267
  %54 = tail call i32 @llvm.bswap.i32(i32 %and29) #12
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 8
  %add.ptr.i147 = getelementptr i8, ptr %56, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %54) #12, !srcloc !161
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i148 = getelementptr i8, ptr %58, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i148, i32 1678508160) #12, !srcloc !161
  %and30 = and i32 %6, -134154240
  %59 = tail call i32 @llvm.bswap.i32(i32 %and30) #12
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 8
  %add.ptr.i150 = getelementptr i8, ptr %61, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %59) #12, !srcloc !161
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i151 = getelementptr i8, ptr %63, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i151, i32 805503104) #12, !srcloc !161
  br label %if.then43

if.else31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %and32 = and i32 %6, -134154240
  %64 = tail call i32 @llvm.bswap.i32(i32 %and32) #12
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %add.ptr.i153 = getelementptr i8, ptr %66, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %64) #12, !srcloc !161
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i157 = getelementptr i8, ptr %68, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i157, i32 %.pre-phi) #12, !srcloc !161
  %add33 = add i32 %mul, 300000
  br label %if.then43

if.end41:                                         ; preds = %entry
  %and36 = shl i32 %6, 8
  %69 = and i32 %and36, 16252928
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 8
  %add.ptr.i159 = getelementptr i8, ptr %71, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %69) #12, !srcloc !161
  %add37 = shl i32 %div, 16
  %and.i160 = add i32 %add37, 1310720
  %or2.i162 = or i32 %and.i160, -2147482832
  %72 = tail call i32 @llvm.bswap.i32(i32 %or2.i162) #12
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i163 = getelementptr i8, ptr %74, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i163, i32 %72) #12, !srcloc !161
  %mul38 = mul i32 %clk, 20
  %add39 = add i32 %mul38, 100000
  %add40 = add i32 %add39, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 1666, i32 %clk)
  %cmp42 = icmp ult i32 %clk, 1666
  br i1 %cmp42, label %if.end41.if.then43_crit_edge, label %if.else50

if.end41.if.then43_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %.pre191 = shl i32 %add, 16
  br label %if.then43

if.then43:                                        ; preds = %if.end41.if.then43_crit_edge, %if.else31, %if.then26
  %and.i166.pre-phi = phi i32 [ %.pre191, %if.end41.if.then43_crit_edge ], [ %and.i136.pre-phi, %if.else31 ], [ %and.i136.pre-phi, %if.then26 ]
  %ramp_down_wait.1189 = phi i32 [ %add40, %if.end41.if.then43_crit_edge ], [ %add33, %if.else31 ], [ %add28, %if.then26 ]
  %and45 = and i32 %10, -6
  %75 = tail call i32 @llvm.bswap.i32(i32 %and45) #12
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 8
  %add.ptr.i165 = getelementptr i8, ptr %77, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %75) #12, !srcloc !161
  %or2.i168 = or i32 %and.i166.pre-phi, -2147480472
  %78 = tail call i32 @llvm.bswap.i32(i32 %or2.i168) #12
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i169 = getelementptr i8, ptr %80, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i169, i32 %78) #12, !srcloc !161
  %and47 = and i32 %10, -16
  %81 = tail call i32 @llvm.bswap.i32(i32 %and47) #12
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 8
  %add.ptr.i171 = getelementptr i8, ptr %83, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %81) #12, !srcloc !161
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i175 = getelementptr i8, ptr %85, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i175, i32 %78) #12, !srcloc !161
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %87, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 0) #12, !srcloc !161
  %or2.i179 = or i32 %and.i166.pre-phi, -2147483648
  %88 = tail call i32 @llvm.bswap.i32(i32 %or2.i179) #12
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i180 = getelementptr i8, ptr %90, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i180, i32 %88) #12, !srcloc !161
  %add49 = add i32 %ramp_down_wait.1189, 400000
  br label %if.end52

if.else50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %and51 = and i32 %10, -16
  %91 = tail call i32 @llvm.bswap.i32(i32 %and51) #12
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 8
  %add.ptr.i182 = getelementptr i8, ptr %93, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 %91) #12, !srcloc !161
  %and.i183 = shl i32 %add, 16
  %or2.i185 = or i32 %and.i183, -2147480472
  %94 = tail call i32 @llvm.bswap.i32(i32 %or2.i185) #12
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i186 = getelementptr i8, ptr %96, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i186, i32 %94) #12, !srcloc !161
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then43
  %ramp_down_wait.2 = phi i32 [ %add49, %if.then43 ], [ %add40, %if.else50 ]
  ret i32 %ramp_down_wait.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tegra210_emc_reset_dram_clktree_values(ptr nocapture noundef %timing) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trained_dram_clktree = getelementptr inbounds %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 11
  %0 = ptrtoint ptr %trained_dram_clktree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trained_dram_clktree, align 4
  %current_dram_clktree = getelementptr inbounds %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 12
  %2 = ptrtoint ptr %current_dram_clktree to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %current_dram_clktree, align 4
  %arrayidx3 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 12, i32 4
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 11, i32 5
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 12, i32 5
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 11, i32 6
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 12, i32 6
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 11, i32 7
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr %struct.tegra210_emc_timing, ptr %timing, i32 0, i32 12, i32 7
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx21, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_dll_disable(ptr nocapture noundef readonly %emc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 700
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !162
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call fastcc void @update_dll_control(ptr noundef %emc, i32 noundef %4, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_dll_control(ptr nocapture noundef readonly %emc, i32 noundef %value, i1 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %value) #12
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #12, !srcloc !161
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #12, !srcloc !161
  %num_channels.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %5 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8.not.i = icmp eq i32 %6, 0
  br i1 %cmp8.not.i, label %entry.for.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.i:                                       ; preds = %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %err.010.i = phi i32 [ %or.i, %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ %inc.i, %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.09.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.07.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 692
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !162
  %10 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.i, label %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit.i

tegra210_emc_wait_for_update.exit.i:              ; preds = %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge, %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %for.body.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge ], [ -110, %if.end.i.i.tegra210_emc_wait_for_update.exit.i_crit_edge ]
  %or.i = or i32 %retval.0.i.i, %err.010.i
  %inc.i = add nuw i32 %i.09.i, 1
  %12 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge, label %for.end.i

tegra210_emc_wait_for_update.exit.i.for.body.i_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %tegra210_emc_wait_for_update.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %for.end.i.tegra210_emc_timing_update.exit_crit_edge, label %do.end.i

for.end.i.tegra210_emc_timing_update.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_timing_update.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %or.i) #15
  %16 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %num_channels.i, align 4
  br label %tegra210_emc_timing_update.exit

tegra210_emc_timing_update.exit:                  ; preds = %do.end.i, %for.end.i.tegra210_emc_timing_update.exit_crit_edge
  %17 = phi i32 [ %13, %for.end.i.tegra210_emc_timing_update.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.not = icmp eq i32 %17, 0
  br i1 %cmp9.not, label %tegra210_emc_timing_update.exit.for.end_crit_edge, label %tegra210_emc_timing_update.exit.for.body_crit_edge

tegra210_emc_timing_update.exit.for.body_crit_edge: ; preds = %tegra210_emc_timing_update.exit
  br label %for.body

tegra210_emc_timing_update.exit.for.end_crit_edge: ; preds = %tegra210_emc_timing_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %tegra210_emc_wait_for_update.exit.for.body_crit_edge, %tegra210_emc_timing_update.exit.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %tegra210_emc_wait_for_update.exit.for.body_crit_edge ], [ 0, %tegra210_emc_timing_update.exit.for.body_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.010
  br label %for.body.i7

for.body.i7:                                      ; preds = %if.end.i.for.body.i7_crit_edge, %for.body
  %i.07.i = phi i32 [ 0, %for.body ], [ %inc.i8, %if.end.i.for.body.i7_crit_edge ]
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %19, i32 700
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #12, !srcloc !162
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i = icmp eq i32 %21, 0
  %cmp3.i = xor i1 %tobool.i, %state
  br i1 %cmp3.i, label %for.body.i7.tegra210_emc_wait_for_update.exit_crit_edge, label %if.end.i

for.body.i7.tegra210_emc_wait_for_update.exit_crit_edge: ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit

if.end.i:                                         ; preds = %for.body.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #12
  %inc.i8 = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i8, 1000
  br i1 %exitcond.not.i, label %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge, label %if.end.i.for.body.i7_crit_edge

if.end.i.for.body.i7_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i7

if.end.i.tegra210_emc_wait_for_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_wait_for_update.exit

tegra210_emc_wait_for_update.exit:                ; preds = %if.end.i.tegra210_emc_wait_for_update.exit_crit_edge, %for.body.i7.tegra210_emc_wait_for_update.exit_crit_edge
  %inc = add nuw i32 %i.010, 1
  %23 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_channels.i, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %tegra210_emc_wait_for_update.exit.for.body_crit_edge, label %tegra210_emc_wait_for_update.exit.for.end_crit_edge

tegra210_emc_wait_for_update.exit.for.end_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

tegra210_emc_wait_for_update.exit.for.body_crit_edge: ; preds = %tegra210_emc_wait_for_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %tegra210_emc_wait_for_update.exit.for.end_crit_edge, %tegra210_emc_timing_update.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra210_emc_dll_enable(ptr nocapture noundef readonly %emc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 700
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !162
  %3 = or i32 %2, 16777216
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call fastcc void @update_dll_control(ptr noundef %emc, i32 noundef %4, i1 noundef zeroext true)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_driver_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra210_emc_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_emc_driver_exit() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra210_emc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 288, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup192_crit_edge, label %if.end

entry.cleanup192_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %clk = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup192

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @tegra210_emc_probe.__key, i16 noundef signext 3) #12
  %dev11 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev11, align 4
  %call13 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %dev) #12
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %call.i, align 8
  %cmp.i319 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i319, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call13 to i32
  br label %cleanup192

if.end19:                                         ; preds = %if.end8
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %regs = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %regs, align 8
  %cmp.i320 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %if.then23, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end19
  %call27 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #12
  %arrayidx = getelementptr %struct.tegra210_emc, ptr %call.i, i32 0, i32 11, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %arrayidx, align 4
  %cmp.i321 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321, label %for.cond.preheader.if.then31_crit_edge, label %for.cond.1

for.cond.preheader.if.then31_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call20 to i32
  br label %cleanup192

for.cond.1:                                       ; preds = %for.cond.preheader
  %call27.1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 2) #12
  %arrayidx.1 = getelementptr %struct.tegra210_emc, ptr %call.i, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27.1, ptr %arrayidx.1, align 4
  %cmp.i321.1 = icmp ugt ptr %call27.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i321.1, label %for.cond.1.if.then31_crit_edge, label %for.end

for.cond.1.if.then31_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then31:                                        ; preds = %for.cond.1.if.then31_crit_edge, %for.cond.preheader.if.then31_crit_edge
  %call27.lcssa = phi ptr [ %call27, %for.cond.preheader.if.then31_crit_edge ], [ %call27.1, %for.cond.1.if.then31_crit_edge ]
  %10 = ptrtoint ptr %call27.lcssa to i32
  br label %cleanup192

for.end:                                          ; preds = %for.cond.1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  %regs.i.i = getelementptr inbounds %struct.tegra_mc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 84
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !162
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %17 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i, ptr %17, align 8
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %20, i32 260
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #12, !srcloc !162
  %22 = lshr i32 %21, 24
  %and3.i = and i32 %22, 3
  %dram_type.i = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 14
  %23 = ptrtoint ptr %dram_type.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and3.i, ptr %dram_type.i, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %25, i32 1412
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #12, !srcloc !162
  %27 = and i32 %26, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %27)
  %.not.i = icmp eq i32 %27, 100663296
  %.sink27.i = select i1 %.not.i, i32 2, i32 1
  %28 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink27.i, ptr %28, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %32 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev11, align 4
  %call38 = tail call i32 @of_reserved_mem_device_init_by_name(ptr noundef %33, ptr noundef %31, ptr noundef nonnull @.str.13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  %34 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev11, align 4
  br i1 %cmp39, label %do.end43, label %if.end45

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.14, i32 noundef %call38) #15
  br label %cleanup192

if.end45:                                         ; preds = %for.end
  %call47 = tail call i32 @of_reserved_mem_device_init_by_name(ptr noundef %35, ptr noundef %31, ptr noundef nonnull @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call47)
  %cmp49.not = icmp eq i32 %call47, -19
  %or.cond = or i1 %cmp48, %cmp49.not
  br i1 %or.cond, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.19, i32 noundef %call47) #15
  br label %release

if.end55:                                         ; preds = %if.end45
  %nominal = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %nominal to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nominal, align 4
  %tobool56.not = icmp eq ptr %39, null
  br i1 %tobool56.not, label %if.end55.if.end63_crit_edge, label %if.then57

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then57:                                        ; preds = %if.end55
  %num_timings = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp2.not.i = icmp eq i32 %41, 0
  br i1 %cmp2.not.i, label %if.then57.if.end63_crit_edge, label %if.then57.for.body.i_crit_edge

if.then57.for.body.i_crit_edge:                   ; preds = %if.then57
  br label %for.body.i

if.then57.if.end63_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then57.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then57.for.body.i_crit_edge ]
  %min_volt1.i = getelementptr %struct.tegra210_emc_timing, ptr %39, i32 %i.03.i, i32 3
  %42 = ptrtoint ptr %min_volt1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %min_volt1.i, align 4
  %rate3.i = getelementptr %struct.tegra210_emc_timing, ptr %39, i32 %i.03.i, i32 2
  %44 = ptrtoint ptr %rate3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rate3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i322 = icmp eq i32 %45, 0
  br i1 %tobool.not.i322, label %for.body.i.release_crit_edge, label %if.end.i

for.body.i.release_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i)
  %cmp4.not.i = icmp eq i32 %i.03.i, 0
  br i1 %cmp4.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %sub.i = add i32 %i.03.i, -1
  %rate6.i = getelementptr %struct.tegra210_emc_timing, ptr %39, i32 %sub.i, i32 2
  %46 = ptrtoint ptr %rate6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rate6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp7.not.i = icmp ugt i32 %45, %47
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.release_crit_edge

land.lhs.true.i.release_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %min_volt10.i = getelementptr %struct.tegra210_emc_timing, ptr %39, i32 %sub.i, i32 3
  %48 = ptrtoint ptr %min_volt10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min_volt10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %49)
  %cmp11.i = icmp ult i32 %43, %49
  br i1 %cmp11.i, label %lor.lhs.false.i.release_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i.release_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %41
  br i1 %exitcond.not.i, label %for.inc.i.if.end63_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end63_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.end63:                                         ; preds = %for.inc.i.if.end63_crit_edge, %if.then57.if.end63_crit_edge, %if.end55.if.end63_crit_edge
  %derated = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %derated to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %derated, align 8
  %tobool64.not = icmp eq ptr %51, null
  br i1 %tobool64.not, label %if.end63.if.end72_crit_edge, label %if.then65

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then65:                                        ; preds = %if.end63
  %num_timings67 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 6
  %52 = ptrtoint ptr %num_timings67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_timings67, align 8
  %call68 = tail call fastcc i32 @tegra210_emc_validate_timings(ptr noundef nonnull %51, i32 noundef %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then65.release_crit_edge, label %if.then65.if.end72_crit_edge

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then65.release_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

if.end72:                                         ; preds = %if.then65.if.end72_crit_edge, %if.end63.if.end72_crit_edge
  %timings = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 5
  %54 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %39, ptr %timings, align 4
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 8
  %call75 = tail call i32 @clk_get_rate(ptr noundef %56) #12
  %div = udiv i32 %call75, 1000
  %num_timings77 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %num_timings77 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_timings77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp78334.not = icmp eq i32 %58, 0
  br i1 %cmp78334.not, label %if.end72.for.end89_crit_edge, label %for.body79.lr.ph

if.end72.for.end89_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end89

for.body79.lr.ph:                                 ; preds = %if.end72
  %59 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %timings, align 4
  br label %for.body79

for.body79:                                       ; preds = %for.inc87.for.body79_crit_edge, %for.body79.lr.ph
  %i.1335 = phi i32 [ 0, %for.body79.lr.ph ], [ %inc88, %for.inc87.for.body79_crit_edge ]
  %rate = getelementptr %struct.tegra210_emc_timing, ptr %60, i32 %i.1335, i32 2
  %61 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %div)
  %cmp82 = icmp eq i32 %62, %div
  br i1 %cmp82, label %if.then83, label %for.inc87

if.then83:                                        ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx81 = getelementptr %struct.tegra210_emc_timing, ptr %60, i32 %i.1335
  %last = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 15
  %63 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx81, ptr %last, align 8
  br label %for.end89

for.inc87:                                        ; preds = %for.body79
  %inc88 = add nuw i32 %i.1335, 1
  %exitcond.not = icmp eq i32 %inc88, %58
  br i1 %exitcond.not, label %for.inc87.for.end89_crit_edge, label %for.inc87.for.body79_crit_edge

for.inc87.for.body79_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body79

for.inc87.for.end89_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end89

for.end89:                                        ; preds = %for.inc87.for.end89_crit_edge, %if.then83, %if.end72.for.end89_crit_edge
  %i.1332 = phi i32 [ %i.1335, %if.then83 ], [ 0, %if.end72.for.end89_crit_edge ], [ %58, %for.inc87.for.end89_crit_edge ]
  %64 = ptrtoint ptr %num_timings77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_timings77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1332, i32 %65)
  %cmp91 = icmp eq i32 %i.1332, %65
  br i1 %cmp91, label %do.end95, label %for.body100

do.end95:                                         ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.22, i32 noundef %div) #15
  br label %release

for.body100:                                      ; preds = %for.end89
  %68 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %timings, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tegra210_emc_r21021 to i32))
  %72 = load i8, ptr @tegra210_emc_r21021, align 4
  %conv = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv)
  %cmp105 = icmp eq i32 %71, %conv
  br i1 %cmp105, label %if.then107, label %for.body100.cleanup_crit_edge

for.body100.cleanup_crit_edge:                    ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then107:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #14
  %sequence108 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 8
  %73 = ptrtoint ptr %sequence108 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @tegra210_emc_r21021, ptr %sequence108, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then107, %for.body100.cleanup_crit_edge
  %sequence113 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 8
  %74 = ptrtoint ptr %sequence113 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sequence113, align 8
  %tobool114.not = icmp eq ptr %75, null
  br i1 %tobool114.not, label %do.end118, label %if.end123

do.end118:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %timings, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %79) #15
  br label %release

if.end123:                                        ; preds = %cleanup
  %offsets = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 7
  %80 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tegra210_emc_table_register_offsets, ptr %offsets, align 4
  %refresh = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 19
  %81 = ptrtoint ptr %refresh to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %refresh, align 4
  %provider = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 28
  %82 = ptrtoint ptr %provider to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %provider, align 8
  %dev126 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 28, i32 1
  %83 = ptrtoint ptr %dev126 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dev, ptr %dev126, align 4
  %set_rate = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 28, i32 4
  %84 = ptrtoint ptr %set_rate to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @tegra210_emc_set_rate, ptr %set_rate, align 8
  %85 = ptrtoint ptr %num_timings77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_timings77, align 8
  %87 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %86, i32 20) #12
  %88 = extractvalue { i32, i1 } %87, 1
  br i1 %88, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !163

devm_kcalloc.exit.thread:                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %configs327 = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 28, i32 2
  %89 = ptrtoint ptr %configs327 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %configs327, align 8
  br label %release

devm_kcalloc.exit:                                ; preds = %if.end123
  %90 = extractvalue { i32, i1 } %87, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %90, i32 noundef 3520) #12
  %configs = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 28, i32 2
  %91 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call5.i.i, ptr %configs, align 8
  %tobool134.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool134.not, label %devm_kcalloc.exit.release_crit_edge, label %if.end136

devm_kcalloc.exit.release_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

if.end136:                                        ; preds = %devm_kcalloc.exit
  %92 = ptrtoint ptr %num_timings77 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_timings77, align 8
  %num_configs = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 28, i32 3
  %94 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp142336.not = icmp eq i32 %93, 0
  br i1 %cmp142336.not, label %if.end136.for.end161_crit_edge, label %if.end136.for.body144_crit_edge

if.end136.for.body144_crit_edge:                  ; preds = %if.end136
  br label %for.body144

if.end136.for.end161_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end161

for.body144:                                      ; preds = %for.body144.for.body144_crit_edge, %if.end136.for.body144_crit_edge
  %i.3337 = phi i32 [ %inc160, %for.body144.for.body144_crit_edge ], [ 0, %if.end136.for.body144_crit_edge ]
  %95 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %timings, align 4
  %97 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %configs, align 8
  %arrayidx149 = getelementptr %struct.tegra210_clk_emc_config, ptr %98, i32 %i.3337
  %rate150 = getelementptr %struct.tegra210_emc_timing, ptr %96, i32 %i.3337, i32 2
  %99 = ptrtoint ptr %rate150 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rate150, align 4
  %mul = mul i32 %100, 1000
  %101 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul, ptr %arrayidx149, align 4
  %clk_src_emc = getelementptr %struct.tegra210_emc_timing, ptr %96, i32 %i.3337, i32 6
  %102 = ptrtoint ptr %clk_src_emc to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %clk_src_emc, align 4
  %value152 = getelementptr %struct.tegra210_clk_emc_config, ptr %98, i32 %i.3337, i32 2
  %104 = ptrtoint ptr %value152 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %value152, align 4
  %arrayidx153 = getelementptr %struct.tegra210_emc_timing, ptr %96, i32 %i.3337, i32 36, i32 20
  %105 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx153, align 4
  %and = lshr i32 %106, 27
  %107 = trunc i32 %and to i8
  %108 = and i8 %107, 1
  %109 = getelementptr %struct.tegra210_clk_emc_config, ptr %98, i32 %i.3337, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %108, ptr %109, align 4
  %inc160 = add nuw i32 %i.3337, 1
  %111 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_configs, align 4
  %cmp142 = icmp ult i32 %inc160, %112
  br i1 %cmp142, label %for.body144.for.body144_crit_edge, label %for.body144.for.end161_crit_edge

for.body144.for.end161_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end161

for.body144.for.body144_crit_edge:                ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body144

for.end161:                                       ; preds = %for.body144.for.end161_crit_edge, %if.end136.for.end161_crit_edge
  %clkchange_delay = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 25
  %113 = ptrtoint ptr %clkchange_delay to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 100, ptr %clkchange_delay, align 8
  %training_interval = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 17
  %114 = ptrtoint ptr %training_interval to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 100, ptr %training_interval, align 8
  %115 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev11, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %116, i32 0, i32 8
  %117 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i, ptr %driver_data.i, align 4
  %refresh_timer = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %refresh_timer, ptr noundef nonnull @tegra210_emc_poll_refresh, i32 noundef 524288, ptr noundef nonnull @.str.31, ptr noundef nonnull @tegra210_emc_probe.__key.30) #12
  %refresh_poll = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refresh_poll, i32 noundef 4) #12
  %118 = ptrtoint ptr %refresh_poll to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 0, ptr %refresh_poll, align 4
  %refresh_poll_interval = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 20
  %119 = ptrtoint ptr %refresh_poll_interval to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1000, ptr %refresh_poll_interval, align 8
  %training = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %training, ptr noundef nonnull @tegra210_emc_train, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @tegra210_emc_probe.__key.32) #12
  tail call fastcc void @tegra210_emc_debugfs_init(ptr noundef nonnull %call.i)
  %120 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev11, align 4
  %call181 = tail call ptr @devm_thermal_of_cooling_device_register(ptr noundef %121, ptr noundef %31, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i, ptr noundef nonnull @tegra210_emc_cd_ops) #12
  %cmp.i323 = icmp ugt ptr %call181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i323, label %if.then183, label %for.end161.cleanup192_crit_edge

for.end161.cleanup192_crit_edge:                  ; preds = %for.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup192

if.then183:                                       ; preds = %for.end161
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %call181 to i32
  %123 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.35, i32 noundef %122) #15
  %debugfs = getelementptr inbounds %struct.tegra210_emc, ptr %call.i, i32 0, i32 27
  %125 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %126) #12
  br label %release

release:                                          ; preds = %if.then183, %devm_kcalloc.exit.release_crit_edge, %devm_kcalloc.exit.thread, %do.end118, %do.end95, %if.then65.release_crit_edge, %lor.lhs.false.i.release_crit_edge, %land.lhs.true.i.release_crit_edge, %for.body.i.release_crit_edge, %do.end53
  %err.0 = phi i32 [ %call47, %do.end53 ], [ %call68, %if.then65.release_crit_edge ], [ -2, %do.end95 ], [ %122, %if.then183 ], [ -524, %do.end118 ], [ -12, %devm_kcalloc.exit.release_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %land.lhs.true.i.release_crit_edge ], [ -22, %lor.lhs.false.i.release_crit_edge ], [ -22, %for.body.i.release_crit_edge ]
  %127 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev11, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %128) #12
  br label %cleanup192

cleanup192:                                       ; preds = %release, %for.end161.cleanup192_crit_edge, %do.end43, %if.then31, %if.then23, %if.then16, %if.then5, %entry.cleanup192_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %5, %if.then16 ], [ %8, %if.then23 ], [ %10, %if.then31 ], [ %call38, %do.end43 ], [ %err.0, %release ], [ -12, %entry.cleanup192_crit_edge ], [ 0, %for.end161.cleanup192_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %3) #12
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_emc_validate_timings(ptr nocapture noundef readonly %timings, i32 noundef %num_timings) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_timings)
  %cmp2.not = icmp eq i32 %num_timings, 0
  br i1 %cmp2.not, label %entry.cleanup21_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %min_volt1 = getelementptr %struct.tegra210_emc_timing, ptr %timings, i32 %i.03, i32 3
  %0 = ptrtoint ptr %min_volt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_volt1, align 4
  %rate3 = getelementptr %struct.tegra210_emc_timing, ptr %timings, i32 %i.03, i32 2
  %2 = ptrtoint ptr %rate3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.cleanup21_crit_edge, label %if.end

for.body.cleanup21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03)
  %cmp4.not = icmp eq i32 %i.03, 0
  br i1 %cmp4.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %sub = add i32 %i.03, -1
  %rate6 = getelementptr %struct.tegra210_emc_timing, ptr %timings, i32 %sub, i32 2
  %4 = ptrtoint ptr %rate6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7.not = icmp ugt i32 %3, %5
  br i1 %cmp7.not, label %lor.lhs.false, label %land.lhs.true.cleanup21_crit_edge

land.lhs.true.cleanup21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

lor.lhs.false:                                    ; preds = %land.lhs.true
  %min_volt10 = getelementptr %struct.tegra210_emc_timing, ptr %timings, i32 %sub, i32 3
  %6 = ptrtoint ptr %min_volt10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_volt10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp11 = icmp ult i32 %1, %7
  br i1 %cmp11, label %lor.lhs.false.cleanup21_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.cleanup21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %num_timings
  br i1 %exitcond.not, label %for.inc.cleanup21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup21

cleanup21:                                        ; preds = %for.inc.cleanup21_crit_edge, %lor.lhs.false.cleanup21_crit_edge, %land.lhs.true.cleanup21_crit_edge, %for.body.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup21_crit_edge ], [ -22, %land.lhs.true.cleanup21_crit_edge ], [ -22, %lor.lhs.false.cleanup21_crit_edge ], [ -22, %for.body.cleanup21_crit_edge ], [ 0, %for.inc.cleanup21_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_set_rate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config, align 4
  %last = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last, align 8
  %rate2 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rate2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate2, align 4
  %mul = mul i32 %7, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp = icmp eq i32 %3, %mul
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_timings = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp390.not = icmp eq i32 %9, 0
  br i1 %cmp390.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %timings = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rate4 = getelementptr %struct.tegra210_emc_timing, ptr %11, i32 %i.091, i32 2
  %12 = ptrtoint ptr %rate4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate4, align 4
  %mul5 = mul i32 %13, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5, i32 %3)
  %cmp6 = icmp eq i32 %mul5, %3
  br i1 %cmp6, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %11, i32 %i.091
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 204000000, i32 %3)
  %cmp13 = icmp ugt i32 %3, 204000000
  br i1 %cmp13, label %land.lhs.true, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %trained = getelementptr %struct.tegra210_emc_timing, ptr %11, i32 %i.091, i32 9
  %14 = ptrtoint ptr %trained to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trained, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %next = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %next, align 4
  %call17 = tail call i64 @ktime_get() #12
  %clkchange_time = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 24
  %17 = ptrtoint ptr %clkchange_time to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %clkchange_time, align 8
  %sub.i = sub i64 %call17, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %19 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %19, i32 0) #16, !srcloc !164
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %20, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %20, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %19, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #16, !srcloc !165
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %21, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %cond213.i.i.i)
  %cmp19 = icmp sgt i64 %cond213.i.i.i, -1
  br i1 %cmp19, label %land.lhs.true20, label %if.end16.do.body42_crit_edge

if.end16.do.body42_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

land.lhs.true20:                                  ; preds = %if.end16
  %clkchange_delay = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %clkchange_delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clkchange_delay, align 8
  %conv = sext i32 %23 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i, i64 %conv)
  %cmp21 = icmp slt i64 %cond213.i.i.i, %conv
  br i1 %cmp21, label %cond.false36, label %land.lhs.true20.do.body42_crit_edge

land.lhs.true20.do.body42_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

cond.false36:                                     ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = trunc i64 %cond213.i.i.i to i32
  %sub = sub i32 %23, %conv25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %sub) #12
  br label %do.body42

do.body42:                                        ; preds = %cond.false36, %land.lhs.true20.do.body42_crit_edge, %if.end16.do.body42_crit_edge
  %lock = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 9
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %value = getelementptr inbounds %struct.tegra210_clk_emc_config, ptr %config, i32 0, i32 2
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 4
  %sequence.i = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sequence.i, align 8
  %set_clock.i = getelementptr inbounds %struct.tegra210_emc_sequence, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %set_clock.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_clock.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef %26) #12
  %31 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next, align 4
  %periodic_training.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %periodic_training.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %periodic_training.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %training_interval.i.i = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 17
  %36 = ptrtoint ptr %training_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %training_interval.i.i, align 8
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %37) #12
  %training.i.i = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 18
  %add.i.i = add i32 %call2.i.i.i, %35
  %call1.i.i = tail call i32 @mod_timer(ptr noundef %training.i.i, i32 noundef %add.i.i) #12
  br label %tegra210_emc_set_clock.exit

if.else.i:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %training.i5.i = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 18
  %call.i.i = tail call i32 @del_timer(ptr noundef %training.i5.i) #12
  br label %tegra210_emc_set_clock.exit

tegra210_emc_set_clock.exit:                      ; preds = %if.else.i, %if.then.i
  %call49 = tail call i64 @ktime_get() #12
  %38 = ptrtoint ptr %clkchange_time to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %call49, ptr %clkchange_time, align 8
  %39 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx, ptr %last, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #12
  br label %cleanup

cleanup:                                          ; preds = %tegra210_emc_set_clock.exit, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tegra210_emc_set_clock.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_emc_poll_refresh(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -172
  %temperature1 = getelementptr i8, ptr %timer, i32 88
  %0 = ptrtoint ptr %temperature1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temperature1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @tegra210_emc_get_temperature(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %temperature.0 = phi i32 [ %call, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %temperature4 = getelementptr i8, ptr %timer, i32 48
  %2 = ptrtoint ptr %temperature4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temperature4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %temperature.0, i32 %3)
  %cmp = icmp eq i32 %temperature.0, %3
  br i1 %cmp, label %if.end.reset_crit_edge, label %if.end6

if.end.reset_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %reset

if.end6:                                          ; preds = %if.end
  %4 = zext i32 %temperature.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %temperature.0, label %do.end83 [
    i32 0, label %if.end6.do.body_crit_edge
    i32 1, label %if.end6.do.body_crit_edge138
    i32 2, label %if.end6.do.body_crit_edge139
    i32 3, label %if.end6.do.body_crit_edge140
    i32 4, label %do.body16
    i32 5, label %do.body35
    i32 6, label %if.end6.do.body54_crit_edge
    i32 7, label %if.end6.do.body54_crit_edge141
  ]

if.end6.do.body54_crit_edge141:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

if.end6.do.body54_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

if.end6.do.body_crit_edge140:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end6.do.body_crit_edge139:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end6.do.body_crit_edge138:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %if.end6.do.body_crit_edge138, %if.end6.do.body_crit_edge139, %if.end6.do.body_crit_edge140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_poll_refresh, %if.then12)) #12
          to label %sw.epilog [label %if.then12], !srcloc !166

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %timer, i32 -168
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug231, ptr noundef %6, ptr noundef nonnull @.str.39) #12
  br label %sw.epilog

do.body16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_poll_refresh, %if.then28)) #12
          to label %sw.epilog [label %if.then28], !srcloc !166

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %dev29 = getelementptr i8, ptr %timer, i32 -168
  %7 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug232, ptr noundef %8, ptr noundef nonnull @.str.40) #12
  br label %sw.epilog

do.body35:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_poll_refresh, %if.then47)) #12
          to label %sw.epilog [label %if.then47], !srcloc !166

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %dev48 = getelementptr i8, ptr %timer, i32 -168
  %9 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug233, ptr noundef %10, ptr noundef nonnull @.str.41) #12
  br label %sw.epilog

do.body54:                                        ; preds = %if.end6.do.body54_crit_edge, %if.end6.do.body54_crit_edge141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_poll_refresh, %if.then66)) #12
          to label %sw.epilog [label %if.then66], !srcloc !166

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %dev67 = getelementptr i8, ptr %timer, i32 -168
  %11 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug234, ptr noundef %12, ptr noundef nonnull @.str.42) #12
  br label %sw.epilog

do.end83:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 651, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %temperature.0) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.then66, %do.body54, %if.then47, %do.body35, %if.then28, %do.body16, %if.then12, %do.body
  %.sink = phi i32 [ 0, %do.body ], [ 0, %if.then12 ], [ 1, %do.body16 ], [ 1, %if.then28 ], [ 2, %do.body35 ], [ 2, %if.then47 ], [ 3, %do.body54 ], [ 3, %if.then66 ]
  %call71 = tail call i32 @tegra210_emc_set_refresh(ptr noundef %add.ptr, i32 noundef %.sink)
  %13 = ptrtoint ptr %temperature4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %temperature.0, ptr %temperature4, align 4
  br label %reset

reset:                                            ; preds = %sw.epilog, %if.end.reset_crit_edge
  %refresh_poll = getelementptr i8, ptr %timer, i32 52
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refresh_poll, i32 noundef 4) #12
  %14 = ptrtoint ptr %refresh_poll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refresh_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp99 = icmp sgt i32 %15, 0
  br i1 %cmp99, label %if.else.i, label %reset.cleanup_crit_edge

reset.cleanup_crit_edge:                          ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i:                                        ; preds = %reset
  call void @__sanitizer_cov_trace_pc() #14
  %refresh_poll_interval = getelementptr i8, ptr %timer, i32 -4
  %16 = ptrtoint ptr %refresh_poll_interval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refresh_poll_interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, %call2.i
  %call102 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %reset.cleanup_crit_edge, %do.end83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_emc_train(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -116
  %last = getelementptr i8, ptr %timer, i32 -12
  %0 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %timer, i32 -80
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %sequence = getelementptr i8, ptr %timer, i32 -84
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sequence, align 8
  %periodic_compensation = getelementptr inbounds %struct.tegra210_emc_sequence, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %periodic_compensation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %periodic_compensation, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.body1.if.end11_crit_edge, label %if.then7

do.body1.if.end11_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call i32 %5(ptr noundef %add.ptr) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.body1.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %training_interval = getelementptr i8, ptr %timer, i32 -4
  %7 = ptrtoint ptr %training_interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %training_interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #12
  %add = add i32 %call2.i, %6
  %call14 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra210_emc_debugfs_init(ptr noundef %emc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %debugfs = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 27
  %min_rate = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 27, i32 1
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 27, i32 2
  %3 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_rate, align 8
  %num_timings = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 6
  %4 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp102.not = icmp eq i32 %5, 0
  br i1 %cmp102.not, label %entry.if.then28_crit_edge, label %for.body.lr.ph

entry.if.then28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 5
  %6 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rate = getelementptr %struct.tegra210_emc_timing, ptr %7, i32 %i.0103, i32 2
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %mul = mul i32 %9, 1000
  %10 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %11)
  %cmp5 = icmp ult i32 %mul, %11
  br i1 %cmp5, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %min_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  %mul15 = mul i32 %14, 1000
  %15 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_rate, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul15, i32 %16)
  %cmp18 = icmp ugt i32 %mul15, %16
  br i1 %cmp18, label %if.then19, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul15, ptr %max_rate, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp102.not, label %for.end.if.then28_crit_edge, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.end.if.then28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28:                                        ; preds = %for.end.if.then28_crit_edge, %entry.if.then28_crit_edge
  %clk = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 2
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 8
  %call = tail call i32 @clk_get_rate(ptr noundef %19) #12
  %20 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call, ptr %min_rate, align 4
  %21 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %max_rate, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %for.end.if.end35_crit_edge
  %clk36 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 2
  %22 = ptrtoint ptr %clk36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk36, align 8
  %24 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_rate, align 4
  %26 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_rate, align 8
  %call41 = tail call i32 @clk_set_rate_range(ptr noundef %23, i32 noundef %25, i32 noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end, label %if.end49

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_rate, align 4
  %30 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_rate, align 8
  %32 = ptrtoint ptr %clk36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %29, i32 noundef %31, ptr noundef %33) #15
  br label %cleanup

if.end49:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef null) #12
  %34 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call50, ptr %debugfs, align 8
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 292, ptr noundef %call50, ptr noundef %emc, ptr noundef nonnull @tegra210_emc_debug_available_rates_fops) #12
  %35 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs, align 8
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %emc, ptr noundef nonnull @tegra210_emc_debug_min_rate_fops) #12
  %37 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs, align 8
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 420, ptr noundef %38, ptr noundef %emc, ptr noundef nonnull @tegra210_emc_debug_max_rate_fops) #12
  %39 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debugfs, align 8
  %call63 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 420, ptr noundef %40, ptr noundef %emc, ptr noundef nonnull @tegra210_emc_debug_temperature_fops) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_emc_get_temperature(ptr noundef %emc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %num_devices = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %0 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_devices, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp558.not = icmp eq i32 %1, 0
  br i1 %cmp558.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %num_channels.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %for.body.lr.ph
  %max.061 = phi i32 [ 0, %for.body.lr.ph ], [ %23, %do.end32.for.body_crit_edge ]
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end32.for.body_crit_edge ]
  %shl.i = shl i32 %i.059, 30
  %or.i = or i32 %shl.i, 262144
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #12, !srcloc !161
  %5 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp51.not.i = icmp eq i32 %6, 0
  br i1 %cmp51.not.i, label %for.body.do.end32_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.do.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

for.cond22.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2454.not.i = icmp eq i32 %13, 0
  br i1 %cmp2454.not.i, label %for.cond22.preheader.i.do.end32_crit_edge, label %for.cond22.preheader.i.for.body25.i_crit_edge

for.cond22.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body25.i

for.cond22.preheader.i.do.end32_crit_edge:        ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.052.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i
  %i.07.i.i = phi i32 [ 0, %for.body.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 692
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !162
  %10 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %if.end.i.i, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.end.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 827, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef 4, i32 noundef %i.052.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.052.i, 1
  %12 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %for.cond22.preheader.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.cond22.preheader.i.for.body25.i_crit_edge
  %i.156.i = phi i32 [ %inc31.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %ret.055.i = phi i32 [ %or29.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %i.156.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %15, i32 236
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #12, !srcloc !162
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %shl28.i = shl i32 %ret.055.i, 16
  %or29.i = or i32 %18, %shl28.i
  %inc31.i = add nuw i32 %i.156.i, 1
  %19 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_channels.i, align 4
  %cmp24.i = icmp ult i32 %inc31.i, %20
  br i1 %cmp24.i, label %for.body25.i.for.body25.i_crit_edge, label %tegra210_emc_mrr_read.exit

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25.i

tegra210_emc_mrr_read.exit:                       ; preds = %for.body25.i
  %and = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %tegra210_emc_mrr_read.exit.do.end32_crit_edge, label %do.body8

tegra210_emc_mrr_read.exit.do.end32_crit_edge:    ; preds = %tegra210_emc_mrr_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

do.body8:                                         ; preds = %tegra210_emc_mrr_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_get_temperature.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_get_temperature, %if.then14)) #12
          to label %do.end32 [label %if.then14], !srcloc !166

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_get_temperature.__UNIQUE_ID_ddebug225, ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef %i.059, i32 noundef %or29.i) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then14, %do.body8, %tegra210_emc_mrr_read.exit.do.end32_crit_edge, %for.cond22.preheader.i.do.end32_crit_edge, %for.body.do.end32_crit_edge
  %ret.0.lcssa.i55 = phi i32 [ %or29.i, %tegra210_emc_mrr_read.exit.do.end32_crit_edge ], [ %or29.i, %if.then14 ], [ %or29.i, %do.body8 ], [ 0, %for.cond22.preheader.i.do.end32_crit_edge ], [ 0, %for.body.do.end32_crit_edge ]
  %and34 = and i32 %ret.0.lcssa.i55, 7
  %23 = tail call i32 @llvm.umax.i32(i32 %and34, i32 %max.061)
  %inc = add nuw i32 %i.059, 1
  %24 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_devices, align 8
  %cmp5 = icmp ult i32 %inc, %25
  br i1 %cmp5, label %do.end32.for.body_crit_edge, label %do.end32.for.end_crit_edge

do.end32.for.end_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end32.for.end_crit_edge, %entry.for.end_crit_edge
  %max.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %23, %do.end32.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret i32 %max.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_available_rates_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @tegra210_emc_debug_available_rates_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_available_rates_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %num_timings = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  %rate.peel = getelementptr %struct.tegra210_emc_timing, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rate.peel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate.peel, align 4
  %mul.peel = mul i32 %7, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %mul.peel) #12
  %8 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.peel = icmp ugt i32 %9, 1
  br i1 %cmp.peel, label %for.body.lr.ph.for.body_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.lr.ph.for.body_crit_edge ]
  %10 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings, align 4
  %rate = getelementptr %struct.tegra210_emc_timing, ptr %11, i32 %i.08, i32 2
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %mul = mul i32 %13, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %mul) #12
  %inc = add nuw i32 %i.08, 1
  %14 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_timings, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !167

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.55) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_min_rate_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra210_emc_debug_min_rate_get, ptr noundef nonnull @tegra210_emc_debug_min_rate_set, ptr noundef nonnull @.str.56) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_emc_debug_min_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %min_rate = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 27, i32 1
  %0 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_rate, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %rate, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_min_rate_set(ptr nocapture noundef %data, i64 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %rate to i32
  %num_timings.i = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %timings.i = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %rate1.i14 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rate1.i14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate1.i14, align 4
  %mul.i15 = mul i32 %5, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i15, i32 %conv)
  %cmp2.i16 = icmp eq i32 %mul.i15, %conv
  br i1 %cmp2.i16, label %for.body.lr.ph.i.if.end_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.07.i17 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.07.i17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tegra210_emc_validate_rate.exit_crit_edge, label %for.body.i

for.cond.i.tegra210_emc_validate_rate.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_validate_rate.exit

for.body.i:                                       ; preds = %for.cond.i
  %rate1.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 %inc.i, i32 2
  %6 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate1.i, align 4
  %mul.i = mul i32 %7, 1000
  %cmp2.i = icmp eq i32 %mul.i, %conv
  br i1 %cmp2.i, label %for.body.i.tegra210_emc_validate_rate.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.tegra210_emc_validate_rate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_validate_rate.exit

tegra210_emc_validate_rate.exit:                  ; preds = %for.body.i.tegra210_emc_validate_rate.exit_crit_edge, %for.cond.i.tegra210_emc_validate_rate.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp ult i32 %inc.i, %1
  br i1 %cmp.i.le, label %tegra210_emc_validate_rate.exit.if.end_crit_edge, label %tegra210_emc_validate_rate.exit.cleanup_crit_edge

tegra210_emc_validate_rate.exit.cleanup_crit_edge: ; preds = %tegra210_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra210_emc_validate_rate.exit.if.end_crit_edge: ; preds = %tegra210_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %tegra210_emc_validate_rate.exit.if.end_crit_edge, %for.body.lr.ph.i.if.end_crit_edge
  %clk = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  %call2 = tail call i32 @clk_set_min_rate(ptr noundef %9, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %min_rate = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 27, i32 1
  %10 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %min_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %tegra210_emc_validate_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %tegra210_emc_validate_rate.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_min_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_max_rate_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra210_emc_debug_max_rate_get, ptr noundef nonnull @tegra210_emc_debug_max_rate_set, ptr noundef nonnull @.str.56) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_emc_debug_max_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rate = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rate, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %rate, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_max_rate_set(ptr nocapture noundef %data, i64 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %rate to i32
  %num_timings.i = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %timings.i = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %rate1.i14 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rate1.i14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate1.i14, align 4
  %mul.i15 = mul i32 %5, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i15, i32 %conv)
  %cmp2.i16 = icmp eq i32 %mul.i15, %conv
  br i1 %cmp2.i16, label %for.body.lr.ph.i.if.end_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.07.i17 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.07.i17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tegra210_emc_validate_rate.exit_crit_edge, label %for.body.i

for.cond.i.tegra210_emc_validate_rate.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_validate_rate.exit

for.body.i:                                       ; preds = %for.cond.i
  %rate1.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 %inc.i, i32 2
  %6 = ptrtoint ptr %rate1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate1.i, align 4
  %mul.i = mul i32 %7, 1000
  %cmp2.i = icmp eq i32 %mul.i, %conv
  br i1 %cmp2.i, label %for.body.i.tegra210_emc_validate_rate.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.tegra210_emc_validate_rate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tegra210_emc_validate_rate.exit

tegra210_emc_validate_rate.exit:                  ; preds = %for.body.i.tegra210_emc_validate_rate.exit_crit_edge, %for.cond.i.tegra210_emc_validate_rate.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp ult i32 %inc.i, %1
  br i1 %cmp.i.le, label %tegra210_emc_validate_rate.exit.if.end_crit_edge, label %tegra210_emc_validate_rate.exit.cleanup_crit_edge

tegra210_emc_validate_rate.exit.cleanup_crit_edge: ; preds = %tegra210_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tegra210_emc_validate_rate.exit.if.end_crit_edge: ; preds = %tegra210_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %tegra210_emc_validate_rate.exit.if.end_crit_edge, %for.body.lr.ph.i.if.end_crit_edge
  %clk = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  %call2 = tail call i32 @clk_set_max_rate(ptr noundef %9, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_rate = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 27, i32 2
  %10 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %max_rate, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %tegra210_emc_validate_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %tegra210_emc_validate_rate.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_max_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_temperature_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra210_emc_debug_temperature_get, ptr noundef nonnull @tegra210_emc_debug_temperature_set, ptr noundef nonnull @.str.56) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_debug_temperature_get(ptr noundef %data, ptr nocapture noundef writeonly %temperature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %temperature1 = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 27, i32 3
  %0 = ptrtoint ptr %temperature1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temperature1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @tegra210_emc_get_temperature(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %value.0 = phi i32 [ %call, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %conv = zext i32 %value.0 to i64
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %temperature, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra210_emc_debug_temperature_set(ptr nocapture noundef writeonly %data, i64 noundef %temperature) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %temperature)
  %cmp = icmp ugt i64 %temperature, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %temperature to i32
  %temperature1 = getelementptr inbounds %struct.tegra210_emc, ptr %data, i32 0, i32 27, i32 3
  %0 = ptrtoint ptr %temperature1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %temperature1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra210_emc_cd_max_state(ptr nocapture noundef readnone %cd, ptr nocapture noundef writeonly %state) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_cd_get_state(ptr nocapture noundef readonly %cd, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cd, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %refresh_poll = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refresh_poll, i32 noundef 4) #12
  %2 = ptrtoint ptr %refresh_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refresh_poll, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_cd_set_state(ptr nocapture noundef readonly %cd, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cd, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %refresh_poll = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refresh_poll, i32 noundef 4) #12
  %2 = ptrtoint ptr %refresh_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refresh_poll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp eq i32 %3, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %call.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refresh_poll, i32 noundef 4) #12
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %refresh_poll to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refresh_poll, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %refresh_poll_interval.i = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %refresh_poll_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refresh_poll_interval.i, align 8
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #12
  %refresh_timer.i = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 21
  %add.i = add i32 %call2.i.i, %5
  %call1.i = tail call i32 @mod_timer(ptr noundef %refresh_timer.i, i32 noundef %add.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %refresh_poll to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %refresh_poll, align 4
  %refresh_timer.i8 = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 21
  %call.i = tail call i32 @del_timer_sync(ptr noundef %refresh_timer.i8) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call1 = tail call i32 @clk_rate_exclusive_get(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev2 = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.57, i32 noundef %call1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  %call4 = tail call i32 @clk_get_rate(ptr noundef %7) #12
  %resume_rate = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %resume_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %resume_rate, align 4
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 8
  %call6 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef 204000000) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_suspend.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_suspend, %if.then12)) #12
          to label %cleanup [label %if.then12], !srcloc !166

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %call14 = tail call i32 @clk_get_rate(ptr noundef %12) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_suspend.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %call14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.then12 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %resume_rate = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %resume_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resume_rate, align 4
  %call3 = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef %5) #12
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 8
  tail call void @clk_rate_exclusive_put(ptr noundef %7) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_resume.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_resume, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !166

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  %call11 = tail call i32 @clk_get_rate(ptr noundef %9) #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_resume.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %call11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_rate_exclusive_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !147, !148, !149, !151}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 825, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 852, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra210_emc_do_clock_change._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra210_emc_do_clock_change._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 916, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tegra210_emc_timing_update._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tegra210_emc_timing_update._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1517, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tegra210_emc_adjust_timing._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra210_emc_adjust_timing._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_tegra210_emc__237_2072_tegra210_emc_driver_init6, !21, !"__initcall__kmod_tegra210_emc__237_2072_tegra210_emc_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2072, i32 1}
!22 = !{ptr @__exitcall_tegra210_emc_driver_exit, !21, !"__exitcall_tegra210_emc_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author238, !24, !"__UNIQUE_ID_author238", i1 false, i1 false}
!24 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2074, i32 1}
!25 = !{ptr @__UNIQUE_ID_author239, !26, !"__UNIQUE_ID_author239", i1 false, i1 false}
!26 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2075, i32 1}
!27 = !{ptr @__UNIQUE_ID_description240, !28, !"__UNIQUE_ID_description240", i1 false, i1 false}
!28 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2076, i32 1}
!29 = !{ptr @__UNIQUE_ID_file241, !30, !"__UNIQUE_ID_file241", i1 false, i1 false}
!30 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2077, i32 1}
!31 = !{ptr @__UNIQUE_ID_license242, !30, !"__UNIQUE_ID_license242", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2064, i32 11}
!34 = !{ptr @tegra210_emc_driver, !35, !"tegra210_emc_driver", i1 false, i1 false}
!35 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2062, i32 31}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1836, i32 38}
!38 = !{ptr @tegra210_emc_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1841, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1863, i32 58}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1865, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tegra210_emc_probe._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @tegra210_emc_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1869, i32 58}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1871, i32 3}
!53 = !{ptr @tegra210_emc_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tegra210_emc_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1904, i32 3}
!57 = !{ptr @tegra210_emc_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tegra210_emc_probe._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1922, i32 3}
!61 = !{ptr @tegra210_emc_probe._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tegra210_emc_probe._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1964, i32 3}
!65 = !{ptr @tegra210_emc_probe._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tegra210_emc_probe._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @tegra210_emc_probe.__key.30, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1972, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tegra210_emc_probe.__key.32, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1977, i32 2}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1985, i32 3}
!75 = !{ptr @tegra210_emc_probe._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @tegra210_emc_probe._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"tegra210_emc_sequences", i1 false, i1 false}
!78 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 90, i32 44}
!79 = !{ptr @tegra210_emc_table_register_offsets, !80, !"tegra210_emc_table_register_offsets", i1 false, i1 false}
!80 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 95, i32 1}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 631, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug231, !82, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 636, i32 3}
!88 = !{ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug232, !87, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 641, i32 3}
!91 = !{ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug233, !90, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 646, i32 3}
!94 = !{ptr @tegra210_emc_poll_refresh.__UNIQUE_ID_ddebug234, !93, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 651, i32 3}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 601, i32 4}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @tegra210_emc_get_temperature.__UNIQUE_ID_ddebug225, !98, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1755, i32 3}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @tegra210_emc_debugfs_init._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @tegra210_emc_debugfs_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1763, i32 22}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1765, i32 22}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1767, i32 22}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1769, i32 22}
!114 = !{ptr @tegra210_emc_debug_available_rates_fops, !115, !"tegra210_emc_debug_available_rates_fops", i1 false, i1 false}
!115 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1632, i32 37}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1612, i32 23}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1616, i32 17}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1617, i32 12}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1620, i32 14}
!124 = !{ptr @tegra210_emc_debug_min_rate_fops, !125, !"tegra210_emc_debug_min_rate_fops", i1 false, i1 false}
!125 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1665, i32 1}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @tegra210_emc_debug_max_rate_fops, !128, !"tegra210_emc_debug_max_rate_fops", i1 false, i1 false}
!128 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1695, i32 1}
!129 = !{ptr @tegra210_emc_debug_temperature_fops, !130, !"tegra210_emc_debug_temperature_fops", i1 false, i1 false}
!130 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 1726, i32 1}
!131 = !{ptr @tegra210_emc_cd_ops, !132, !"tegra210_emc_cd_ops", i1 false, i1 false}
!132 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 714, i32 42}
!133 = !{ptr @tegra210_emc_of_match, !134, !"tegra210_emc_of_match", i1 false, i1 false}
!134 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2056, i32 34}
!135 = !{ptr @tegra210_emc_pm_ops, !136, !"tegra210_emc_pm_ops", i1 false, i1 false}
!136 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2052, i32 32}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2019, i32 3}
!139 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @tegra210_emc_suspend._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @tegra210_emc_suspend._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2028, i32 2}
!144 = !{ptr @tegra210_emc_suspend.__UNIQUE_ID_ddebug235, !143, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2040, i32 3}
!147 = !{ptr @tegra210_emc_resume._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @tegra210_emc_resume._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/memory/tegra/tegra210-emc-core.c", i32 2047, i32 2}
!151 = !{ptr @tegra210_emc_resume.__UNIQUE_ID_ddebug236, !150, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 5576115}
!162 = !{i64 5576533}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i64 1232968, i64 1232995, i64 1233017, i64 1233045}
!165 = !{i64 1233376, i64 1233403, i64 1233436, i64 1233457, i64 1233484, i64 1233510}
!166 = !{i64 2148809793, i64 2148809798, i64 2148809811, i64 2148809855, i64 2148809889, i64 2148809910}
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.peeled.count", i32 1}
