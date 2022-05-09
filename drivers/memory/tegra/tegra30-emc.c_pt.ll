; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra30-emc.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra30-emc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_emc = type { ptr, ptr, %struct.icc_provider, %struct.notifier_block, ptr, ptr, i32, i8, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.anon.74, [2 x %struct.emc_rate_request], %struct.mutex }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.74 = type { ptr, i32, i32 }
%struct.emc_rate_request = type { i32, i32 }
%struct.emc_timing = type { i32, [89 x i32], i32, i32, i32, i32, i32, i8, i8 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.73 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.73 = type { ptr }
%struct.tegra_mc_timing = type { i32, ptr }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.icc_node_data = type { ptr, i32 }

@__initcall__kmod_tegra30_emc__247_1649_tegra_emc_driver_init6 = internal global ptr @tegra_emc_driver_init, section ".initcall6.init", align 4
@tegra_emc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_emc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_emc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_emc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_emc_driver_exit = internal global ptr @tegra_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [54 x i8] c"tegra30_emc.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [50 x i8] c"tegra30_emc.description=NVIDIA Tegra30 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [50 x i8] c"tegra30_emc.file=drivers/memory/tegra/tegra30-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [27 x i8] c"tegra30_emc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra30-emc\00", [20 x i8] zeroinitializer }, align 32
@tegra_emc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_emc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_emc_suspend, ptr @tegra_emc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_emc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&emc->rate_lock\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1566, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_emc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/memory/tegra/tegra30-emc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry_ptr = internal global ptr @tegra_emc_probe._entry, section ".printk_index", align 4
@emc_prepare_timing_change.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra30_emc\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"emc_prepare_timing_change\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: using timing rate %lu for requested rate %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@emc_prepare_timing_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mc clock preparation failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@emc_prepare_timing_change._entry_ptr = internal global ptr @emc_prepare_timing_change._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@emc_prepare_timing_change._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"auto-cal finish timeout: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@emc_prepare_timing_change._entry_ptr.13 = internal global ptr @emc_prepare_timing_change._entry.11, section ".printk_index", align 4
@emc_timing_registers = internal constant { [89 x i16], [46 x i8] } { [89 x i16] [i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 84, i16 88, i16 184, i16 92, i16 96, i16 100, i16 104, i16 108, i16 112, i16 116, i16 988, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 996, i16 148, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172, i16 276, i16 176, i16 180, i16 260, i16 700, i16 704, i16 808, i16 812, i16 816, i16 820, i16 824, i16 828, i16 832, i16 836, i16 840, i16 844, i16 848, i16 852, i16 856, i16 860, i16 864, i16 868, i16 936, i16 940, i16 944, i16 948, i16 952, i16 956, i16 960, i16 964, i16 872, i16 876, i16 880, i16 884, i16 752, i16 764, i16 772, i16 776, i16 780, i16 784, i16 788, i16 792, i16 248, i16 732, i16 736, i16 740, i16 200, i16 676, i16 188, i16 728, i16 992, i16 256, i16 288], [46 x i8] zeroinitializer }, align 32
@emc_find_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 436, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no timing for rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emc_find_timing\00", [16 x i8] zeroinitializer }, align 32
@emc_find_timing._entry_ptr = internal global ptr @emc_find_timing._entry, section ".printk_index", align 4
@emc_seq_update_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to update timing: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"emc_seq_update_timing\00", [42 x i8] zeroinitializer }, align 32
@emc_seq_update_timing._entry_ptr = internal global ptr @emc_seq_update_timing._entry, section ".printk_index", align 4
@emc_unprepare_timing_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 833, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"timing configuration can't be reverted\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"emc_unprepare_timing_change\00", [36 x i8] zeroinitializer }, align 32
@emc_unprepare_timing_change._entry_ptr = internal global ptr @emc_unprepare_timing_change._entry, section ".printk_index", align 4
@emc_complete_timing_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 789, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"emc-car handshake timeout: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"emc_complete_timing_change\00", [37 x i8] zeroinitializer }, align 32
@emc_complete_timing_change._entry_ptr = internal global ptr @emc_complete_timing_change._entry, section ".printk_index", align 4
@emc_find_node_by_ram_code.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@emc_find_node_by_ram_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 1018, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device-tree doesn't have memory timings\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"emc_find_node_by_ram_code\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@emc_find_node_by_ram_code._entry_ptr = internal global ptr @emc_find_node_by_ram_code._entry, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,ram-code\00", [16 x i8] zeroinitializer }, align 32
@emc_find_node_by_ram_code._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.4, i32 1033, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"no memory timings for RAM code %u found in device-tree\0A\00", [40 x i8] zeroinitializer }, align 32
@emc_find_node_by_ram_code._entry_ptr.28 = internal global ptr @emc_find_node_by_ram_code._entry.26, section ".printk_index", align 4
@emc_load_timings_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 974, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory timings in: %pOF\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"emc_load_timings_from_dt\00", [39 x i8] zeroinitializer }, align 32
@emc_load_timings_from_dt._entry_ptr = internal global ptr @emc_load_timings_from_dt._entry, section ".printk_index", align 4
@emc_load_timings_from_dt.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@emc_load_timings_from_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 1006, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"got %u timings for RAM code %u (min %luMHz max %luMHz)\0A\00", [40 x i8] zeroinitializer }, align 32
@emc_load_timings_from_dt._entry_ptr.33 = internal global ptr @emc_load_timings_from_dt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 883, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timing %pOF: failed to read rate: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"load_one_timing_from_dt\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr = internal global ptr @load_one_timing_from_dt._entry, section ".printk_index", align 4
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,emc-configuration\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 895, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timing %pOF: failed to read emc timing data: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.40 = internal global ptr @load_one_timing_from_dt._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvidia,emc-auto-cal-interval\00", [35 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.4, i32 911, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"timing %pOFn: failed to read emc_auto_cal_interval: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.44 = internal global ptr @load_one_timing_from_dt._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,emc-mode-1\00", [46 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.4, i32 912, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timing %pOFn: failed to read emc_mode_1: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.48 = internal global ptr @load_one_timing_from_dt._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,emc-mode-2\00", [46 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.4, i32 913, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timing %pOFn: failed to read emc_mode_2: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.52 = internal global ptr @load_one_timing_from_dt._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,emc-mode-reset\00", [42 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.36, ptr @.str.4, i32 914, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timing %pOFn: failed to read emc_mode_reset: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.56 = internal global ptr @load_one_timing_from_dt._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,emc-zcal-cnt-long\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.36, ptr @.str.4, i32 915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"timing %pOFn: failed to read emc_zcal_cnt_long: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.60 = internal global ptr @load_one_timing_from_dt._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,emc-cfg-dyn-self-ref\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvidia,emc-cfg-periodic-qrst\00", [35 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.36, ptr @.str.4, ptr @.str.63, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: %pOF: rate %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@emc_check_mc_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.4, i32 948, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"emc/mc timings number mismatch: %u %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"emc_check_mc_timings\00", [43 x i8] zeroinitializer }, align 32
@emc_check_mc_timings._entry_ptr = internal global ptr @emc_check_mc_timings._entry, section ".printk_index", align 4
@emc_check_mc_timings._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 956, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"emc/mc timing rate mismatch: %lu %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@emc_check_mc_timings._entry_ptr.68 = internal global ptr @emc_check_mc_timings._entry.66, section ".printk_index", align 4
@tegra_emc_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra_emc_isr = private unnamed_addr constant [14 x i8] c"tegra_emc_isr\00", align 1
@tegra_emc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.tegra_emc_isr, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"refresh request overflow timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_emc_isr._entry_ptr = internal global ptr @tegra_emc_isr._entry, section ".printk_index", align 4
@tegra_emc_init_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 1504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get EMC clock: %pe\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_emc_init_clk\00", [45 x i8] zeroinitializer }, align 32
@tegra_emc_init_clk._entry_ptr = internal global ptr @tegra_emc_init_clk._entry, section ".printk_index", align 4
@tegra_emc_init_clk._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.4, i32 1510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register clk notifier: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_emc_init_clk._entry_ptr.75 = internal global ptr @tegra_emc_init_clk._entry.73, section ".printk_index", align 4
@emc_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 1116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no timing for rate %lu min %lu max %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emc_round_rate\00", [17 x i8] zeroinitializer }, align 32
@emc_round_rate._entry_ptr = internal global ptr @emc_round_rate._entry, section ".printk_index", align 4
@tegra_emc_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 1353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set rate range [%lu-%lu] for %pC\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_emc_debugfs_init\00", [41 x i8] zeroinitializer }, align 32
@tegra_emc_debugfs_init._entry_ptr = internal global ptr @tegra_emc_debugfs_init._entry, section ".printk_index", align 4
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"available_rates\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_debug_available_rates_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_available_rates_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra_emc_debug_min_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra_emc_debug_max_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%lu\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@emc_request_rate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.emc_request_rate = private unnamed_addr constant [17 x i8] c"emc_request_rate\00", align 1
@emc_request_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @__func__.emc_request_rate, ptr @.str.4, i32 1156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: type %u: out of range: %lu %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@emc_request_rate._entry_ptr = internal global ptr @emc_request_rate._entry, section ".printk_index", align 4
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"External Memory Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"External Memory (DRAM)\00", [41 x i8] zeroinitializer }, align 32
@tegra_emc_interconnect_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 1474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize ICC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_emc_interconnect_init\00", [36 x i8] zeroinitializer }, align 32
@tegra_emc_interconnect_init._entry_ptr = internal global ptr @tegra_emc_interconnect_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_emc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.4, i32 1603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to acquire clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_emc_suspend\00", [46 x i8] zeroinitializer }, align 32
@tegra_emc_suspend._entry_ptr = internal global ptr @tegra_emc_suspend._entry, section ".printk_index", align 4
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hardware in a bad state\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"tegra_emc_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1639, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1642, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"tegra_emc_of_match\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1633, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"tegra_emc_pm_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1628, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1537, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1566, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 526, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 533, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 611, i32 5 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"emc_timing_registers\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 225, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 436, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 394, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 833, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 789, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1018, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1025, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1032, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 974, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1001, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 880, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 882, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 889, i32 41 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 893, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 911, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 912, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 913, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 914, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 915, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 916, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 917, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 922, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 947, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 954, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 413, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1504, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1510, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1115, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1351, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1356, i32 41 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1358, i32 22 }
@___asan_gen_.370 = private unnamed_addr constant [37 x i8] c"tegra_emc_debug_available_rates_fops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1259, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1360, i32 22 }
@___asan_gen_.376 = private unnamed_addr constant [30 x i8] c"tegra_emc_debug_min_rate_fops\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1362, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant [30 x i8] c"tegra_emc_debug_max_rate_fops\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1322, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1239, i32 23 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1243, i32 17 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1244, i32 12 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1247, i32 14 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1292, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1155, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1449, i32 15 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1464, i32 15 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1474, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1603, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private constant [38 x i8] c"../drivers/memory/tegra/tegra30-emc.c\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1608, i32 6 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tegra_emc_driver_exit, ptr @__initcall__kmod_tegra30_emc__247_1649_tegra_emc_driver_init6, ptr @emc_check_mc_timings._entry, ptr @emc_check_mc_timings._entry.66, ptr @emc_check_mc_timings._entry_ptr, ptr @emc_check_mc_timings._entry_ptr.68, ptr @emc_complete_timing_change._entry, ptr @emc_complete_timing_change._entry_ptr, ptr @emc_find_node_by_ram_code._entry, ptr @emc_find_node_by_ram_code._entry.26, ptr @emc_find_node_by_ram_code._entry_ptr, ptr @emc_find_node_by_ram_code._entry_ptr.28, ptr @emc_find_timing._entry, ptr @emc_find_timing._entry_ptr, ptr @emc_load_timings_from_dt._entry, ptr @emc_load_timings_from_dt._entry.31, ptr @emc_load_timings_from_dt._entry_ptr, ptr @emc_load_timings_from_dt._entry_ptr.33, ptr @emc_prepare_timing_change._entry, ptr @emc_prepare_timing_change._entry.11, ptr @emc_prepare_timing_change._entry_ptr, ptr @emc_prepare_timing_change._entry_ptr.13, ptr @emc_request_rate._entry, ptr @emc_request_rate._entry_ptr, ptr @emc_round_rate._entry, ptr @emc_round_rate._entry_ptr, ptr @emc_seq_update_timing._entry, ptr @emc_seq_update_timing._entry_ptr, ptr @emc_unprepare_timing_change._entry, ptr @emc_unprepare_timing_change._entry_ptr, ptr @load_one_timing_from_dt._entry, ptr @load_one_timing_from_dt._entry.38, ptr @load_one_timing_from_dt._entry.42, ptr @load_one_timing_from_dt._entry.46, ptr @load_one_timing_from_dt._entry.50, ptr @load_one_timing_from_dt._entry.54, ptr @load_one_timing_from_dt._entry.58, ptr @load_one_timing_from_dt._entry_ptr, ptr @load_one_timing_from_dt._entry_ptr.40, ptr @load_one_timing_from_dt._entry_ptr.44, ptr @load_one_timing_from_dt._entry_ptr.48, ptr @load_one_timing_from_dt._entry_ptr.52, ptr @load_one_timing_from_dt._entry_ptr.56, ptr @load_one_timing_from_dt._entry_ptr.60, ptr @tegra_emc_debugfs_init._entry, ptr @tegra_emc_debugfs_init._entry_ptr, ptr @tegra_emc_driver_exit, ptr @tegra_emc_init_clk._entry, ptr @tegra_emc_init_clk._entry.73, ptr @tegra_emc_init_clk._entry_ptr, ptr @tegra_emc_init_clk._entry_ptr.75, ptr @tegra_emc_interconnect_init._entry, ptr @tegra_emc_interconnect_init._entry_ptr, ptr @tegra_emc_isr._entry, ptr @tegra_emc_isr._entry_ptr, ptr @tegra_emc_probe._entry, ptr @tegra_emc_probe._entry_ptr, ptr @tegra_emc_suspend._entry, ptr @tegra_emc_suspend._entry_ptr, ptr @tegra_emc_driver, ptr @.str, ptr @tegra_emc_of_match, ptr @tegra_emc_pm_ops, ptr @tegra_emc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @emc_timing_registers, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @tegra_emc_isr._rs, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @tegra_emc_debug_available_rates_fops, ptr @.str.82, ptr @tegra_emc_debug_min_rate_fops, ptr @.str.83, ptr @tegra_emc_debug_max_rate_fops, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @emc_request_rate._rs, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_prepare_timing_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_prepare_timing_change._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_timing_registers to i32), i32 178, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_find_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_seq_update_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_unprepare_timing_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_complete_timing_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_find_node_by_ram_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_find_node_by_ram_code._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_load_timings_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_load_timings_from_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_check_mc_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_check_mc_timings._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_init_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_init_clk._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_available_rates_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_min_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_max_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_request_rate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_request_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_interconnect_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_emc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_emc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_emc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %opp_params = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %dev) #9
  %mc = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %mc, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %rate_lock = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %rate_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_emc_probe.__key) #9
  %clk_nb = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %clk_nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @emc_clk_change_notify, ptr %clk_nb, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value.i, align 4, !annotation !221
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #9
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %do.body.do.body.i_crit_edge, label %do.body.for.body.i.i_crit_edge

