; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra20-emc.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra20-emc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.tegra_emc = type { ptr, ptr, %struct.icc_provider, %struct.notifier_block, ptr, ptr, i32, ptr, i32, %struct.anon.75, [3 x %struct.emc_rate_request], %struct.mutex, %struct.devfreq_simple_ondemand_data, %union.lpddr2_basic_config4, i32, i32, i32, i8 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.75 = type { ptr, i32, i32 }
%struct.emc_rate_request = type { i32, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%union.lpddr2_basic_config4 = type { i32 }
%struct.lpddr2_info = type { i32, i32, i32, i32, i32, i32 }
%struct.emc_timing = type { i32, [46 x i32] }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.74 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.74 = type { ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
%struct.tegra_mc_icc_ops = type { ptr, ptr, ptr }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.icc_node_data = type { ptr, i32 }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@__initcall__kmod_tegra20_emc__273_1287_tegra_emc_driver_init6 = internal global ptr @tegra_emc_driver_init, section ".initcall6.init", align 4
@tegra_emc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_emc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_emc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_emc_driver_exit = internal global ptr @tegra_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author274 = internal constant [54 x i8] c"tegra20_emc.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description275 = internal constant [50 x i8] c"tegra20_emc.description=NVIDIA Tegra20 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep276 = internal constant [49 x i8] c"tegra20_emc.softdep=pre: governor_simpleondemand\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [50 x i8] c"tegra20_emc.file=drivers/memory/tegra/tegra20-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [27 x i8] c"tegra20_emc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra20-emc\00", [20 x i8] zeroinitializer }, align 32
@tegra_emc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"please update your device tree\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_emc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/memory/tegra/tegra20-emc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry_ptr = internal global ptr @tegra_emc_probe._entry, section ".printk_index", align 4
@tegra_emc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&emc->rate_lock\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry_ptr.9 = internal global ptr @tegra_emc_probe._entry.7, section ".printk_index", align 4
@emc_prepare_timing_change.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra20_emc\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"emc_prepare_timing_change\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: using timing rate %lu for requested rate %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@emc_timing_registers = internal constant { [46 x i16], [36 x i8] } { [46 x i16] [i16 44, i16 48, i16 52, i16 56, i16 60, i16 64, i16 68, i16 72, i16 76, i16 80, i16 84, i16 88, i16 92, i16 96, i16 100, i16 104, i16 108, i16 112, i16 116, i16 120, i16 124, i16 128, i16 132, i16 136, i16 140, i16 144, i16 148, i16 152, i16 156, i16 160, i16 164, i16 168, i16 172, i16 276, i16 176, i16 180, i16 260, i16 700, i16 704, i16 708, i16 736, i16 740, i16 680, i16 720, i16 724, i16 728], [36 x i8] zeroinitializer }, align 32
@tegra_emc_find_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no timing for rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_emc_find_timing\00", [42 x i8] zeroinitializer }, align 32
@tegra_emc_find_timing._entry_ptr = internal global ptr @tegra_emc_find_timing._entry, section ".printk_index", align 4
@emc_complete_timing_change.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"emc_complete_timing_change\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: flush %d\0A\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@emc_complete_timing_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"emc-car handshake timeout: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@emc_complete_timing_change._entry_ptr = internal global ptr @emc_complete_timing_change._entry, section ".printk_index", align 4
@emc_setup_hw.print_sdram_info_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@emc_setup_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 614, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bootloader didn't specify DRAM auto-suspend mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emc_setup_hw\00", [19 x i8] zeroinitializer }, align 32
@emc_setup_hw._entry_ptr = internal global ptr @emc_setup_hw._entry, section ".printk_index", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR1\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPDDR2\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DDR2\00", [27 x i8] zeroinitializer }, align 32
@emc_setup_hw.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@emc_setup_hw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.3, i32 663, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%ubit DRAM bus, %u %s %s attached\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@emc_setup_hw._entry_ptr.27 = internal global ptr @emc_setup_hw._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@emc_read_lpddr_sdram_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 593, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"SDRAM[dev%u]: manufacturer: 0x%x (%s) rev1: 0x%x rev2: 0x%x prefetch: S%u density: %uMbit iowidth: %ubit\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"emc_read_lpddr_sdram_info\00", [38 x i8] zeroinitializer }, align 32
@emc_read_lpddr_sdram_info._entry_ptr = internal global ptr @emc_read_lpddr_sdram_info._entry, section ".printk_index", align 4
@emc_read_lpddr_mode_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mode register %u read failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"emc_read_lpddr_mode_register\00", [35 x i8] zeroinitializer }, align 32
@emc_read_lpddr_mode_register._entry_ptr = internal global ptr @emc_read_lpddr_mode_register._entry, section ".printk_index", align 4
@tegra_emc_find_node_by_ram_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 466, ptr @.str.36, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"memory timings skipped due to MRR error\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_emc_find_node_by_ram_code\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_emc_find_node_by_ram_code._entry_ptr = internal global ptr @tegra_emc_find_node_by_ram_code._entry, section ".printk_index", align 4
@tegra_emc_find_node_by_ram_code.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_emc_find_node_by_ram_code._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 471, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device-tree doesn't have memory timings\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_emc_find_node_by_ram_code._entry_ptr.39 = internal global ptr @tegra_emc_find_node_by_ram_code._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,use-ram-code\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emc-tables\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,ram-code\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lpddr2\00", [25 x i8] zeroinitializer }, align 32
@tegra_emc_find_node_by_ram_code._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to parse %pOF\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_emc_find_node_by_ram_code._entry_ptr.46 = internal global ptr @tegra_emc_find_node_by_ram_code._entry.44, section ".printk_index", align 4
@tegra_emc_find_node_by_ram_code._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.35, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"no memory timings for RAM code %u found in device tree\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_emc_find_node_by_ram_code._entry_ptr.49 = internal global ptr @tegra_emc_find_node_by_ram_code._entry.47, section ".printk_index", align 4
@tegra_emc_load_timings_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no memory timings in DT node: %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_emc_load_timings_from_dt\00", [33 x i8] zeroinitializer }, align 32
@tegra_emc_load_timings_from_dt._entry_ptr = internal global ptr @tegra_emc_load_timings_from_dt._entry, section ".printk_index", align 4
@tegra_emc_load_timings_from_dt.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_emc_load_timings_from_dt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 452, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"got %u timings for RAM code %u (min %luMHz max %luMHz)\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_emc_load_timings_from_dt._entry_ptr.54 = internal global ptr @tegra_emc_load_timings_from_dt._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,tegra20-emc-table\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"incompatible DT node: %pOF\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"load_one_timing_from_dt\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr = internal global ptr @load_one_timing_from_dt._entry, section ".printk_index", align 4
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.57, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timing %pOF: failed to read rate: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.61 = internal global ptr @load_one_timing_from_dt._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvidia,emc-registers\00", [43 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timing %pOF: failed to read emc timing data: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.65 = internal global ptr @load_one_timing_from_dt._entry.63, section ".printk_index", align 4
@load_one_timing_from_dt.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.3, ptr @.str.66, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %pOF: EMC rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_emc_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tegra_emc_isr = private unnamed_addr constant [14 x i8] c"tegra_emc_isr\00", align 1
@tegra_emc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.tegra_emc_isr, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"refresh request overflow timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_emc_isr._entry_ptr = internal global ptr @tegra_emc_isr._entry, section ".printk_index", align 4
@tegra_emc_init_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 1103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get EMC clock: %pe\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_emc_init_clk\00", [45 x i8] zeroinitializer }, align 32
@tegra_emc_init_clk._entry_ptr = internal global ptr @tegra_emc_init_clk._entry, section ".printk_index", align 4
@tegra_emc_init_clk._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 1109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register clk notifier: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_emc_init_clk._entry_ptr.73 = internal global ptr @tegra_emc_init_clk._entry.71, section ".printk_index", align 4
@emc_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no timing for rate %lu min %lu max %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emc_round_rate\00", [17 x i8] zeroinitializer }, align 32
@emc_round_rate._entry_ptr = internal global ptr @emc_round_rate._entry, section ".printk_index", align 4
@tegra_emc_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 946, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set rate range [%lu-%lu] for %pC\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_emc_debugfs_init\00", [41 x i8] zeroinitializer }, align 32
@tegra_emc_debugfs_init._entry_ptr = internal global ptr @tegra_emc_debugfs_init._entry, section ".printk_index", align 4
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"available_rates\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_debug_available_rates_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_available_rates_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra_emc_debug_min_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra_emc_debug_max_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%lu\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@emc_request_rate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.67, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.emc_request_rate = private unnamed_addr constant [17 x i8] c"emc_request_rate\00", align 1
@emc_request_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @__func__.emc_request_rate, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: type %u: out of range: %lu %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@emc_request_rate._entry_ptr = internal global ptr @emc_request_rate._entry, section ".printk_index", align 4
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"External Memory Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"External Memory (DRAM)\00", [41 x i8] zeroinitializer }, align 32
@tegra_emc_interconnect_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1073, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize ICC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_emc_interconnect_init\00", [36 x i8] zeroinitializer }, align 32
@tegra_emc_interconnect_init._entry_ptr = internal global ptr @tegra_emc_interconnect_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_emc_devfreq_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 30, i32 0, i8 0, ptr @tegra_emc_devfreq_target, ptr @tegra_emc_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_devfreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 1195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize devfreq: %pe\00", [62 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_emc_devfreq_init\00", [41 x i8] zeroinitializer }, align 32
@tegra_emc_devfreq_init._entry_ptr = internal global ptr @tegra_emc_devfreq_init._entry, section ".printk_index", align 4
@tegra_emc_devfreq_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find opp for %lu Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_emc_devfreq_target\00", [39 x i8] zeroinitializer }, align 32
@tegra_emc_devfreq_target._entry_ptr = internal global ptr @tegra_emc_devfreq_target._entry, section ".printk_index", align 4
@switch.table.tegra_emc_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"tegra_emc_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1278, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1281, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"tegra_emc_of_match\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1272, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1211, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1219, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1242, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 285, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"emc_timing_registers\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 131, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 270, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 304, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 317, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [35 x i8] c"emc_setup_hw.print_sdram_info_once\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 613, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 645, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 648, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 651, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 654, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 661, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 587, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 561, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 466, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 471, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 475, i32 43 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 480, i32 47 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 482, i32 34 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 487, i32 41 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 514, i32 6 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 532, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 420, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 447, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 362, i32 37 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 363, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 367, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 369, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 374, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 378, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 390, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 247, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1103, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1109, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 708, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 944, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 949, i32 41 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 951, i32 22 }
@___asan_gen_.365 = private unnamed_addr constant [37 x i8] c"tegra_emc_debug_available_rates_fops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 852, i32 37 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 953, i32 22 }
@___asan_gen_.371 = private unnamed_addr constant [30 x i8] c"tegra_emc_debug_min_rate_fops\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 955, i32 22 }
@___asan_gen_.377 = private unnamed_addr constant [30 x i8] c"tegra_emc_debug_max_rate_fops\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 915, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 832, i32 23 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 836, i32 17 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 837, i32 12 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 840, i32 14 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 885, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 748, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1048, i32 15 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1063, i32 15 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1073, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [26 x i8] c"tegra_emc_devfreq_profile\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1163, i32 35 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1192, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1195, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.441 = private constant [38 x i8] c"../drivers/memory/tegra/tegra20-emc.c\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1130, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [29 x i8] c"switch.table.tegra_emc_probe\00", align 1
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__UNIQUE_ID_softdep276, ptr @__exitcall_tegra_emc_driver_exit, ptr @__initcall__kmod_tegra20_emc__273_1287_tegra_emc_driver_init6, ptr @emc_complete_timing_change._entry, ptr @emc_complete_timing_change._entry_ptr, ptr @emc_read_lpddr_mode_register._entry, ptr @emc_read_lpddr_mode_register._entry_ptr, ptr @emc_read_lpddr_sdram_info._entry, ptr @emc_read_lpddr_sdram_info._entry_ptr, ptr @emc_request_rate._entry, ptr @emc_request_rate._entry_ptr, ptr @emc_round_rate._entry, ptr @emc_round_rate._entry_ptr, ptr @emc_setup_hw._entry, ptr @emc_setup_hw._entry.24, ptr @emc_setup_hw._entry_ptr, ptr @emc_setup_hw._entry_ptr.27, ptr @load_one_timing_from_dt._entry, ptr @load_one_timing_from_dt._entry.59, ptr @load_one_timing_from_dt._entry.63, ptr @load_one_timing_from_dt._entry_ptr, ptr @load_one_timing_from_dt._entry_ptr.61, ptr @load_one_timing_from_dt._entry_ptr.65, ptr @tegra_emc_debugfs_init._entry, ptr @tegra_emc_debugfs_init._entry_ptr, ptr @tegra_emc_devfreq_init._entry, ptr @tegra_emc_devfreq_init._entry_ptr, ptr @tegra_emc_devfreq_target._entry, ptr @tegra_emc_devfreq_target._entry_ptr, ptr @tegra_emc_driver_exit, ptr @tegra_emc_find_node_by_ram_code._entry, ptr @tegra_emc_find_node_by_ram_code._entry.37, ptr @tegra_emc_find_node_by_ram_code._entry.44, ptr @tegra_emc_find_node_by_ram_code._entry.47, ptr @tegra_emc_find_node_by_ram_code._entry_ptr, ptr @tegra_emc_find_node_by_ram_code._entry_ptr.39, ptr @tegra_emc_find_node_by_ram_code._entry_ptr.46, ptr @tegra_emc_find_node_by_ram_code._entry_ptr.49, ptr @tegra_emc_find_timing._entry, ptr @tegra_emc_find_timing._entry_ptr, ptr @tegra_emc_init_clk._entry, ptr @tegra_emc_init_clk._entry.71, ptr @tegra_emc_init_clk._entry_ptr, ptr @tegra_emc_init_clk._entry_ptr.73, ptr @tegra_emc_interconnect_init._entry, ptr @tegra_emc_interconnect_init._entry_ptr, ptr @tegra_emc_isr._entry, ptr @tegra_emc_isr._entry_ptr, ptr @tegra_emc_load_timings_from_dt._entry, ptr @tegra_emc_load_timings_from_dt._entry.52, ptr @tegra_emc_load_timings_from_dt._entry_ptr, ptr @tegra_emc_load_timings_from_dt._entry_ptr.54, ptr @tegra_emc_probe._entry, ptr @tegra_emc_probe._entry.7, ptr @tegra_emc_probe._entry_ptr, ptr @tegra_emc_probe._entry_ptr.9, ptr @tegra_emc_driver, ptr @.str, ptr @tegra_emc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_emc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @emc_timing_registers, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @emc_setup_hw.print_sdram_info_once, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @tegra_emc_isr._rs, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @tegra_emc_debug_available_rates_fops, ptr @.str.80, ptr @tegra_emc_debug_min_rate_fops, ptr @.str.81, ptr @tegra_emc_debug_max_rate_fops, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @emc_request_rate._rs, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @tegra_emc_devfreq_profile, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @switch.table.tegra_emc_probe], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_timing_registers to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_find_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_complete_timing_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_setup_hw.print_sdram_info_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_setup_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_setup_hw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_read_lpddr_sdram_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_read_lpddr_mode_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_find_node_by_ram_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_find_node_by_ram_code._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_find_node_by_ram_code._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_find_node_by_ram_code._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_load_timings_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_load_timings_from_dt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_init_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_init_clk._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_available_rates_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_min_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_max_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_request_rate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_request_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_interconnect_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_devfreq_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_devfreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_devfreq_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_emc_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 0, i32 -1 }]
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
  %0 = ptrtoint ptr %opp_params to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %opp_params, align 1
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 252, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %rate_lock = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %rate_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tegra_emc_probe.__key) #9
  %clk_nb = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %clk_nb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra_emc_clk_change_notify, ptr %clk_nb, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %do.body5
  %add.ptr.i = getelementptr i8, ptr %call10, i32 696
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !232
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %7 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %emc_setup_hw.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end16
  %or.i = or i32 %6, 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %11, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %9) #9, !srcloc !233
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 134217728) #9, !srcloc !233
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 134217728) #9, !srcloc !233
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr11.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !232
  %19 = and i32 %18, -117440514
  %20 = or i32 %19, 1
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr19.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %20) #9, !srcloc !233
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr22.i = getelementptr i8, ptr %24, i32 260
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #9, !srcloc !232
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  %and25.i = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %spec.select.i = select i1 %tobool26.not.i, i32 32, i32 16
  %27 = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select.i, ptr %27, align 4
  %and46.i = and i32 %26, 3
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.tegra_emc_probe, i32 0, i32 %and46.i
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr52.i = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !232
  %and71.i = and i32 %32, 3
  %add.i = add nuw nsw i32 %and71.i, 1
  %.b122123.i = load i1, ptr @emc_setup_hw.__print_once, align 1
  br i1 %.b122123.i, label %if.end.i.do.end83.i_crit_edge, label %if.then75.i

