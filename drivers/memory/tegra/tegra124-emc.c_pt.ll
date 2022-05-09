; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra124-emc.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra124-emc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.tegra_emc = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.emc_timing, ptr, i32, %struct.anon.74, %struct.icc_provider, [2 x %struct.emc_rate_request], %struct.mutex }
%struct.emc_timing = type { i32, [143 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.74 = type { ptr, i32, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.emc_rate_request = type { i32, i32 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.73 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.anon.73 = type { ptr }
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

@__initcall__kmod_tegra124_emc__237_1532_tegra_emc_driver_init6 = internal global ptr @tegra_emc_driver_init, section ".initcall6.init", align 4
@tegra_emc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_emc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra_emc_of_match, ptr null, ptr null, ptr @icc_sync_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_emc_driver_exit = internal global ptr @tegra_emc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [60 x i8] c"tegra124_emc.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [52 x i8] c"tegra124_emc.description=NVIDIA Tegra124 EMC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [52 x i8] c"tegra124_emc.file=drivers/memory/tegra/tegra124-emc\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [28 x i8] c"tegra124_emc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-emc\00", [22 x i8] zeroinitializer }, align 32
@tegra_emc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-emc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_emc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&emc->rate_lock\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_probe.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_emc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"no memory timings for RAM code %u found in DT\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_emc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/memory/tegra/tegra124-emc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry_ptr = internal global ptr @tegra_emc_probe._entry, section ".printk_index", align 4
@tegra_emc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1481, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EMC initialization failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry_ptr.10 = internal global ptr @tegra_emc_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1498, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get EMC clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_emc_probe._entry_ptr.14 = internal global ptr @tegra_emc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,ram-code\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 930, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timing %pOFn: failed to read rate: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"load_one_timing_from_dt\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr = internal global ptr @load_one_timing_from_dt._entry, section ".printk_index", align 4
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,emc-configuration\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 942, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timing %pOFn: failed to read emc burst data: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.22 = internal global ptr @load_one_timing_from_dt._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidia,emc-auto-cal-config\00", [37 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.4, i32 955, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"timing %pOFn: failed to read emc_auto_cal_config: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.26 = internal global ptr @load_one_timing_from_dt._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,emc-auto-cal-config2\00", [36 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.4, i32 956, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"timing %pOFn: failed to read emc_auto_cal_config2: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.30 = internal global ptr @load_one_timing_from_dt._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidia,emc-auto-cal-config3\00", [36 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.4, i32 957, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"timing %pOFn: failed to read emc_auto_cal_config3: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.34 = internal global ptr @load_one_timing_from_dt._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvidia,emc-auto-cal-interval\00", [35 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.18, ptr @.str.4, i32 958, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"timing %pOFn: failed to read emc_auto_cal_interval: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.38 = internal global ptr @load_one_timing_from_dt._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,emc-bgbias-ctl0\00", [41 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.18, ptr @.str.4, i32 959, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"timing %pOFn: failed to read emc_bgbias_ctl0: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.42 = internal global ptr @load_one_timing_from_dt._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,emc-cfg\00", [17 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.4, i32 960, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"timing %pOFn: failed to read emc_cfg: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.46 = internal global ptr @load_one_timing_from_dt._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvidia,emc-cfg-2\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.18, ptr @.str.4, i32 961, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timing %pOFn: failed to read emc_cfg_2: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.50 = internal global ptr @load_one_timing_from_dt._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,emc-ctt-term-ctrl\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.18, ptr @.str.4, i32 962, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"timing %pOFn: failed to read emc_ctt_term_ctrl: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.54 = internal global ptr @load_one_timing_from_dt._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,emc-mode-1\00", [46 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.18, ptr @.str.4, i32 963, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timing %pOFn: failed to read emc_mode_1: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.58 = internal global ptr @load_one_timing_from_dt._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,emc-mode-2\00", [46 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.18, ptr @.str.4, i32 964, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timing %pOFn: failed to read emc_mode_2: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.62 = internal global ptr @load_one_timing_from_dt._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,emc-mode-4\00", [46 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.18, ptr @.str.4, i32 965, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timing %pOFn: failed to read emc_mode_4: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.66 = internal global ptr @load_one_timing_from_dt._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,emc-mode-reset\00", [42 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.18, ptr @.str.4, i32 966, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timing %pOFn: failed to read emc_mode_reset: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.70 = internal global ptr @load_one_timing_from_dt._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,emc-mrs-wait-cnt\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.18, ptr @.str.4, i32 967, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"timing %pOFn: failed to read emc_mrs_wait_cnt: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.74 = internal global ptr @load_one_timing_from_dt._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,emc-sel-dpd-ctrl\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.18, ptr @.str.4, i32 968, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"timing %pOFn: failed to read emc_sel_dpd_ctrl: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.78 = internal global ptr @load_one_timing_from_dt._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,emc-xm2dqspadctrl2\00", [38 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.18, ptr @.str.4, i32 969, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"timing %pOFn: failed to read emc_xm2dqspadctrl2: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.82 = internal global ptr @load_one_timing_from_dt._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,emc-zcal-cnt-long\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.18, ptr @.str.4, i32 970, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"timing %pOFn: failed to read emc_zcal_cnt_long: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.86 = internal global ptr @load_one_timing_from_dt._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,emc-zcal-interval\00", [39 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.18, ptr @.str.4, i32 971, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"timing %pOFn: failed to read emc_zcal_interval: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.90 = internal global ptr @load_one_timing_from_dt._entry.88, section ".printk_index", align 4
@emc_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@emc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 908, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%ubit DRAM bus\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc_init\00", [23 x i8] zeroinitializer }, align 32
@emc_init._entry_ptr = internal global ptr @emc_init._entry, section ".printk_index", align 4
@emc_burst_regs = internal constant { [143 x i32], [132 x i8] } { [143 x i32] [i32 44, i32 48, i32 192, i32 52, i32 56, i32 60, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 88, i32 184, i32 92, i32 720, i32 96, i32 1384, i32 1128, i32 332, i32 336, i32 340, i32 1388, i32 1396, i32 1012, i32 1016, i32 1344, i32 100, i32 104, i32 108, i32 716, i32 112, i32 116, i32 988, i32 120, i32 124, i32 128, i32 132, i32 136, i32 140, i32 144, i32 996, i32 148, i32 344, i32 348, i32 152, i32 156, i32 160, i32 164, i32 168, i32 276, i32 176, i32 180, i32 260, i32 700, i32 704, i32 808, i32 812, i32 816, i32 820, i32 824, i32 828, i32 832, i32 836, i32 1184, i32 1188, i32 1192, i32 1196, i32 1200, i32 1204, i32 1208, i32 1212, i32 840, i32 844, i32 848, i32 852, i32 856, i32 860, i32 864, i32 868, i32 1132, i32 1136, i32 1140, i32 1360, i32 1364, i32 1368, i32 1216, i32 1220, i32 1224, i32 1228, i32 1232, i32 1236, i32 1240, i32 1244, i32 936, i32 940, i32 944, i32 948, i32 952, i32 956, i32 960, i32 964, i32 1312, i32 1316, i32 1320, i32 1324, i32 1328, i32 1332, i32 1336, i32 1340, i32 872, i32 876, i32 880, i32 884, i32 1248, i32 1252, i32 1256, i32 1260, i32 752, i32 1156, i32 1160, i32 772, i32 1356, i32 776, i32 1020, i32 780, i32 784, i32 788, i32 792, i32 248, i32 800, i32 1348, i32 1352, i32 1148, i32 1152, i32 256, i32 740, i32 196, i32 188, i32 728, i32 1376, i32 992, i32 1380], [132 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_emc_find_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 588, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no timing for rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_emc_find_timing\00", [42 x i8] zeroinitializer }, align 32
@tegra_emc_find_timing._entry_ptr = internal global ptr @tegra_emc_find_timing._entry, section ".printk_index", align 4
@emc_seq_update_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 539, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timing update timed out\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"emc_seq_update_timing\00", [42 x i8] zeroinitializer }, align 32
@emc_seq_update_timing._entry_ptr = internal global ptr @emc_seq_update_timing._entry, section ".printk_index", align 4
@emc_seq_disable_auto_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 556, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"auto cal disable timed out\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"emc_seq_disable_auto_cal\00", [39 x i8] zeroinitializer }, align 32
@emc_seq_disable_auto_cal._entry_ptr = internal global ptr @emc_seq_disable_auto_cal._entry, section ".printk_index", align 4
@emc_seq_wait_clkchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 571, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock change timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"emc_seq_wait_clkchange\00", [41 x i8] zeroinitializer }, align 32
@emc_seq_wait_clkchange._entry_ptr = internal global ptr @emc_seq_wait_clkchange._entry, section ".printk_index", align 4
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@tegra_emc_opp_table_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1404, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set OPP supported HW: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_emc_opp_table_init\00", [39 x i8] zeroinitializer }, align 32
@tegra_emc_opp_table_init._entry_ptr = internal global ptr @tegra_emc_opp_table_init._entry, section ".printk_index", align 4
@tegra_emc_opp_table_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.4, i32 1411, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"OPP table not found, please update your device tree\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_emc_opp_table_init._entry_ptr.105 = internal global ptr @tegra_emc_opp_table_init._entry.103, section ".printk_index", align 4
@tegra_emc_opp_table_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.4, i32 1413, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add OPP table: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_emc_opp_table_init._entry_ptr.108 = internal global ptr @tegra_emc_opp_table_init._entry.106, section ".printk_index", align 4
@tegra_emc_opp_table_init.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@tegra_emc_opp_table_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.4, i32 1419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"OPP HW ver. 0x%x, current clock rate %lu MHz\0A\00", [50 x i8] zeroinitializer }, align 32
@tegra_emc_opp_table_init._entry_ptr.111 = internal global ptr @tegra_emc_opp_table_init._entry.109, section ".printk_index", align 4
@tegra_emc_opp_table_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str.4, i32 1424, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to initialize OPP clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_emc_opp_table_init._entry_ptr.114 = internal global ptr @tegra_emc_opp_table_init._entry.112, section ".printk_index", align 4
@emc_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.4, i32 1267, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set rate range [%lu-%lu] for %pC\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"emc_debugfs_init\00", [47 x i8] zeroinitializer }, align 32
@emc_debugfs_init._entry_ptr = internal global ptr @emc_debugfs_init._entry, section ".printk_index", align 4
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"available_rates\00", [16 x i8] zeroinitializer }, align 32
@tegra_emc_debug_available_rates_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_available_rates_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"min_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra_emc_debug_min_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_min_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_rate\00", [23 x i8] zeroinitializer }, align 32
@tegra_emc_debug_max_rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_emc_debug_max_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%lu\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@emc_request_rate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.125, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.emc_request_rate = private unnamed_addr constant [17 x i8] c"emc_request_rate\00", align 1
@emc_request_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @__func__.emc_request_rate, ptr @.str.4, i32 1082, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: type %u: out of range: %lu %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@emc_request_rate._entry_ptr = internal global ptr @emc_request_rate._entry, section ".printk_index", align 4
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"External Memory Controller\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"External Memory (DRAM)\00", [41 x i8] zeroinitializer }, align 32
@tegra_emc_interconnect_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.4, i32 1390, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize ICC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_emc_interconnect_init\00", [36 x i8] zeroinitializer }, align 32
@tegra_emc_interconnect_init._entry_ptr = internal global ptr @tegra_emc_interconnect_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"tegra_emc_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1523, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1526, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"tegra_emc_of_match\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1023, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1454, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1474, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1481, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1495, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1498, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1039, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 927, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 929, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 936, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 940, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 955, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 956, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 957, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 958, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 959, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 960, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 961, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 962, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 963, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 964, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 965, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 966, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 967, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 968, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 969, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 970, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 971, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 908, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [15 x i8] c"emc_burst_regs\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 300, i32 28 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 588, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 539, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 556, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 571, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1404, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1411, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1413, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1418, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1424, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1265, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1273, i32 22 }
@___asan_gen_.453 = private unnamed_addr constant [37 x i8] c"tegra_emc_debug_available_rates_fops\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1179, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1275, i32 22 }
@___asan_gen_.459 = private unnamed_addr constant [30 x i8] c"tegra_emc_debug_min_rate_fops\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1277, i32 22 }
@___asan_gen_.465 = private unnamed_addr constant [30 x i8] c"tegra_emc_debug_max_rate_fops\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1237, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1166, i32 23 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1170, i32 17 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1171, i32 12 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1174, i32 14 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1207, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1081, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1365, i32 15 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1380, i32 15 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.508 = private constant [39 x i8] c"../drivers/memory/tegra/tegra124-emc.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 1390, i32 2 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_tegra_emc_driver_exit, ptr @__initcall__kmod_tegra124_emc__237_1532_tegra_emc_driver_init6, ptr @emc_debugfs_init._entry, ptr @emc_debugfs_init._entry_ptr, ptr @emc_init._entry, ptr @emc_init._entry_ptr, ptr @emc_request_rate._entry, ptr @emc_request_rate._entry_ptr, ptr @emc_seq_disable_auto_cal._entry, ptr @emc_seq_disable_auto_cal._entry_ptr, ptr @emc_seq_update_timing._entry, ptr @emc_seq_update_timing._entry_ptr, ptr @emc_seq_wait_clkchange._entry, ptr @emc_seq_wait_clkchange._entry_ptr, ptr @load_one_timing_from_dt._entry, ptr @load_one_timing_from_dt._entry.20, ptr @load_one_timing_from_dt._entry.24, ptr @load_one_timing_from_dt._entry.28, ptr @load_one_timing_from_dt._entry.32, ptr @load_one_timing_from_dt._entry.36, ptr @load_one_timing_from_dt._entry.40, ptr @load_one_timing_from_dt._entry.44, ptr @load_one_timing_from_dt._entry.48, ptr @load_one_timing_from_dt._entry.52, ptr @load_one_timing_from_dt._entry.56, ptr @load_one_timing_from_dt._entry.60, ptr @load_one_timing_from_dt._entry.64, ptr @load_one_timing_from_dt._entry.68, ptr @load_one_timing_from_dt._entry.72, ptr @load_one_timing_from_dt._entry.76, ptr @load_one_timing_from_dt._entry.80, ptr @load_one_timing_from_dt._entry.84, ptr @load_one_timing_from_dt._entry.88, ptr @load_one_timing_from_dt._entry_ptr, ptr @load_one_timing_from_dt._entry_ptr.22, ptr @load_one_timing_from_dt._entry_ptr.26, ptr @load_one_timing_from_dt._entry_ptr.30, ptr @load_one_timing_from_dt._entry_ptr.34, ptr @load_one_timing_from_dt._entry_ptr.38, ptr @load_one_timing_from_dt._entry_ptr.42, ptr @load_one_timing_from_dt._entry_ptr.46, ptr @load_one_timing_from_dt._entry_ptr.50, ptr @load_one_timing_from_dt._entry_ptr.54, ptr @load_one_timing_from_dt._entry_ptr.58, ptr @load_one_timing_from_dt._entry_ptr.62, ptr @load_one_timing_from_dt._entry_ptr.66, ptr @load_one_timing_from_dt._entry_ptr.70, ptr @load_one_timing_from_dt._entry_ptr.74, ptr @load_one_timing_from_dt._entry_ptr.78, ptr @load_one_timing_from_dt._entry_ptr.82, ptr @load_one_timing_from_dt._entry_ptr.86, ptr @load_one_timing_from_dt._entry_ptr.90, ptr @tegra_emc_driver_exit, ptr @tegra_emc_find_timing._entry, ptr @tegra_emc_find_timing._entry_ptr, ptr @tegra_emc_interconnect_init._entry, ptr @tegra_emc_interconnect_init._entry_ptr, ptr @tegra_emc_opp_table_init._entry, ptr @tegra_emc_opp_table_init._entry.103, ptr @tegra_emc_opp_table_init._entry.106, ptr @tegra_emc_opp_table_init._entry.109, ptr @tegra_emc_opp_table_init._entry.112, ptr @tegra_emc_opp_table_init._entry_ptr, ptr @tegra_emc_opp_table_init._entry_ptr.105, ptr @tegra_emc_opp_table_init._entry_ptr.108, ptr @tegra_emc_opp_table_init._entry_ptr.111, ptr @tegra_emc_opp_table_init._entry_ptr.114, ptr @tegra_emc_probe._entry, ptr @tegra_emc_probe._entry.12, ptr @tegra_emc_probe._entry.7, ptr @tegra_emc_probe._entry_ptr, ptr @tegra_emc_probe._entry_ptr.10, ptr @tegra_emc_probe._entry_ptr.14, ptr @tegra_emc_driver, ptr @.str, ptr @tegra_emc_of_match, ptr @tegra_emc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @emc_burst_regs, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @tegra_emc_debug_available_rates_fops, ptr @.str.118, ptr @tegra_emc_debug_min_rate_fops, ptr @.str.119, ptr @tegra_emc_debug_max_rate_fops, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @emc_request_rate._rs, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_burst_regs to i32), i32 572, i32 704, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_find_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_seq_update_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_seq_disable_auto_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_seq_wait_clkchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_opp_table_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_opp_table_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_opp_table_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_opp_table_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_opp_table_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_available_rates_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_min_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_debug_max_rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_request_rate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_request_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_emc_interconnect_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }]
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
  %hw_version.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 856, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %rate_lock = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %rate_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_emc_probe.__key) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call11 = tail call ptr @devm_tegra_memory_controller_get(ptr noundef %dev) #9
  %mc = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %mc, align 4
  %cmp.i116 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call i32 @tegra_read_ram_code() #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i117 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #9
  %cmp.not14.i = icmp eq ptr %call.i117, null
  br i1 %cmp.not14.i, label %if.end17.do.body27_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.do.body27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %np.016.i = phi ptr [ %call3.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i117, %if.end17.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %value.i, align 4, !annotation !240
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.016.i, ptr noundef nonnull @.str.15, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call18)
  %cmp2.not.i = icmp eq i32 %9, %call18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br i1 %cmp2.not.i, label %if.then22, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %cleanup.thread.i
  %call3.i = call ptr @of_get_next_child(ptr noundef %6, ptr noundef nonnull %np.016.i) #9
  %cmp.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not.i, label %for.inc.i.do.body27_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.body27_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.then22:                                        ; preds = %cleanup.i
  %call.i.i = call ptr @of_get_next_child(ptr noundef nonnull %np.016.i, ptr noundef null) #9
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.then22.of_get_child_count.exit.i_crit_edge, label %if.then22.for.body.i.i_crit_edge