do.body.for.body.i.i_crit_edge:                   ; preds = %do.body
  br label %for.body.i.i

do.body.do.body.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %do.body.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %child.06.i.i) #9
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %cmp.i104 = icmp eq i32 %inc.i.i, 0
  br i1 %cmp.i104, label %of_get_child_count.exit.i.do.body.i_crit_edge, label %if.end5.i

of_get_child_count.exit.i.do.body.i_crit_edge:    ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %of_get_child_count.exit.i.do.body.i_crit_edge, %do.body.do.body.i_crit_edge
  %.b31.i = load i1, ptr @emc_find_node_by_ram_code.__print_once, align 1
  br i1 %.b31.i, label %do.body.i.emc_find_node_by_ram_code.exit.thread_crit_edge, label %if.then1.i

do.body.i.emc_find_node_by_ram_code.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_find_node_by_ram_code.exit.thread

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @emc_find_node_by_ram_code.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %emc_find_node_by_ram_code.exit.thread

if.end5.i:                                        ; preds = %of_get_child_count.exit.i
  %call6.i = tail call i32 @tegra_read_ram_code() #9
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call8.i = tail call ptr @of_get_next_child(ptr noundef %8, ptr noundef null) #9
  %cmp9.not35.i = icmp eq ptr %call8.i, null
  br i1 %cmp9.not35.i, label %if.end5.i.do.end19.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.do.end19.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %np.036.i = phi ptr [ %call16.i, %for.inc.i.for.body.i_crit_edge ], [ %call8.i, %if.end5.i.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.036.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call6.i)
  %cmp12.not.i = icmp eq i32 %10, %call6.i
  br i1 %cmp12.not.i, label %if.then14, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call16.i = call ptr @of_get_next_child(ptr noundef %12, ptr noundef nonnull %np.036.i) #9
  %cmp9.not.i = icmp eq ptr %call16.i, null
  br i1 %cmp9.not.i, label %for.inc.i.do.end19.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end19.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end19.i:                                       ; preds = %for.inc.i.do.end19.i_crit_edge, %if.end5.i.do.end19.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call6.i) #12
  br label %emc_find_node_by_ram_code.exit.thread

emc_find_node_by_ram_code.exit.thread:            ; preds = %do.end19.i, %if.then1.i, %do.body.i.emc_find_node_by_ram_code.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %if.end19

if.then14:                                        ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  %call.i.i105 = call ptr @of_get_next_child(ptr noundef nonnull %np.036.i, ptr noundef null) #9
  %cmp.not5.i.i106 = icmp eq ptr %call.i.i105, null
  br i1 %cmp.not5.i.i106, label %if.then14.do.end.i_crit_edge, label %if.then14.for.body.i.i112_crit_edge

if.then14.for.body.i.i112_crit_edge:              ; preds = %if.then14
  br label %for.body.i.i112

if.then14.do.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.i.i112:                                  ; preds = %for.body.i.i112.for.body.i.i112_crit_edge, %if.then14.for.body.i.i112_crit_edge
  %num.07.i.i107 = phi i32 [ %inc.i.i109, %for.body.i.i112.for.body.i.i112_crit_edge ], [ 0, %if.then14.for.body.i.i112_crit_edge ]
  %child.06.i.i108 = phi ptr [ %call1.i.i110, %for.body.i.i112.for.body.i.i112_crit_edge ], [ %call.i.i105, %if.then14.for.body.i.i112_crit_edge ]
  %inc.i.i109 = add i32 %num.07.i.i107, 1
  %call1.i.i110 = call ptr @of_get_next_child(ptr noundef %np.036.i, ptr noundef nonnull %child.06.i.i108) #9
  %cmp.not.i.i111 = icmp eq ptr %call1.i.i110, null
  br i1 %cmp.not.i.i111, label %of_get_child_count.exit.i113, label %for.body.i.i112.for.body.i.i112_crit_edge

for.body.i.i112.for.body.i.i112_crit_edge:        ; preds = %for.body.i.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i112

of_get_child_count.exit.i113:                     ; preds = %for.body.i.i112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i109)
  %tobool.not.i = icmp eq i32 %inc.i.i109, 0
  br i1 %tobool.not.i, label %of_get_child_count.exit.i113.do.end.i_crit_edge, label %if.end.i

of_get_child_count.exit.i113.do.end.i_crit_edge:  ; preds = %of_get_child_count.exit.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_child_count.exit.i113.do.end.i_crit_edge, %if.then14.do.end.i_crit_edge
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.29, ptr noundef %np.036.i) #12
  br label %emc_load_timings_from_dt.exit.thread

if.end.i:                                         ; preds = %of_get_child_count.exit.i113
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i109, i32 384) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !222

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %timings73.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %timings73.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %timings73.i, align 4
  br label %emc_load_timings_from_dt.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %20 = extractvalue { i32, i1 } %15, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef %20, i32 noundef 3520) #9
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i.i, ptr %timings.i, align 4
  %tobool4.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool4.not.i, label %devm_kcalloc.exit.i.emc_load_timings_from_dt.exit.thread_crit_edge, label %if.end6.i

devm_kcalloc.exit.i.emc_load_timings_from_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_load_timings_from_dt.exit.thread

if.end6.i:                                        ; preds = %devm_kcalloc.exit.i
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i.i109, ptr %num_timings.i, align 4
  %call8.i114 = call ptr @of_get_next_child(ptr noundef %np.036.i, ptr noundef null) #9
  %cmp.not81.i = icmp eq ptr %call8.i114, null
  br i1 %cmp.not81.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i115_crit_edge

if.end6.i.for.body.i115_crit_edge:                ; preds = %if.end6.i
  br label %for.body.i115

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i115:                                    ; preds = %for.inc.i116.for.body.i115_crit_edge, %if.end6.i.for.body.i115_crit_edge
  %timing.083.i = phi ptr [ %incdec.ptr.i, %for.inc.i116.for.body.i115_crit_edge ], [ %call5.i.i.i, %if.end6.i.for.body.i115_crit_edge ]
  %child.082.i = phi ptr [ %call13.i, %for.inc.i116.for.body.i115_crit_edge ], [ %call8.i114, %if.end6.i.for.body.i115_crit_edge ]
  %call9.i = call fastcc i32 @load_one_timing_from_dt(ptr noundef %call.i, ptr noundef %timing.083.i, ptr noundef nonnull %child.082.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.inc.i116, label %if.then11.i

if.then11.i:                                      ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %child.082.i) #9
  br label %emc_load_timings_from_dt.exit.thread

for.inc.i116:                                     ; preds = %for.body.i115
  %incdec.ptr.i = getelementptr %struct.emc_timing, ptr %timing.083.i, i32 1
  %call13.i = call ptr @of_get_next_child(ptr noundef %np.036.i, ptr noundef nonnull %child.082.i) #9
  %cmp.not.i = icmp eq ptr %call13.i, null
  br i1 %cmp.not.i, label %for.inc.i116.for.end.i_crit_edge, label %for.inc.i116.for.body.i115_crit_edge

for.inc.i116.for.body.i115_crit_edge:             ; preds = %for.inc.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i115

for.inc.i116.for.end.i_crit_edge:                 ; preds = %for.inc.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i116.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %23 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %timings.i, align 4
  %25 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_timings.i, align 4
  call void @sort(ptr noundef %24, i32 noundef %26, i32 noundef 384, ptr noundef nonnull @cmp_timings, ptr noundef null) #9
  %27 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mc, align 4
  %29 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_timings.i, align 4
  %num_timings2.i.i = getelementptr inbounds %struct.tegra_mc, ptr %28, i32 0, i32 9
  %31 = ptrtoint ptr %num_timings2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_timings2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.not.i67.i = icmp eq i32 %30, %32
  br i1 %cmp.not.i67.i, label %for.cond.preheader.i.i, label %do.end.i.i

for.cond.preheader.i.i:                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp643.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp643.not.i.i, label %for.cond.preheader.i.i.do.body20.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.do.body20.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %33 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %timings.i, align 4
  %timings7.i.i = getelementptr inbounds %struct.tegra_mc, ptr %28, i32 0, i32 8
  %35 = ptrtoint ptr %timings7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %timings7.i.i, align 4
  br label %for.body.i69.i

do.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.64, i32 noundef %30, i32 noundef %32) #12
  br label %emc_load_timings_from_dt.exit.thread

for.cond.i.i:                                     ; preds = %for.body.i69.i
  %inc.i68.i = add nuw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i68.i, %30
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.body20.i_crit_edge, label %for.cond.i.i.for.body.i69.i_crit_edge

for.cond.i.i.for.body.i69.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i69.i

for.cond.i.i.do.body20.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20.i

for.body.i69.i:                                   ; preds = %for.cond.i.i.for.body.i69.i_crit_edge, %for.body.lr.ph.i.i
  %i.044.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i68.i, %for.cond.i.i.for.body.i69.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.emc_timing, ptr %34, i32 %i.044.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.tegra_mc_timing, ptr %36, i32 %i.044.i.i
  %41 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp10.not.i.i = icmp eq i32 %40, %42
  br i1 %cmp10.not.i.i, label %for.cond.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.67, i32 noundef %40, i32 noundef %42) #12
  br label %emc_load_timings_from_dt.exit.thread

do.body20.i:                                      ; preds = %for.cond.i.i.do.body20.i_crit_edge, %for.cond.preheader.i.i.do.body20.i_crit_edge
  %.b66.i = load i1, ptr @emc_load_timings_from_dt.__print_once, align 1
  br i1 %.b66.i, label %do.body20.i.emc_load_timings_from_dt.exit_crit_edge, label %if.then22.i

do.body20.i.emc_load_timings_from_dt.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_load_timings_from_dt.exit

if.then22.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @emc_load_timings_from_dt.__print_once, align 1
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call28.i = call i32 @tegra_read_ram_code() #9
  %47 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %timings.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %div.i = udiv i32 %50, 1000000
  %51 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_timings.i, align 4
  %sub.i = add i32 %52, -1
  %arrayidx32.i = getelementptr %struct.emc_timing, ptr %48, i32 %sub.i
  %53 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx32.i, align 4
  %div34.i = udiv i32 %54, 1000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.32, i32 noundef %30, i32 noundef %call28.i, i32 noundef %div.i, i32 noundef %div34.i) #12
  br label %emc_load_timings_from_dt.exit

emc_load_timings_from_dt.exit.thread:             ; preds = %do.end14.i.i, %do.end.i.i, %if.then11.i, %devm_kcalloc.exit.i.emc_load_timings_from_dt.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i
  %retval.0.i117.ph = phi i32 [ -22, %do.end14.i.i ], [ -22, %do.end.i.i ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.emc_load_timings_from_dt.exit.thread_crit_edge ], [ -22, %do.end.i ], [ %call9.i, %if.then11.i ]
  call void @of_node_put(ptr noundef nonnull %np.036.i) #9
  br label %cleanup