if.end.i.do.end83.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end83.i

if.then75.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @emc_setup_hw.__print_once, align 1
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp.i95 = icmp eq i32 %add.i, 2
  %cond.i = select i1 %cmp.i95, ptr @.str.28, ptr @.str.29
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.25, i32 noundef %36, i32 noundef %add.i, ptr noundef nonnull %switch.load, ptr noundef nonnull %cond.i) #12
  br label %do.end83.i

do.end83.i:                                       ; preds = %if.then75.i, %if.end.i.do.end83.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and46.i)
  %cmp84.i = icmp eq i32 %and46.i, 2
  br i1 %cmp84.i, label %while.cond.preheader.i, label %do.end83.i.if.end20_crit_edge

do.end83.i.if.end20_crit_edge:                    ; preds = %do.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

while.cond.preheader.i:                           ; preds = %do.end83.i
  %manufacturer_id.i.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 14
  %revision_id1.i.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 15
  %revision_id2.i.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 16
  %basic_conf4.i.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 13
  br label %while.body.i

while.body.i:                                     ; preds = %emc_read_lpddr_sdram_info.exit.i.while.body.i_crit_edge, %while.cond.preheader.i
  %emem_numdev.0125.i = phi i32 [ %add.i, %while.cond.preheader.i ], [ %dec.i, %emc_read_lpddr_sdram_info.exit.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %emem_numdev.0125.i, -1
  %.b124.i = load i1, ptr @emc_setup_hw.print_sdram_info_once, align 1
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %call.i, i32 noundef %dec.i, i32 noundef 5, ptr noundef %manufacturer_id.i.i) #9
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %call.i, i32 noundef %dec.i, i32 noundef 6, ptr noundef %revision_id1.i.i) #9
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %call.i, i32 noundef %dec.i, i32 noundef 7, ptr noundef %revision_id2.i.i) #9
  tail call fastcc void @emc_read_lpddr_mode_register(ptr noundef %call.i, i32 noundef %dec.i, i32 noundef 8, ptr noundef %basic_conf4.i.i) #9
  br i1 %.b124.i, label %while.body.i.emc_read_lpddr_sdram_info.exit.i_crit_edge, label %do.end.i.i