if.then22.for.body.i.i_crit_edge:                 ; preds = %if.then22
  br label %for.body.i.i

if.then22.of_get_child_count.exit.i_crit_edge:    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then22.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then22.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then22.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef %np.016.i, ptr noundef nonnull %child.06.i.i) #9
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.then22.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.then22.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i, i32 644) #9
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !241

devm_kcalloc.exit.thread.i:                       ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %timings31.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %timings31.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %timings31.i, align 4
  br label %tegra_emc_load_timings_from_dt.exit.thread

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %15 = extractvalue { i32, i1 } %10, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #9
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i.i, ptr %timings.i, align 4
  %tobool.not.i118 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i118, label %devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge, label %if.end.i

devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_load_timings_from_dt.exit.thread

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %num.0.lcssa.i.i, ptr %num_timings.i, align 4
  %call3.i119 = call ptr @of_get_next_child(ptr noundef %np.016.i, ptr noundef null) #9
  %cmp.not227.i = icmp eq ptr %call3.i119, null
  br i1 %cmp.not227.i, label %if.end.i.tegra_emc_load_timings_from_dt.exit_crit_edge, label %if.end.i.for.body.i120_crit_edge

if.end.i.for.body.i120_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i120

if.end.i.tegra_emc_load_timings_from_dt.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_load_timings_from_dt.exit

for.body.i120:                                    ; preds = %for.inc.i123.for.body.i120_crit_edge, %if.end.i.for.body.i120_crit_edge
  %i.0229.i = phi i32 [ %inc.i, %for.inc.i123.for.body.i120_crit_edge ], [ 0, %if.end.i.for.body.i120_crit_edge ]
  %child.0228.i = phi ptr [ %call9.i, %for.inc.i123.for.body.i120_crit_edge ], [ %call3.i119, %if.end.i.for.body.i120_crit_edge ]
  %18 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %timings.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #9
  %20 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %value.i.i, align 4, !annotation !240
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %value.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.17, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i.i.i) #12
  br label %if.then7.i

if.end.i.i:                                       ; preds = %for.body.i120
  %arrayidx.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i
  %23 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value.i.i, align 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i, align 4
  %emc_burst_data.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 1
  %call.i.i.i121 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.19, ptr noundef %emc_burst_data.i.i, i32 noundef 143, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i121)
  %tobool2.not.i.i = icmp sgt i32 %call.i.i.i121, -1
  br i1 %tobool2.not.i.i, label %if.end8.i.i, label %do.end6.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.21, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i.i121) #12
  br label %if.then7.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %emc_auto_cal_config.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 2
  %call.i.i275.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.23, ptr noundef %emc_auto_cal_config.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i275.i.i)
  %tobool10.not.i.i = icmp sgt i32 %call.i.i275.i.i, -1
  br i1 %tobool10.not.i.i, label %if.end16.i.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.25, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i275.i.i) #12
  br label %if.then7.i

if.end16.i.i:                                     ; preds = %if.end8.i.i
  %emc_auto_cal_config2.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 3
  %call.i.i276.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.27, ptr noundef %emc_auto_cal_config2.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i276.i.i)
  %tobool18.not.i.i = icmp sgt i32 %call.i.i276.i.i, -1
  br i1 %tobool18.not.i.i, label %if.end24.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.29, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i276.i.i) #12
  br label %if.then7.i

if.end24.i.i:                                     ; preds = %if.end16.i.i
  %emc_auto_cal_config3.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 4
  %call.i.i277.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.31, ptr noundef %emc_auto_cal_config3.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i277.i.i)
  %tobool26.not.i.i = icmp sgt i32 %call.i.i277.i.i, -1
  br i1 %tobool26.not.i.i, label %if.end32.i.i, label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.33, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i277.i.i) #12
  br label %if.then7.i

if.end32.i.i:                                     ; preds = %if.end24.i.i
  %emc_auto_cal_interval.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 5
  %call.i.i278.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.35, ptr noundef %emc_auto_cal_interval.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i278.i.i)
  %tobool34.not.i.i = icmp sgt i32 %call.i.i278.i.i, -1
  br i1 %tobool34.not.i.i, label %if.end40.i.i, label %do.end38.i.i

do.end38.i.i:                                     ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.37, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i278.i.i) #12
  br label %if.then7.i

if.end40.i.i:                                     ; preds = %if.end32.i.i
  %emc_bgbias_ctl0.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 6
  %call.i.i279.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.39, ptr noundef %emc_bgbias_ctl0.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i279.i.i)
  %tobool42.not.i.i = icmp sgt i32 %call.i.i279.i.i, -1
  br i1 %tobool42.not.i.i, label %if.end48.i.i, label %do.end46.i.i

do.end46.i.i:                                     ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.41, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i279.i.i) #12
  br label %if.then7.i