emc_load_timings_from_dt.exit:                    ; preds = %if.then22.i, %do.body20.i.emc_load_timings_from_dt.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %np.036.i) #9
  br label %if.end19

if.end19:                                         ; preds = %emc_load_timings_from_dt.exit, %emc_find_node_by_ram_code.exit.thread
  %call20 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 5
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call20, ptr %regs, align 4
  %cmp.i118 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %add.ptr.i = getelementptr i8, ptr %call20, i32 260
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !223
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %59, i32 696
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !223
  %61 = and i32 %57, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %61)
  %cond.i = icmp eq i32 %61, 33554432
  %62 = and i32 %60, -117440513
  %63 = or i32 %62, 16777216
  %64 = call i32 @llvm.bswap.i32(i32 %63) #9
  %and7.i = or i32 %64, 2
  %emc_cfg.0.i = select i1 %cond.i, i32 %and7.i, i32 %64
  %65 = call i32 @llvm.bswap.i32(i32 %emc_cfg.0.i) #9
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr11.i = getelementptr i8, ptr %67, i32 696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %65) #9, !srcloc !224
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr13.i = getelementptr i8, ptr %69, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 134217728) #9, !srcloc !224
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 -1) #9, !srcloc !224
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr18.i = getelementptr i8, ptr %73, i32 8
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #9, !srcloc !223
  %75 = and i32 %74, -117440514
  %76 = or i32 %75, 1
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %add.ptr26.i = getelementptr i8, ptr %78, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %76) #9, !srcloc !224
  %call31 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end26.cleanup_crit_edge, label %if.end33

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %irq = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 6
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call31, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i119 = icmp eq ptr %81, null
  br i1 %tobool.not.i119, label %if.end.i120, label %if.end33.dev_name.exit_crit_edge

if.end33.dev_name.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i120:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i120, %if.end33.dev_name.exit_crit_edge
  %retval.0.i121 = phi ptr [ %83, %if.end.i120 ], [ %81, %if.end33.dev_name.exit_crit_edge ]
  %call.i122 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call31, ptr noundef nonnull @tegra_emc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i121, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool39.not = icmp eq i32 %call.i122, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i122) #12
  br label %cleanup

if.end45:                                         ; preds = %dev_name.exit
  call void @tegra20_clk_set_emc_round_callback(ptr noundef nonnull @emc_round_rate, ptr noundef %call.i) #9
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %call.i.i123 = call i32 @devm_add_action(ptr noundef %85, ptr noundef nonnull @devm_tegra_emc_unset_callback, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool.not.i.i = icmp eq i32 %call.i.i123, 0
  br i1 %tobool.not.i.i, label %if.end.i124, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  call void @tegra20_clk_set_emc_round_callback(ptr noundef null, ptr noundef null) #9
  br label %cleanup

if.end.i124:                                      ; preds = %if.end45
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %call2.i = call ptr @devm_clk_get(ptr noundef %87, ptr noundef null) #9
  %clk.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 4
  %88 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call2.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tegra_emc_init_clk.exit, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i124
  %call12.i = call i32 @clk_notifier_register(ptr noundef %call2.i, ptr noundef %clk_nb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.74, i32 noundef %call12.i) #12
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  %call.i43.i = call i32 @devm_add_action(ptr noundef %90, ptr noundef nonnull @devm_tegra_emc_unreg_clk_notifier, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end19.i.if.end49_crit_edge, label %if.then.i45.i

if.end19.i.if.end49_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then.i45.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %clk.i, align 4
  %call.i47.i = call i32 @clk_notifier_unregister(ptr noundef %92, ptr noundef %clk_nb) #9
  br label %cleanup

tegra_emc_init_clk.exit:                          ; preds = %if.end.i124
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.71, ptr noundef nonnull %call2.i) #12
  %95 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clk.i, align 4
  %97 = ptrtoint ptr %96 to i32
  %tobool47.not = icmp eq ptr %96, null
  br i1 %tobool47.not, label %tegra_emc_init_clk.exit.if.end49_crit_edge, label %tegra_emc_init_clk.exit.cleanup_crit_edge

tegra_emc_init_clk.exit.cleanup_crit_edge:        ; preds = %tegra_emc_init_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_emc_init_clk.exit.if.end49_crit_edge:       ; preds = %tegra_emc_init_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %tegra_emc_init_clk.exit.if.end49_crit_edge, %if.end19.i.if.end49_crit_edge
  %98 = ptrtoint ptr %opp_params to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %opp_params, align 1
  %call51 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 18, i32 0
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %arrayidx.i, align 4
  %max_rate.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 18, i32 0, i32 1
  %101 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %max_rate.i, align 4
  %arrayidx.1.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 18, i32 1
  %102 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx.1.i, align 4
  %max_rate.1.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 18, i32 1, i32 1
  %103 = ptrtoint ptr %max_rate.1.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %max_rate.1.i, align 4
  call fastcc void @tegra_emc_debugfs_init(ptr noundef nonnull %call.i)
  call fastcc void @tegra_emc_interconnect_init(ptr noundef nonnull %call.i)
  %call56 = call zeroext i1 @try_module_get(ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %tegra_emc_init_clk.exit.cleanup_crit_edge, %if.then.i45.i, %do.end17.i, %devm_add_action_or_reset.exit.i, %do.end43, %if.end26.cleanup_crit_edge, %if.then23, %emc_load_timings_from_dt.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %56, %if.then23 ], [ %call.i122, %do.end43 ], [ 0, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ], [ %97, %tegra_emc_init_clk.exit.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ], [ %retval.0.i117.ph, %emc_load_timings_from_dt.exit.thread ], [ %call.i43.i, %if.then.i45.i ], [ %call.i.i123, %devm_add_action_or_reset.exit.i ], [ %call12.i, %do.end17.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_clk_change_notify(ptr noundef %nb, i32 noundef %msg, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -64
  %0 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %msg, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr i8, ptr %nb, i32 20
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %2) #9
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new_rate, align 4
  %call = tail call fastcc i32 @emc_prepare_timing_change(ptr noundef %add.ptr, i32 noundef %4)
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %6) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %bad_state.i = getelementptr i8, ptr %nb, i32 24
  %7 = ptrtoint ptr %bad_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bad_state.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.i, label %sw.bb2.sw.epilog.thread_crit_edge

sw.bb2.sw.epilog.thread_crit_edge:                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18) #12
  %11 = ptrtoint ptr %bad_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bad_state.i, align 4
  br label %sw.epilog.thread

sw.bb4:                                           ; preds = %entry
  %new_rate5 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %new_rate5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_rate5, align 4
  %num_timings.i.i = getelementptr i8, ptr %nb, i32 36
  %14 = ptrtoint ptr %num_timings.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_timings.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp18.not.i.i, label %sw.bb4.do.end.i.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb4.do.end.i.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb4
  %timings.i.i = getelementptr i8, ptr %nb, i32 32
  %16 = ptrtoint ptr %timings.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timings.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.do.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.emc_timing, ptr %17, i32 %i.019.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp2.not.i.i = icmp ult i32 %19, %13
  br i1 %cmp2.not.i.i, label %for.cond.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.do.end.i.i_crit_edge, label %for.end.i.i.emc_find_timing.exit.i_crit_edge

for.end.i.i.emc_find_timing.exit.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_find_timing.exit.i

for.end.i.i.do.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.do.end.i.i_crit_edge, %for.cond.i.i.do.end.i.i_crit_edge, %sw.bb4.do.end.i.i_crit_edge
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %13) #12
  br label %emc_find_timing.exit.i

emc_find_timing.exit.i:                           ; preds = %do.end.i.i, %for.end.i.i.emc_find_timing.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %arrayidx.i.i, %for.end.i.i.emc_find_timing.exit.i_crit_edge ]
  %call1.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call1.i, 100000
  %regs.i = getelementptr i8, ptr %nb, i32 16
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !223
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %and102.i = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool.not103.i = icmp eq i32 %and102.i, 0
  br i1 %tobool.not103.i, label %emc_find_timing.exit.i.land.lhs.true.i_crit_edge, label %emc_find_timing.exit.i.for.end.i_crit_edge

emc_find_timing.exit.i.for.end.i_crit_edge:       ; preds = %emc_find_timing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

emc_find_timing.exit.i.land.lhs.true.i_crit_edge: ; preds = %emc_find_timing.exit.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %emc_find_timing.exit.i.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call5.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !223
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !223
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #9
  %and.i = and i32 %34, 16
  %tobool.not.i16 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i16, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then7.i, %emc_find_timing.exit.i.for.end.i_crit_edge
  %v.0.i = phi i32 [ %29, %if.then7.i ], [ %25, %emc_find_timing.exit.i.for.end.i_crit_edge ], [ %34, %cond.false.i.for.end.i_crit_edge ]
  %and22.i = and i32 %v.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %sw.epilog.thread26, label %if.end26.i

sw.epilog.thread26:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.20, i32 noundef -110) #12
  br label %cleanup

if.end26.i:                                       ; preds = %for.end.i
  %mc.i = getelementptr i8, ptr %nb, i32 -60
  %37 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mc.i, align 4
  %call27.i = tail call i32 @tegra_mc_get_emem_device_count(ptr noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call27.i)
  %cmp28.inv.i = icmp ult i32 %call27.i, 2
  %or.i = select i1 %cmp28.inv.i, i32 -2147483646, i32 -2147483648
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %39) #9, !srcloc !224
  %vref_cal_toggle.i = getelementptr i8, ptr %nb, i32 60
  %42 = ptrtoint ptr %vref_cal_toggle.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %vref_cal_toggle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.end26.i.if.end35.i_crit_edge, label %if.then32.i

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %emc_auto_cal_interval.i = getelementptr inbounds %struct.emc_timing, ptr %retval.0.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %emc_auto_cal_interval.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %emc_auto_cal_interval.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %47, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %45) #9, !srcloc !224
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end26.i.if.end35.i_crit_edge
  %emc_cfg_dyn_self_ref.i = getelementptr inbounds %struct.emc_timing, ptr %retval.0.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %emc_cfg_dyn_self_ref.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %emc_cfg_dyn_self_ref.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool36.not.i = icmp eq i8 %49, 0
  br i1 %tobool36.not.i, label %if.end35.i.if.end42.i_crit_edge, label %if.then37.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %emc_cfg.i = getelementptr i8, ptr %nb, i32 44
  %50 = ptrtoint ptr %emc_cfg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %emc_cfg.i, align 4
  %or38.i = or i32 %51, 268435456
  store i32 %or38.i, ptr %emc_cfg.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %or38.i) #9
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %52) #9, !srcloc !224
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end42.i_crit_edge
  %55 = ptrtoint ptr %vref_cal_toggle.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load43.i = load i8, ptr %vref_cal_toggle.i, align 4
  %56 = and i8 %bf.load43.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %bf.cast45.not.i = icmp eq i8 %56, 0
  br i1 %bf.cast45.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then46.i

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %emc_zcal_cnt_long.i = getelementptr inbounds %struct.emc_timing, ptr %retval.0.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %emc_zcal_cnt_long.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %emc_zcal_cnt_long.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %61, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %59) #9, !srcloc !224
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end42.i.if.end49.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 429496) #9
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #9, !srcloc !224
  %call.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call.i.i, 200000
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr341.i.i = getelementptr i8, ptr %66, i32 692
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr341.i.i) #9, !srcloc !223
  %68 = and i32 %67, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not43.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not43.i.i, label %if.end49.i.if.then52.i_crit_edge, label %if.end49.i.land.lhs.true.i.i_crit_edge

if.end49.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end49.i
  br label %land.lhs.true.i.i

if.end49.i.if.then52.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i.land.lhs.true.i.i_crit_edge, %if.end49.i.land.lhs.true.i.i_crit_edge
  %call6.i.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call6.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i88.i, label %cond.false.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #9
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %71, i32 692
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !223
  %73 = and i32 %72, 32768
  %tobool.not.i87.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i87.i, label %cond.false.i.i.if.then52.i_crit_edge, label %cond.false.i.i.land.lhs.true.i.i_crit_edge

cond.false.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i

cond.false.i.i.if.then52.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

for.end.i88.i:                                    ; preds = %land.lhs.true.i.i
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %75, i32 692
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #9, !srcloc !223
  %77 = and i32 %76, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool24.not.i.i = icmp eq i32 %77, 0
  br i1 %tobool24.not.i.i, label %for.end.i88.i.if.then52.i_crit_edge, label %emc_seq_update_timing.exit.i

for.end.i88.i.if.then52.i_crit_edge:              ; preds = %for.end.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52.i

emc_seq_update_timing.exit.i:                     ; preds = %for.end.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.16, i32 noundef -110) #12
  br label %if.end53.i