while.body.i.emc_read_lpddr_sdram_info.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_read_lpddr_sdram_info.exit.i

do.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %manufacturer_id.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %manufacturer_id.i.i, align 4
  %call6.i.i = tail call ptr @lpddr2_jedec_manufacturer(i32 noundef %40) #9
  %41 = ptrtoint ptr %revision_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %revision_id1.i.i, align 4
  %43 = ptrtoint ptr %revision_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %revision_id2.i.i, align 4
  %45 = ptrtoint ptr %basic_conf4.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i = load i8, ptr %basic_conf4.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 6
  %bf.cast.i.i = zext i8 %bf.lshr.i.i to i32
  %shr.i.i = lshr i32 4, %bf.cast.i.i
  %bf.lshr12.i.i = lshr i8 %bf.load.i.i, 2
  %bf.clear.i.i = and i8 %bf.lshr12.i.i, 15
  %bf.cast13.i.i = zext i8 %bf.clear.i.i to i32
  %shl.i.i = shl nuw nsw i32 64, %bf.cast13.i.i
  %bf.clear16.i.i = and i8 %bf.load.i.i, 3
  %bf.cast17.i.i = zext i8 %bf.clear16.i.i to i32
  %shr18.i.i = lshr i32 32, %bf.cast17.i.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.30, i32 noundef %dec.i, i32 noundef %40, ptr noundef %call6.i.i, i32 noundef %42, i32 noundef %44, i32 noundef %shr.i.i, i32 noundef %shl.i.i, i32 noundef %shr18.i.i) #12
  br label %emc_read_lpddr_sdram_info.exit.i

emc_read_lpddr_sdram_info.exit.i:                 ; preds = %do.end.i.i, %while.body.i.emc_read_lpddr_sdram_info.exit.i_crit_edge
  %tobool86.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool86.not.i, label %while.end.i, label %emc_read_lpddr_sdram_info.exit.i.while.body.i_crit_edge

emc_read_lpddr_sdram_info.exit.i.while.body.i_crit_edge: ; preds = %emc_read_lpddr_sdram_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %emc_read_lpddr_sdram_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @emc_setup_hw.print_sdram_info_once, align 1
  br label %if.end20

emc_setup_hw.exit:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end20:                                         ; preds = %while.end.i, %do.end83.i.if.end20_crit_edge
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %50 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %value.i, align 4, !annotation !234
  %mrr_error.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 17
  %51 = ptrtoint ptr %mrr_error.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mrr_error.i, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.end.i97, label %do.end.i96

do.end.i96:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.34) #12
  br label %tegra_emc_find_node_by_ram_code.exit.thread

if.end.i97:                                       ; preds = %if.end20
  %of_node.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 27
  %53 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %54, ptr noundef null) #9
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end.i97.do.body3.i_crit_edge, label %if.end.i97.for.body.i.i_crit_edge

if.end.i97.for.body.i.i_crit_edge:                ; preds = %if.end.i97
  br label %for.body.i.i

if.end.i97.do.body3.i_crit_edge:                  ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i97.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i97.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i97.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %54, ptr noundef nonnull %child.06.i.i) #9
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %cmp.i98 = icmp eq i32 %inc.i.i, 0
  br i1 %cmp.i98, label %of_get_child_count.exit.i.do.body3.i_crit_edge, label %if.end12.i

of_get_child_count.exit.i.do.body3.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3.i

do.body3.i:                                       ; preds = %of_get_child_count.exit.i.do.body3.i_crit_edge, %if.end.i97.do.body3.i_crit_edge
  %.b125.i = load i1, ptr @tegra_emc_find_node_by_ram_code.__print_once, align 1
  br i1 %.b125.i, label %do.body3.i.tegra_emc_find_node_by_ram_code.exit.thread_crit_edge, label %if.then5.i

do.body3.i.tegra_emc_find_node_by_ram_code.exit.thread_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_node_by_ram_code.exit.thread

if.then5.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tegra_emc_find_node_by_ram_code.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.38) #12
  br label %tegra_emc_find_node_by_ram_code.exit.thread

if.end12.i:                                       ; preds = %of_get_child_count.exit.i
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i, align 8
  %call.i130.i = tail call ptr @of_find_property(ptr noundef %56, ptr noundef nonnull @.str.40, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i130.i, null
  br i1 %tobool.i.not.i, label %tegra_emc_find_node_by_ram_code.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end12.i
  %call19.i = tail call i32 @tegra_read_ram_code() #9
  %57 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node.i, align 8
  %call21.i = tail call ptr @of_find_node_by_name(ptr noundef %58, ptr noundef nonnull @.str.41) #9
  %tobool22.not139.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not139.i, label %if.end18.i.do.end84.i_crit_edge, label %for.body.lr.ph.i

if.end18.i.do.end84.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84.i

for.body.lr.ph.i:                                 ; preds = %if.end18.i
  %manufacturer_id35.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 14
  %revision_id142.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 15
  %revision_id249.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 16
  %basic_conf4.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %np.0140.i = phi ptr [ %call21.i, %for.body.lr.ph.i ], [ %call81.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0140.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool24.not.i, label %lor.lhs.false.i, label %for.body.i.if.then26.i_crit_edge

for.body.i.if.then26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %59 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %call19.i)
  %cmp25.not.i = icmp eq i32 %60, %call19.i
  br i1 %cmp25.not.i, label %lor.lhs.false.i.tegra_emc_find_node_by_ram_code.exit.thread133_crit_edge, label %lor.lhs.false.i.if.then26.i_crit_edge

lor.lhs.false.i.if.then26.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

lor.lhs.false.i.tegra_emc_find_node_by_ram_code.exit.thread133_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_node_by_ram_code.exit.thread133

if.then26.i:                                      ; preds = %lor.lhs.false.i.if.then26.i_crit_edge, %for.body.i.if.then26.i_crit_edge
  %call27.i = call ptr @of_find_node_by_name(ptr noundef nonnull %np.0140.i, ptr noundef nonnull @.str.43) #9
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.then26.i.for.inc.i_crit_edge, label %if.then29.i

if.then26.i.for.inc.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.then26.i
  %call30.i = call ptr @of_lpddr2_get_info(ptr noundef nonnull %call27.i, ptr noundef %49) #9
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end73.thread.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then29.i
  %manufacturer_id.i = getelementptr inbounds %struct.lpddr2_info, ptr %call30.i, i32 0, i32 3
  %61 = ptrtoint ptr %manufacturer_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %manufacturer_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp33.i = icmp sgt i32 %62, -1
  br i1 %cmp33.i, label %land.lhs.true.i, label %if.then32.i.if.end38.i_crit_edge

if.then32.i.if.end38.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %manufacturer_id35.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %manufacturer_id35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp36.not.i = icmp ne i32 %62, %64
  %spec.select.i99 = zext i1 %cmp36.not.i to i8
  br label %if.end38.i

if.end38.i:                                       ; preds = %land.lhs.true.i, %if.then32.i.if.end38.i_crit_edge
  %cfg_mismatches.0.i = phi i8 [ 0, %if.then32.i.if.end38.i_crit_edge ], [ %spec.select.i99, %land.lhs.true.i ]
  %revision_id1.i = getelementptr inbounds %struct.lpddr2_info, ptr %call30.i, i32 0, i32 4
  %65 = ptrtoint ptr %revision_id1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %revision_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp39.i = icmp sgt i32 %66, -1
  br i1 %cmp39.i, label %land.lhs.true40.i, label %if.end38.i.if.end45.i_crit_edge

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

land.lhs.true40.i:                                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %revision_id142.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %revision_id142.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp43.not.i = icmp eq i32 %66, %68
  %spec.select126.i = select i1 %cmp43.not.i, i8 %cfg_mismatches.0.i, i8 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %land.lhs.true40.i, %if.end38.i.if.end45.i_crit_edge
  %cfg_mismatches.1.i = phi i8 [ %cfg_mismatches.0.i, %if.end38.i.if.end45.i_crit_edge ], [ %spec.select126.i, %land.lhs.true40.i ]
  %revision_id2.i = getelementptr inbounds %struct.lpddr2_info, ptr %call30.i, i32 0, i32 5
  %69 = ptrtoint ptr %revision_id2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %revision_id2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp46.i = icmp sgt i32 %70, -1
  br i1 %cmp46.i, label %land.lhs.true47.i, label %if.end45.i.if.end73.i_crit_edge

if.end45.i.if.end73.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.i

land.lhs.true47.i:                                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %revision_id249.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %revision_id249.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp50.not.i = icmp eq i32 %70, %72
  %spec.select127.i = select i1 %cmp50.not.i, i8 %cfg_mismatches.1.i, i8 1
  br label %if.end73.i

if.end73.thread.i:                                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.45, ptr noundef nonnull %call27.i) #12
  call void @of_node_put(ptr noundef nonnull %call27.i) #9
  br label %for.inc.i