if.end48.i.i:                                     ; preds = %if.end40.i.i
  %emc_cfg.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 7
  %call.i.i280.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.43, ptr noundef %emc_cfg.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i280.i.i)
  %tobool50.not.i.i = icmp sgt i32 %call.i.i280.i.i, -1
  br i1 %tobool50.not.i.i, label %if.end56.i.i, label %do.end54.i.i

do.end54.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.45, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i280.i.i) #12
  br label %if.then7.i

if.end56.i.i:                                     ; preds = %if.end48.i.i
  %emc_cfg_2.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 8
  %call.i.i281.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.47, ptr noundef %emc_cfg_2.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i281.i.i)
  %tobool58.not.i.i = icmp sgt i32 %call.i.i281.i.i, -1
  br i1 %tobool58.not.i.i, label %if.end64.i.i, label %do.end62.i.i

do.end62.i.i:                                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.49, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i281.i.i) #12
  br label %if.then7.i

if.end64.i.i:                                     ; preds = %if.end56.i.i
  %emc_ctt_term_ctrl.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 9
  %call.i.i282.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.51, ptr noundef %emc_ctt_term_ctrl.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i282.i.i)
  %tobool66.not.i.i = icmp sgt i32 %call.i.i282.i.i, -1
  br i1 %tobool66.not.i.i, label %if.end72.i.i, label %do.end70.i.i

do.end70.i.i:                                     ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.53, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i282.i.i) #12
  br label %if.then7.i

if.end72.i.i:                                     ; preds = %if.end64.i.i
  %emc_mode_1.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 10
  %call.i.i283.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.55, ptr noundef %emc_mode_1.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i283.i.i)
  %tobool74.not.i.i = icmp sgt i32 %call.i.i283.i.i, -1
  br i1 %tobool74.not.i.i, label %if.end80.i.i, label %do.end78.i.i

do.end78.i.i:                                     ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.57, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i283.i.i) #12
  br label %if.then7.i

if.end80.i.i:                                     ; preds = %if.end72.i.i
  %emc_mode_2.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 11
  %call.i.i284.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.59, ptr noundef %emc_mode_2.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i284.i.i)
  %tobool82.not.i.i = icmp sgt i32 %call.i.i284.i.i, -1
  br i1 %tobool82.not.i.i, label %if.end88.i.i, label %do.end86.i.i

do.end86.i.i:                                     ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.61, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i284.i.i) #12
  br label %if.then7.i

if.end88.i.i:                                     ; preds = %if.end80.i.i
  %emc_mode_4.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 12
  %call.i.i285.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.63, ptr noundef %emc_mode_4.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i285.i.i)
  %tobool90.not.i.i = icmp sgt i32 %call.i.i285.i.i, -1
  br i1 %tobool90.not.i.i, label %if.end96.i.i, label %do.end94.i.i

do.end94.i.i:                                     ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.65, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i285.i.i) #12
  br label %if.then7.i

if.end96.i.i:                                     ; preds = %if.end88.i.i
  %emc_mode_reset.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 13
  %call.i.i286.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.67, ptr noundef %emc_mode_reset.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i286.i.i)
  %tobool98.not.i.i = icmp sgt i32 %call.i.i286.i.i, -1
  br i1 %tobool98.not.i.i, label %if.end104.i.i, label %do.end102.i.i

do.end102.i.i:                                    ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.69, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i286.i.i) #12
  br label %if.then7.i

if.end104.i.i:                                    ; preds = %if.end96.i.i
  %emc_mrs_wait_cnt.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 14
  %call.i.i287.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.71, ptr noundef %emc_mrs_wait_cnt.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i287.i.i)
  %tobool106.not.i.i = icmp sgt i32 %call.i.i287.i.i, -1
  br i1 %tobool106.not.i.i, label %if.end112.i.i, label %do.end110.i.i

do.end110.i.i:                                    ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.73, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i287.i.i) #12
  br label %if.then7.i

if.end112.i.i:                                    ; preds = %if.end104.i.i
  %emc_sel_dpd_ctrl.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 15
  %call.i.i288.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.75, ptr noundef %emc_sel_dpd_ctrl.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i288.i.i)
  %tobool114.not.i.i = icmp sgt i32 %call.i.i288.i.i, -1
  br i1 %tobool114.not.i.i, label %if.end120.i.i, label %do.end118.i.i

do.end118.i.i:                                    ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.77, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i288.i.i) #12
  br label %if.then7.i

if.end120.i.i:                                    ; preds = %if.end112.i.i
  %emc_xm2dqspadctrl2.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 16
  %call.i.i289.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.79, ptr noundef %emc_xm2dqspadctrl2.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i289.i.i)
  %tobool122.not.i.i = icmp sgt i32 %call.i.i289.i.i, -1
  br i1 %tobool122.not.i.i, label %if.end128.i.i, label %do.end126.i.i

do.end126.i.i:                                    ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.81, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i289.i.i) #12
  br label %if.then7.i

if.end128.i.i:                                    ; preds = %if.end120.i.i
  %emc_zcal_cnt_long.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 17
  %call.i.i290.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.83, ptr noundef %emc_zcal_cnt_long.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i290.i.i)
  %tobool130.not.i.i = icmp sgt i32 %call.i.i290.i.i, -1
  br i1 %tobool130.not.i.i, label %if.end136.i.i, label %do.end134.i.i

do.end134.i.i:                                    ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.85, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i290.i.i) #12
  br label %if.then7.i

if.end136.i.i:                                    ; preds = %if.end128.i.i
  %emc_zcal_interval.i.i = getelementptr %struct.emc_timing, ptr %19, i32 %i.0229.i, i32 18
  %call.i.i291.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0228.i, ptr noundef nonnull @.str.87, ptr noundef %emc_zcal_interval.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i291.i.i)
  %tobool138.not.i.i = icmp sgt i32 %call.i.i291.i.i, -1
  br i1 %tobool138.not.i.i, label %for.inc.i123, label %do.end142.i.i

do.end142.i.i:                                    ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.89, ptr noundef nonnull %child.0228.i, i32 noundef %call.i.i291.i.i) #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %do.end142.i.i, %do.end134.i.i, %do.end126.i.i, %do.end118.i.i, %do.end110.i.i, %do.end102.i.i, %do.end94.i.i, %do.end86.i.i, %do.end78.i.i, %do.end70.i.i, %do.end62.i.i, %do.end54.i.i, %do.end46.i.i, %do.end38.i.i, %do.end30.i.i, %do.end22.i.i, %do.end14.i.i, %do.end6.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i291.i.i, %do.end142.i.i ], [ %call.i.i290.i.i, %do.end134.i.i ], [ %call.i.i289.i.i, %do.end126.i.i ], [ %call.i.i288.i.i, %do.end118.i.i ], [ %call.i.i287.i.i, %do.end110.i.i ], [ %call.i.i286.i.i, %do.end102.i.i ], [ %call.i.i285.i.i, %do.end94.i.i ], [ %call.i.i284.i.i, %do.end86.i.i ], [ %call.i.i283.i.i, %do.end78.i.i ], [ %call.i.i282.i.i, %do.end70.i.i ], [ %call.i.i281.i.i, %do.end62.i.i ], [ %call.i.i280.i.i, %do.end54.i.i ], [ %call.i.i279.i.i, %do.end46.i.i ], [ %call.i.i278.i.i, %do.end38.i.i ], [ %call.i.i277.i.i, %do.end30.i.i ], [ %call.i.i276.i.i, %do.end22.i.i ], [ %call.i.i275.i.i, %do.end14.i.i ], [ %call.i.i.i121, %do.end6.i.i ], [ %call.i.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  call void @of_node_put(ptr noundef nonnull %child.0228.i) #9
  br label %tegra_emc_load_timings_from_dt.exit.thread

for.inc.i123:                                     ; preds = %if.end136.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  %inc.i = add i32 %i.0229.i, 1
  %call9.i = call ptr @of_get_next_child(ptr noundef %np.016.i, ptr noundef nonnull %child.0228.i) #9
  %cmp.not.i122 = icmp eq ptr %call9.i, null
  br i1 %cmp.not.i122, label %for.inc.i123.tegra_emc_load_timings_from_dt.exit_crit_edge, label %for.inc.i123.for.body.i120_crit_edge

for.inc.i123.for.body.i120_crit_edge:             ; preds = %for.inc.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i120

for.inc.i123.tegra_emc_load_timings_from_dt.exit_crit_edge: ; preds = %for.inc.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_load_timings_from_dt.exit

tegra_emc_load_timings_from_dt.exit.thread:       ; preds = %if.then7.i, %devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.tegra_emc_load_timings_from_dt.exit.thread_crit_edge ], [ %retval.0.i.ph.i, %if.then7.i ]
  call void @of_node_put(ptr noundef nonnull %np.016.i) #9
  br label %cleanup

tegra_emc_load_timings_from_dt.exit:              ; preds = %for.inc.i123.tegra_emc_load_timings_from_dt.exit_crit_edge, %if.end.i.tegra_emc_load_timings_from_dt.exit_crit_edge
  %62 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %timings.i, align 4
  %64 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_timings.i, align 4
  call void @sort(ptr noundef %63, i32 noundef %65, i32 noundef 644, ptr noundef nonnull @cmp_timings, ptr noundef null) #9
  call void @of_node_put(ptr noundef nonnull %np.016.i) #9
  br label %if.end37

do.body27:                                        ; preds = %for.inc.i.do.body27_crit_edge, %if.end17.do.body27_crit_edge
  %.b115 = load i1, ptr @tegra_emc_probe.__print_once, align 1
  br i1 %.b115, label %do.body27.if.end37_crit_edge, label %if.then29

do.body27.if.end37_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then29:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tegra_emc_probe.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call18) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %do.body27.if.end37_crit_edge, %tegra_emc_load_timings_from_dt.exit
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 260
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !242
  %69 = call i32 @llvm.bswap.i32(i32 %68) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %dram_type.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %dram_type.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dram_type.i, align 4
  %and.i = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i125 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i125, i32 32, i32 64
  %71 = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select.i, ptr %71, align 4
  %.b1.i = load i1, ptr @emc_init.__print_once, align 1
  br i1 %.b1.i, label %if.end37.do.end9.i_crit_edge, label %if.then5.i

if.end37.do.end9.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then5.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @emc_init.__print_once, align 1
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull @.str.91, i32 noundef %spec.select.i) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then5.i, %if.end37.do.end9.i_crit_edge
  %75 = ptrtoint ptr %dram_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dram_type.i, align 4
  %and11.i = and i32 %76, 3
  store i32 %and11.i, ptr %dram_type.i, align 4
  %77 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mc, align 4
  %call13.i = call i32 @tegra_mc_get_emem_device_count(ptr noundef %78) #9
  %dram_num.i = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 6
  %79 = ptrtoint ptr %dram_num.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call13.i, ptr %dram_num.i, align 4
  br label %for.body.i.i127

for.body.i.i127:                                  ; preds = %for.body.i.i127.for.body.i.i127_crit_edge, %do.end9.i
  %i.021.i.i = phi i32 [ 0, %do.end9.i ], [ %inc.i.i126, %for.body.i.i127.for.body.i.i127_crit_edge ]
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %arrayidx.i.i = getelementptr [143 x i32], ptr @emc_burst_regs, i32 0, i32 %i.021.i.i
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %81, i32 %83
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !242
  %85 = call i32 @llvm.bswap.i32(i32 %84) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  %arrayidx2.i.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 7, i32 1, i32 %i.021.i.i
  %86 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx2.i.i, align 4
  %inc.i.i126 = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i126, 143
  br i1 %exitcond.not.i.i, label %emc_init.exit, label %for.body.i.i127.for.body.i.i127_crit_edge

for.body.i.i127.for.body.i.i127_crit_edge:        ; preds = %for.body.i.i127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i127