if.then52.i:                                      ; preds = %for.end.i88.i.if.then52.i_crit_edge, %cond.false.i.i.if.then52.i_crit_edge, %if.end49.i.if.then52.i_crit_edge
  %bad_state.i18 = getelementptr i8, ptr %nb, i32 24
  %80 = ptrtoint ptr %bad_state.i18 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %bad_state.i18, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %emc_seq_update_timing.exit.i
  %retval.0.i9095.i = phi i32 [ 0, %if.then52.i ], [ -110, %emc_seq_update_timing.exit.i ]
  %81 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mc.i, align 4
  %mc_override.i = getelementptr i8, ptr %nb, i32 40
  %83 = ptrtoint ptr %mc_override.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mc_override.i, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  %regs.i91.i = getelementptr inbounds %struct.tegra_mc, ptr %82, i32 0, i32 3
  %86 = ptrtoint ptr %regs.i91.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i91.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %87, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %85) #9, !srcloc !224
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end53.i, %sw.bb
  %err.0 = phi i32 [ %call, %sw.bb ], [ %retval.0.i9095.i, %if.end53.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i19 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i20 = or i32 %sub.i, 32768
  br i1 %tobool.not.i19, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %do.end.i, %sw.bb2.sw.epilog.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.epilog.thread ], [ %or.i20, %sw.epilog.cleanup_crit_edge ], [ 32879, %sw.epilog.thread26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !223
  %3 = lshr i32 %2, 24
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_emc_isr._rs, ptr noundef nonnull @__func__.tegra_emc_isr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.70) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge
  %6 = shl nuw nsw i32 %and, 24
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !224
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_debugfs_init(ptr noundef %emc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emc, align 4
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 17, i32 2
  %3 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_rate, align 4
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 10
  %4 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp94.not = icmp eq i32 %5, 0
  br i1 %cmp94.not, label %entry.if.then25_crit_edge, label %for.body.lr.ph

entry.if.then25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9
  %6 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.emc_timing, ptr %7, i32 %i.095
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5 = icmp ult i32 %9, %11
  br i1 %cmp5, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %min_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16 = icmp ugt i32 %14, %16
  br i1 %cmp16, label %if.then17, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %max_rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp94.not, label %for.end.if.then25_crit_edge, label %for.end.if.end32_crit_edge

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.end.if.then25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %for.end.if.then25_crit_edge, %entry.if.then25_crit_edge
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 4
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %19) #9
  %20 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call, ptr %min_rate, align 4
  %21 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %max_rate, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %for.end.if.end32_crit_edge
  %clk33 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 4
  %22 = ptrtoint ptr %clk33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk33, align 4
  %24 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min_rate, align 4
  %26 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_rate, align 4
  %call38 = tail call i32 @clk_set_rate_range(ptr noundef %23, i32 noundef %25, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end, label %if.end32.if.end46_crit_edge

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_rate, align 4
  %30 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_rate, align 4
  %32 = ptrtoint ptr %clk33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %29, i32 noundef %31, ptr noundef %33) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.end32.if.end46_crit_edge
  %debugfs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 17
  %call47 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.80, ptr noundef null) #9
  %34 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call47, ptr %debugfs, align 4
  %call51 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 292, ptr noundef %call47, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_available_rates_fops) #9
  %35 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs, align 4
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_min_rate_fops) #9
  %37 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs, align 4
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 420, ptr noundef %38, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_max_rate_fops) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_interconnect_init(ptr noundef %emc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mc = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 1
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc, align 4
  %soc1 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc1, align 4
  %4 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emc, align 4
  %provider = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2
  %dev2 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev2, align 4
  %set = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @emc_icc_set, ptr %set, align 4
  %data = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %provider, ptr %data, align 4
  %icc_ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %icc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icc_ops, align 4
  %aggregate = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %aggregate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aggregate, align 4
  %aggregate7 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %aggregate7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %aggregate7, align 4
  %xlate_extended = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %xlate_extended to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @emc_of_icc_xlate_extended, ptr %xlate_extended, align 4
  %call = tail call i32 @icc_provider_add(ptr noundef %provider) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %entry
  %call10 = tail call ptr @icc_node_create(i32 noundef 1001) #9
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call10 to i32
  br label %del_provider

if.end14:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct.icc_node, ptr %call10, i32 0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.90, ptr %name, align 4
  tail call void @icc_node_add(ptr noundef %call10, ptr noundef %provider) #9
  %call16 = tail call i32 @icc_link_create(ptr noundef %call10, i32 noundef 1002) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.remove_nodes_crit_edge

if.end14.remove_nodes_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_nodes

if.end19:                                         ; preds = %if.end14
  %call20 = tail call ptr @icc_node_create(i32 noundef 1002) #9
  %cmp.i1 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call20 to i32
  br label %remove_nodes

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %name25 = getelementptr inbounds %struct.icc_node, ptr %call20, i32 0, i32 1
  %18 = ptrtoint ptr %name25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.91, ptr %name25, align 4
  tail call void @icc_node_add(ptr noundef %call20, ptr noundef %provider) #9
  br label %cleanup

remove_nodes:                                     ; preds = %if.then22, %if.end14.remove_nodes_crit_edge
  %err.0 = phi i32 [ %call16, %if.end14.remove_nodes_crit_edge ], [ %17, %if.then22 ]
  %call28 = tail call i32 @icc_nodes_remove(ptr noundef %provider) #9
  br label %del_provider

del_provider:                                     ; preds = %remove_nodes, %if.then12
  %err.1 = phi i32 [ %15, %if.then12 ], [ %err.0, %remove_nodes ]
  %call30 = tail call i32 @icc_provider_del(ptr noundef %provider) #9
  br label %do.end

do.end:                                           ; preds = %del_provider, %entry.do.end_crit_edge
  %err.2 = phi i32 [ %call, %entry.do.end_crit_edge ], [ %err.1, %del_provider ]
  %19 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.92, i32 noundef %err.2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emc_prepare_timing_change(ptr noundef %emc, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 10
  %0 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.not.i = icmp eq i32 %1, 0
  br i1 %cmp18.not.i, label %entry.emc_find_timing.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.emc_find_timing.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_find_timing.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.emc_find_timing.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.emc_find_timing.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_find_timing.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp2.not.i = icmp ult i32 %5, %rate
  br i1 %cmp2.not.i, label %for.cond.i, label %for.end.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %for.end.i.emc_find_timing.exit.thread_crit_edge, label %lor.lhs.false

for.end.i.emc_find_timing.exit.thread_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_find_timing.exit.thread

emc_find_timing.exit.thread:                      ; preds = %for.end.i.emc_find_timing.exit.thread_crit_edge, %for.cond.i.emc_find_timing.exit.thread_crit_edge, %entry.emc_find_timing.exit.thread_crit_edge
  %6 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %rate) #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end.i
  %bad_state = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7
  %8 = ptrtoint ptr %bad_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bad_state, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc_prepare_timing_change.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emc_prepare_timing_change, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !226

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emc, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emc_prepare_timing_change.__UNIQUE_ID_ddebug229, ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %13, i32 noundef %rate) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %14 = ptrtoint ptr %bad_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bad_state, align 4
  %mc1.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 1
  %15 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc1.i, align 4
  %num_timings.i632 = getelementptr inbounds %struct.tegra_mc, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %num_timings.i632 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_timings.i632, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not.i = icmp eq i32 %18, 0
  br i1 %cmp20.not.i, label %do.end.do.end15_crit_edge, label %for.body.lr.ph.i634

do.end.do.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

for.body.lr.ph.i634:                              ; preds = %do.end
  %timings.i633 = getelementptr inbounds %struct.tegra_mc, ptr %16, i32 0, i32 8
  %19 = ptrtoint ptr %timings.i633 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timings.i633, align 4
  br label %for.body.i636

for.body.i636:                                    ; preds = %for.inc.i.for.body.i636_crit_edge, %for.body.lr.ph.i634
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i634 ], [ %inc.i638, %for.inc.i.for.body.i636_crit_edge ]
  %arrayidx.i635 = getelementptr %struct.tegra_mc_timing, ptr %20, i32 %i.021.i
  %21 = ptrtoint ptr %arrayidx.i635 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i635, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %rate)
  %cmp3.not.i = icmp eq i32 %22, %rate
  br i1 %cmp3.not.i, label %emc_prepare_mc_clk_cfg.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i636
  %inc.i638 = add nuw i32 %i.021.i, 1
  %exitcond.not.i639 = icmp eq i32 %inc.i638, %18
  br i1 %exitcond.not.i639, label %for.inc.i.do.end15_crit_edge, label %for.inc.i.for.body.i636_crit_edge

for.inc.i.for.body.i636_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i636

for.inc.i.do.end15_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

emc_prepare_mc_clk_cfg.exit:                      ; preds = %for.body.i636
  %emem_data.i = getelementptr %struct.tegra_mc_timing, ptr %20, i32 %i.021.i, i32 1
  %23 = ptrtoint ptr %emem_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %emem_data.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %24, i32 16
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.i, align 4
  %and.i = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i637 = icmp ne i32 %and.i, 0
  %clk.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 4
  %27 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @tegra20_clk_prepare_emc_mc_same_freq(ptr noundef %28, i1 noundef zeroext %tobool.not.i637) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end17, label %emc_prepare_mc_clk_cfg.exit.do.end15_crit_edge

emc_prepare_mc_clk_cfg.exit.do.end15_crit_edge:   ; preds = %emc_prepare_mc_clk_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end15:                                         ; preds = %emc_prepare_mc_clk_cfg.exit.do.end15_crit_edge, %for.inc.i.do.end15_crit_edge, %do.end.do.end15_crit_edge
  %retval.0.i640674 = phi i32 [ %call.i, %emc_prepare_mc_clk_cfg.exit.do.end15_crit_edge ], [ -22, %do.end.do.end15_crit_edge ], [ -22, %for.inc.i.do.end15_crit_edge ]
  %29 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i640674) #12
  br label %cleanup

if.end17:                                         ; preds = %emc_prepare_mc_clk_cfg.exit
  %vref_cal_toggle = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 16
  %31 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %vref_cal_toggle, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %vref_cal_toggle, align 4
  %32 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mc1.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_mc, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 232
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !223
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %mc_override = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11
  %38 = ptrtoint ptr %mc_override to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %mc_override, align 4
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 5
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 12
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !223
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %emc_cfg = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 12
  %43 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %emc_cfg, align 4
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %45, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #9, !srcloc !223
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load26 = load i8, ptr %vref_cal_toggle, align 4
  %49 = lshr i8 %bf.load26, 5
  %.lobit = and i8 %49, 1
  %50 = zext i8 %.lobit to i32
  %emc_mode_1 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 3
  %51 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %emc_mode_1, align 4
  %and = and i32 %52, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %50)
  %cmp = icmp eq i32 %and, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %cmp382.demorgan = or i1 %cmp, %tobool28.not
  %cmp382 = xor i1 %cmp382.demorgan, true
  %not.cmp = xor i1 %cmp, true
  %cmp296 = and i1 %tobool28.not, %not.cmp
  %53 = trunc i32 %52 to i8
  %54 = shl i8 %53, 5
  %bf.shl = and i8 %54, 32
  %bf.clear51 = and i8 %bf.load26, -33
  %bf.set52 = or i8 %bf.shl, %bf.clear51
  %55 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %bf.set52, ptr %vref_cal_toggle, align 4
  %arrayidx = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 80
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool54.not = icmp eq i32 %57, 0
  br i1 %tobool54.not, label %if.end17.if.else65_crit_edge, label %land.lhs.true

if.end17.if.else65_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else65

land.lhs.true:                                    ; preds = %if.end17
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr57 = getelementptr i8, ptr %59, i32 736
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #9, !srcloc !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool60.not = icmp eq i32 %60, 0
  br i1 %tobool60.not, label %if.then61, label %land.lhs.true.if.else65_crit_edge

land.lhs.true.if.else65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else65

if.then61:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load62 = load i8, ptr %vref_cal_toggle, align 4
  %bf.set64 = or i8 %bf.load62, 64
  br label %if.end70

if.else65:                                        ; preds = %land.lhs.true.if.else65_crit_edge, %if.end17.if.else65_crit_edge
  %62 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load67 = load i8, ptr %vref_cal_toggle, align 4
  %bf.clear68 = and i8 %bf.load67, -65
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then61
  %storemerge = phi i8 [ %bf.clear68, %if.else65 ], [ %bf.set64, %if.then61 ]
  %63 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge, ptr %vref_cal_toggle, align 4
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %65, i32 260
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !223
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %and76 = and i32 %67, 3
  %68 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mc1.i, align 4
  %call78 = tail call i32 @tegra_mc_get_emem_device_count(ptr noundef %69) #9
  %70 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %emc_cfg, align 4
  %and80 = and i32 %71, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end70.if.end88_crit_edge, label %if.then82