if.end73.i:                                       ; preds = %land.lhs.true47.i, %if.end45.i.if.end73.i_crit_edge
  %cfg_mismatches.2.i = phi i8 [ %cfg_mismatches.1.i, %if.end45.i.if.end73.i_crit_edge ], [ %spec.select127.i, %land.lhs.true47.i ]
  %density.i = getelementptr inbounds %struct.lpddr2_info, ptr %call30.i, i32 0, i32 1
  %73 = ptrtoint ptr %density.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %density.i, align 4
  %75 = ptrtoint ptr %basic_conf4.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i = load i8, ptr %basic_conf4.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 2
  %bf.clear.i = and i8 %bf.lshr.i, 15
  %bf.cast.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %bf.cast.i)
  %cmp53.not.i = icmp eq i32 %74, %bf.cast.i
  %io_width.i = getelementptr inbounds %struct.lpddr2_info, ptr %call30.i, i32 0, i32 2
  %76 = ptrtoint ptr %io_width.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %io_width.i, align 4
  %bf.clear58.i = and i8 %bf.load.i, 3
  %bf.cast59.i = zext i8 %bf.clear58.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %bf.cast59.i)
  %cmp60.not.i = icmp eq i32 %77, %bf.cast59.i
  %78 = ptrtoint ptr %call30.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call30.i, align 4
  %bf.lshr65.i = lshr i8 %bf.load.i, 6
  %bf.cast66.i = zext i8 %bf.lshr65.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %bf.cast66.i)
  %cmp67.not.i = icmp eq i32 %79, %bf.cast66.i
  %80 = select i1 %cmp67.not.i, i1 %cmp60.not.i, i1 false
  %81 = select i1 %80, i1 %cmp53.not.i, i1 false
  call void @of_node_put(ptr noundef nonnull %call27.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cfg_mismatches.2.i)
  %extract.t.not137.i = icmp eq i8 %cfg_mismatches.2.i, 0
  %extract.t.not.i = select i1 %81, i1 %extract.t.not137.i, i1 false
  br i1 %extract.t.not.i, label %if.end73.i.tegra_emc_find_node_by_ram_code.exit.thread133_crit_edge, label %if.end73.i.for.inc.i_crit_edge

if.end73.i.for.inc.i_crit_edge:                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end73.i.tegra_emc_find_node_by_ram_code.exit.thread133_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_node_by_ram_code.exit.thread133

for.inc.i:                                        ; preds = %if.end73.i.for.inc.i_crit_edge, %if.end73.thread.i, %if.then26.i.for.inc.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %np.0140.i) #9
  %call81.i = call ptr @of_find_node_by_name(ptr noundef nonnull %np.0140.i, ptr noundef nonnull @.str.41) #9
  %tobool22.not.i = icmp eq ptr %call81.i, null
  br i1 %tobool22.not.i, label %for.inc.i.do.end84.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end84.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end84.i

do.end84.i:                                       ; preds = %for.inc.i.do.end84.i_crit_edge, %if.end18.i.do.end84.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.48, i32 noundef %call19.i) #12
  br label %tegra_emc_find_node_by_ram_code.exit.thread

tegra_emc_find_node_by_ram_code.exit.thread:      ; preds = %do.end84.i, %if.then5.i, %do.body3.i.tegra_emc_find_node_by_ram_code.exit.thread_crit_edge, %do.end.i96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %if.end28

tegra_emc_find_node_by_ram_code.exit.thread133:   ; preds = %if.end73.i.tegra_emc_find_node_by_ram_code.exit.thread133_crit_edge, %lor.lhs.false.i.tegra_emc_find_node_by_ram_code.exit.thread133_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %if.then23

tegra_emc_find_node_by_ram_code.exit:             ; preds = %if.end12.i
  %82 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node.i, align 8
  %call17.i = tail call ptr @of_node_get(ptr noundef %83) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  %tobool22.not = icmp eq ptr %call17.i, null
  br i1 %tobool22.not, label %tegra_emc_find_node_by_ram_code.exit.if.end28_crit_edge, label %tegra_emc_find_node_by_ram_code.exit.if.then23_crit_edge

tegra_emc_find_node_by_ram_code.exit.if.then23_crit_edge: ; preds = %tegra_emc_find_node_by_ram_code.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

tegra_emc_find_node_by_ram_code.exit.if.end28_crit_edge: ; preds = %tegra_emc_find_node_by_ram_code.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %tegra_emc_find_node_by_ram_code.exit.if.then23_crit_edge, %tegra_emc_find_node_by_ram_code.exit.thread133
  %retval.0.i100136 = phi ptr [ %np.0140.i, %tegra_emc_find_node_by_ram_code.exit.thread133 ], [ %call17.i, %tegra_emc_find_node_by_ram_code.exit.if.then23_crit_edge ]
  %call.i.i101 = call ptr @of_get_next_child(ptr noundef nonnull %retval.0.i100136, ptr noundef null) #9
  %cmp.not5.i.i102 = icmp eq ptr %call.i.i101, null
  br i1 %cmp.not5.i.i102, label %if.then23.do.end.i111_crit_edge, label %if.then23.for.body.i.i108_crit_edge

if.then23.for.body.i.i108_crit_edge:              ; preds = %if.then23
  br label %for.body.i.i108

if.then23.do.end.i111_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i111

for.body.i.i108:                                  ; preds = %for.body.i.i108.for.body.i.i108_crit_edge, %if.then23.for.body.i.i108_crit_edge
  %num.07.i.i103 = phi i32 [ %inc.i.i105, %for.body.i.i108.for.body.i.i108_crit_edge ], [ 0, %if.then23.for.body.i.i108_crit_edge ]
  %child.06.i.i104 = phi ptr [ %call1.i.i106, %for.body.i.i108.for.body.i.i108_crit_edge ], [ %call.i.i101, %if.then23.for.body.i.i108_crit_edge ]
  %inc.i.i105 = add i32 %num.07.i.i103, 1
  %call1.i.i106 = call ptr @of_get_next_child(ptr noundef %retval.0.i100136, ptr noundef nonnull %child.06.i.i104) #9
  %cmp.not.i.i107 = icmp eq ptr %call1.i.i106, null
  br i1 %cmp.not.i.i107, label %of_get_child_count.exit.i110, label %for.body.i.i108.for.body.i.i108_crit_edge

for.body.i.i108.for.body.i.i108_crit_edge:        ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i108

of_get_child_count.exit.i110:                     ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i105)
  %tobool.not.i109 = icmp eq i32 %inc.i.i105, 0
  br i1 %tobool.not.i109, label %of_get_child_count.exit.i110.do.end.i111_crit_edge, label %if.end.i112

of_get_child_count.exit.i110.do.end.i111_crit_edge: ; preds = %of_get_child_count.exit.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i111

do.end.i111:                                      ; preds = %of_get_child_count.exit.i110.do.end.i111_crit_edge, %if.then23.do.end.i111_crit_edge
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.50, ptr noundef %retval.0.i100136) #12
  br label %tegra_emc_load_timings_from_dt.exit.thread

if.end.i112:                                      ; preds = %of_get_child_count.exit.i110
  %86 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i105, i32 188) #9
  %87 = extractvalue { i32, i1 } %86, 1
  br i1 %87, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !236

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  %timings66.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 7
  %88 = ptrtoint ptr %timings66.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %timings66.i, align 4
  br label %tegra_emc_load_timings_from_dt.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end.i112
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %91 = extractvalue { i32, i1 } %86, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %90, i32 noundef %91, i32 noundef 3520) #9
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 7
  %92 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call5.i.i.i, ptr %timings.i, align 4
  %tobool4.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool4.not.i, label %devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge, label %if.end6.i

devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_load_timings_from_dt.exit.thread

if.end6.i:                                        ; preds = %devm_kcalloc.exit.i
  %call8.i = call ptr @of_get_next_child(ptr noundef %retval.0.i100136, ptr noundef null) #9
  %cmp.not69.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not69.i, label %if.end6.i.for.end.i_crit_edge, label %for.body.lr.ph.i113

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i113:                              ; preds = %if.end6.i
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 8
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc.i115.for.body.i114_crit_edge, %for.body.lr.ph.i113
  %timing.072.i = phi ptr [ %call5.i.i.i, %for.body.lr.ph.i113 ], [ %timing.1.i, %for.inc.i115.for.body.i114_crit_edge ]
  %child.070.i = phi ptr [ %call8.i, %for.body.lr.ph.i113 ], [ %call16.i, %for.inc.i115.for.body.i114_crit_edge ]
  %call9.i = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.070.i, ptr noundef nonnull @.str.43) #9
  br i1 %call9.i, label %for.body.i114.for.inc.i115_crit_edge, label %if.end11.i