emc_init.exit:                                    ; preds = %for.body.i.i127
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %88, i32 12
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #9, !srcloc !242
  %90 = call i32 @llvm.bswap.i32(i32 %89) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  %emc_cfg.i.i128 = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 7, i32 7
  %91 = ptrtoint ptr %emc_cfg.i.i128 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %emc_cfg.i.i128, align 4
  %emc_auto_cal_interval.i.i129 = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 7, i32 5
  %92 = ptrtoint ptr %emc_auto_cal_interval.i.i129 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %emc_auto_cal_interval.i.i129, align 4
  %emc_zcal_cnt_long.i.i130 = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 7, i32 17
  %93 = ptrtoint ptr %emc_zcal_cnt_long.i.i130 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %emc_zcal_cnt_long.i.i130, align 4
  %emc_mode_1.i.i131 = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 7, i32 10
  %94 = call ptr @memset(ptr %emc_mode_1.i.i131, i32 0, i32 16)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @tegra124_clk_set_emc_callbacks(ptr noundef nonnull @tegra_emc_prepare_timing_change, ptr noundef nonnull @tegra_emc_complete_timing_change) #9
  %call.i132 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_tegra_emc_unset_callback, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.end50, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %emc_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @tegra124_clk_set_emc_callbacks(ptr noundef null, ptr noundef null) #9
  br label %cleanup

if.end50:                                         ; preds = %emc_init.exit
  %call52 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %call.i, i32 0, i32 3
  %96 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call52, ptr %clk, align 4
  %cmp.i135 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %call52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %97) #12
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_version.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6) to i32))
  %98 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %shl.i = shl nuw i32 1, %98
  %99 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl.i, ptr %hw_version.i, align 4
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %call.i136 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef %101, ptr noundef nonnull %hw_version.i, i32 noundef 1) #9
  %cmp.i.i.not.i = icmp ugt ptr %call.i136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %do.end.i, label %if.end.i137

do.end.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %call.i136 to i32
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.101, i32 noundef %102) #12
  br label %tegra_emc_opp_table_init.exit

if.end.i137:                                      ; preds = %if.end62
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  %call4.i = call i32 @dev_pm_opp_of_add_table(ptr noundef %106) #9
  %107 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %do.end14.i [
    i32 0, label %do.body18.i
    i32 -19, label %do.end10.i
  ]

do.end10.i:                                       ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.104) #12
  br label %put_hw_table.i

do.end14.i:                                       ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.107, i32 noundef %call4.i) #12
  br label %put_hw_table.i

do.body18.i:                                      ; preds = %if.end.i137
  %.b62.i = load i1, ptr @tegra_emc_opp_table_init.__print_once, align 1
  br i1 %.b62.i, label %do.body18.i.do.end28.i_crit_edge, label %if.then20.i

do.body18.i.do.end28.i_crit_edge:                 ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28.i

if.then20.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tegra_emc_opp_table_init.__print_once, align 1
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 4
  %114 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hw_version.i, align 4
  %116 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk, align 4
  %call25.i = call i32 @clk_get_rate(ptr noundef %117) #9
  %div.i = udiv i32 %call25.i, 1000000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.110, i32 noundef %115, i32 noundef %div.i) #12
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then20.i, %do.body18.i.do.end28.i_crit_edge
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i, align 4
  %120 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk, align 4
  %call31.i = call i32 @clk_get_rate(ptr noundef %121) #9
  %call32.i = call i32 @dev_pm_opp_set_rate(ptr noundef %119, i32 noundef %call31.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %tegra_emc_opp_table_init.exit.thread, label %do.end37.i

tegra_emc_opp_table_init.exit.thread:             ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_version.i) #9
  br label %if.end66

do.end37.i:                                       ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.113, i32 noundef %call32.i) #12
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  call void @dev_pm_opp_of_remove_table(ptr noundef %125) #9
  br label %put_hw_table.i

put_hw_table.i:                                   ; preds = %do.end37.i, %do.end14.i, %do.end10.i
  %err.0.i = phi i32 [ -19, %do.end10.i ], [ %call4.i, %do.end14.i ], [ %call32.i, %do.end37.i ]
  call void @dev_pm_opp_put_supported_hw(ptr noundef %call.i136) #9
  br label %tegra_emc_opp_table_init.exit

tegra_emc_opp_table_init.exit:                    ; preds = %put_hw_table.i, %do.end.i
  %retval.0.i138 = phi i32 [ %102, %do.end.i ], [ %err.0.i, %put_hw_table.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_version.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i138)
  %tobool64.not = icmp eq i32 %retval.0.i138, 0
  br i1 %tobool64.not, label %tegra_emc_opp_table_init.exit.if.end66_crit_edge, label %tegra_emc_opp_table_init.exit.cleanup_crit_edge

tegra_emc_opp_table_init.exit.cleanup_crit_edge:  ; preds = %tegra_emc_opp_table_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_emc_opp_table_init.exit.if.end66_crit_edge: ; preds = %tegra_emc_opp_table_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %tegra_emc_opp_table_init.exit.if.end66_crit_edge, %tegra_emc_opp_table_init.exit.thread
  %arrayidx.i140 = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 12, i32 0
  %126 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %arrayidx.i140, align 4
  %max_rate.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %127 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %max_rate.i, align 4
  %arrayidx.1.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 12, i32 1
  %128 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %arrayidx.1.i, align 4
  %max_rate.1.i = getelementptr %struct.tegra_emc, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %129 = ptrtoint ptr %max_rate.1.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %max_rate.1.i, align 4
  call fastcc void @emc_debugfs_init(ptr noundef %dev, ptr noundef nonnull %call.i)
  call fastcc void @tegra_emc_interconnect_init(ptr noundef nonnull %call.i)
  %call69 = call zeroext i1 @try_module_get(ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %tegra_emc_opp_table_init.exit.cleanup_crit_edge, %if.then55, %devm_add_action_or_reset.exit, %tegra_emc_load_timings_from_dt.exit.thread, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then14 ], [ %97, %if.then55 ], [ 0, %if.end66 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i132, %devm_add_action_or_reset.exit ], [ %retval.0.i138, %tegra_emc_opp_table_init.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %tegra_emc_load_timings_from_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_sync_state(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_tegra_memory_controller_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra124_clk_set_emc_callbacks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_prepare_timing_change(ptr noundef readonly %emc, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9
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
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 8
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
  %cmp2.i = icmp eq i32 %5, %rate
  br i1 %cmp2.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %for.end.i.tegra_emc_find_timing.exit.thread_crit_edge, label %if.end

for.end.i.tegra_emc_find_timing.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_timing.exit.thread

tegra_emc_find_timing.exit.thread:                ; preds = %for.end.i.tegra_emc_find_timing.exit.thread_crit_edge, %for.cond.i.tegra_emc_find_timing.exit.thread_crit_edge, %entry.tegra_emc_find_timing.exit.thread_crit_edge
  %6 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.93, i32 noundef %rate) #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %emc_mode_1 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 10
  %8 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %emc_mode_1, align 4
  %and = and i32 %9, 1
  %emc_mode_11 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 10
  %10 = ptrtoint ptr %emc_mode_11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %emc_mode_11, align 4
  %and2 = and i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp = icmp eq i32 %and, %and2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool6.not = icmp eq i32 %and2, 0
  %phi.bo = xor i1 %tobool6.not, true
  %cmp241.demorgan = or i1 %cmp, %tobool6.not
  %cmp241 = xor i1 %cmp241.demorgan, true
  %cmp197 = or i1 %cmp, %phi.bo
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  %regs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 268435456) #9, !srcloc !247
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !242
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  %and15 = and i32 %17, -268173312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end24_crit_edge, label %if.then17

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and18 = and i32 %17, 268173311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %18) #9, !srcloc !247
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end.if.end24_crit_edge
  %pre_wait.0 = phi i32 [ 5, %if.then17 ], [ 0, %if.end.if.end24_crit_edge ]
  %dram_type = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 4
  %21 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp25 = icmp eq i32 %22, 0
  %.461 = select i1 %cmp25, i32 316, i32 300
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr32 = getelementptr i8, ptr %24, i32 984
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #9, !srcloc !242
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %and36 = and i32 %26, %.461
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end24.if.end45_crit_edge, label %if.then38

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %.461, -1
  %and39 = and i32 %26, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %and39)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %29, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %27) #9, !srcloc !247
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %if.end24.if.end45_crit_edge
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %31, i32 1392
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #9, !srcloc !242
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !252
  %emc_bgbias_ctl053 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 6
  %34 = ptrtoint ptr %emc_bgbias_ctl053 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %emc_bgbias_ctl053, align 4
  %and54 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp ne i32 %and54, 0
  %and56 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond = select i1 %tobool55.not, i1 true, i1 %tobool57.not
  %not.or.cond = xor i1 %or.cond, true
  %36 = and i32 %33, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp ne i32 %36, 0
  %brmerge471 = select i1 %37, i1 true, i1 %not.or.cond
  br i1 %brmerge471, label %do.body69, label %if.end45.if.end77_crit_edge

if.end45.if.end77_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.body69:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %emc_bgbias_ctl0 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 6
  %38 = ptrtoint ptr %emc_bgbias_ctl0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %emc_bgbias_ctl0, align 4
  %and59 = and i32 %39, -9
  %spec.select468 = select i1 %or.cond, i32 %39, i32 %and59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !253
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %spec.select468)
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr73 = getelementptr i8, ptr %42, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %40) #9, !srcloc !247
  br label %if.end77

if.end77:                                         ; preds = %do.body69, %if.end45.if.end77_crit_edge
  %pre_wait.1 = phi i32 [ 5, %do.body69 ], [ %pre_wait.0, %if.end45.if.end77_crit_edge ]
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr81 = getelementptr i8, ptr %44, i32 764
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #9, !srcloc !242
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  %emc_xm2dqspadctrl2 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 16
  %47 = ptrtoint ptr %emc_xm2dqspadctrl2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %emc_xm2dqspadctrl2, align 4
  %and85 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp ne i32 %and85, 0
  %and88 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond463 = select i1 %tobool86.not, i1 %tobool89.not, i1 false
  %or = or i32 %46, 32
  %spec.select470 = select i1 %or.cond463, i32 %or, i32 %46
  %and93 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp ne i32 %and93, 0
  %and96 = and i32 %spec.select470, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %or.cond464 = select i1 %tobool94.not, i1 %tobool97.not, i1 false
  %spec.select472 = select i1 %or.cond464, i1 true, i1 %or.cond463
  br i1 %spec.select472, label %if.end111.thread, label %if.end111

if.end111.thread:                                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %or99 = zext i1 %or.cond464 to i32
  %spec.select473 = or i32 %spec.select470, %or99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %spec.select473)
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr107 = getelementptr i8, ptr %51, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %49) #9, !srcloc !247
  br label %if.then113

if.end111:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pre_wait.1)
  %tobool112.not = icmp eq i32 %pre_wait.1, 0
  br i1 %tobool112.not, label %if.end111.if.end118_crit_edge, label %if.end111.if.then113_crit_edge

if.end111.if.then113_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.end111.if.end118_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then113:                                       ; preds = %if.end111.if.then113_crit_edge, %if.end111.thread
  %pre_wait.2577 = phi i32 [ 30, %if.end111.thread ], [ %pre_wait.1, %if.end111.if.then113_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !247
  br label %for.body.i474

for.body.i474:                                    ; preds = %if.end.i.for.body.i474_crit_edge, %if.then113
  %i.012.i = phi i32 [ 0, %if.then113 ], [ %inc.i475, %if.end.i.for.body.i474_crit_edge ]
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %55, i32 692
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %57 = and i32 %56, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp4.i = icmp eq i32 %57, 0
  br i1 %cmp4.i, label %for.body.i474.cond.false116_crit_edge, label %if.end.i

for.body.i474.cond.false116_crit_edge:            ; preds = %for.body.i474
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false116

if.end.i:                                         ; preds = %for.body.i474
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #9
  %inc.i475 = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i476 = icmp eq i32 %inc.i475, 1000
  br i1 %exitcond.not.i476, label %do.end7.i, label %if.end.i.for.body.i474_crit_edge

if.end.i.for.body.i474_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i474

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.95) #12
  br label %cond.false116