if.end70.if.end88_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then82:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %and84 = and i32 %71, -268435457
  %72 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and84, ptr %emc_cfg, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %and84)
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr87 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %73) #9, !srcloc !224
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end70.if.end88_crit_edge
  %spec.store.select = phi i32 [ 5, %if.then82 ], [ 3, %if.end70.if.end88_crit_edge ]
  %pre_wait.0 = phi i32 [ 5, %if.then82 ], [ 0, %if.end70.if.end88_crit_edge ]
  %76 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mc1.i, align 4
  %regs.i641 = getelementptr inbounds %struct.tegra_mc, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %regs.i641 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i641, align 4
  %add.ptr.i642 = getelementptr i8, ptr %79, i32 148
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i642) #9, !srcloc !223
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #9
  %and91 = and i32 %81, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %and94 = and i32 %81, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %and94)
  %cmp95 = icmp ugt i32 %and94, 80
  %or.cond = or i1 %tobool92.not, %cmp95
  br i1 %or.cond, label %if.then97, label %if.end88.if.end100_crit_edge

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mc1.i, align 4
  %regs.i643 = getelementptr inbounds %struct.tegra_mc, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %regs.i643 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i643, align 4
  %add.ptr.i644 = getelementptr i8, ptr %85, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644, i32 1342177472) #9, !srcloc !224
  %86 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mc1.i, align 4
  %regs.i645 = getelementptr inbounds %struct.tegra_mc, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %regs.i645 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i645, align 4
  %add.ptr.i646 = getelementptr i8, ptr %89, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i646, i32 16777216) #9, !srcloc !224
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end88.if.end100_crit_edge
  %90 = ptrtoint ptr %mc_override to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mc_override, align 4
  %and102 = and i32 %91, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end108_crit_edge, label %if.then104

if.end100.if.end108_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mc1.i, align 4
  %and107 = and i32 %91, -4
  %94 = tail call i32 @llvm.bswap.i32(i32 %and107) #9
  %regs.i647 = getelementptr inbounds %struct.tegra_mc, ptr %93, i32 0, i32 3
  %95 = ptrtoint ptr %regs.i647 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i647, align 4
  %add.ptr.i648 = getelementptr i8, ptr %96, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i648, i32 %94) #9, !srcloc !224
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %if.end100.if.end108_crit_edge
  %arrayidx.i649 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 71
  %97 = ptrtoint ptr %arrayidx.i649 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i649, align 4
  %and.i650 = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i650)
  %tobool.not.i651 = icmp eq i32 %and.i650, 0
  br i1 %tobool.not.i651, label %if.end108.if.end6.i_crit_edge, label %if.then.i

if.end108.if.end6.i_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end108
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %add.ptr.i653 = getelementptr i8, ptr %100, i32 764
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i653) #9, !srcloc !223
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #9
  %and1.i = and i32 %102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %102, 32
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %105, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %103) #9, !srcloc !224
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.then.i.if.end6.i_crit_edge, %if.end108.if.end6.i_crit_edge
  %preset.0.off0.i = phi i1 [ false, %if.then.i.if.end6.i_crit_edge ], [ true, %if.then3.i ], [ false, %if.end108.if.end6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 78
  %106 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end24.i_crit_edge, label %if.then11.i

if.end6.i.if.end24.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then11.i:                                      ; preds = %if.end6.i
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 4
  %add.ptr14.i = getelementptr i8, ptr %109, i32 248
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !223
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #9
  %and17.i = and i32 %111, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.then11.i.if.end24.i_crit_edge

if.then11.i.if.end24.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %or20.i = or i32 %111, 32
  %112 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #9
  %113 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs, align 4
  %add.ptr22.i = getelementptr i8, ptr %114, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %112) #9, !srcloc !224
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %if.then11.i.if.end24.i_crit_edge, %if.end6.i.if.end24.i_crit_edge
  %preset.1.off0.i = phi i1 [ %preset.0.off0.i, %if.then11.i.if.end24.i_crit_edge ], [ true, %if.then19.i ], [ %preset.0.off0.i, %if.end6.i.if.end24.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 77
  %115 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx26.i, align 4
  %and27.i = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end24.i.emc_dqs_preset.exit_crit_edge, label %if.then29.i

if.end24.i.emc_dqs_preset.exit_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_dqs_preset.exit

if.then29.i:                                      ; preds = %if.end24.i
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 4
  %add.ptr32.i = getelementptr i8, ptr %118, i32 792
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #9, !srcloc !223
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #9
  %and35.i = and i32 %120, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %emc_dqs_preset.exit.thread, label %if.then29.i.emc_dqs_preset.exit_crit_edge

if.then29.i.emc_dqs_preset.exit_crit_edge:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_dqs_preset.exit

emc_dqs_preset.exit.thread:                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %or38.i = or i32 %120, 16
  %121 = tail call i32 @llvm.bswap.i32(i32 %or38.i) #9
  %122 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs, align 4
  %add.ptr40.i = getelementptr i8, ptr %123, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %121) #9, !srcloc !224
  br label %if.then117

emc_dqs_preset.exit:                              ; preds = %if.then29.i.emc_dqs_preset.exit_crit_edge, %if.end24.i.emc_dqs_preset.exit_crit_edge
  %tobool81.not.not = xor i1 %tobool81.not, true
  %brmerge = select i1 %preset.1.off0.i, i1 true, i1 %tobool81.not.not
  %spec.store.select.mux = select i1 %preset.1.off0.i, i32 %spec.store.select, i32 %pre_wait.0
  br i1 %brmerge, label %emc_dqs_preset.exit.if.then117_crit_edge, label %emc_dqs_preset.exit.if.end127_crit_edge

emc_dqs_preset.exit.if.end127_crit_edge:          ; preds = %emc_dqs_preset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

emc_dqs_preset.exit.if.then117_crit_edge:         ; preds = %emc_dqs_preset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

if.then117:                                       ; preds = %emc_dqs_preset.exit.if.then117_crit_edge, %emc_dqs_preset.exit.thread
  %124 = phi i32 [ %spec.store.select.mux, %emc_dqs_preset.exit.if.then117_crit_edge ], [ %spec.store.select, %emc_dqs_preset.exit.thread ]
  %schmitt_to_vref.0677681 = phi i8 [ 0, %emc_dqs_preset.exit.if.then117_crit_edge ], [ 1, %emc_dqs_preset.exit.thread ]
  %125 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs, align 4
  %add.ptr.i655 = getelementptr i8, ptr %126, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i655, i32 16777216) #9, !srcloc !224
  %call.i656 = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call.i656, 200000
  %127 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs, align 4
  %add.ptr341.i = getelementptr i8, ptr %128, i32 692
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr341.i) #9, !srcloc !223
  %130 = and i32 %129, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not43.i = icmp eq i32 %130, 0
  br i1 %tobool.not43.i, label %if.then117.cond.false125_crit_edge, label %if.then117.land.lhs.true.i_crit_edge

if.then117.land.lhs.true.i_crit_edge:             ; preds = %if.then117
  br label %land.lhs.true.i

if.then117.cond.false125_crit_edge:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false125

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.then117.land.lhs.true.i_crit_edge
  %call6.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call6.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i658, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748) #9
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %133, i32 692
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !223
  %135 = and i32 %134, 32768
  %tobool.not.i657 = icmp eq i32 %135, 0
  br i1 %tobool.not.i657, label %cond.false.i.cond.false125_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

cond.false.i.cond.false125_crit_edge:             ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false125

for.end.i658:                                     ; preds = %land.lhs.true.i
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 4
  %add.ptr11.i = getelementptr i8, ptr %137, i32 692
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !223
  %139 = and i32 %138, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool24.not.i = icmp eq i32 %139, 0
  br i1 %tobool24.not.i, label %for.end.i658.cond.false125_crit_edge, label %emc_seq_update_timing.exit

for.end.i658.cond.false125_crit_edge:             ; preds = %for.end.i658
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false125

emc_seq_update_timing.exit:                       ; preds = %for.end.i658
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.16, i32 noundef -110) #12
  br label %cleanup

cond.false125:                                    ; preds = %for.end.i658.cond.false125_crit_edge, %cond.false.i.cond.false125_crit_edge, %if.then117.cond.false125_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %124) #9
  br label %if.end127

if.end127:                                        ; preds = %cond.false125, %emc_dqs_preset.exit.if.end127_crit_edge
  %schmitt_to_vref.0677682 = phi i8 [ %schmitt_to_vref.0677681, %cond.false125 ], [ 0, %emc_dqs_preset.exit.if.end127_crit_edge ]
  %emc_auto_cal_interval = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 2
  %143 = ptrtoint ptr %emc_auto_cal_interval to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %emc_auto_cal_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool128.not = icmp eq i32 %144, 0
  br i1 %tobool128.not, label %if.end127.for.body.preheader_crit_edge, label %if.then129

if.end127.for.body.preheader_crit_edge:           ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then129:                                       ; preds = %if.end127
  %145 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs, align 4
  %add.ptr132 = getelementptr i8, ptr %146, i32 780
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #9, !srcloc !223
  %148 = lshr i32 %147, 8
  %arrayidx136 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 74
  %149 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx136, align 4
  %xor = xor i32 %148, %150
  %and137 = and i32 %xor, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then129.for.body.preheader_crit_edge, label %if.then139

if.then129.for.body.preheader_crit_edge:          ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then139:                                       ; preds = %if.then129
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 4
  %add.ptr141 = getelementptr i8, ptr %152, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 0) #9, !srcloc !224
  %call142 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call142, 300000
  %153 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs, align 4
  %add.ptr146698 = getelementptr i8, ptr %154, i32 684
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146698) #9, !srcloc !223
  %.mask699 = and i32 %155, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask699)
  %tobool150.not700 = icmp eq i32 %.mask699, 0
  br i1 %tobool150.not700, label %if.then139.if.end189_crit_edge, label %if.then139.land.lhs.true154_crit_edge

if.then139.land.lhs.true154_crit_edge:            ; preds = %if.then139
  br label %land.lhs.true154

if.then139.if.end189_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

land.lhs.true154:                                 ; preds = %cond.false172.land.lhs.true154_crit_edge, %if.then139.land.lhs.true154_crit_edge
  %call155 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call155, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call155, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false172

cond.false172:                                    ; preds = %land.lhs.true154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748) #9
  %157 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs, align 4
  %add.ptr146 = getelementptr i8, ptr %158, i32 684
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #9, !srcloc !223
  %.mask = and i32 %159, 128
  %tobool150.not = icmp eq i32 %.mask, 0
  br i1 %tobool150.not, label %cond.false172.if.end189_crit_edge, label %cond.false172.land.lhs.true154_crit_edge

cond.false172.land.lhs.true154_crit_edge:         ; preds = %cond.false172
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true154

cond.false172.if.end189_crit_edge:                ; preds = %cond.false172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

for.end:                                          ; preds = %land.lhs.true154
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %add.ptr162 = getelementptr i8, ptr %161, i32 684
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #9, !srcloc !223
  %.mask693 = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask693)
  %tobool180.not = icmp eq i32 %.mask693, 0
  br i1 %tobool180.not, label %for.end.if.end189_crit_edge, label %do.end187

for.end.if.end189_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

do.end187:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.12, i32 noundef -110) #12
  br label %cleanup

if.end189:                                        ; preds = %for.end.if.end189_crit_edge, %cond.false172.if.end189_crit_edge, %if.then139.if.end189_crit_edge
  %165 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load191 = load i8, ptr %vref_cal_toggle, align 4
  %bf.set193 = or i8 %bf.load191, -128
  store i8 %bf.set193, ptr %vref_cal_toggle, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end189, %if.then129.for.body.preheader_crit_edge, %if.end127.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0701 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %i.0701)
  %cmp199.not = icmp eq i32 %i.0701, 73
  br i1 %cmp199.not, label %for.body.for.inc_crit_edge, label %if.then201

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then201:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx203 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 %i.0701
  %166 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx203, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %arrayidx205 = getelementptr [89 x i16], ptr @emc_timing_registers, i32 0, i32 %i.0701
  %171 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %arrayidx205, align 2
  %conv206 = zext i16 %172 to i32
  %add.ptr207 = getelementptr i8, ptr %170, i32 %conv206
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %168) #9, !srcloc !224
  br label %for.inc

for.inc:                                          ; preds = %if.then201, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0701, 1
  %exitcond.not = icmp eq i32 %inc, 89
  br i1 %exitcond.not, label %for.end209, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end209:                                       ; preds = %for.inc
  %173 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mc1.i, align 4
  %175 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx.i, align 4
  %call212 = tail call i32 @tegra_mc_write_emem_configuration(ptr noundef %174, i32 noundef %176) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end215, label %for.end209.cleanup_crit_edge

for.end209.cleanup_crit_edge:                     ; preds = %for.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end215:                                        ; preds = %for.end209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %cmp216 = icmp eq i32 %and76, 0
  %177 = select i1 %cmp216, i1 %cmp382, i1 false
  br i1 %177, label %if.then221, label %if.end215.if.end243_crit_edge