for.body.i114.for.inc.i115_crit_edge:             ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i115

if.end11.i:                                       ; preds = %for.body.i114
  %call12.i = call fastcc i32 @load_one_timing_from_dt(ptr noundef %call.i, ptr noundef %timing.072.i, ptr noundef nonnull %child.070.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %child.070.i) #9
  br label %tegra_emc_load_timings_from_dt.exit.thread

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.i = getelementptr %struct.emc_timing, ptr %timing.072.i, i32 1
  %93 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_timings.i, align 4
  %inc.i = add i32 %94, 1
  store i32 %inc.i, ptr %num_timings.i, align 4
  br label %for.inc.i115

for.inc.i115:                                     ; preds = %if.end15.i, %for.body.i114.for.inc.i115_crit_edge
  %timing.1.i = phi ptr [ %timing.072.i, %for.body.i114.for.inc.i115_crit_edge ], [ %incdec.ptr.i, %if.end15.i ]
  %call16.i = call ptr @of_get_next_child(ptr noundef %retval.0.i100136, ptr noundef nonnull %child.070.i) #9
  %cmp.not.i = icmp eq ptr %call16.i, null
  br i1 %cmp.not.i, label %for.inc.i115.for.end.i_crit_edge, label %for.inc.i115.for.body.i114_crit_edge

for.inc.i115.for.body.i114_crit_edge:             ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i114

for.inc.i115.for.end.i_crit_edge:                 ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i115.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %95 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %timings.i, align 4
  %num_timings18.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 8
  %97 = ptrtoint ptr %num_timings18.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_timings18.i, align 4
  call void @sort(ptr noundef %96, i32 noundef %98, i32 noundef 188, ptr noundef nonnull @cmp_timings, ptr noundef null) #9
  %.b62.i = load i1, ptr @tegra_emc_load_timings_from_dt.__print_once, align 1
  br i1 %.b62.i, label %for.end.i.tegra_emc_load_timings_from_dt.exit_crit_edge, label %if.then21.i

for.end.i.tegra_emc_load_timings_from_dt.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_load_timings_from_dt.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tegra_emc_load_timings_from_dt.__print_once, align 1
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  %101 = ptrtoint ptr %num_timings18.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_timings18.i, align 4
  %call27.i116 = call i32 @tegra_read_ram_code() #9
  %103 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %timings.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %div.i = udiv i32 %106, 1000000
  %107 = ptrtoint ptr %num_timings18.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_timings18.i, align 4
  %sub.i = add i32 %108, -1
  %arrayidx31.i = getelementptr %struct.emc_timing, ptr %104, i32 %sub.i
  %109 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx31.i, align 4
  %div33.i = udiv i32 %110, 1000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.53, i32 noundef %102, i32 noundef %call27.i116, i32 noundef %div.i, i32 noundef %div33.i) #12
  br label %tegra_emc_load_timings_from_dt.exit

tegra_emc_load_timings_from_dt.exit.thread:       ; preds = %if.then14.i, %devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i111
  %retval.0.i117.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge ], [ -22, %do.end.i111 ], [ %call12.i, %if.then14.i ]
  call void @of_node_put(ptr noundef nonnull %retval.0.i100136) #9
  br label %cleanup

tegra_emc_load_timings_from_dt.exit:              ; preds = %if.then21.i, %for.end.i.tegra_emc_load_timings_from_dt.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %retval.0.i100136) #9
  br label %if.end28

if.end28:                                         ; preds = %tegra_emc_load_timings_from_dt.exit, %tegra_emc_find_node_by_ram_code.exit.if.end28_crit_edge, %tegra_emc_find_node_by_ram_code.exit.thread
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i118 = icmp eq ptr %112, null
  br i1 %tobool.not.i118, label %if.end.i119, label %if.end28.dev_name.exit_crit_edge

if.end28.dev_name.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i119:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i119, %if.end28.dev_name.exit_crit_edge
  %retval.0.i120 = phi ptr [ %114, %if.end.i119 ], [ %112, %if.end28.dev_name.exit_crit_edge ]
  %call.i121 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @tegra_emc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i120, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool33.not = icmp eq i32 %call.i121, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call.i121) #12
  br label %cleanup

if.end39:                                         ; preds = %dev_name.exit
  call void @tegra20_clk_set_emc_round_callback(ptr noundef nonnull @emc_round_rate, ptr noundef %call.i) #9
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i, align 4
  %call.i.i122 = call i32 @devm_add_action(ptr noundef %116, ptr noundef nonnull @devm_tegra_emc_unset_callback, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %tobool.not.i.i = icmp eq i32 %call.i.i122, 0
  br i1 %tobool.not.i.i, label %if.end.i123, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @tegra20_clk_set_emc_round_callback(ptr noundef null, ptr noundef null) #9
  br label %cleanup

if.end.i123:                                      ; preds = %if.end39
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 4
  %call2.i = call ptr @devm_clk_get(ptr noundef %118, ptr noundef null) #9
  %clk.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 4
  %119 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call2.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tegra_emc_init_clk.exit, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i123
  %call12.i125 = call i32 @clk_notifier_register(ptr noundef %call2.i, ptr noundef %clk_nb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i125)
  %tobool13.not.i126 = icmp eq i32 %call12.i125, 0
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 4
  br i1 %tobool13.not.i126, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.72, i32 noundef %call12.i125) #12
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  %call.i43.i = call i32 @devm_add_action(ptr noundef %121, ptr noundef nonnull @devm_tegra_emc_unreg_clk_notifier, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool.not.i44.i, label %if.end19.i.if.end43_crit_edge, label %if.then.i45.i

if.end19.i.if.end43_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then.i45.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk.i, align 4
  %call.i47.i = call i32 @clk_notifier_unregister(ptr noundef %123, ptr noundef %clk_nb) #9
  br label %cleanup

tegra_emc_init_clk.exit:                          ; preds = %if.end.i123
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.69, ptr noundef nonnull %call2.i) #12
  %126 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %clk.i, align 4
  %128 = ptrtoint ptr %127 to i32
  %tobool41.not = icmp eq ptr %127, null
  br i1 %tobool41.not, label %tegra_emc_init_clk.exit.if.end43_crit_edge, label %tegra_emc_init_clk.exit.cleanup_crit_edge

tegra_emc_init_clk.exit.cleanup_crit_edge:        ; preds = %tegra_emc_init_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_emc_init_clk.exit.if.end43_crit_edge:       ; preds = %tegra_emc_init_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %tegra_emc_init_clk.exit.if.end43_crit_edge, %if.end19.i.if.end43_crit_edge
  %129 = ptrtoint ptr %opp_params to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %opp_params, align 1
  %call45 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %130 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 10, i32 0
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %arrayidx.i, align 4
  %max_rate.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %132 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %max_rate.i, align 4
  %arrayidx.1.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 10, i32 1
  %133 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %arrayidx.1.i, align 4
  %max_rate.1.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %134 = ptrtoint ptr %max_rate.1.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %max_rate.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 10, i32 2
  %135 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %arrayidx.2.i, align 4
  %max_rate.2.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 10, i32 2, i32 1
  %136 = ptrtoint ptr %max_rate.2.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %max_rate.2.i, align 4
  call fastcc void @tegra_emc_debugfs_init(ptr noundef nonnull %call.i)
  call fastcc void @tegra_emc_interconnect_init(ptr noundef nonnull %call.i)
  call fastcc void @tegra_emc_devfreq_init(ptr noundef nonnull %call.i)
  %call51 = call zeroext i1 @try_module_get(ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end43.cleanup_crit_edge, %tegra_emc_init_clk.exit.cleanup_crit_edge, %if.then.i45.i, %do.end17.i, %devm_add_action_or_reset.exit.i, %do.end37, %tegra_emc_load_timings_from_dt.exit.thread, %emc_setup_hw.exit, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %4, %if.then13 ], [ %call.i121, %do.end37 ], [ 0, %if.end48 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %emc_setup_hw.exit ], [ %128, %tegra_emc_init_clk.exit.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ], [ %retval.0.i117.ph, %tegra_emc_load_timings_from_dt.exit.thread ], [ %call.i43.i, %if.then.i45.i ], [ %call.i.i122, %devm_add_action_or_reset.exit.i ], [ %call12.i125, %do.end17.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_clk_change_notify(ptr nocapture noundef readonly %nb, i32 noundef %msg, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -64
  %0 = zext i32 %msg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %msg, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_rate, align 4
  %call = tail call fastcc i32 @emc_prepare_timing_change(ptr noundef %add.ptr, i32 noundef %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %old_rate, align 4
  %call2 = tail call fastcc i32 @emc_prepare_timing_change(ptr noundef %add.ptr, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.thread18

sw.epilog.thread18:                               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i21 = sub i32 1, %call2
  %or.i22 = or i32 %sub.i21, 32768
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc_complete_timing_change.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_emc_clk_change_notify, %if.then.i)) #9
          to label %sw.epilog.thread [label %if.then.i], !srcloc !237

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emc_complete_timing_change.__UNIQUE_ID_ddebug230, ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 1) #9
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.then.i, %if.end
  %regs.i = getelementptr i8, ptr %nb, i32 16
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !233
  br label %9

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @emc_complete_timing_change(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %err.0 = phi i32 [ %call5, %sw.bb4 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i, label %sw.epilog._crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %9

9:                                                ; preds = %sw.epilog._crit_edge, %sw.epilog.thread
  br label %cleanup

cleanup:                                          ; preds = %9, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %9 ], [ %or.i, %sw.epilog.cleanup_crit_edge ], [ %or.i22, %sw.epilog.thread18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !232
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.68) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %do.body.if.end11_crit_edge
  %6 = shl nuw nsw i32 %and, 24
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !233
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_rate, align 4
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 8
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
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %29, i32 noundef %31, ptr noundef %33) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.end32.if.end46_crit_edge
  %debugfs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9
  %call47 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.78, ptr noundef null) #9
  %34 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call47, ptr %debugfs, align 4
  %call51 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.79, i16 noundef zeroext 292, ptr noundef %call47, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_available_rates_fops) #9
  %35 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs, align 4
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.80, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_min_rate_fops) #9
  %37 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs, align 4
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.81, i16 noundef zeroext 420, ptr noundef %38, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_max_rate_fops) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_interconnect_init(ptr noundef %emc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emc, align 4
  %call = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %1) #9
  %mc = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 1
  %2 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc6 = getelementptr inbounds %struct.tegra_mc, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %soc6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %soc6, align 4
  %5 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %emc, align 4
  %provider = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2
  %dev8 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 8
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev8, align 4
  %set = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @emc_icc_set, ptr %set, align 4
  %data = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 11
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %provider, ptr %data, align 4
  %icc_ops = getelementptr inbounds %struct.tegra_mc_soc, ptr %4, i32 0, i32 12
  %10 = ptrtoint ptr %icc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icc_ops, align 4
  %aggregate = getelementptr inbounds %struct.tegra_mc_icc_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %aggregate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aggregate, align 4
  %aggregate13 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %aggregate13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %aggregate13, align 4
  %xlate_extended = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %xlate_extended to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @emc_of_icc_xlate_extended, ptr %xlate_extended, align 4
  %call16 = tail call i32 @icc_provider_add(ptr noundef %provider) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @icc_node_create(i32 noundef 1001) #9
  %cmp.i1 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call19 to i32
  br label %del_provider