cond.false116:                                    ; preds = %do.end7.i, %for.body.i474.cond.false116_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %pre_wait.2577) #9
  br label %if.end118

if.end118:                                        ; preds = %cond.false116, %if.end111.if.end118_crit_edge
  %emc_ctt_term_ctrl = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 9
  %62 = ptrtoint ptr %emc_ctt_term_ctrl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %emc_ctt_term_ctrl, align 4
  %emc_ctt_term_ctrl119 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 9
  %64 = ptrtoint ptr %emc_ctt_term_ctrl119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %emc_ctt_term_ctrl119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp120.not = icmp eq i32 %63, %65
  br i1 %cmp120.not, label %if.end118.do.body130.preheader_crit_edge, label %if.then121

if.end118.do.body130.preheader_crit_edge:         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body130.preheader

if.then121:                                       ; preds = %if.end118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr.i478 = getelementptr i8, ptr %67, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478, i32 0) #9, !srcloc !247
  br label %for.body.i482

for.body.i482:                                    ; preds = %if.end.i485.for.body.i482_crit_edge, %if.then121
  %i.012.i479 = phi i32 [ 0, %if.then121 ], [ %inc.i483, %if.end.i485.for.body.i482_crit_edge ]
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr2.i480 = getelementptr i8, ptr %69, i32 684
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i480) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  %.mask.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %cmp4.i481 = icmp eq i32 %.mask.i, 0
  br i1 %cmp4.i481, label %for.body.i482.emc_seq_disable_auto_cal.exit_crit_edge, label %if.end.i485

for.body.i482.emc_seq_disable_auto_cal.exit_crit_edge: ; preds = %for.body.i482
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_seq_disable_auto_cal.exit

if.end.i485:                                      ; preds = %for.body.i482
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #9
  %inc.i483 = add nuw nsw i32 %i.012.i479, 1
  %exitcond.not.i484 = icmp eq i32 %inc.i483, 1000
  br i1 %exitcond.not.i484, label %do.end7.i486, label %if.end.i485.for.body.i482_crit_edge

if.end.i485.for.body.i482_crit_edge:              ; preds = %if.end.i485
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i482

do.end7.i486:                                     ; preds = %if.end.i485
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.97) #12
  br label %emc_seq_disable_auto_cal.exit

emc_seq_disable_auto_cal.exit:                    ; preds = %do.end7.i486, %for.body.i482.emc_seq_disable_auto_cal.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %emc_ctt_term_ctrl119 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %emc_ctt_term_ctrl119, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %add.ptr127 = getelementptr i8, ptr %78, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 %76) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs, align 4
  %add.ptr.i488 = getelementptr i8, ptr %80, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488, i32 16777216) #9, !srcloc !247
  br label %for.body.i492

for.body.i492:                                    ; preds = %if.end.i495.for.body.i492_crit_edge, %emc_seq_disable_auto_cal.exit
  %i.012.i489 = phi i32 [ 0, %emc_seq_disable_auto_cal.exit ], [ %inc.i493, %if.end.i495.for.body.i492_crit_edge ]
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 4
  %add.ptr2.i490 = getelementptr i8, ptr %82, i32 692
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i490) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %84 = and i32 %83, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp4.i491 = icmp eq i32 %84, 0
  br i1 %cmp4.i491, label %for.body.i492.do.body130.preheader_crit_edge, label %if.end.i495

for.body.i492.do.body130.preheader_crit_edge:     ; preds = %for.body.i492
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body130.preheader

if.end.i495:                                      ; preds = %for.body.i492
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748) #9
  %inc.i493 = add nuw nsw i32 %i.012.i489, 1
  %exitcond.not.i494 = icmp eq i32 %inc.i493, 1000
  br i1 %exitcond.not.i494, label %do.end7.i496, label %if.end.i495.for.body.i492_crit_edge

if.end.i495.for.body.i492_crit_edge:              ; preds = %if.end.i495
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i492

do.end7.i496:                                     ; preds = %if.end.i495
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.95) #12
  br label %do.body130.preheader

do.body130.preheader:                             ; preds = %do.end7.i496, %for.body.i492.do.body130.preheader_crit_edge, %if.end118.do.body130.preheader_crit_edge
  br label %do.body130

do.body130:                                       ; preds = %do.body130.do.body130_crit_edge, %do.body130.preheader
  %i.0580 = phi i32 [ %inc, %do.body130.do.body130_crit_edge ], [ 0, %do.body130.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 1, i32 %i.0580
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %arrayidx134 = getelementptr [143 x i32], ptr @emc_burst_regs, i32 0, i32 %i.0580
  %93 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx134, align 4
  %add.ptr135 = getelementptr i8, ptr %92, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %90) #9, !srcloc !247
  %inc = add nuw nsw i32 %i.0580, 1
  %exitcond.not = icmp eq i32 %inc, 143
  br i1 %exitcond.not, label %do.body136, label %do.body130.do.body130_crit_edge

do.body130.do.body130_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body130

do.body136:                                       ; preds = %do.body130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  tail call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %emc_xm2dqspadctrl2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %emc_xm2dqspadctrl2, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs, align 4
  %add.ptr141 = getelementptr i8, ptr %99, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %97) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %emc_zcal_interval = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 18
  %100 = ptrtoint ptr %emc_zcal_interval to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %emc_zcal_interval, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %103 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs, align 4
  %add.ptr146 = getelementptr i8, ptr %104, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %102) #9, !srcloc !247
  %mc = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 1
  %105 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mc, align 4
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i, align 4
  %call148 = tail call i32 @tegra_mc_write_emem_configuration(ptr noundef %106, i32 noundef %108) #9
  %emc_cfg = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 7
  %109 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %emc_cfg, align 4
  %and149 = and i32 %110, 268173311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %111 = tail call i32 @llvm.bswap.i32(i32 %and149) #9
  %112 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs, align 4
  %add.ptr.i499 = getelementptr i8, ptr %113, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i499, i32 %111) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %115, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 201326592) #9, !srcloc !247
  %emc_auto_cal_config2 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 3
  %116 = ptrtoint ptr %emc_auto_cal_config2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %emc_auto_cal_config2, align 4
  %emc_auto_cal_config2150 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 3
  %118 = ptrtoint ptr %emc_auto_cal_config2150 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %emc_auto_cal_config2150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp151.not = icmp eq i32 %117, %119
  br i1 %cmp151.not, label %do.body136.if.end154_crit_edge, label %if.then152

do.body136.if.end154_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.then152:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %120 = tail call i32 @llvm.bswap.i32(i32 %117) #9
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 4
  %add.ptr.i501 = getelementptr i8, ptr %122, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i501, i32 %120) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %123 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs, align 4
  %add.ptr4.i502 = getelementptr i8, ptr %124, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i502, i32 1476657152) #9, !srcloc !247
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %do.body136.if.end154_crit_edge
  %emc_auto_cal_config3 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 4
  %125 = ptrtoint ptr %emc_auto_cal_config3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %emc_auto_cal_config3, align 4
  %emc_auto_cal_config3155 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 4
  %127 = ptrtoint ptr %emc_auto_cal_config3155 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %emc_auto_cal_config3155, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp156.not = icmp eq i32 %126, %128
  br i1 %cmp156.not, label %if.end154.if.end159_crit_edge, label %if.then157

if.end154.if.end159_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %129 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 4
  %add.ptr.i504 = getelementptr i8, ptr %131, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i504, i32 %129) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %132 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs, align 4
  %add.ptr4.i505 = getelementptr i8, ptr %133, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i505, i32 1543766016) #9, !srcloc !247
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.end154.if.end159_crit_edge
  %emc_auto_cal_config = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 2
  %134 = ptrtoint ptr %emc_auto_cal_config to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %emc_auto_cal_config, align 4
  %emc_auto_cal_config160 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 2
  %136 = ptrtoint ptr %emc_auto_cal_config160 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %emc_auto_cal_config160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp161.not = icmp eq i32 %135, %137
  br i1 %cmp161.not, label %if.end159.if.end165_crit_edge, label %if.then162

if.end159.if.end165_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end165

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %and164 = lshr i32 %135, 24
  %138 = and i32 %and164, 128
  %139 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs, align 4
  %add.ptr.i507 = getelementptr i8, ptr %140, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i507, i32 %138) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %141 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs, align 4
  %add.ptr4.i508 = getelementptr i8, ptr %142, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i508, i32 -1543372800) #9, !srcloc !247
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %if.end159.if.end165_crit_edge
  %143 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp167 = icmp ne i32 %144, 0
  %brmerge = select i1 %cmp167, i1 true, i1 %cmp241.demorgan
  br i1 %brmerge, label %if.end165.if.end192_crit_edge, label %if.then170

if.end165.if.end192_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then170:                                       ; preds = %if.end165
  %145 = ptrtoint ptr %emc_zcal_interval to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %emc_zcal_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp172.not = icmp eq i32 %146, 0
  br i1 %cmp172.not, label %if.then170.if.end178_crit_edge, label %land.lhs.true173

if.then170.if.end178_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

land.lhs.true173:                                 ; preds = %if.then170
  %emc_zcal_interval174 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 18
  %147 = ptrtoint ptr %emc_zcal_interval174 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %emc_zcal_interval174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp175 = icmp eq i32 %148, 0
  br i1 %cmp175, label %if.then176, label %land.lhs.true173.if.end178_crit_edge

land.lhs.true173.if.end178_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end178

if.then176:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #11
  %dram_num = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 6
  %149 = ptrtoint ptr %dram_num to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dram_num, align 4
  %mul177.neg = mul i32 %150, -256
  %sub = add i32 %mul177.neg, 512
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %land.lhs.true173.if.end178_crit_edge, %if.then170.if.end178_crit_edge
  %cnt.0 = phi i32 [ %sub, %if.then176 ], [ 512, %land.lhs.true173.if.end178_crit_edge ], [ 512, %if.then170.if.end178_crit_edge ]
  %emc_mrs_wait_cnt = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 14
  %151 = ptrtoint ptr %emc_mrs_wait_cnt to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %emc_mrs_wait_cnt, align 4
  %and179 = and i32 %152, 1023
  %153 = tail call i32 @llvm.umax.i32(i32 %cnt.0, i32 %and179)
  %and184 = and i32 %152, -67043329
  %shl = shl i32 %153, 16
  %and185 = and i32 %shl, 67043328
  %or186 = or i32 %and185, %and184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %154 = tail call i32 @llvm.bswap.i32(i32 %or186)
  %155 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs, align 4
  %add.ptr191 = getelementptr i8, ptr %156, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %154) #9, !srcloc !247
  br label %if.end192

if.end192:                                        ; preds = %if.end178, %if.end165.if.end192_crit_edge
  %emc_cfg_2 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 8
  %157 = ptrtoint ptr %emc_cfg_2 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %emc_cfg_2, align 4
  %and193 = and i32 %158, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %159 = tail call i32 @llvm.bswap.i32(i32 %and193) #9
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %add.ptr.i510 = getelementptr i8, ptr %161, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i510, i32 %159) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %add.ptr4.i511 = getelementptr i8, ptr %163, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i511, i32 -1207828480) #9, !srcloc !247
  %164 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp195 = icmp ne i32 %165, 0
  %brmerge465 = select i1 %cmp195, i1 true, i1 %cmp197
  br i1 %brmerge465, label %if.end192.if.end200_crit_edge, label %if.then198