if.end215.if.end243_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then221:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #11
  %178 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load223 = load i8, ptr %vref_cal_toggle, align 4
  %179 = and i8 %bf.load223, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %bf.cast226.not = icmp eq i8 %179, 0
  %mul228.neg = mul i32 %call78, -256
  %sub = add i32 %mul228.neg, 512
  %cnt.0 = select i1 %bf.cast226.not, i32 512, i32 %sub
  %arrayidx231 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 82
  %180 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx231, align 4
  %and232 = and i32 %181, 1023
  %182 = tail call i32 @llvm.umax.i32(i32 %cnt.0, i32 %and232)
  %and239 = and i32 %181, -67043329
  %shl = shl i32 %182, 16
  %and240 = and i32 %shl, 67043328
  %or = or i32 %and240, %and239
  %183 = tail call i32 @llvm.bswap.i32(i32 %or)
  %184 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs, align 4
  %add.ptr242 = getelementptr i8, ptr %185, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 %183) #9, !srcloc !224
  br label %if.end243

if.end243:                                        ; preds = %if.then221, %if.end215.if.end243_crit_edge
  %186 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs, align 4
  %add.ptr246 = getelementptr i8, ptr %187, i32 984
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246) #9, !srcloc !223
  %189 = and i32 %188, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool250.not = icmp ne i32 %189, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %schmitt_to_vref.0677682)
  %tobool252.not = icmp eq i8 %schmitt_to_vref.0677682, 0
  %or.cond692 = or i1 %tobool252.not, %tobool250.not
  br i1 %or.cond692, label %if.end273.thread, label %if.end273

if.end273.thread:                                 ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs, align 4
  %add.ptr275689 = getelementptr i8, ptr %191, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275689, i32 16777216) #9, !srcloc !224
  br label %if.end287

if.end273:                                        ; preds = %if.end243
  %arrayidx257 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 39
  %192 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx257, align 4
  %194 = and i32 %67, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %194)
  %switch = icmp ne i32 %194, 16384
  %195 = and i32 %193, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %195)
  %switch628 = icmp ne i32 %195, 16384
  %or.cond629 = select i1 %switch, i1 true, i1 %switch628
  %196 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs, align 4
  %add.ptr275 = getelementptr i8, ptr %197, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 16777216) #9, !srcloc !224
  br i1 %or.cond629, label %if.then277, label %if.end273.if.end287_crit_edge

if.end273.if.end287_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287

if.then277:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #11
  %or278 = or i32 %47, 2
  %198 = tail call i32 @llvm.bswap.i32(i32 %or278)
  %199 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs, align 4
  %add.ptr280 = getelementptr i8, ptr %200, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 %198) #9, !srcloc !224
  %201 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %emc_cfg, align 4
  %or282 = or i32 %202, 2097152
  %203 = tail call i32 @llvm.bswap.i32(i32 %or282)
  %204 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs, align 4
  %add.ptr284 = getelementptr i8, ptr %205, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr284, i32 %203) #9, !srcloc !224
  %206 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs, align 4
  %add.ptr286 = getelementptr i8, ptr %207, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 %46) #9, !srcloc !224
  br label %if.end287

if.end287:                                        ; preds = %if.then277, %if.end273.if.end287_crit_edge, %if.end273.thread
  %qrst_used.1.off0691 = phi i1 [ false, %if.end273.thread ], [ true, %if.then277 ], [ false, %if.end273.if.end287_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call78)
  %cmp288 = icmp ugt i32 %call78, 1
  %cond290 = select i1 %cmp288, i32 0, i32 33554432
  %208 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs, align 4
  %add.ptr292 = getelementptr i8, ptr %209, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 %cond290) #9, !srcloc !224
  br i1 %cmp216, label %if.then295, label %if.end287.if.end309_crit_edge

if.end287.if.end309_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end309

if.then295:                                       ; preds = %if.end287
  br i1 %cmp296, label %if.then298, label %if.then295.if.end302_crit_edge

if.then295.if.end302_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end302

if.then298:                                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %emc_mode_1, align 4
  %212 = tail call i32 @llvm.bswap.i32(i32 %211)
  %213 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs, align 4
  %add.ptr301 = getelementptr i8, ptr %214, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr301, i32 %212) #9, !srcloc !224
  br label %if.end302

if.end302:                                        ; preds = %if.then298, %if.then295.if.end302_crit_edge
  %or306 = select i1 %cmp288, i32 1, i32 -2147483647
  %215 = tail call i32 @llvm.bswap.i32(i32 %or306)
  %216 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs, align 4
  %add.ptr308 = getelementptr i8, ptr %217, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr308, i32 %215) #9, !srcloc !224
  br label %if.end309

if.end309:                                        ; preds = %if.end302, %if.end287.if.end309_crit_edge
  %218 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs, align 4
  %add.ptr311 = getelementptr i8, ptr %219, i32 972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr311, i32 16777216) #9, !srcloc !224
  %or312 = or i32 %47, 2
  %220 = tail call i32 @llvm.bswap.i32(i32 %or312)
  %221 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regs, align 4
  %add.ptr314 = getelementptr i8, ptr %222, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr314, i32 %220) #9, !srcloc !224
  %arrayidx316 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 73
  %223 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx316, align 4
  %225 = tail call i32 @llvm.bswap.i32(i32 %224)
  %226 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs, align 4
  %add.ptr318 = getelementptr i8, ptr %227, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr318, i32 %225) #9, !srcloc !224
  br i1 %qrst_used.1.off0691, label %if.end309.if.then333_crit_edge, label %lor.lhs.false328

if.end309.if.then333_crit_edge:                   ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then333

lor.lhs.false328:                                 ; preds = %if.end309
  %228 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %emc_cfg, align 4
  %and320 = lshr i32 %229, 21
  %and320.lobit = and i32 %and320, 1
  %emc_cfg_periodic_qrst = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 7
  %230 = ptrtoint ptr %emc_cfg_periodic_qrst to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %emc_cfg_periodic_qrst, align 4, !range !225
  %232 = zext i8 %231 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and320.lobit, i32 %232)
  %cmp331.not = icmp eq i32 %and320.lobit, %232
  br i1 %cmp331.not, label %lor.lhs.false328.if.end346_crit_edge, label %lor.lhs.false328.if.then333_crit_edge

lor.lhs.false328.if.then333_crit_edge:            ; preds = %lor.lhs.false328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then333

lor.lhs.false328.if.end346_crit_edge:             ; preds = %lor.lhs.false328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end346

if.then333:                                       ; preds = %lor.lhs.false328.if.then333_crit_edge, %if.end309.if.then333_crit_edge
  %emc_cfg_periodic_qrst334 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 7
  %233 = ptrtoint ptr %emc_cfg_periodic_qrst334 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %emc_cfg_periodic_qrst334, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool335.not = icmp eq i8 %234, 0
  %235 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %emc_cfg, align 4
  %and341 = and i32 %236, -2097153
  %masksel = select i1 %tobool335.not, i32 0, i32 2097152
  %storemerge625 = or i32 %and341, %masksel
  store i32 %storemerge625, ptr %emc_cfg, align 4
  %237 = tail call i32 @llvm.bswap.i32(i32 %storemerge625)
  %238 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regs, align 4
  %add.ptr345 = getelementptr i8, ptr %239, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr345, i32 %237) #9, !srcloc !224
  br label %if.end346

if.end346:                                        ; preds = %if.then333, %lor.lhs.false328.if.end346_crit_edge
  %240 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs, align 4
  %add.ptr348 = getelementptr i8, ptr %241, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr348, i32 %46) #9, !srcloc !224
  br i1 %cmp216, label %if.then351, label %if.else397

if.then351:                                       ; preds = %if.end346
  %cond354 = select i1 %cmp288, i32 0, i32 128
  %242 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs, align 4
  %add.ptr356 = getelementptr i8, ptr %243, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 %cond354) #9, !srcloc !224
  %244 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %emc_mode_1, align 4
  %emc_mode_1362 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 13
  %246 = ptrtoint ptr %emc_mode_1362 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %emc_mode_1362, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %247)
  %cmp363.not = icmp eq i32 %245, %247
  br i1 %cmp363.not, label %if.then351.if.end369_crit_edge, label %if.then365

if.then351.if.end369_crit_edge:                   ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end369

if.then365:                                       ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #11
  %248 = tail call i32 @llvm.bswap.i32(i32 %245)
  %249 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs, align 4
  %add.ptr368 = getelementptr i8, ptr %250, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr368, i32 %248) #9, !srcloc !224
  br label %if.end369

if.end369:                                        ; preds = %if.then365, %if.then351.if.end369_crit_edge
  %emc_mode_2 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 4
  %251 = ptrtoint ptr %emc_mode_2 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %emc_mode_2, align 4
  %emc_mode_2370 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 14
  %253 = ptrtoint ptr %emc_mode_2370 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %emc_mode_2370, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %254)
  %cmp371.not = icmp eq i32 %252, %254
  br i1 %cmp371.not, label %if.end369.if.end377_crit_edge, label %if.then373

if.end369.if.end377_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end377

if.then373:                                       ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #11
  %255 = tail call i32 @llvm.bswap.i32(i32 %252)
  %256 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %regs, align 4
  %add.ptr376 = getelementptr i8, ptr %257, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr376, i32 %255) #9, !srcloc !224
  br label %if.end377

if.end377:                                        ; preds = %if.then373, %if.end369.if.end377_crit_edge
  %emc_mode_reset = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 5
  %258 = ptrtoint ptr %emc_mode_reset to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %emc_mode_reset, align 4
  %emc_mode_reset378 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 15
  %260 = ptrtoint ptr %emc_mode_reset378 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %emc_mode_reset378, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %261)
  %cmp379.not = icmp ne i32 %259, %261
  %brmerge627 = select i1 %cmp379.not, i1 true, i1 %cmp382
  br i1 %brmerge627, label %if.then384, label %if.end377.if.end416_crit_edge

if.end377.if.end416_crit_edge:                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

if.then384:                                       ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #11
  %or390 = or i32 %259, 67109120
  %and392 = and i32 %259, -257
  %val.1 = select i1 %cmp382.demorgan, i32 %and392, i32 %or390
  %262 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %263 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regs, align 4
  %add.ptr395 = getelementptr i8, ptr %264, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr395, i32 %262) #9, !srcloc !224
  br label %if.end416

if.else397:                                       ; preds = %if.end346
  %emc_mode_2398 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 4
  %265 = ptrtoint ptr %emc_mode_2398 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %emc_mode_2398, align 4
  %emc_mode_2399 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 14
  %267 = ptrtoint ptr %emc_mode_2399 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %emc_mode_2399, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %268)
  %cmp400.not = icmp eq i32 %266, %268
  br i1 %cmp400.not, label %if.else397.if.end406_crit_edge, label %if.then402

if.else397.if.end406_crit_edge:                   ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end406

if.then402:                                       ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #11
  %269 = tail call i32 @llvm.bswap.i32(i32 %266)
  %270 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs, align 4
  %add.ptr405 = getelementptr i8, ptr %271, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr405, i32 %269) #9, !srcloc !224
  br label %if.end406

if.end406:                                        ; preds = %if.then402, %if.else397.if.end406_crit_edge
  %272 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %emc_mode_1, align 4
  %emc_mode_1408 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 13
  %274 = ptrtoint ptr %emc_mode_1408 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %emc_mode_1408, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %273, i32 %275)
  %cmp409.not = icmp eq i32 %273, %275
  br i1 %cmp409.not, label %if.end406.if.end416_crit_edge, label %if.then411

if.end406.if.end416_crit_edge:                    ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end416

if.then411:                                       ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #11
  %276 = tail call i32 @llvm.bswap.i32(i32 %273)
  %277 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs, align 4
  %add.ptr414 = getelementptr i8, ptr %278, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr414, i32 %276) #9, !srcloc !224
  br label %if.end416

if.end416:                                        ; preds = %if.then411, %if.end406.if.end416_crit_edge, %if.then384, %if.end377.if.end416_crit_edge
  %279 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %emc_mode_1, align 4
  %emc_mode_1418 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 13
  %281 = ptrtoint ptr %emc_mode_1418 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %emc_mode_1418, align 4
  %emc_mode_2419 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 4
  %282 = ptrtoint ptr %emc_mode_2419 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %emc_mode_2419, align 4
  %emc_mode_2420 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 14
  %284 = ptrtoint ptr %emc_mode_2420 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %283, ptr %emc_mode_2420, align 4
  %emc_mode_reset421 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 5
  %285 = ptrtoint ptr %emc_mode_reset421 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %emc_mode_reset421, align 4
  %emc_mode_reset422 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 15
  %287 = ptrtoint ptr %emc_mode_reset422 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %emc_mode_reset422, align 4
  %288 = ptrtoint ptr %vref_cal_toggle to i32
  call void @__asan_load1_noabort(i32 %288)
  %bf.load424 = load i8, ptr %vref_cal_toggle, align 4
  %289 = and i8 %bf.load424, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %bf.cast427.not = icmp eq i8 %289, 0
  br i1 %bf.cast427.not, label %if.end416.if.end437_crit_edge, label %if.then428

if.end416.if.end437_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end437