if.end23:                                         ; preds = %if.end18
  %name = getelementptr inbounds %struct.icc_node, ptr %call19, i32 0, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.88, ptr %name, align 4
  tail call void @icc_node_add(ptr noundef %call19, ptr noundef %provider) #9
  %call25 = tail call i32 @icc_link_create(ptr noundef %call19, i32 noundef 1002) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.remove_nodes_crit_edge

if.end23.remove_nodes_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_nodes

if.end28:                                         ; preds = %if.end23
  %call29 = tail call ptr @icc_node_create(i32 noundef 1002) #9
  %cmp.i2 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call29 to i32
  br label %remove_nodes

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %name34 = getelementptr inbounds %struct.icc_node, ptr %call29, i32 0, i32 1
  %19 = ptrtoint ptr %name34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.89, ptr %name34, align 4
  tail call void @icc_node_add(ptr noundef %call29, ptr noundef %provider) #9
  br label %cleanup

remove_nodes:                                     ; preds = %if.then31, %if.end23.remove_nodes_crit_edge
  %err.0 = phi i32 [ %call25, %if.end23.remove_nodes_crit_edge ], [ %18, %if.then31 ]
  %call37 = tail call i32 @icc_nodes_remove(ptr noundef %provider) #9
  br label %del_provider

del_provider:                                     ; preds = %remove_nodes, %if.then21
  %err.1 = phi i32 [ %16, %if.then21 ], [ %err.0, %remove_nodes ]
  %call39 = tail call i32 @icc_provider_del(ptr noundef %provider) #9
  br label %do.end

do.end:                                           ; preds = %del_provider, %if.end.do.end_crit_edge
  %err.2 = phi i32 [ %call16, %if.end.do.end_crit_edge ], [ %err.1, %del_provider ]
  %20 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.90, i32 noundef %err.2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_emc_devfreq_init(ptr noundef %emc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ondemand_data = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 12
  %0 = ptrtoint ptr %ondemand_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %ondemand_data, align 4
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 5
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !233
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #9, !srcloc !233
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #9, !srcloc !233
  %7 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %emc, align 4
  %call = tail call ptr @devm_devfreq_add_device(ptr noundef %8, ptr noundef nonnull @tegra_emc_devfreq_profile, ptr noundef nonnull @.str.92, ptr noundef %ondemand_data) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.93, ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emc_prepare_timing_change(ptr nocapture noundef readonly %emc, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 8
  %0 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.not.i = icmp eq i32 %1, 0
  br i1 %cmp18.not.i, label %entry.tegra_emc_find_timing.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.tegra_emc_find_timing.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_timing.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.tegra_emc_find_timing.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.tegra_emc_find_timing.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_timing.exit.thread

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
  br i1 %tobool.not.i, label %for.end.i.tegra_emc_find_timing.exit.thread_crit_edge, label %do.body

for.end.i.tegra_emc_find_timing.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_timing.exit.thread

tegra_emc_find_timing.exit.thread:                ; preds = %for.end.i.tegra_emc_find_timing.exit.thread_crit_edge, %for.cond.i.tegra_emc_find_timing.exit.thread_crit_edge, %entry.tegra_emc_find_timing.exit.thread_crit_edge
  %6 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %rate) #12
  br label %cleanup

do.body:                                          ; preds = %for.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc_prepare_timing_change.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emc_prepare_timing_change, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !237

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emc, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emc_prepare_timing_change.__UNIQUE_ID_ddebug229, ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %11, i32 noundef %rate) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end
  %i.032 = phi i32 [ 0, %do.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 %i.032
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %arrayidx8 = getelementptr [46 x i16], ptr @emc_timing_registers, i32 0, i32 %i.032
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx8, align 2
  %conv = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %16, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #9, !srcloc !233
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 46
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %20, i32 728
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !232
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tegra_emc_find_timing.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %tegra_emc_find_timing.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emc_complete_timing_change(ptr nocapture noundef readonly %emc, i1 noundef zeroext %flush) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc_complete_timing_change.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emc_complete_timing_change, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emc, align 4
  %conv = zext i1 %flush to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emc_complete_timing_change.__UNIQUE_ID_ddebug230, ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %flush, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !233
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call8, 100000
  %regs10 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 5
  %4 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs10, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !232
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and64 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool14.not65 = icmp eq i32 %and64, 0
  br i1 %tobool14.not65, label %if.end7.land.lhs.true_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %cond.false

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs10, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !232
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #9
  %13 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs10, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !232
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and = and i32 %16, 16
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then21, %if.end7.for.end_crit_edge
  %v.0 = phi i32 [ %11, %if.then21 ], [ %7, %if.end7.for.end_crit_edge ], [ %16, %cond.false.for.end_crit_edge ]
  %and37 = and i32 %v.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.end43, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef -110) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %for.end.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -110, %do.end43 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emc_read_lpddr_mode_register(ptr nocapture noundef %emc, i32 noundef %emem_dev, i32 noundef %register_addr, ptr nocapture noundef writeonly %register_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 536870912) #9, !srcloc !233
  %add = shl i32 %emem_dev, 30
  %shl = add i32 %add, 1073741824
  %shl36 = shl i32 %register_addr, 16
  %and37 = and i32 %shl36, 16711680
  %or = or i32 %and37, %shl
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %4, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %2) #9, !srcloc !233
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 100000
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !232
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and454 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and454)
  %tobool46.not5 = icmp eq i32 %and454, 0
  br i1 %tobool46.not5, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false64.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call50 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %if.then52, label %cond.false64

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !232
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %for.end

cond.false64:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #9
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !232
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and45 = and i32 %17, 32
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %cond.false64.land.lhs.true_crit_edge, label %cond.false64.for.end_crit_edge

cond.false64.for.end_crit_edge:                   ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.false64.land.lhs.true_crit_edge:             ; preds = %cond.false64
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false64.for.end_crit_edge, %if.then52, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %12, %if.then52 ], [ %8, %entry.for.end_crit_edge ], [ %17, %cond.false64.for.end_crit_edge ]
  %and69 = and i32 %val.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.end75, label %if.end76

do.end75:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %register_addr, i32 noundef -110) #12
  %mrr_error = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 17
  %20 = ptrtoint ptr %mrr_error to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %mrr_error, align 4
  br label %cleanup