if.end192.if.end200_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.then198:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %emc_mode_11 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %emc_mode_11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #9
  %169 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs, align 4
  %add.ptr.i513 = getelementptr i8, ptr %170, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i513, i32 %168) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %171 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs, align 4
  %add.ptr4.i514 = getelementptr i8, ptr %172, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i514, i32 -805306368) #9, !srcloc !247
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end192.if.end200_crit_edge
  %dram_num201 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 6
  %173 = ptrtoint ptr %dram_num201 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dram_num201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp202.inv = icmp ult i32 %174, 2
  %cond = select i1 %cmp202.inv, i32 33554432, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %175 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs, align 4
  %add.ptr.i516 = getelementptr i8, ptr %176, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i516, i32 %cond) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %177 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs, align 4
  %add.ptr4.i517 = getelementptr i8, ptr %178, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i517, i32 536870912) #9, !srcloc !247
  %179 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp205 = icmp eq i32 %180, 0
  br i1 %cmp205, label %if.then206, label %if.end200.if.end211_crit_edge

if.end200.if.end211_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

if.then206:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  %181 = ptrtoint ptr %dram_num201 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dram_num201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp208 = icmp ugt i32 %182, 1
  %or210 = select i1 %cmp208, i32 1, i32 -2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %183 = tail call i32 @llvm.bswap.i32(i32 %or210) #9
  %184 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs, align 4
  %add.ptr.i519 = getelementptr i8, ptr %185, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i519, i32 %183) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %186 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs, align 4
  %add.ptr4.i520 = getelementptr i8, ptr %187, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i520, i32 -536870912) #9, !srcloc !247
  br label %if.end211

if.end211:                                        ; preds = %if.then206, %if.end200.if.end211_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs, align 4
  %add.ptr.i522 = getelementptr i8, ptr %189, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i522, i32 16777216) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %190 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs, align 4
  %add.ptr4.i523 = getelementptr i8, ptr %191, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i523, i32 -872218624) #9, !srcloc !247
  %192 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp213 = icmp eq i32 %193, 0
  br i1 %cmp213, label %if.then214, label %if.end211.if.end218_crit_edge

if.end211.if.end218_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then214:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %dram_num201 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dram_num201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %195)
  %cmp216 = icmp ugt i32 %195, 1
  %cond217 = select i1 %cmp216, i32 0, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %196 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs, align 4
  %add.ptr.i525 = getelementptr i8, ptr %197, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i525, i32 %cond217) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %198 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs, align 4
  %add.ptr4.i526 = getelementptr i8, ptr %199, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i526, i32 -536870912) #9, !srcloc !247
  br label %if.end218

if.end218:                                        ; preds = %if.then214, %if.end211.if.end218_crit_edge
  %200 = ptrtoint ptr %dram_num201 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dram_num201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %201)
  %cmp220.inv = icmp ult i32 %201, 2
  %or223 = select i1 %cmp220.inv, i32 -2147483646, i32 -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %202 = tail call i32 @llvm.bswap.i32(i32 %or223) #9
  %203 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs, align 4
  %add.ptr.i528 = getelementptr i8, ptr %204, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i528, i32 %202) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %205 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs, align 4
  %add.ptr4.i529 = getelementptr i8, ptr %206, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i529, i32 536870912) #9, !srcloc !247
  %207 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dram_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp225 = icmp eq i32 %208, 0
  br i1 %cmp225, label %if.then226, label %if.else252

if.then226:                                       ; preds = %if.end218
  %209 = ptrtoint ptr %emc_mode_11 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %emc_mode_11, align 4
  %211 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %emc_mode_1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %212)
  %cmp229.not = icmp eq i32 %210, %212
  br i1 %cmp229.not, label %if.then226.if.end232_crit_edge, label %if.then230

if.then226.if.end232_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end232

if.then230:                                       ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %213 = tail call i32 @llvm.bswap.i32(i32 %210) #9
  %214 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs, align 4
  %add.ptr.i531 = getelementptr i8, ptr %215, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i531, i32 %213) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %216 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs, align 4
  %add.ptr4.i532 = getelementptr i8, ptr %217, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i532, i32 -805306368) #9, !srcloc !247
  br label %if.end232

if.end232:                                        ; preds = %if.then230, %if.then226.if.end232_crit_edge
  %emc_mode_2 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 11
  %218 = ptrtoint ptr %emc_mode_2 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %emc_mode_2, align 4
  %emc_mode_2233 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 11
  %220 = ptrtoint ptr %emc_mode_2233 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %emc_mode_2233, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %221)
  %cmp234.not = icmp eq i32 %219, %221
  br i1 %cmp234.not, label %if.end232.if.end237_crit_edge, label %if.then235

if.end232.if.end237_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.then235:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %222 = tail call i32 @llvm.bswap.i32(i32 %219) #9
  %223 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs, align 4
  %add.ptr.i534 = getelementptr i8, ptr %224, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i534, i32 %222) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %225 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs, align 4
  %add.ptr4.i535 = getelementptr i8, ptr %226, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i535, i32 738263040) #9, !srcloc !247
  br label %if.end237

if.end237:                                        ; preds = %if.then235, %if.end232.if.end237_crit_edge
  %emc_mode_reset = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 13
  %227 = ptrtoint ptr %emc_mode_reset to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %emc_mode_reset, align 4
  %emc_mode_reset238 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 13
  %229 = ptrtoint ptr %emc_mode_reset238 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %emc_mode_reset238, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp239.not = icmp ne i32 %228, %230
  %brmerge466 = select i1 %cmp239.not, i1 true, i1 %cmp241
  br i1 %brmerge466, label %if.then242, label %if.end237.if.end270_crit_edge

if.end237.if.end270_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end270

if.then242:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  %or247 = or i32 %228, 67109120
  %and249 = and i32 %228, -257
  %val.2 = select i1 %cmp241.demorgan, i32 %and249, i32 %or247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %231 = tail call i32 @llvm.bswap.i32(i32 %val.2) #9
  %232 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs, align 4
  %add.ptr.i537 = getelementptr i8, ptr %233, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i537, i32 %231) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %234 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs, align 4
  %add.ptr4.i538 = getelementptr i8, ptr %235, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i538, i32 -872415232) #9, !srcloc !247
  br label %if.end270

if.else252:                                       ; preds = %if.end218
  %emc_mode_2253 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 11
  %236 = ptrtoint ptr %emc_mode_2253 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %emc_mode_2253, align 4
  %emc_mode_2254 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 11
  %238 = ptrtoint ptr %emc_mode_2254 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %emc_mode_2254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %237, i32 %239)
  %cmp255.not = icmp eq i32 %237, %239
  br i1 %cmp255.not, label %if.else252.if.end258_crit_edge, label %if.then256

if.else252.if.end258_crit_edge:                   ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end258

if.then256:                                       ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %240 = tail call i32 @llvm.bswap.i32(i32 %237) #9
  %241 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs, align 4
  %add.ptr.i540 = getelementptr i8, ptr %242, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i540, i32 %240) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %243 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs, align 4
  %add.ptr4.i541 = getelementptr i8, ptr %244, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i541, i32 872480768) #9, !srcloc !247
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.else252.if.end258_crit_edge
  %245 = ptrtoint ptr %emc_mode_11 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %emc_mode_11, align 4
  %247 = ptrtoint ptr %emc_mode_1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %emc_mode_1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %248)
  %cmp261.not = icmp eq i32 %246, %248
  br i1 %cmp261.not, label %if.end258.if.end264_crit_edge, label %if.then262

if.end258.if.end264_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end264

if.then262:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %249 = tail call i32 @llvm.bswap.i32(i32 %246) #9
  %250 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs, align 4
  %add.ptr.i543 = getelementptr i8, ptr %251, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i543, i32 %249) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %252 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs, align 4
  %add.ptr4.i544 = getelementptr i8, ptr %253, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i544, i32 -402653184) #9, !srcloc !247
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.end258.if.end264_crit_edge
  %emc_mode_4 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 12
  %254 = ptrtoint ptr %emc_mode_4 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %emc_mode_4, align 4
  %emc_mode_4265 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 12
  %256 = ptrtoint ptr %emc_mode_4265 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %emc_mode_4265, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %257)
  %cmp266.not = icmp eq i32 %255, %257
  br i1 %cmp266.not, label %if.end264.if.end270_crit_edge, label %if.then267

if.end264.if.end270_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end270

if.then267:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %258 = tail call i32 @llvm.bswap.i32(i32 %255) #9
  %259 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs, align 4
  %add.ptr.i546 = getelementptr i8, ptr %260, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i546, i32 %258) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %261 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs, align 4
  %add.ptr4.i547 = getelementptr i8, ptr %262, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i547, i32 1006698496) #9, !srcloc !247
  br label %if.end270

if.end270:                                        ; preds = %if.then267, %if.end264.if.end270_crit_edge, %if.then242, %if.end237.if.end270_crit_edge
  %263 = ptrtoint ptr %emc_zcal_interval to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %emc_zcal_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp272.not = icmp eq i32 %264, 0
  br i1 %cmp272.not, label %if.end270.if.end281_crit_edge, label %land.lhs.true273

if.end270.if.end281_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281

land.lhs.true273:                                 ; preds = %if.end270
  %emc_zcal_interval274 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 18
  %265 = ptrtoint ptr %emc_zcal_interval274 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %emc_zcal_interval274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp275 = icmp eq i32 %266, 0
  br i1 %cmp275, label %if.then276, label %land.lhs.true273.if.end281_crit_edge

land.lhs.true273.if.end281_crit_edge:             ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281

if.then276:                                       ; preds = %land.lhs.true273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %267 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regs, align 4
  %add.ptr.i549 = getelementptr i8, ptr %268, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i549, i32 285212800) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %269 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regs, align 4
  %add.ptr4.i550 = getelementptr i8, ptr %270, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i550, i32 -335413248) #9, !srcloc !247
  %271 = ptrtoint ptr %dram_num201 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %dram_num201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %272)
  %cmp278 = icmp ugt i32 %272, 1
  br i1 %cmp278, label %if.then279, label %if.then276.if.end281_crit_edge

if.then276.if.end281_crit_edge:                   ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end281

if.then279:                                       ; preds = %if.then276
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %273 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %regs, align 4
  %add.ptr.i552 = getelementptr i8, ptr %274, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i552, i32 285212736) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %275 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs, align 4
  %add.ptr4.i553 = getelementptr i8, ptr %276, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i553, i32 -335413248) #9, !srcloc !247
  br label %if.end281

if.end281:                                        ; preds = %if.then279, %if.then276.if.end281_crit_edge, %land.lhs.true273.if.end281_crit_edge, %if.end270.if.end281_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %277 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regs, align 4
  %add.ptr.i555 = getelementptr i8, ptr %278, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i555, i32 0) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %279 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs, align 4
  %add.ptr4.i556 = getelementptr i8, ptr %280, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i556, i32 -268238848) #9, !srcloc !247
  %281 = ptrtoint ptr %emc_cfg_2 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %emc_cfg_2, align 4
  %and283 = and i32 %282, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  br i1 %tobool284.not, label %if.end281.if.end287_crit_edge, label %if.then285

if.end281.if.end287_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end287

if.then285:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !264
  tail call void @arm_heavy_mb() #9
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #9
  %284 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %regs, align 4
  %add.ptr.i558 = getelementptr i8, ptr %285, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i558, i32 %283) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  %286 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs, align 4
  %add.ptr4.i559 = getelementptr i8, ptr %287, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i559, i32 -1207828480) #9, !srcloc !247
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %if.end281.if.end287_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  tail call void @arm_heavy_mb() #9
  %288 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regs, align 4
  %add.ptr.i561 = getelementptr i8, ptr %289, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i561, i32 0) #9, !srcloc !247
  br label %for.body.i566