if.then428:                                       ; preds = %if.end416
  %290 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs, align 4
  %add.ptr430 = getelementptr i8, ptr %291, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr430, i32 285212800) #9, !srcloc !224
  br i1 %cmp288, label %if.then433, label %if.then428.if.end437_crit_edge

if.then428.if.end437_crit_edge:                   ; preds = %if.then428
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end437

if.then433:                                       ; preds = %if.then428
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs, align 4
  %add.ptr435 = getelementptr i8, ptr %293, i32 748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr435, i32 285212736) #9, !srcloc !224
  br label %if.end437

if.end437:                                        ; preds = %if.then433, %if.then428.if.end437_crit_edge, %if.end416.if.end437_crit_edge
  %294 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regs, align 4
  %add.ptr439 = getelementptr i8, ptr %295, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr439, i32 16777216) #9, !srcloc !224
  %296 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mc1.i, align 4
  %regs.i662 = getelementptr inbounds %struct.tegra_mc, ptr %297, i32 0, i32 3
  %298 = ptrtoint ptr %regs.i662 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs.i662, align 4
  %add.ptr.i663 = getelementptr i8, ptr %299, i32 232
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i663) #9, !srcloc !223
  br label %cleanup

cleanup:                                          ; preds = %if.end437, %for.end209.cleanup_crit_edge, %do.end187, %emc_seq_update_timing.exit, %do.end15, %lor.lhs.false.cleanup_crit_edge, %emc_find_timing.exit.thread
  %retval.0 = phi i32 [ %retval.0.i640674, %do.end15 ], [ -110, %do.end187 ], [ 0, %if.end437 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -110, %emc_seq_update_timing.exit ], [ %call212, %for.end209.cleanup_crit_edge ], [ -22, %emc_find_timing.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_get_emem_device_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_write_emem_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra20_clk_prepare_emc_mc_same_freq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_one_timing_from_dt(ptr nocapture noundef readonly %emc, ptr noundef %timing, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !221
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.34, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %node, i32 noundef %call.i.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %timing, align 4
  %data = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 1
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.37, ptr noundef %data, i32 noundef 89, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool2.not = icmp sgt i32 %call.i, -1
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef %node, i32 noundef %call.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %emc_auto_cal_interval = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 2
  %call.i.i117 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.41, ptr noundef %emc_auto_cal_interval, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i117)
  %tobool10.not = icmp sgt i32 %call.i.i117, -1
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef %node, i32 noundef %call.i.i117) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %emc_mode_1 = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 3
  %call.i.i118 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.45, ptr noundef %emc_mode_1, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i118)
  %tobool18.not = icmp sgt i32 %call.i.i118, -1
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.47, ptr noundef %node, i32 noundef %call.i.i118) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %emc_mode_2 = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 4
  %call.i.i119 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.49, ptr noundef %emc_mode_2, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i119)
  %tobool26.not = icmp sgt i32 %call.i.i119, -1
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.51, ptr noundef %node, i32 noundef %call.i.i119) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %emc_mode_reset = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 5
  %call.i.i120 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.53, ptr noundef %emc_mode_reset, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i120)
  %tobool34.not = icmp sgt i32 %call.i.i120, -1
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.55, ptr noundef %node, i32 noundef %call.i.i120) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %emc_zcal_cnt_long = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 6
  %call.i.i121 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.57, ptr noundef %emc_zcal_cnt_long, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i121)
  %tobool42.not = icmp sgt i32 %call.i.i121, -1
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.59, ptr noundef %node, i32 noundef %call.i.i121) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call.i122 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.61, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i122, null
  %emc_cfg_dyn_self_ref = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 8
  %frombool = zext i1 %tobool.i to i8
  %18 = ptrtoint ptr %emc_cfg_dyn_self_ref to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %emc_cfg_dyn_self_ref, align 1
  %call.i123 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.62, ptr noundef null) #9
  %tobool.i124 = icmp ne ptr %call.i123, null
  %emc_cfg_periodic_qrst = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 7
  %frombool51 = zext i1 %tobool.i124 to i8
  %19 = ptrtoint ptr %emc_cfg_periodic_qrst to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool51, ptr %emc_cfg_periodic_qrst, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_one_timing_from_dt.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_one_timing_from_dt, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !226

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %emc, align 4
  %22 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timing, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_one_timing_from_dt.__UNIQUE_ID_ddebug230, ptr noundef %21, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.36, ptr noundef %node, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end48, %do.end46, %do.end38, %do.end30, %do.end22, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i, %do.end6 ], [ %call.i.i117, %do.end14 ], [ %call.i.i118, %do.end22 ], [ %call.i.i119, %do.end30 ], [ %call.i.i120, %do.end38 ], [ %call.i.i121, %do.end46 ], [ 0, %if.then58 ], [ 0, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_timings(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_a, align 4
  %2 = ptrtoint ptr %_b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_clk_set_emc_round_callback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_round_rate(i32 noundef %rate, i32 noundef %min_rate, i32 noundef %max_rate, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %arg, i32 0, i32 10
  %0 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %arg, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %arg, i32 0, i32 9
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.emc_timing, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %min_rate)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.081 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx6 = getelementptr %struct.emc_timing, ptr %5, i32 %i.081
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %rate)
  %cmp8 = icmp uge i32 %10, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081, i32 %sub)
  %cmp11.not = icmp eq i32 %i.081, %sub
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.end13, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max_rate)
  %cmp17 = icmp ugt i32 %10, %max_rate
  br i1 %cmp17, label %if.then18, label %if.end13.if.end32_crit_edge

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then18:                                        ; preds = %if.end13
  %11 = tail call i32 @llvm.umax.i32(i32 %i.081, i32 1)
  %sub25 = add i32 %11, -1
  %arrayidx27 = getelementptr %struct.emc_timing, ptr %5, i32 %sub25
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp29 = icmp ult i32 %13, %8
  br i1 %cmp29, label %if.then18.do.end_crit_edge, label %if.then18.if.end32_crit_edge

if.then18.if.end32_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then18.do.end_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end32:                                         ; preds = %if.then18.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %i.1 = phi i32 [ %sub25, %if.then18.if.end32_crit_edge ], [ %i.081, %if.end13.if.end32_crit_edge ]
  %arrayidx34 = getelementptr %struct.emc_timing, ptr %5, i32 %i.1
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %8)
  %cmp36 = icmp ult i32 %15, %8
  br i1 %cmp36, label %if.end32.for.inc_crit_edge, label %for.end

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.2 = phi i32 [ %i.1, %if.end32.for.inc_crit_edge ], [ %i.081, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.2, 1
  %cmp4 = icmp ult i32 %inc, %1
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end32
  %tobool41.not = icmp eq ptr %arrayidx34, null
  br i1 %tobool41.not, label %for.end.do.end_crit_edge, label %if.end43

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %if.then18.do.end_crit_edge
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.76, i32 noundef %rate, i32 noundef %8, i32 noundef %max_rate) #12
  br label %cleanup

if.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end, %if.then
  %retval.0 = phi i32 [ %19, %if.end43 ], [ -22, %do.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_tegra_emc_unset_callback(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tegra20_clk_set_emc_round_callback(ptr noundef null, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_tegra_emc_unreg_clk_notifier(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %clk_nb = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 3
  %call = tail call i32 @clk_notifier_unregister(ptr noundef %1, ptr noundef %clk_nb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @tegra_emc_debug_available_rates_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_available_rates_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_available_rates_show(ptr noundef %s, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, i32 noundef %7) #9
  %8 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.peel = icmp ugt i32 %9, 1
  br i1 %cmp.peel, label %for.body.lr.ph.for.body_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.lr.ph.for.body_crit_edge ]
  %10 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings, align 4
  %arrayidx = getelementptr %struct.emc_timing, ptr %11, i32 %i.08
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %13) #9
  %inc = add nuw i32 %i.08, 1
  %14 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_timings, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !227

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.87) #9
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
define internal i32 @tegra_emc_debug_min_rate_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_min_rate_get, ptr noundef nonnull @tegra_emc_debug_min_rate_set, ptr noundef nonnull @.str.88) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 17, i32 1
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
define internal i32 @tegra_emc_debug_min_rate_set(ptr noundef %data, i64 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %rate to i32
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.i14 = icmp eq i32 %5, %conv
  br i1 %cmp2.i14, label %for.body.lr.ph.i.if.end_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.07.i15 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.07.i15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tegra_emc_validate_rate.exit_crit_edge, label %for.body.i

for.cond.i.tegra_emc_validate_rate.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_validate_rate.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.emc_timing, ptr %3, i32 %inc.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq i32 %7, %conv
  br i1 %cmp2.i, label %for.body.i.tegra_emc_validate_rate.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.tegra_emc_validate_rate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_validate_rate.exit

tegra_emc_validate_rate.exit:                     ; preds = %for.body.i.tegra_emc_validate_rate.exit_crit_edge, %for.cond.i.tegra_emc_validate_rate.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp ult i32 %inc.i, %1
  br i1 %cmp.i.le, label %tegra_emc_validate_rate.exit.if.end_crit_edge, label %tegra_emc_validate_rate.exit.cleanup_crit_edge

tegra_emc_validate_rate.exit.cleanup_crit_edge:   ; preds = %tegra_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_emc_validate_rate.exit.if.end_crit_edge:    ; preds = %tegra_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %tegra_emc_validate_rate.exit.if.end_crit_edge, %for.body.lr.ph.i.if.end_crit_edge
  %call2 = tail call fastcc i32 @emc_set_min_rate(ptr noundef %data, i32 noundef %conv, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %min_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %tegra_emc_validate_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %tegra_emc_validate_rate.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emc_set_min_rate(ptr noundef %emc, i32 noundef %rate, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_lock = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %rate_lock, i32 noundef 0) #9
  %max_rate = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 18, i32 %type, i32 1
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp1.i = icmp eq i32 %type, 0
  br i1 %cmp1.i, label %entry.if.else.1.i_crit_edge, label %for.inc.i

entry.if.else.1.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.1.i

for.inc.i:                                        ; preds = %entry
  %requested_rate.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 18
  %2 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_rate.i, align 4
  %max_rate16.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 18, i32 0, i32 1
  %4 = ptrtoint ptr %max_rate16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_rate16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp1.1.i = icmp eq i32 %type, 1
  br i1 %cmp1.1.i, label %if.then.1.i, label %for.inc.i.if.else.1.i_crit_edge

for.inc.i.if.else.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.1.i

if.else.1.i:                                      ; preds = %for.inc.i.if.else.1.i_crit_edge, %entry.if.else.1.i_crit_edge
  %min_rate.184.i = phi i32 [ %3, %for.inc.i.if.else.1.i_crit_edge ], [ %rate, %entry.if.else.1.i_crit_edge ]
  %max_rate.183.i = phi i32 [ %5, %for.inc.i.if.else.1.i_crit_edge ], [ %1, %entry.if.else.1.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %min_rate.184.i) #9
  %max_rate16.1.i = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 18, i32 1, i32 1
  %9 = ptrtoint ptr %max_rate16.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_rate16.1.i, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %max_rate.183.i) #9
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 %rate) #9
  %13 = tail call i32 @llvm.umin.i32(i32 %5, i32 %1) #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %if.else.1.i
  %max_rate.1.1.i = phi i32 [ %13, %if.then.1.i ], [ %11, %if.else.1.i ]
  %min_rate.1.1.i = phi i32 [ %12, %if.then.1.i ], [ %8, %if.else.1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %min_rate.1.1.i, i32 %max_rate.1.1.i)
  %cmp23.i = icmp ugt i32 %min_rate.1.1.i, %max_rate.1.1.i
  br i1 %cmp23.i, label %do.body.i, label %if.end30.i

do.body.i:                                        ; preds = %for.inc.1.i
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i.emc_request_rate.exit_crit_edge, label %do.end.i

do.body.i.emc_request_rate.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef %type, i32 noundef %min_rate.1.1.i, i32 noundef %max_rate.1.1.i) #12
  br label %emc_request_rate.exit

if.end30.i:                                       ; preds = %for.inc.1.i
  %16 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %emc, align 4
  %call32.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %17, i32 noundef %min_rate.1.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end30.i.emc_request_rate.exit_crit_edge

if.end30.i.emc_request_rate.exit_crit_edge:       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit

if.end35.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 18, i32 %type
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rate, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %1, ptr %max_rate, align 4
  br label %emc_request_rate.exit