if.end76:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr79 = getelementptr i8, ptr %22, i32 236
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !232
  %24 = lshr i32 %23, 24
  %25 = ptrtoint ptr %register_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %register_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lpddr2_jedec_manufacturer(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_lpddr2_get_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_one_timing_from_dt(ptr nocapture noundef readonly %emc, ptr noundef %timing, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #9
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !234
  %call = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef %node) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.58, ptr noundef nonnull %rate, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.60, ptr noundef %node, i32 noundef %call.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 1
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.62, ptr noundef %data, i32 noundef 46, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool10.not = icmp sgt i32 %call.i, -1
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %emc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.64, ptr noundef %node, i32 noundef %call.i) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 4
  %mul17 = mul i32 %8, 2000
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul17, ptr %timing, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_one_timing_from_dt.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_one_timing_from_dt, %if.then24)) #9
          to label %cleanup [label %if.then24], !srcloc !237

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emc, align 4
  %12 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timing, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_one_timing_from_dt.__UNIQUE_ID_ddebug231, ptr noundef %11, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.57, ptr noundef %node, i32 noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end16, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end6 ], [ %call.i, %do.end14 ], [ -22, %do.end ], [ 0, %if.then24 ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #9
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
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %arg, i32 0, i32 8
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
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %arg, i32 0, i32 7
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.74, i32 noundef %rate, i32 noundef %8, i32 noundef %max_rate) #12
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
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 8
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
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %7) #9
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %13) #9
  %inc = add nuw i32 %i.08, 1
  %14 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_timings, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !238

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.85) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_min_rate_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_min_rate_get, ptr noundef nonnull @tegra_emc_debug_min_rate_set, ptr noundef nonnull @.str.86) #9
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
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9, i32 1
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
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 8
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
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.i21 = icmp eq i32 %5, %conv
  br i1 %cmp2.i21, label %for.body.lr.ph.i.if.end_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.07.i22 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.07.i22, 1
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
  %rate_lock.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %rate_lock.i, i32 noundef 0) #9
  %max_rate.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 1, i32 1
  %8 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_rate.i, align 4
  %requested_rate.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %requested_rate.i, align 4
  %max_rate16.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %max_rate16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_rate16.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %conv) #9
  %15 = tail call i32 @llvm.umin.i32(i32 %13, i32 %9) #9
  %incdec.ptr.1.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.1.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %14) #9
  %max_rate16.2.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 2, i32 1
  %19 = ptrtoint ptr %max_rate16.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_rate16.2.i, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp23.i = icmp ugt i32 %18, %21
  br i1 %cmp23.i, label %do.body.i, label %if.end30.i

do.body.i:                                        ; preds = %if.end
  %call.i13 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i, label %do.body.i.emc_request_rate.exit.thread_crit_edge, label %do.end.i

do.body.i.emc_request_rate.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 1, i32 noundef %18, i32 noundef %21) #12
  br label %emc_request_rate.exit.thread

if.end30.i:                                       ; preds = %if.end
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %call32.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %25, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %emc_request_rate.exit.thread18, label %emc_request_rate.exit

emc_request_rate.exit.thread18:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i14 = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %arrayidx.i14, align 4
  %27 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %9, ptr %max_rate.i, align 4
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  br label %if.end5

emc_request_rate.exit.thread:                     ; preds = %do.end.i, %do.body.i.emc_request_rate.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  br label %cleanup

emc_request_rate.exit:                            ; preds = %if.end30.i
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp = icmp slt i32 %call32.i, 0
  br i1 %cmp, label %emc_request_rate.exit.cleanup_crit_edge, label %emc_request_rate.exit.if.end5_crit_edge

emc_request_rate.exit.if.end5_crit_edge:          ; preds = %emc_request_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

emc_request_rate.exit.cleanup_crit_edge:          ; preds = %emc_request_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %emc_request_rate.exit.if.end5_crit_edge, %emc_request_rate.exit.thread18
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %min_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %emc_request_rate.exit.cleanup_crit_edge, %emc_request_rate.exit.thread, %tegra_emc_validate_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %tegra_emc_validate_rate.exit.cleanup_crit_edge ], [ %call32.i, %emc_request_rate.exit.cleanup_crit_edge ], [ -34, %emc_request_rate.exit.thread ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_max_rate_get, ptr noundef nonnull @tegra_emc_debug_max_rate_set, ptr noundef nonnull @.str.86) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9, i32 2
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
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 8
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
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.i20 = icmp eq i32 %5, %conv
  br i1 %cmp2.i20, label %for.body.lr.ph.i.if.end_crit_edge, label %for.body.lr.ph.i.for.cond.i_crit_edge

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.body.lr.ph.i.if.end_crit_edge:                ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.07.i21 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.07.i21, 1
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
  %arrayidx.i13 = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 1
  %rate_lock.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %rate_lock.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i13, align 4
  %requested_rate.i.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %requested_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %requested_rate.i.i, align 4
  %max_rate16.i.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 0, i32 1
  %12 = ptrtoint ptr %max_rate16.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_rate16.i.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9) #9
  %15 = tail call i32 @llvm.umin.i32(i32 %13, i32 %conv) #9
  %incdec.ptr.1.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %14) #9
  %max_rate16.2.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 2, i32 1
  %19 = ptrtoint ptr %max_rate16.2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_rate16.2.i.i, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %15) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp23.i.i = icmp ugt i32 %18, %21
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
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 1, i32 noundef %18, i32 noundef %21) #12
  br label %emc_set_max_rate.exit.thread

if.end30.i.i:                                     ; preds = %if.end
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %call32.i.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %25, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %emc_set_max_rate.exit.thread17, label %emc_set_max_rate.exit

emc_set_max_rate.exit.thread17:                   ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %9, ptr %arrayidx.i13, align 4
  %max_rate40.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 1, i32 1
  %27 = ptrtoint ptr %max_rate40.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
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

if.end5:                                          ; preds = %emc_set_max_rate.exit.if.end5_crit_edge, %emc_set_max_rate.exit.thread17
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %max_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %emc_set_max_rate.exit.cleanup_crit_edge, %emc_set_max_rate.exit.thread, %tegra_emc_validate_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %tegra_emc_validate_rate.exit.cleanup_crit_edge ], [ %call32.i.i, %emc_set_max_rate.exit.cleanup_crit_edge ], [ -34, %emc_set_max_rate.exit.thread ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

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
  %dram_bus_width = getelementptr i8, ptr %1, i32 76
  %7 = ptrtoint ptr %dram_bus_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dram_bus_width, align 4
  %div300 = lshr i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %6)
  %cmp180 = icmp ult i64 %6, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !240

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv185 = trunc i64 %6 to i32
  %div188 = udiv i32 %conv185, %div300
  %conv189 = zext i32 %div188 to i64
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div300, i64 %6) #13, !srcloc !241
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %rate.0 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  %10 = tail call i64 @llvm.umin.i64(i64 %rate.0, i64 4294967295)
  %conv203 = trunc i64 %10 to i32
  %rate_lock.i = getelementptr i8, ptr %1, i32 124
  tail call void @mutex_lock_nested(ptr noundef %rate_lock.i, i32 noundef 0) #9
  %max_rate.i = getelementptr i8, ptr %1, i32 120
  %11 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_rate.i, align 4
  %requested_rate.i = getelementptr i8, ptr %1, i32 100
  %13 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %requested_rate.i, align 4
  %max_rate16.i = getelementptr i8, ptr %1, i32 104
  %15 = ptrtoint ptr %max_rate16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_rate16.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %1, i32 108
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %14) #9
  %max_rate16.1.i = getelementptr i8, ptr %1, i32 112
  %20 = ptrtoint ptr %max_rate16.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_rate16.1.i, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %16) #9
  %23 = tail call i32 @llvm.umax.i32(i32 %19, i32 %conv203) #9
  %24 = tail call i32 @llvm.umin.i32(i32 %22, i32 %12) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %24)
  %cmp23.i = icmp ugt i32 %23, %24
  br i1 %cmp23.i, label %do.body.i, label %if.end30.i

do.body.i:                                        ; preds = %if.end194
  %call.i303 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool.not.i = icmp eq i32 %call.i303, 0
  br i1 %tobool.not.i, label %do.body.i.emc_request_rate.exit_crit_edge, label %do.end.i

do.body.i.emc_request_rate.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 2, i32 noundef %23, i32 noundef %24) #12
  br label %emc_request_rate.exit

if.end30.i:                                       ; preds = %if.end194
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %call32.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %28, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end30.i.emc_request_rate.exit_crit_edge

if.end30.i.emc_request_rate.exit_crit_edge:       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit

if.end35.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %1, i32 116
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv203, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %12, ptr %max_rate.i, align 4
  br label %emc_request_rate.exit

emc_request_rate.exit:                            ; preds = %if.end35.i, %if.end30.i.emc_request_rate.exit_crit_edge, %do.end.i, %do.body.i.emc_request_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end35.i ], [ -34, %do.end.i ], [ -34, %do.body.i.emc_request_rate.exit_crit_edge ], [ %call32.i, %if.end30.i.emc_request_rate.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  ret i32 %retval.0.i
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_devfreq_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %3) #12
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %call1) #9
  tail call void @dev_pm_opp_put(ptr noundef %call1) #9
  %rate_lock.i = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %rate_lock.i, i32 noundef 0) #9
  %max_rate.i = getelementptr %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 0, i32 1
  %5 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_rate.i, align 4
  %incdec.ptr.i = getelementptr %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %call4) #9
  %max_rate16.1.i = getelementptr %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 1, i32 1
  %10 = ptrtoint ptr %max_rate16.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rate16.1.i, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %6) #9
  %incdec.ptr.1.i = getelementptr %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr.1.i, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %9) #9
  %max_rate16.2.i = getelementptr %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 2, i32 1
  %16 = ptrtoint ptr %max_rate16.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_rate16.2.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %12) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp23.i = icmp ugt i32 %15, %18
  br i1 %cmp23.i, label %do.body.i, label %if.end30.i