for.body.i566:                                    ; preds = %if.end.i569.for.body.i566_crit_edge, %if.end287
  %i.012.i562 = phi i32 [ 0, %if.end287 ], [ %inc.i567, %if.end.i569.for.body.i566_crit_edge ]
  %290 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs, align 4
  %add.ptr2.i563 = getelementptr i8, ptr %291, i32 684
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i563) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  %.mask.i564 = and i32 %292, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i564)
  %cmp4.i565 = icmp eq i32 %.mask.i564, 0
  br i1 %cmp4.i565, label %for.body.i566.emc_seq_disable_auto_cal.exit571_crit_edge, label %if.end.i569

for.body.i566.emc_seq_disable_auto_cal.exit571_crit_edge: ; preds = %for.body.i566
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_seq_disable_auto_cal.exit571

if.end.i569:                                      ; preds = %for.body.i566
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %293 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %293(i32 noundef 214748) #9
  %inc.i567 = add nuw nsw i32 %i.012.i562, 1
  %exitcond.not.i568 = icmp eq i32 %inc.i567, 1000
  br i1 %exitcond.not.i568, label %do.end7.i570, label %if.end.i569.for.body.i566_crit_edge

if.end.i569.for.body.i566_crit_edge:              ; preds = %if.end.i569
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i566

do.end7.i570:                                     ; preds = %if.end.i569
  call void @__sanitizer_cov_trace_pc() #11
  %294 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %295, ptr noundef nonnull @.str.97) #12
  br label %emc_seq_disable_auto_cal.exit571

emc_seq_disable_auto_cal.exit571:                 ; preds = %do.end7.i570, %for.body.i566.emc_seq_disable_auto_cal.exit571_crit_edge
  %296 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %regs, align 4
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  br label %cleanup

cleanup:                                          ; preds = %emc_seq_disable_auto_cal.exit571, %tegra_emc_find_timing.exit.thread
  %retval.0 = phi i32 [ 0, %emc_seq_disable_auto_cal.exit571 ], [ -2, %tegra_emc_find_timing.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_emc_complete_timing_change(ptr nocapture noundef %emc, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9
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
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 8
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
  %cmp2.i = icmp eq i32 %5, %rate
  br i1 %cmp2.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %for.end.i.tegra_emc_find_timing.exit.thread_crit_edge, label %if.end

for.end.i.tegra_emc_find_timing.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_emc_find_timing.exit.thread

tegra_emc_find_timing.exit.thread:                ; preds = %for.end.i.tegra_emc_find_timing.exit.thread_crit_edge, %for.cond.i.tegra_emc_find_timing.exit.thread_crit_edge, %entry.tegra_emc_find_timing.exit.thread_crit_edge
  %6 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.93, i32 noundef %rate) #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %last_timing = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7
  %regs.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 2
  br label %for.body.i90

for.body.i90:                                     ; preds = %if.end.i.for.body.i90_crit_edge, %if.end
  %i.05.i = phi i32 [ 0, %if.end ], [ %inc.i91, %if.end.i.for.body.i90_crit_edge ]
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i89 = icmp eq i32 %11, 0
  br i1 %tobool.not.i89, label %if.end.i, label %for.body.i90.emc_seq_wait_clkchange.exit_crit_edge

for.body.i90.emc_seq_wait_clkchange.exit_crit_edge: ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_seq_wait_clkchange.exit

if.end.i:                                         ; preds = %for.body.i90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #9
  %inc.i91 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 1000
  br i1 %exitcond.not.i92, label %do.end.i93, label %if.end.i.for.body.i90_crit_edge

if.end.i.for.body.i90_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i90

do.end.i93:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.99) #12
  br label %emc_seq_wait_clkchange.exit

emc_seq_wait_clkchange.exit:                      ; preds = %do.end.i93, %for.body.i90.emc_seq_wait_clkchange.exit_crit_edge
  %emc_ctt_term_ctrl = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 9
  %15 = ptrtoint ptr %emc_ctt_term_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %emc_ctt_term_ctrl, align 4
  %emc_ctt_term_ctrl1 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 7, i32 9
  %17 = ptrtoint ptr %emc_ctt_term_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %emc_ctt_term_ctrl1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not = icmp eq i32 %16, %18
  br i1 %cmp.not, label %emc_seq_wait_clkchange.exit.if.end3_crit_edge, label %do.body

emc_seq_wait_clkchange.exit.if.end3_crit_edge:    ; preds = %emc_seq_wait_clkchange.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.body:                                          ; preds = %emc_seq_wait_clkchange.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %emc_auto_cal_interval = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 5
  %19 = ptrtoint ptr %emc_auto_cal_interval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %emc_auto_cal_interval, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !247
  br label %if.end3

if.end3:                                          ; preds = %do.body, %emc_seq_wait_clkchange.exit.if.end3_crit_edge
  %emc_cfg = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 7
  %24 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %emc_cfg, align 4
  %and = and i32 %25, -268173312
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.do.body13_crit_edge, label %do.body6

if.end3.do.body13_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

do.body6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %emc_cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %emc_cfg, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr11 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %28) #9, !srcloc !247
  br label %do.body13

do.body13:                                        ; preds = %do.body6, %if.end3.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %emc_zcal_cnt_long = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 17
  %31 = ptrtoint ptr %emc_zcal_cnt_long to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %emc_zcal_cnt_long, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr17 = getelementptr i8, ptr %35, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %33) #9, !srcloc !247
  %dram_type = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 4
  %36 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dram_type, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %37, label %do.body13.do.body46_crit_edge [
    i32 2, label %land.lhs.true
    i32 0, label %land.lhs.true31
  ]

do.body13.do.body46_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

land.lhs.true:                                    ; preds = %do.body13
  %emc_bgbias_ctl0 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 6
  %39 = ptrtoint ptr %emc_bgbias_ctl0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %emc_bgbias_ctl0, align 4
  %and19 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.body46_crit_edge, label %if.then21

land.lhs.true.do.body46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %or23 = or i32 %40, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr28 = getelementptr i8, ptr %43, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %41) #9, !srcloc !247
  br label %if.end52

land.lhs.true31:                                  ; preds = %do.body13
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr33 = getelementptr i8, ptr %45, i32 1392
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !242
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %emc_bgbias_ctl036 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 6
  %48 = ptrtoint ptr %emc_bgbias_ctl036 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %emc_bgbias_ctl036, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp37.not = icmp eq i32 %47, %49
  br i1 %cmp37.not, label %land.lhs.true31.do.body46_crit_edge, label %do.body39

land.lhs.true31.do.body46_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

do.body39:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %emc_bgbias_ctl036 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %emc_bgbias_ctl036, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr44 = getelementptr i8, ptr %54, i32 1392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %52) #9, !srcloc !247
  br label %do.body46

do.body46:                                        ; preds = %do.body39, %land.lhs.true31.do.body46_crit_edge, %land.lhs.true.do.body46_crit_edge, %do.body13.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void @arm_heavy_mb() #9
  %emc_auto_cal_interval49 = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 5
  %55 = ptrtoint ptr %emc_auto_cal_interval49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %emc_auto_cal_interval49, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr51 = getelementptr i8, ptr %59, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %57) #9, !srcloc !247
  br label %if.end52

if.end52:                                         ; preds = %do.body46, %if.then21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 429496) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  tail call void @arm_heavy_mb() #9
  %emc_sel_dpd_ctrl = getelementptr %struct.emc_timing, ptr %3, i32 %i.019.i, i32 15
  %61 = ptrtoint ptr %emc_sel_dpd_ctrl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %emc_sel_dpd_ctrl, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr57 = getelementptr i8, ptr %65, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %63) #9, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #9, !srcloc !247
  br label %for.body.i95

for.body.i95:                                     ; preds = %if.end.i98.for.body.i95_crit_edge, %if.end52
  %i.012.i = phi i32 [ 0, %if.end52 ], [ %inc.i96, %if.end.i98.for.body.i95_crit_edge ]
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %69, i32 692
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  %71 = and i32 %70, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp4.i = icmp eq i32 %71, 0
  br i1 %cmp4.i, label %for.body.i95.emc_seq_update_timing.exit_crit_edge, label %if.end.i98

for.body.i95.emc_seq_update_timing.exit_crit_edge: ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %emc_seq_update_timing.exit

if.end.i98:                                       ; preds = %for.body.i95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #9
  %inc.i96 = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, 1000
  br i1 %exitcond.not.i97, label %do.end7.i, label %if.end.i98.for.body.i95_crit_edge

if.end.i98.for.body.i95_crit_edge:                ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i95

do.end7.i:                                        ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %emc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.95) #12
  br label %emc_seq_update_timing.exit

emc_seq_update_timing.exit:                       ; preds = %do.end7.i, %for.body.i95.emc_seq_update_timing.exit_crit_edge
  %75 = call ptr @memcpy(ptr %last_timing, ptr %arrayidx.i, i32 644)
  br label %cleanup

cleanup:                                          ; preds = %emc_seq_update_timing.exit, %tegra_emc_find_timing.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_tegra_emc_unset_callback(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tegra124_clk_set_emc_callbacks(ptr noundef null, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emc_debugfs_init(ptr noundef %dev, ptr noundef %emc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 10
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 10, i32 2
  %1 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_rate, align 4
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 9
  %2 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp93.not = icmp eq i32 %3, 0
  br i1 %cmp93.not, label %entry.if.then24_crit_edge, label %for.body.lr.ph

entry.if.then24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 8
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.emc_timing, ptr %5, i32 %i.094
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %min_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp15 = icmp ugt i32 %12, %14
  br i1 %cmp15, label %if.then16, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %max_rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp93.not, label %for.end.if.then24_crit_edge, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then24

if.then24:                                        ; preds = %for.end.if.then24_crit_edge, %entry.if.then24_crit_edge
  %clk = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 3
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %17) #9
  %18 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %min_rate, align 4
  %19 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %max_rate, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %for.end.if.end31_crit_edge
  %clk32 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 3
  %20 = ptrtoint ptr %clk32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk32, align 4
  %22 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_rate, align 4
  %24 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_rate, align 4
  %call37 = tail call i32 @clk_set_rate_range(ptr noundef %21, i32 noundef %23, i32 noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end, label %if.end45

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_rate, align 4
  %28 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_rate, align 4
  %30 = ptrtoint ptr %clk32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.115, i32 noundef %27, i32 noundef %29, ptr noundef %31) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef null) #9
  %32 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call46, ptr %debugfs, align 4
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.117, i16 noundef zeroext 292, ptr noundef %call46, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_available_rates_fops) #9
  %33 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %debugfs, align 4
  %call53 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.118, i16 noundef zeroext 420, ptr noundef %34, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_min_rate_fops) #9
  %35 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs, align 4
  %call56 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.119, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %emc, ptr noundef nonnull @tegra_emc_debug_max_rate_fops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end
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
  %provider = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11
  %dev2 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11, i32 8
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev2, align 4
  %set = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @emc_icc_set, ptr %set, align 4
  %data = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11, i32 11
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
  %aggregate7 = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11, i32 3
  %13 = ptrtoint ptr %aggregate7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %aggregate7, align 4
  %xlate_extended = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 11, i32 7
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
  store ptr @.str.127, ptr %name, align 4
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
  store ptr @.str.128, ptr %name25, align 4
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.129, i32 noundef %err.2) #12
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
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_timings(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #5 align 64 {
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
  %cmp4 = icmp ne i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_get_emem_device_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mc_write_emem_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #1

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
  %num_timings = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 9
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
  %timings = getelementptr inbounds %struct.tegra_emc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.120, i32 noundef %7) #9
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef %13) #9
  %inc = add nuw i32 %i.08, 1
  %14 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_timings, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !277

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.123) #9
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
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_min_rate_get, ptr noundef nonnull @tegra_emc_debug_min_rate_set, ptr noundef nonnull @.str.124) #9
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
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 1
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
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9
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
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 8
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
  %min_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 1
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
  %rate_lock = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %rate_lock, i32 noundef 0) #9
  %max_rate = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 12, i32 %type, i32 1
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
  %requested_rate.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 12
  %2 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_rate.i, align 4
  %max_rate16.i = getelementptr inbounds %struct.tegra_emc, ptr %emc, i32 0, i32 12, i32 0, i32 1
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
  %incdec.ptr.i = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %min_rate.184.i) #9
  %max_rate16.1.i = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 12, i32 1, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef %type, i32 noundef %min_rate.1.1.i, i32 noundef %max_rate.1.1.i) #12
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
  %arrayidx.i = getelementptr %struct.tegra_emc, ptr %emc, i32 0, i32 12, i32 %type
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @tegra_emc_debug_max_rate_get, ptr noundef nonnull @tegra_emc_debug_max_rate_set, ptr noundef nonnull @.str.124) #9
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_emc_debug_max_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 2
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
  %num_timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 9
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
  %timings.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 8
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
  %requested_rate.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 12
  %rate_lock.i = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %rate_lock.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %requested_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_rate.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.i.i, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9) #9
  %max_rate16.1.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 12, i32 1, i32 1
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.emc_request_rate, i32 noundef 0, i32 noundef %12, i32 noundef %15) #12
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
  %max_rate40.i.i = getelementptr %struct.tegra_emc, ptr %data, i32 0, i32 12, i32 0, i32 1
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
  %max_rate = getelementptr inbounds %struct.tegra_emc, ptr %data, i32 0, i32 10, i32 2
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
  %dram_bus_width = getelementptr i8, ptr %1, i32 -672
  %7 = ptrtoint ptr %dram_bus_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dram_bus_width, align 4
  %9 = lshr i32 %8, 2
  %mul6 = and i32 %9, 1073741822
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %6)
  %cmp181 = icmp ult i64 %6, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !279