emc_request_rate.exit:                            ; preds = %if.end35.i, %if.end30.i.emc_request_rate.exit_crit_edge, %do.end.i, %do.body.i.emc_request_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end35.i ], [ -34, %do.end.i ], [ -34, %do.body.i.emc_request_rate.exit_crit_edge ], [ %call32.i, %if.end30.i.emc_request_rate.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rate_lock) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_max_rate_get, ptr noundef nonnull @tegra_emc_debug_max_rate_set, ptr noundef nonnull @.str.88) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rate, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %rate, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_set(ptr noundef %data, i64 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %rate to i32
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not.i = icmp eq i32 %1, 0
  br i1 %cmp6.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.i19 = icmp eq i32 %5, %conv
  br i1 %cmp2.i19, label %for.body.lr.ph.i.if.end_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.07.i20 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.07.i20, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tegra_emc_validate_rate.exit_crit_edge, label %for.body.i

for.cond.i.tegra_emc_validate_rate.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_validate_rate.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.emc_timing, ptr %3, i32 %inc.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq i32 %7, %conv
  br i1 %cmp2.i, label %for.body.i.tegra_emc_validate_rate.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.tegra_emc_validate_rate.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_validate_rate.exit

tegra_emc_validate_rate.exit:                     ; preds = %for.body.i.tegra_emc_validate_rate.exit_crit_edge, %for.cond.i.tegra_emc_validate_rate.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i.le = icmp ult i32 %inc.i, %1
  br i1 %cmp.i.le, label %tegra_emc_validate_rate.exit.if.end_crit_edge, label %tegra_emc_validate_rate.exit.cleanup_crit_edge

tegra_emc_validate_rate.exit.cleanup_crit_edge:   ; preds = %tegra_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_emc_validate_rate.exit.if.end_crit_edge:    ; preds = %tegra_emc_validate_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %tegra_emc_validate_rate.exit.if.end_crit_edge, %for.body.lr.ph.i.if.end_crit_edge
  %requested_rate.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 18
  %rate_lock.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %rate_lock.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_rate.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i.i, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9) #9
  %max_rate16.1.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 18, i32 1, i32 1
  %13 = ptrtoint ptr %max_rate16.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_rate16.1.i.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %conv) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp23.i.i = icmp ugt i32 %12, %15
  br i1 %cmp23.i.i, label %do.body.i.i, label %if.end30.i.i

do.body.i.i:                                      ; preds = %if.end
  %call.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.emc_set_max_rate.exit.thread_crit_edge, label %do.end.i.i

do.body.i.i.emc_set_max_rate.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_set_max_rate.exit.thread

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 0, i32 noundef %12, i32 noundef %15) #12
  br label %emc_set_max_rate.exit.thread

if.end30.i.i:                                     ; preds = %if.end
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call32.i.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %19, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %emc_set_max_rate.exit.thread16, label %emc_set_max_rate.exit

emc_set_max_rate.exit.thread16:                   ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %requested_rate.i, align 4
  %max_rate40.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 18, i32 0, i32 1
  %21 = ptrtoint ptr %max_rate40.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %max_rate40.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  br label %if.end5

emc_set_max_rate.exit.thread:                     ; preds = %do.end.i.i, %do.body.i.i.emc_set_max_rate.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  br label %cleanup

emc_set_max_rate.exit:                            ; preds = %if.end30.i.i
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %cmp = icmp slt i32 %call32.i.i, 0
  br i1 %cmp, label %emc_set_max_rate.exit.cleanup_crit_edge, label %emc_set_max_rate.exit.if.end5_crit_edge

emc_set_max_rate.exit.if.end5_crit_edge:          ; preds = %emc_set_max_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

emc_set_max_rate.exit.cleanup_crit_edge:          ; preds = %emc_set_max_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %emc_set_max_rate.exit.if.end5_crit_edge, %emc_set_max_rate.exit.thread16
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %max_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %emc_set_max_rate.exit.cleanup_crit_edge, %emc_set_max_rate.exit.thread, %tegra_emc_validate_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %tegra_emc_validate_rate.exit.cleanup_crit_edge ], [ %call32.i.i, %emc_set_max_rate.exit.cleanup_crit_edge ], [ -34, %emc_set_max_rate.exit.thread ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_icc_set(ptr nocapture noundef readnone %src, ptr nocapture noundef readonly %dst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %provider = getelementptr inbounds %struct.icc_node, ptr %dst, i32 0, i32 4
  %0 = ptrtoint ptr %provider to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  %peak_bw1 = getelementptr inbounds %struct.icc_node, ptr %dst, i32 0, i32 11
  %2 = ptrtoint ptr %peak_bw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peak_bw1, align 4
  %conv = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %avg_bw2 = getelementptr inbounds %struct.icc_node, ptr %dst, i32 0, i32 10
  %4 = ptrtoint ptr %avg_bw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avg_bw2, align 4
  %conv3 = zext i32 %5 to i64
  %mul4 = mul nuw nsw i64 %conv3, 1000
  %6 = tail call i64 @llvm.umax.i64(i64 %mul4, i64 %mul)
  %shr = lshr exact i64 %6, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 34359738360, i64 %6)
  %cmp196 = icmp ult i64 %6, 34359738360
  %extract.t = trunc i64 %shr to i32
  %cond201.off0 = select i1 %cmp196, i32 %extract.t, i32 -1
  %call203 = tail call fastcc i32 @emc_set_min_rate(ptr noundef %add.ptr.i, i32 noundef %cond201.off0, i32 noundef 1)
  ret i32 %call203
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @emc_of_icc_xlate_extended(ptr nocapture noundef readnone %spec, ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nodes = getelementptr inbounds %struct.icc_provider, ptr %data, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %nodes, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %nodes
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %node.0 = getelementptr i8, ptr %.pn, i32 -20
  %1 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node.0, align 4
  %cmp2.not = icmp eq i32 %2, 1002
  br i1 %cmp2.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %node.0.le = getelementptr i8, ptr %.pn, i32 -20
  %tag = getelementptr inbounds %struct.icc_node_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %tag, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node.0.le, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icc_node_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_node_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_link_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_nodes_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_provider_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_rate_exclusive_get(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.94, i32 noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bad_state = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bad_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bad_state, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end30, label %do.end15, !prof !229

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1608, i32 noundef 9, ptr noundef nonnull @.str.96) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %bad_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bad_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end15, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ -22, %do.end15 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !223
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %6, i32 696
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !223
  %8 = and i32 %4, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %8)
  %cond.i = icmp eq i32 %8, 33554432
  %9 = and i32 %7, -117440513
  %10 = or i32 %9, 16777216
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %and7.i = or i32 %11, 2
  %emc_cfg.0.i = select i1 %cond.i, i32 %and7.i, i32 %11
  %12 = tail call i32 @llvm.bswap.i32(i32 %emc_cfg.0.i) #9
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %14, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %12) #9, !srcloc !224
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 134217728) #9, !srcloc !224
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -1) #9, !srcloc !224
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #9, !srcloc !223
  %22 = and i32 %21, -117440514
  %23 = or i32 %22, 1
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %23) #9, !srcloc !224
  %bad_state = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %bad_state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bad_state, align 4
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %28) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_rate_exclusive_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !187, !188, !189, !190, !192, !194, !196, !198, !199, !200, !201, !203, !205, !207, !208, !209, !210}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__initcall__kmod_tegra30_emc__247_1649_tegra_emc_driver_init6, !1, !"__initcall__kmod_tegra30_emc__247_1649_tegra_emc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1649, i32 1}
!2 = !{ptr @__exitcall_tegra_emc_driver_exit, !1, !"__exitcall_tegra_emc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author248, !4, !"__UNIQUE_ID_author248", i1 false, i1 false}
!4 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1651, i32 1}
!5 = !{ptr @__UNIQUE_ID_description249, !6, !"__UNIQUE_ID_description249", i1 false, i1 false}
!6 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1652, i32 1}
!7 = !{ptr @__UNIQUE_ID_file250, !8, !"__UNIQUE_ID_file250", i1 false, i1 false}
!8 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1653, i32 1}
!9 = !{ptr @__UNIQUE_ID_license251, !8, !"__UNIQUE_ID_license251", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1642, i32 11}
!12 = !{ptr @tegra_emc_driver, !13, !"tegra_emc_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1639, i32 31}
!14 = !{ptr @tegra_emc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1537, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1566, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra_emc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_emc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 526, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @emc_prepare_timing_change.__UNIQUE_ID_ddebug229, !26, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 533, i32 3}
!32 = !{ptr @emc_prepare_timing_change._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @emc_prepare_timing_change._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 611, i32 5}
!36 = !{ptr @emc_prepare_timing_change._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @emc_prepare_timing_change._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 436, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @emc_find_timing._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @emc_find_timing._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 394, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @emc_seq_update_timing._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @emc_seq_update_timing._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @emc_timing_registers, !49, !"emc_timing_registers", i1 false, i1 false}
!49 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 225, i32 18}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 833, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @emc_unprepare_timing_change._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @emc_unprepare_timing_change._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 789, i32 3}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @emc_complete_timing_change._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @emc_complete_timing_change._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__print_once", i1 false, i1 false}
!61 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1018, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @emc_find_node_by_ram_code._entry, !61, !"_entry", i1 false, i1 false}
!66 = !{ptr @emc_find_node_by_ram_code._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1025, i32 34}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1032, i32 2}
!71 = !{ptr @emc_find_node_by_ram_code._entry.26, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @emc_find_node_by_ram_code._entry_ptr.28, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 974, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @emc_load_timings_from_dt._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @emc_load_timings_from_dt._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__print_once", i1 false, i1 false}
!79 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1001, i32 2}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @emc_load_timings_from_dt._entry.31, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @emc_load_timings_from_dt._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 880, i32 35}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 882, i32 3}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @load_one_timing_from_dt._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @load_one_timing_from_dt._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 889, i32 41}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 893, i32 3}
!94 = !{ptr @load_one_timing_from_dt._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @load_one_timing_from_dt._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 911, i32 2}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @load_one_timing_from_dt._entry.42, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @load_one_timing_from_dt._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 912, i32 2}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @load_one_timing_from_dt._entry.46, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @load_one_timing_from_dt._entry_ptr.48, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 913, i32 2}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @load_one_timing_from_dt._entry.50, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @load_one_timing_from_dt._entry_ptr.52, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 914, i32 2}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @load_one_timing_from_dt._entry.54, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @load_one_timing_from_dt._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 915, i32 2}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @load_one_timing_from_dt._entry.58, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @load_one_timing_from_dt._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 916, i32 2}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 917, i32 2}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 922, i32 2}
!127 = !{ptr @load_one_timing_from_dt.__UNIQUE_ID_ddebug230, !126, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 947, i32 3}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @emc_check_mc_timings._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @emc_check_mc_timings._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 954, i32 4}
!135 = !{ptr @emc_check_mc_timings._entry.66, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @emc_check_mc_timings._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 413, i32 3}
!139 = !{ptr @tegra_emc_isr._rs, !138, !"_rs", i1 false, i1 false}
!140 = !{ptr @__func__.tegra_emc_isr, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @tegra_emc_isr._entry, !138, !"_entry", i1 false, i1 false}
!143 = !{ptr @tegra_emc_isr._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1504, i32 3}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @tegra_emc_init_clk._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @tegra_emc_init_clk._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1510, i32 3}
!151 = !{ptr @tegra_emc_init_clk._entry.73, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @tegra_emc_init_clk._entry_ptr.75, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1115, i32 3}
!155 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @emc_round_rate._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @emc_round_rate._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1351, i32 3}
!160 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @tegra_emc_debugfs_init._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @tegra_emc_debugfs_init._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1356, i32 41}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1358, i32 22}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1360, i32 22}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1362, i32 22}
!171 = !{ptr @tegra_emc_debug_available_rates_fops, !172, !"tegra_emc_debug_available_rates_fops", i1 false, i1 false}
!172 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1259, i32 37}
!173 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1239, i32 23}
!175 = !{ptr @.str.85, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1243, i32 17}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1244, i32 12}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1247, i32 14}
!181 = !{ptr @tegra_emc_debug_min_rate_fops, !182, !"tegra_emc_debug_min_rate_fops", i1 false, i1 false}
!182 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1292, i32 1}
!183 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @emc_request_rate._rs, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1155, i32 3}
!186 = !{ptr @__func__.emc_request_rate, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @emc_request_rate._entry, !185, !"_entry", i1 false, i1 false}
!189 = !{ptr @emc_request_rate._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @tegra_emc_debug_max_rate_fops, !191, !"tegra_emc_debug_max_rate_fops", i1 false, i1 false}
!191 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1322, i32 1}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1449, i32 15}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1464, i32 15}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1474, i32 2}
!198 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @tegra_emc_interconnect_init._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @tegra_emc_interconnect_init._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @tegra_emc_of_match, !202, !"tegra_emc_of_match", i1 false, i1 false}
!202 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1633, i32 34}
!203 = !{ptr @tegra_emc_pm_ops, !204, !"tegra_emc_pm_ops", i1 false, i1 false}
!204 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1628, i32 32}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1603, i32 3}
!207 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @tegra_emc_suspend._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @tegra_emc_suspend._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/memory/tegra/tegra30-emc.c", i32 1608, i32 6}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{!"auto-init"}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{i64 5292938}
!224 = !{i64 5292520}
!225 = !{i8 0, i8 2}
!226 = !{i64 2148761333, i64 2148761338, i64 2148761351, i64 2148761395, i64 2148761429, i64 2148761450}
!227 = distinct !{!227, !228}
!228 = !{!"llvm.loop.peeled.count", i32 1}
!229 = !{!"branch_weights", i32 2000, i32 1}