do.body.i:                                        ; preds = %if.end
  %call.i14 = tail call i32 @___ratelimit(ptr noundef nonnull @emc_request_rate._rs, ptr noundef nonnull @__func__.emc_request_rate) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i, label %do.body.i.emc_request_rate.exit_crit_edge, label %do.end.i

do.body.i.emc_request_rate.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 0, i32 noundef %15, i32 noundef %18) #12
  br label %emc_request_rate.exit

if.end30.i:                                       ; preds = %if.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call32.i = tail call i32 @dev_pm_opp_set_rate(ptr noundef %22, i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end30.i.emc_request_rate.exit_crit_edge

if.end30.i.emc_request_rate.exit_crit_edge:       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_request_rate.exit

if.end35.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.tegra_emc, ptr %1, i32 0, i32 10, i32 0
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call4, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %6, ptr %max_rate.i, align 4
  br label %emc_request_rate.exit

emc_request_rate.exit:                            ; preds = %if.end35.i, %if.end30.i.emc_request_rate.exit_crit_edge, %do.end.i, %do.body.i.emc_request_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end35.i ], [ -34, %do.end.i ], [ -34, %do.body.i.emc_request_rate.exit_crit_edge ], [ %call32.i, %if.end30.i.emc_request_rate.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rate_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %emc_request_rate.exit, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ %retval.0.i, %emc_request_rate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_devfreq_get_dev_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #9, !srcloc !233
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 416
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !232
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 1
  %8 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %busy_time, align 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 412
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !232
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %stat, align 4
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call9 = tail call i32 @clk_get_rate(ptr noundef %15) #9
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %stat, i32 0, i32 2
  %16 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call9, ptr %current_frequency, align 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 65536) #9, !srcloc !233
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %20, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 196608) #9, !srcloc !233
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
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
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !126, !127, !128, !130, !132, !133, !134, !136, !138, !139, !140, !142, !143, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !190, !192, !193, !194, !195, !196, !198, !200, !202, !204, !205, !206, !207, !209, !211, !212, !213, !214, !216, !218, !219, !220, !221}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__initcall__kmod_tegra20_emc__273_1287_tegra_emc_driver_init6, !1, !"__initcall__kmod_tegra20_emc__273_1287_tegra_emc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1287, i32 1}
!2 = !{ptr @__exitcall_tegra_emc_driver_exit, !1, !"__exitcall_tegra_emc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author274, !4, !"__UNIQUE_ID_author274", i1 false, i1 false}
!4 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1289, i32 1}
!5 = !{ptr @__UNIQUE_ID_description275, !6, !"__UNIQUE_ID_description275", i1 false, i1 false}
!6 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1290, i32 1}
!7 = !{ptr @__UNIQUE_ID_softdep276, !8, !"__UNIQUE_ID_softdep276", i1 false, i1 false}
!8 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1291, i32 1}
!9 = !{ptr @__UNIQUE_ID_file277, !10, !"__UNIQUE_ID_file277", i1 false, i1 false}
!10 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1292, i32 1}
!11 = !{ptr @__UNIQUE_ID_license278, !10, !"__UNIQUE_ID_license278", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1281, i32 11}
!14 = !{ptr @tegra_emc_driver, !15, !"tegra_emc_driver", i1 false, i1 false}
!15 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1278, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1211, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_emc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_emc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tegra_emc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1219, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1242, i32 3}
!29 = !{ptr @tegra_emc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_emc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 285, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @emc_prepare_timing_change.__UNIQUE_ID_ddebug229, !32, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 270, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tegra_emc_find_timing._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_emc_find_timing._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @emc_timing_registers, !42, !"emc_timing_registers", i1 false, i1 false}
!42 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 131, i32 18}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 304, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @emc_complete_timing_change.__UNIQUE_ID_ddebug230, !44, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 317, i32 3}
!49 = !{ptr @emc_complete_timing_change._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @emc_complete_timing_change._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"print_sdram_info_once", i1 false, i1 false}
!52 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 600, i32 14}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 613, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @emc_setup_hw._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @emc_setup_hw._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 645, i32 19}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 648, i32 19}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 651, i32 19}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 654, i32 19}
!66 = distinct !{null, !67, !"__print_once", i1 false, i1 false}
!67 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 661, i32 2}
!68 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @emc_setup_hw._entry.24, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @emc_setup_hw._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 587, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @emc_read_lpddr_sdram_info._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @emc_read_lpddr_sdram_info._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 561, i32 3}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @emc_read_lpddr_mode_register._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @emc_read_lpddr_mode_register._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 466, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tegra_emc_find_node_by_ram_code._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @tegra_emc_find_node_by_ram_code._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__print_once", i1 false, i1 false}
!91 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 471, i32 3}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tegra_emc_find_node_by_ram_code._entry.37, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @tegra_emc_find_node_by_ram_code._entry_ptr.39, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 475, i32 43}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 480, i32 47}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 482, i32 34}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 487, i32 41}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 514, i32 6}
!105 = !{ptr @tegra_emc_find_node_by_ram_code._entry.44, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @tegra_emc_find_node_by_ram_code._entry_ptr.46, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 532, i32 2}
!109 = !{ptr @tegra_emc_find_node_by_ram_code._entry.47, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tegra_emc_find_node_by_ram_code._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 420, i32 3}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tegra_emc_load_timings_from_dt._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra_emc_load_timings_from_dt._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__print_once", i1 false, i1 false}
!117 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 447, i32 2}
!118 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @tegra_emc_load_timings_from_dt._entry.52, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @tegra_emc_load_timings_from_dt._entry_ptr.54, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 362, i32 37}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 363, i32 3}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @load_one_timing_from_dt._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @load_one_timing_from_dt._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 367, i32 35}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 369, i32 3}
!132 = !{ptr @load_one_timing_from_dt._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @load_one_timing_from_dt._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 374, i32 41}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 378, i32 3}
!138 = !{ptr @load_one_timing_from_dt._entry.63, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @load_one_timing_from_dt._entry_ptr.65, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 390, i32 2}
!142 = !{ptr @load_one_timing_from_dt.__UNIQUE_ID_ddebug231, !141, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 247, i32 3}
!145 = !{ptr @tegra_emc_isr._rs, !144, !"_rs", i1 false, i1 false}
!146 = !{ptr @__func__.tegra_emc_isr, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @tegra_emc_isr._entry, !144, !"_entry", i1 false, i1 false}
!149 = !{ptr @tegra_emc_isr._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1103, i32 3}
!152 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @tegra_emc_init_clk._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @tegra_emc_init_clk._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1109, i32 3}
!157 = !{ptr @tegra_emc_init_clk._entry.71, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @tegra_emc_init_clk._entry_ptr.73, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 708, i32 3}
!161 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @emc_round_rate._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @emc_round_rate._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 944, i32 3}
!166 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @tegra_emc_debugfs_init._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @tegra_emc_debugfs_init._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 949, i32 41}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 951, i32 22}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 953, i32 22}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 955, i32 22}
!177 = !{ptr @tegra_emc_debug_available_rates_fops, !178, !"tegra_emc_debug_available_rates_fops", i1 false, i1 false}
!178 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 852, i32 37}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 832, i32 23}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 836, i32 17}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 837, i32 12}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 840, i32 14}
!187 = !{ptr @tegra_emc_debug_min_rate_fops, !188, !"tegra_emc_debug_min_rate_fops", i1 false, i1 false}
!188 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 885, i32 1}
!189 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @emc_request_rate._rs, !191, !"_rs", i1 false, i1 false}
!191 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 748, i32 3}
!192 = !{ptr @__func__.emc_request_rate, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @emc_request_rate._entry, !191, !"_entry", i1 false, i1 false}
!195 = !{ptr @emc_request_rate._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @tegra_emc_debug_max_rate_fops, !197, !"tegra_emc_debug_max_rate_fops", i1 false, i1 false}
!197 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 915, i32 1}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1048, i32 15}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1063, i32 15}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1073, i32 2}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @tegra_emc_interconnect_init._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @tegra_emc_interconnect_init._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1192, i32 8}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1195, i32 3}
!211 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @tegra_emc_devfreq_init._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @tegra_emc_devfreq_init._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @tegra_emc_devfreq_profile, !215, !"tegra_emc_devfreq_profile", i1 false, i1 false}
!215 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1163, i32 35}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1130, i32 3}
!218 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @tegra_emc_devfreq_target._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @tegra_emc_devfreq_target._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @tegra_emc_of_match, !222, !"tegra_emc_of_match", i1 false, i1 false}
!222 = !{!"../drivers/memory/tegra/tegra20-emc.c", i32 1272, i32 34}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i64 5783951}
!233 = !{i64 5783533}
!234 = !{!"auto-init"}
!235 = !{i8 0, i8 2}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{i64 2148782998, i64 2148783003, i64 2148783016, i64 2148783060, i64 2148783094, i64 2148783115}
!238 = distinct !{!238, !239}
!239 = !{!"llvm.loop.peeled.count", i32 1}
!240 = !{!"branch_weights", i32 2000, i32 1}
!241 = !{i64 2148691717, i64 2148691997, i64 2148692331, i64 2148692665}