if.then185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv186 = trunc i64 %6 to i32
  %div189 = udiv i32 %conv186, %mul6
  %conv190 = zext i32 %div189 to i64
  br label %if.end195

if.else191:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6, i64 %6) #13, !srcloc !280
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %rate.0 = phi i64 [ %conv190, %if.then185 ], [ %asmresult1.i, %if.else191 ]
  %add.ptr.i = getelementptr i8, ptr %1, i32 -692
  %11 = tail call i64 @llvm.umin.i64(i64 %rate.0, i64 4294967295)
  %conv204 = trunc i64 %11 to i32
  %call205 = tail call fastcc i32 @emc_set_min_rate(ptr noundef %add.ptr.i, i32 noundef %conv204, i32 noundef 1)
  ret i32 %call205
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !143, !145, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !213, !214, !215, !216, !217, !218, !220, !222, !224, !226, !227, !228, !229}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__initcall__kmod_tegra124_emc__237_1532_tegra_emc_driver_init6, !1, !"__initcall__kmod_tegra124_emc__237_1532_tegra_emc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1532, i32 1}
!2 = !{ptr @__exitcall_tegra_emc_driver_exit, !1, !"__exitcall_tegra_emc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1534, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1535, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1536, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1526, i32 11}
!12 = !{ptr @tegra_emc_driver, !13, !"tegra_emc_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1523, i32 31}
!14 = !{ptr @tegra_emc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1454, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__print_once", i1 false, i1 false}
!18 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1474, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tegra_emc_probe._entry, !18, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_emc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1481, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra_emc_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_emc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1495, i32 38}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1498, i32 3}
!35 = !{ptr @tegra_emc_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_emc_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1039, i32 34}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 927, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 929, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @load_one_timing_from_dt._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @load_one_timing_from_dt._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 936, i32 41}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 940, i32 3}
!50 = !{ptr @load_one_timing_from_dt._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @load_one_timing_from_dt._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 955, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @load_one_timing_from_dt._entry.24, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @load_one_timing_from_dt._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 956, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @load_one_timing_from_dt._entry.28, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @load_one_timing_from_dt._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 957, i32 2}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @load_one_timing_from_dt._entry.32, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @load_one_timing_from_dt._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 958, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @load_one_timing_from_dt._entry.36, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @load_one_timing_from_dt._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 959, i32 2}
!74 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @load_one_timing_from_dt._entry.40, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @load_one_timing_from_dt._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 960, i32 2}
!79 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @load_one_timing_from_dt._entry.44, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @load_one_timing_from_dt._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 961, i32 2}
!84 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @load_one_timing_from_dt._entry.48, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @load_one_timing_from_dt._entry_ptr.50, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 962, i32 2}
!89 = !{ptr @.str.53, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @load_one_timing_from_dt._entry.52, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @load_one_timing_from_dt._entry_ptr.54, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 963, i32 2}
!94 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @load_one_timing_from_dt._entry.56, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @load_one_timing_from_dt._entry_ptr.58, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 964, i32 2}
!99 = !{ptr @.str.61, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @load_one_timing_from_dt._entry.60, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @load_one_timing_from_dt._entry_ptr.62, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 965, i32 2}
!104 = !{ptr @.str.65, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @load_one_timing_from_dt._entry.64, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @load_one_timing_from_dt._entry_ptr.66, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 966, i32 2}
!109 = !{ptr @.str.69, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @load_one_timing_from_dt._entry.68, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @load_one_timing_from_dt._entry_ptr.70, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.71, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 967, i32 2}
!114 = !{ptr @.str.73, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @load_one_timing_from_dt._entry.72, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @load_one_timing_from_dt._entry_ptr.74, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.75, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 968, i32 2}
!119 = !{ptr @.str.77, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @load_one_timing_from_dt._entry.76, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @load_one_timing_from_dt._entry_ptr.78, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.79, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 969, i32 2}
!124 = !{ptr @.str.81, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @load_one_timing_from_dt._entry.80, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @load_one_timing_from_dt._entry_ptr.82, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.83, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 970, i32 2}
!129 = !{ptr @.str.85, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @load_one_timing_from_dt._entry.84, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @load_one_timing_from_dt._entry_ptr.86, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.87, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 971, i32 2}
!134 = !{ptr @.str.89, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @load_one_timing_from_dt._entry.88, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @load_one_timing_from_dt._entry_ptr.90, !133, !"_entry_ptr", i1 false, i1 false}
!137 = distinct !{null, !138, !"__print_once", i1 false, i1 false}
!138 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 908, i32 2}
!139 = !{ptr @.str.91, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.92, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @emc_init._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @emc_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @emc_burst_regs, !144, !"emc_burst_regs", i1 false, i1 false}
!144 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 300, i32 28}
!145 = !{ptr @.str.93, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 588, i32 3}
!147 = !{ptr @.str.94, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @tegra_emc_find_timing._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @tegra_emc_find_timing._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.95, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 539, i32 2}
!152 = !{ptr @.str.96, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @emc_seq_update_timing._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @emc_seq_update_timing._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.97, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 556, i32 2}
!157 = !{ptr @.str.98, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @emc_seq_disable_auto_cal._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @emc_seq_disable_auto_cal._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.99, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 571, i32 2}
!162 = !{ptr @.str.100, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @emc_seq_wait_clkchange._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @emc_seq_wait_clkchange._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1404, i32 3}
!167 = !{ptr @.str.102, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @tegra_emc_opp_table_init._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @tegra_emc_opp_table_init._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.104, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1411, i32 4}
!172 = !{ptr @tegra_emc_opp_table_init._entry.103, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @tegra_emc_opp_table_init._entry_ptr.105, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.107, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1413, i32 4}
!176 = !{ptr @tegra_emc_opp_table_init._entry.106, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @tegra_emc_opp_table_init._entry_ptr.108, !175, !"_entry_ptr", i1 false, i1 false}
!178 = distinct !{null, !179, !"__print_once", i1 false, i1 false}
!179 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1418, i32 2}
!180 = !{ptr @.str.110, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tegra_emc_opp_table_init._entry.109, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @tegra_emc_opp_table_init._entry_ptr.111, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.113, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1424, i32 3}
!185 = !{ptr @tegra_emc_opp_table_init._entry.112, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @tegra_emc_opp_table_init._entry_ptr.114, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.115, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1265, i32 3}
!189 = !{ptr @.str.116, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @emc_debugfs_init._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @emc_debugfs_init._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.117, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1273, i32 22}
!194 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1275, i32 22}
!196 = !{ptr @.str.119, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1277, i32 22}
!198 = !{ptr @tegra_emc_debug_available_rates_fops, !199, !"tegra_emc_debug_available_rates_fops", i1 false, i1 false}
!199 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1179, i32 1}
!200 = !{ptr @.str.120, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1166, i32 23}
!202 = !{ptr @.str.121, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1170, i32 17}
!204 = !{ptr @.str.122, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1171, i32 12}
!206 = !{ptr @.str.123, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1174, i32 14}
!208 = !{ptr @tegra_emc_debug_min_rate_fops, !209, !"tegra_emc_debug_min_rate_fops", i1 false, i1 false}
!209 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1207, i32 1}
!210 = !{ptr @.str.124, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.125, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1081, i32 3}
!213 = !{ptr @emc_request_rate._rs, !212, !"_rs", i1 false, i1 false}
!214 = !{ptr @__func__.emc_request_rate, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.126, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @emc_request_rate._entry, !212, !"_entry", i1 false, i1 false}
!217 = !{ptr @emc_request_rate._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @tegra_emc_debug_max_rate_fops, !219, !"tegra_emc_debug_max_rate_fops", i1 false, i1 false}
!219 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1237, i32 1}
!220 = !{ptr @.str.127, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1365, i32 15}
!222 = !{ptr @.str.128, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1380, i32 15}
!224 = !{ptr @.str.129, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1390, i32 2}
!226 = !{ptr @.str.130, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @tegra_emc_interconnect_init._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @tegra_emc_interconnect_init._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @tegra_emc_of_match, !230, !"tegra_emc_of_match", i1 false, i1 false}
!230 = !{!"../drivers/memory/tegra/tegra124-emc.c", i32 1023, i32 34}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{!"auto-init"}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{i64 5854068}
!243 = !{i64 2153993570}
!244 = !{i64 2153992596}
!245 = !{i64 2153993078}
!246 = !{i64 2153975044}
!247 = !{i64 5853650}
!248 = !{i64 2153975771}
!249 = !{i64 2153976629}
!250 = !{i64 2153977572}
!251 = !{i64 2153977792}
!252 = !{i64 2153978459}
!253 = !{i64 2153979090}
!254 = !{i64 2153979760}
!255 = !{i64 2153980472}
!256 = !{i64 2153964351}
!257 = !{i64 2153965016}
!258 = !{i64 2153967462}
!259 = !{i64 2153968128}
!260 = !{i64 2153981467}
!261 = !{i64 2153982432}
!262 = !{i64 2153982928}
!263 = !{i64 2153983414}
!264 = !{i64 2153963547}
!265 = !{i64 2153963951}
!266 = !{i64 2153984667}
!267 = !{i64 2153987017}
!268 = !{i64 2153970870}
!269 = !{i64 2153987263}
!270 = !{i64 2153987844}
!271 = !{i64 2153988295}
!272 = !{i64 2153989002}
!273 = !{i64 2153989669}
!274 = !{i64 2153989909}
!275 = !{i64 2153990390}
!276 = !{i64 2153991420}
!277 = distinct !{!277, !278}
!278 = !{!"llvm.loop.peeled.count", i32 1}
!279 = !{!"branch_weights", i32 2000, i32 1}
!280 = !{i64 2148979643, i64 2148979923, i64 2148980257, i64 2148980591}
