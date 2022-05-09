; ModuleID = '/llk/IR_all_yes/drivers/devfreq/imx8m-ddrc.c_pt.bc'
source_filename = "../drivers/devfreq/imx8m-ddrc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
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
%struct.imx8m_ddrc = type { %struct.devfreq_dev_profile, ptr, ptr, ptr, ptr, ptr, i32, [4 x %struct.imx8m_ddrc_freq] }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.imx8m_ddrc_freq = type { i32, i32, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_imx8m_ddrc__171_453_imx8m_ddrc_platdrv_init6 = internal global ptr @imx8m_ddrc_platdrv_init, section ".initcall6.init", align 4
@imx8m_ddrc_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx8m_ddrc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx8m_ddrc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx8m_ddrc_platdrv_exit = internal global ptr @imx8m_ddrc_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description172 = internal constant [62 x i8] c"imx8m_ddrc.description=i.MX8M DDR Controller frequency driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [60 x i8] c"imx8m_ddrc.author=Leonard Crestez <leonard.crestez@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [43 x i8] c"imx8m_ddrc.file=drivers/devfreq/imx8m-ddrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [26 x i8] c"imx8m_ddrc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx8m-ddrc-devfreq\00", [45 x i8] zeroinitializer }, align 32
@imx8m_ddrc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8m-ddrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"userspace\00", [22 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to init firmware freq info: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx8m_ddrc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/devfreq/imx8m-ddrc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr = internal global ptr @imx8m_ddrc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to fetch core clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr.10 = internal global ptr @imx8m_ddrc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to fetch pll clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr.14 = internal global ptr @imx8m_ddrc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"alt\00", [28 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to fetch alt clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr.18 = internal global ptr @imx8m_ddrc_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 406, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to fetch apb clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr.22 = internal global ptr @imx8m_ddrc_probe._entry.20, section ".printk_index", align 4
@imx8m_ddrc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get OPP table\0A\00", [39 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr.25 = internal global ptr @imx8m_ddrc_probe._entry.23, section ".printk_index", align 4
@imx8m_ddrc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 429, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add devfreq device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx8m_ddrc_probe._entry_ptr.28 = internal global ptr @imx8m_ddrc_probe._entry.26, section ".printk_index", align 4
@imx8m_ddrc_check_opps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed enumerating OPPs: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx8m_ddrc_check_opps\00", [42 x i8] zeroinitializer }, align 32
@imx8m_ddrc_check_opps._entry_ptr = internal global ptr @imx8m_ddrc_check_opps._entry, section ".printk_index", align 4
@imx8m_ddrc_check_opps._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 353, ptr @.str.33, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Disable unsupported OPP %luHz %luMT/s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx8m_ddrc_check_opps._entry_ptr.34 = internal global ptr @imx8m_ddrc_check_opps._entry.31, section ".printk_index", align 4
@imx8m_ddrc_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get recommended opp: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx8m_ddrc_target\00", [46 x i8] zeroinitializer }, align 32
@imx8m_ddrc_target._entry_ptr = internal global ptr @imx8m_ddrc_target._entry, section ".printk_index", align 4
@imx8m_ddrc_target._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ddrc failed freq switch to %lu from %lu: error %d. now at %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@imx8m_ddrc_target._entry_ptr.39 = internal global ptr @imx8m_ddrc_target._entry.37, section ".printk_index", align 4
@imx8m_ddrc_target._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.4, i32 266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ddrc failed freq update to %lu from %lu, now at %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@imx8m_ddrc_target._entry_ptr.42 = internal global ptr @imx8m_ddrc_target._entry.40, section ".printk_index", align 4
@imx8m_ddrc_target.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.36, ptr @.str.4, ptr @.str.44, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx8m_ddrc\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ddrc freq set to %lu (was %lu)\0A\00", [32 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to fetch new dram_core parent\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx8m_ddrc_set_freq\00", [44 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr = internal global ptr @imx8m_ddrc_set_freq._entry, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to fetch new dram_alt parent\0A\00", [59 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.49 = internal global ptr @imx8m_ddrc_set_freq._entry.47, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to fetch new dram_apb parent\0A\00", [59 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.52 = internal global ptr @imx8m_ddrc_set_freq._entry.50, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.4, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable new dram_core parent: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.55 = internal global ptr @imx8m_ddrc_set_freq._entry.53, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to enable new dram_alt parent: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.58 = internal global ptr @imx8m_ddrc_set_freq._entry.56, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to enable new dram_apb parent: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.61 = internal global ptr @imx8m_ddrc_set_freq._entry.59, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.46, ptr @.str.4, i32 195, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set dram_core parent: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.65 = internal global ptr @imx8m_ddrc_set_freq._entry.62, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.46, ptr @.str.4, i32 200, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set dram_alt parent: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.68 = internal global ptr @imx8m_ddrc_set_freq._entry.66, section ".printk_index", align 4
@imx8m_ddrc_set_freq._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.46, ptr @.str.4, i32 206, ptr @.str.64, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set dram_apb parent: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@imx8m_ddrc_set_freq._entry_ptr.71 = internal global ptr @imx8m_ddrc_set_freq._entry.69, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"imx8m_ddrc_platdrv\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 446, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 449, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"imx8m_ddrc_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 440, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 370, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 381, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 385, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 388, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 391, i32 37 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 394, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 397, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 400, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 403, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 406, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 412, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 429, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 344, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 352, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 241, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 262, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 265, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 268, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 145, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 153, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 164, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 173, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 179, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 185, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 195, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 199, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [32 x i8] c"../drivers/devfreq/imx8m-ddrc.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 205, i32 4 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_imx8m_ddrc_platdrv_exit, ptr @__initcall__kmod_imx8m_ddrc__171_453_imx8m_ddrc_platdrv_init6, ptr @imx8m_ddrc_check_opps._entry, ptr @imx8m_ddrc_check_opps._entry.31, ptr @imx8m_ddrc_check_opps._entry_ptr, ptr @imx8m_ddrc_check_opps._entry_ptr.34, ptr @imx8m_ddrc_platdrv_exit, ptr @imx8m_ddrc_probe._entry, ptr @imx8m_ddrc_probe._entry.12, ptr @imx8m_ddrc_probe._entry.16, ptr @imx8m_ddrc_probe._entry.20, ptr @imx8m_ddrc_probe._entry.23, ptr @imx8m_ddrc_probe._entry.26, ptr @imx8m_ddrc_probe._entry.8, ptr @imx8m_ddrc_probe._entry_ptr, ptr @imx8m_ddrc_probe._entry_ptr.10, ptr @imx8m_ddrc_probe._entry_ptr.14, ptr @imx8m_ddrc_probe._entry_ptr.18, ptr @imx8m_ddrc_probe._entry_ptr.22, ptr @imx8m_ddrc_probe._entry_ptr.25, ptr @imx8m_ddrc_probe._entry_ptr.28, ptr @imx8m_ddrc_set_freq._entry, ptr @imx8m_ddrc_set_freq._entry.47, ptr @imx8m_ddrc_set_freq._entry.50, ptr @imx8m_ddrc_set_freq._entry.53, ptr @imx8m_ddrc_set_freq._entry.56, ptr @imx8m_ddrc_set_freq._entry.59, ptr @imx8m_ddrc_set_freq._entry.62, ptr @imx8m_ddrc_set_freq._entry.66, ptr @imx8m_ddrc_set_freq._entry.69, ptr @imx8m_ddrc_set_freq._entry_ptr, ptr @imx8m_ddrc_set_freq._entry_ptr.49, ptr @imx8m_ddrc_set_freq._entry_ptr.52, ptr @imx8m_ddrc_set_freq._entry_ptr.55, ptr @imx8m_ddrc_set_freq._entry_ptr.58, ptr @imx8m_ddrc_set_freq._entry_ptr.61, ptr @imx8m_ddrc_set_freq._entry_ptr.65, ptr @imx8m_ddrc_set_freq._entry_ptr.68, ptr @imx8m_ddrc_set_freq._entry_ptr.71, ptr @imx8m_ddrc_target._entry, ptr @imx8m_ddrc_target._entry.37, ptr @imx8m_ddrc_target._entry.40, ptr @imx8m_ddrc_target._entry_ptr, ptr @imx8m_ddrc_target._entry_ptr.39, ptr @imx8m_ddrc_target._entry_ptr.42, ptr @imx8m_ddrc_platdrv, ptr @.str, ptr @imx8m_ddrc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_check_opps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_check_opps._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_target._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_target._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_ddrc_set_freq._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_ddrc_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx8m_ddrc_platdrv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_ddrc_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx8m_ddrc_platdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_ddrc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %freq.i = alloca i32, align 4
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #6
  %1 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 3
  %4 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -1040187388, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #6
  %5 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res.i, align 4
  %freq_count.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %freq_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %freq_count.i, align 4
  %8 = add i32 %6, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %8)
  %9 = icmp ult i32 %8, -4
  br i1 %9, label %if.end.do.end_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i:                                       ; preds = %if.end23.i
  %inc.i = add nuw nsw i32 %index.059.i, 1
  %10 = ptrtoint ptr %freq_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq_count.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %11
  br i1 %cmp5.i, label %for.cond.i.for.body.i_crit_edge, label %if.end5

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %index.059.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  call void @__arm_smccc_smc(i32 noundef -1040187388, i32 noundef 17, i32 noundef %index.059.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #6
  %12 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7.i = icmp slt i32 %13, 1
  br i1 %cmp7.i, label %for.body.i.do.end_crit_edge, label %if.end9.i

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end9.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 7, i32 %index.059.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.i, align 4
  %smcarg.i = getelementptr %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 7, i32 %index.059.i, i32 1
  %15 = ptrtoint ptr %smcarg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %index.059.i, ptr %smcarg.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %dram_core_parent_index.i = getelementptr %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 7, i32 %index.059.i, i32 2
  %18 = ptrtoint ptr %dram_core_parent_index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dram_core_parent_index.i, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %2, align 4
  %dram_alt_parent_index.i = getelementptr %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 7, i32 %index.059.i, i32 3
  %21 = ptrtoint ptr %dram_alt_parent_index.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dram_alt_parent_index.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %dram_apb_parent_index.i = getelementptr %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 7, i32 %index.059.i, i32 4
  %24 = ptrtoint ptr %dram_apb_parent_index.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dram_apb_parent_index.i, align 4
  %25 = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %25)
  %switch.i = icmp ult i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp18.i = icmp sgt i32 %20, 8
  %or.cond56.i = select i1 %switch.i, i1 true, i1 %cmp18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp21.i = icmp sgt i32 %23, 8
  %or.cond57.i = select i1 %or.cond56.i, i1 true, i1 %cmp21.i
  br i1 %or.cond57.i, label %if.end9.i.do.end_crit_edge, label %if.end23.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end23.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp25.i = icmp eq i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp28.i = icmp eq i32 %20, 0
  %or.cond55.i = select i1 %cmp25.i, i1 %cmp28.i, i1 false
  br i1 %or.cond55.i, label %if.end23.i.do.end_crit_edge, label %for.cond.i

if.end23.i.do.end_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end23.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %for.body.i.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef -19) #9
  br label %cleanup

if.end5:                                          ; preds = %for.cond.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #6
  %call6 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %dram_core = getelementptr inbounds %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %dram_core to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call6, ptr %dram_core, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %27) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call16 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #6
  %dram_pll = getelementptr inbounds %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %dram_pll to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call16, ptr %dram_pll, align 4
  %cmp.i130 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call16 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %29) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #6
  %dram_alt = getelementptr inbounds %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %dram_alt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call26, ptr %dram_alt, align 4
  %cmp.i131 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %31) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %call36 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #6
  %dram_apb = getelementptr inbounds %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %dram_apb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call36, ptr %dram_apb, align 4
  %cmp.i132 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %33) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %call46 = call i32 @dev_pm_opp_of_add_table(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %do.end50, label %if.end51

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #6
  %call1.i = call i32 @dev_pm_opp_get_opp_count(ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i134 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i134, label %imx8m_ddrc_check_opps.exit.thread144, label %for.cond.preheader.i135

imx8m_ddrc_check_opps.exit.thread144:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  br label %err

for.cond.preheader.i135:                          ; preds = %if.end51
  %36 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp238.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp238.not.i, label %for.cond.preheader.i135.imx8m_ddrc_check_opps.exit.thread_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i135.imx8m_ddrc_check_opps.exit.thread_crit_edge: ; preds = %for.cond.preheader.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx8m_ddrc_check_opps.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i135
  %freq_count.i.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %35, i32 0, i32 6
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.inc.i.for.body.i136_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i137, %for.inc.i.for.body.i136_crit_edge ]
  %call3.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %dev1, ptr noundef nonnull %freq.i) #6
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %imx8m_ddrc_check_opps.exit, label %if.end8.i

if.end8.i:                                        ; preds = %for.body.i136
  call void @dev_pm_opp_put(ptr noundef %call3.i) #6
  %37 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %freq.i, align 4
  %add.i.i = add i32 %38, 125000
  %div1.i.i = udiv i32 %add.i.i, 250000
  %39 = ptrtoint ptr %freq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %freq_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp22.i.i = icmp sgt i32 %40, 0
  br i1 %cmp22.i.i, label %if.end8.i.for.body.i.i_crit_edge, label %if.end8.i.do.end13.i_crit_edge

if.end8.i.do.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

if.end8.i.for.body.i.i_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %40
  br i1 %exitcond.not.i.i, label %for.cond.i.i.do.end13.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.do.end13.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end8.i.for.body.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end8.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.imx8m_ddrc, ptr %35, i32 0, i32 7, i32 %i.023.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %div1.i.i)
  %cmp3.i.i = icmp eq i32 %42, %div1.i.i
  %add5.i.i = add i32 %42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i.i, i32 %div1.i.i)
  %cmp6.i.i = icmp eq i32 %add5.i.i, %div1.i.i
  %or.cond.i.i = or i1 %cmp3.i.i, %cmp6.i.i
  %sub.i.i = add i32 %42, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %div1.i.i)
  %cmp9.i.i = icmp eq i32 %sub.i.i, %div1.i.i
  %or.cond21.i.i = or i1 %cmp9.i.i, %or.cond.i.i
  br i1 %or.cond21.i.i, label %imx8m_ddrc_find_freq.exit.i, label %for.cond.i.i

imx8m_ddrc_find_freq.exit.i:                      ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %imx8m_ddrc_find_freq.exit.i.do.end13.i_crit_edge, label %imx8m_ddrc_find_freq.exit.i.for.inc.i_crit_edge

imx8m_ddrc_find_freq.exit.i.for.inc.i_crit_edge:  ; preds = %imx8m_ddrc_find_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

imx8m_ddrc_find_freq.exit.i.do.end13.i_crit_edge: ; preds = %imx8m_ddrc_find_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end13.i:                                       ; preds = %imx8m_ddrc_find_freq.exit.i.do.end13.i_crit_edge, %for.cond.i.i.do.end13.i_crit_edge, %if.end8.i.do.end13.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %38, i32 noundef %div1.i.i) #9
  %43 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %freq.i, align 4
  %call15.i = call i32 @dev_pm_opp_disable(ptr noundef %dev1, i32 noundef %44) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end13.i, %imx8m_ddrc_find_freq.exit.i.for.inc.i_crit_edge
  %inc.i137 = add nuw nsw i32 %i.039.i, 1
  %45 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %freq.i, align 4
  %inc17.i = add i32 %46, 1
  store i32 %inc17.i, ptr %freq.i, align 4
  %exitcond.not.i = icmp eq i32 %inc.i137, %call1.i
  br i1 %exitcond.not.i, label %for.inc.i.imx8m_ddrc_check_opps.exit.thread_crit_edge, label %for.inc.i.for.body.i136_crit_edge

for.inc.i.for.body.i136_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i136

for.inc.i.imx8m_ddrc_check_opps.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx8m_ddrc_check_opps.exit.thread

imx8m_ddrc_check_opps.exit.thread:                ; preds = %for.inc.i.imx8m_ddrc_check_opps.exit.thread_crit_edge, %for.cond.preheader.i135.imx8m_ddrc_check_opps.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  br label %if.end55

imx8m_ddrc_check_opps.exit:                       ; preds = %for.body.i136
  %47 = ptrtoint ptr %call3.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %47) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #6
  %cmp53 = icmp slt ptr %call3.i, null
  br i1 %cmp53, label %imx8m_ddrc_check_opps.exit.err_crit_edge, label %imx8m_ddrc_check_opps.exit.if.end55_crit_edge

imx8m_ddrc_check_opps.exit.if.end55_crit_edge:    ; preds = %imx8m_ddrc_check_opps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

imx8m_ddrc_check_opps.exit.err_crit_edge:         ; preds = %imx8m_ddrc_check_opps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end55:                                         ; preds = %imx8m_ddrc_check_opps.exit.if.end55_crit_edge, %imx8m_ddrc_check_opps.exit.thread
  %target = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i, i32 0, i32 4
  %48 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @imx8m_ddrc_target, ptr %target, align 4
  %exit = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @imx8m_ddrc_exit, ptr %exit, align 4
  %get_cur_freq = getelementptr inbounds %struct.devfreq_dev_profile, ptr %call.i, i32 0, i32 6
  %50 = ptrtoint ptr %get_cur_freq to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @imx8m_ddrc_get_cur_freq, ptr %get_cur_freq, align 4
  %51 = ptrtoint ptr %dram_core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dram_core, align 4
  %call59 = call i32 @clk_get_rate(ptr noundef %52) #6
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call59, ptr %call.i, align 4
  %call62 = call ptr @devm_devfreq_add_device(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %devfreq = getelementptr inbounds %struct.imx8m_ddrc, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %devfreq to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call62, ptr %devfreq, align 4
  %cmp.i138 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then65, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %call62 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %55) #9
  br label %err

err:                                              ; preds = %if.then65, %imx8m_ddrc_check_opps.exit.err_crit_edge, %imx8m_ddrc_check_opps.exit.thread144
  %ret.0 = phi i32 [ %47, %imx8m_ddrc_check_opps.exit.err_crit_edge ], [ %55, %if.then65 ], [ %call1.i, %imx8m_ddrc_check_opps.exit.thread144 ]
  call void @dev_pm_opp_of_remove_table(ptr noundef %dev1) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end55.cleanup_crit_edge, %do.end50, %if.then39, %if.then29, %if.then19, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %27, %if.then9 ], [ %29, %if.then19 ], [ %31, %if.then29 ], [ %33, %if.then39 ], [ %call46, %do.end50 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_ddrc_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  %res.i.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @dev_pm_opp_put(ptr noundef %call1) #6
  %dram_core = getelementptr inbounds %struct.imx8m_ddrc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dram_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dram_core, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %4) #6
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %call4)
  %cmp = icmp eq i32 %6, %call4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.i = add i32 %6, 125000
  %div1.i = udiv i32 %add.i, 250000
  %freq_count.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %freq_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22.i = icmp sgt i32 %8, 0
  br i1 %cmp22.i, label %if.end6.for.body.i_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx8m_ddrc, ptr %1, i32 0, i32 7, i32 %i.023.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %div1.i)
  %cmp3.i = icmp eq i32 %10, %div1.i
  %add5.i = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %div1.i)
  %cmp6.i = icmp eq i32 %add5.i, %div1.i
  %or.cond.i = or i1 %cmp3.i, %cmp6.i
  %sub.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div1.i)
  %cmp9.i = icmp eq i32 %sub.i, %div1.i
  %or.cond21.i = or i1 %cmp9.i, %or.cond.i
  br i1 %or.cond21.i, label %imx8m_ddrc_find_freq.exit, label %for.cond.i

imx8m_ddrc_find_freq.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %imx8m_ddrc_find_freq.exit.cleanup_crit_edge, label %if.end9

imx8m_ddrc_find_freq.exit.cleanup_crit_edge:      ; preds = %imx8m_ddrc_find_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %imx8m_ddrc_find_freq.exit
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %dram_core.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dram_core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dram_core.i, align 4
  %dram_core_parent_index.i = getelementptr %struct.imx8m_ddrc, ptr %1, i32 0, i32 7, i32 %i.023.i, i32 2
  %15 = ptrtoint ptr %dram_core_parent_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dram_core_parent_index.i, align 4
  %sub.i68 = add i32 %16, -1
  %call.i.i = tail call ptr @__clk_get_hw(ptr noundef %14) #6
  %call1.i.i = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %call.i.i, i32 noundef %sub.i68) #6
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end9.do.end.i_crit_edge, label %clk_get_parent_by_index.exit.i

if.end9.do.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

clk_get_parent_by_index.exit.i:                   ; preds = %if.end9
  %clk2.i.i = getelementptr inbounds %struct.clk_hw, ptr %call1.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %clk2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk2.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %clk_get_parent_by_index.exit.i.do.end.i_crit_edge, label %if.end.i

clk_get_parent_by_index.exit.i.do.end.i_crit_edge: ; preds = %clk_get_parent_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %clk_get_parent_by_index.exit.i.do.end.i_crit_edge, %if.end9.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %imx8m_ddrc_set_freq.exit.thread

if.end.i:                                         ; preds = %clk_get_parent_by_index.exit.i
  %dram_alt_parent_index.i = getelementptr %struct.imx8m_ddrc, ptr %1, i32 0, i32 7, i32 %i.023.i, i32 3
  %19 = ptrtoint ptr %dram_alt_parent_index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dram_alt_parent_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then3.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.end.i
  %dram_alt.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %12, i32 0, i32 4
  %21 = ptrtoint ptr %dram_alt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dram_alt.i, align 4
  %sub5.i = add i32 %20, -1
  %call.i127.i = tail call ptr @__clk_get_hw(ptr noundef %22) #6
  %call1.i128.i = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %call.i127.i, i32 noundef %sub5.i) #6
  %tobool.not.i129.i = icmp eq ptr %call1.i128.i, null
  br i1 %tobool.not.i129.i, label %if.then3.i.do.end11.i_crit_edge, label %clk_get_parent_by_index.exit133.i

if.then3.i.do.end11.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

clk_get_parent_by_index.exit133.i:                ; preds = %if.then3.i
  %clk2.i130.i = getelementptr inbounds %struct.clk_hw, ptr %call1.i128.i, i32 0, i32 1
  %23 = ptrtoint ptr %clk2.i130.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk2.i130.i, align 4
  %tobool7.not.i = icmp eq ptr %24, null
  br i1 %tobool7.not.i, label %clk_get_parent_by_index.exit133.i.do.end11.i_crit_edge, label %clk_get_parent_by_index.exit133.i.if.end13.i_crit_edge

clk_get_parent_by_index.exit133.i.if.end13.i_crit_edge: ; preds = %clk_get_parent_by_index.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

clk_get_parent_by_index.exit133.i.do.end11.i_crit_edge: ; preds = %clk_get_parent_by_index.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

do.end11.i:                                       ; preds = %clk_get_parent_by_index.exit133.i.do.end11.i_crit_edge, %if.then3.i.do.end11.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #9
  br label %imx8m_ddrc_set_freq.exit.thread

if.end13.i:                                       ; preds = %clk_get_parent_by_index.exit133.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %new_dram_alt_parent.0.i = phi ptr [ %24, %clk_get_parent_by_index.exit133.i.if.end13.i_crit_edge ], [ null, %if.end.i.if.end13.i_crit_edge ]
  %dram_apb_parent_index.i = getelementptr %struct.imx8m_ddrc, ptr %1, i32 0, i32 7, i32 %i.023.i, i32 4
  %25 = ptrtoint ptr %dram_apb_parent_index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dram_apb_parent_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool14.not.i = icmp eq i32 %26, 0
  br i1 %tobool14.not.i, label %if.end13.i.if.end26.i_crit_edge, label %if.then15.i

if.end13.i.if.end26.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then15.i:                                      ; preds = %if.end13.i
  %dram_apb.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %12, i32 0, i32 5
  %27 = ptrtoint ptr %dram_apb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dram_apb.i, align 4
  %sub17.i = add i32 %26, -1
  %call.i134.i = tail call ptr @__clk_get_hw(ptr noundef %28) #6
  %call1.i135.i = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %call.i134.i, i32 noundef %sub17.i) #6
  %tobool.not.i136.i = icmp eq ptr %call1.i135.i, null
  br i1 %tobool.not.i136.i, label %if.then15.i.do.end23.i_crit_edge, label %clk_get_parent_by_index.exit140.i

if.then15.i.do.end23.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

clk_get_parent_by_index.exit140.i:                ; preds = %if.then15.i
  %clk2.i137.i = getelementptr inbounds %struct.clk_hw, ptr %call1.i135.i, i32 0, i32 1
  %29 = ptrtoint ptr %clk2.i137.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk2.i137.i, align 4
  %tobool19.not.i = icmp eq ptr %30, null
  br i1 %tobool19.not.i, label %clk_get_parent_by_index.exit140.i.do.end23.i_crit_edge, label %clk_get_parent_by_index.exit140.i.if.end26.i_crit_edge

clk_get_parent_by_index.exit140.i.if.end26.i_crit_edge: ; preds = %clk_get_parent_by_index.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

clk_get_parent_by_index.exit140.i.do.end23.i_crit_edge: ; preds = %clk_get_parent_by_index.exit140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

do.end23.i:                                       ; preds = %clk_get_parent_by_index.exit140.i.do.end23.i_crit_edge, %if.then15.i.do.end23.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #9
  br label %imx8m_ddrc_set_freq.exit.thread

if.end26.i:                                       ; preds = %clk_get_parent_by_index.exit140.i.if.end26.i_crit_edge, %if.end13.i.if.end26.i_crit_edge
  %new_dram_apb_parent.0.i = phi ptr [ %30, %clk_get_parent_by_index.exit140.i.if.end26.i_crit_edge ], [ null, %if.end13.i.if.end26.i_crit_edge ]
  %call.i141.i = tail call i32 @clk_prepare(ptr noundef nonnull %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i)
  %tobool.not.i142.i = icmp eq i32 %call.i141.i, 0
  br i1 %tobool.not.i142.i, label %if.end.i.i, label %if.end26.i.do.end32.i_crit_edge

if.end26.i.do.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32.i

if.end.i.i:                                       ; preds = %if.end26.i
  %call1.i143.i = tail call i32 @clk_enable(ptr noundef nonnull %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i143.i, 0
  br i1 %tobool2.not.i.i, label %if.end33.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef nonnull %18) #6
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then3.i.i, %if.end26.i.do.end32.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i143.i, %if.then3.i.i ], [ %call.i141.i, %if.end26.i.do.end32.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i.ph.i) #9
  br label %imx8m_ddrc_set_freq.exit.thread

if.end33.i:                                       ; preds = %if.end.i.i
  %call.i144.i = tail call i32 @clk_prepare(ptr noundef %new_dram_alt_parent.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i)
  %tobool.not.i145.i = icmp eq i32 %call.i144.i, 0
  br i1 %tobool.not.i145.i, label %if.end.i148.i, label %if.end33.i.do.end39.i_crit_edge

if.end33.i.do.end39.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39.i

if.end.i148.i:                                    ; preds = %if.end33.i
  %call1.i146.i = tail call i32 @clk_enable(ptr noundef %new_dram_alt_parent.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i146.i)
  %tobool2.not.i147.i = icmp eq i32 %call1.i146.i, 0
  br i1 %tobool2.not.i147.i, label %if.end40.i, label %if.then3.i149.i

if.then3.i149.i:                                  ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %new_dram_alt_parent.0.i) #6
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then3.i149.i, %if.end33.i.do.end39.i_crit_edge
  %retval.0.i150.ph.i = phi i32 [ %call1.i146.i, %if.then3.i149.i ], [ %call.i144.i, %if.end33.i.do.end39.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i150.ph.i) #9
  br label %imx8m_ddrc_set_freq.exit

if.end40.i:                                       ; preds = %if.end.i148.i
  %call.i152.i = tail call i32 @clk_prepare(ptr noundef %new_dram_apb_parent.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i)
  %tobool.not.i153.i = icmp eq i32 %call.i152.i, 0
  br i1 %tobool.not.i153.i, label %if.end.i156.i, label %if.end40.i.do.end46.i_crit_edge

if.end40.i.do.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46.i

if.end.i156.i:                                    ; preds = %if.end40.i
  %call1.i154.i = tail call i32 @clk_enable(ptr noundef %new_dram_apb_parent.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154.i)
  %tobool2.not.i155.i = icmp eq i32 %call1.i154.i, 0
  br i1 %tobool2.not.i155.i, label %if.end47.i, label %if.then3.i157.i

if.then3.i157.i:                                  ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %new_dram_apb_parent.0.i) #6
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then3.i157.i, %if.end40.i.do.end46.i_crit_edge
  %retval.0.i158.ph.i = phi i32 [ %call1.i154.i, %if.then3.i157.i ], [ %call.i152.i, %if.end40.i.do.end46.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i158.ph.i) #9
  br label %out_disable_alt_parent.i

if.end47.i:                                       ; preds = %if.end.i156.i
  %smcarg.i = getelementptr %struct.imx8m_ddrc, ptr %1, i32 0, i32 7, i32 %i.023.i, i32 1
  %31 = ptrtoint ptr %smcarg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %smcarg.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i.i) #6
  %33 = call ptr @memset(ptr %res.i.i, i32 255, i32 16)
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !132
  %and.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i160.i = icmp eq i32 %and.i.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !133
  br i1 %tobool.not.i160.i, label %if.then.i.i, label %if.end47.i.if.end.i161.i_crit_edge

if.end47.i.if.end.i161.i_crit_edge:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i161.i

if.then.i.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end.i161.i

if.end.i161.i:                                    ; preds = %if.then.i.i, %if.end47.i.if.end.i161.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %call29.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i.i, i32 %35)
  %cmp10.i.i = icmp ult i32 %call29.i.i, %35
  br i1 %cmp10.i.i, label %if.end.i161.i.for.body.i.i_crit_edge, label %if.end.i161.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge

if.end.i161.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge: ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx8m_ddrc_smc_set_freq.exit.i

if.end.i161.i.for.body.i.i_crit_edge:             ; preds = %if.end.i161.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i161.i.for.body.i.i_crit_edge
  %call212.i.i = phi i32 [ %call2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call29.i.i, %if.end.i161.i.for.body.i.i_crit_edge ]
  %online_cpus.011.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i161.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %call212.i.i, 3
  %shl.i.i = shl nuw i32 1, %mul.i.i
  %or.i.i = or i32 %shl.i.i, %online_cpus.011.i.i
  %call2.i.i = tail call i32 @cpumask_next(i32 noundef %call212.i.i, ptr noundef nonnull @__cpu_online_mask) #10
  %cmp.i.i = icmp ult i32 %call2.i.i, %35
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge

for.body.i.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx8m_ddrc_smc_set_freq.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

imx8m_ddrc_smc_set_freq.exit.i:                   ; preds = %for.body.i.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge, %if.end.i161.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge
  %online_cpus.0.lcssa.i.i = phi i32 [ 0, %if.end.i161.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.imx8m_ddrc_smc_set_freq.exit.i_crit_edge ]
  call void @__arm_smccc_smc(i32 noundef -1040187388, i32 noundef %32, i32 noundef %online_cpus.0.lcssa.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i.i, ptr noundef null) #6
  call void @trace_hardirqs_on() #6
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !134
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i.i) #6
  %36 = ptrtoint ptr %dram_core.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dram_core.i, align 4
  %call49.i = call i32 @clk_set_parent(ptr noundef %37, ptr noundef nonnull %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %imx8m_ddrc_smc_set_freq.exit.i.if.end55.i_crit_edge, label %do.end54.i

imx8m_ddrc_smc_set_freq.exit.i.if.end55.i_crit_edge: ; preds = %imx8m_ddrc_smc_set_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

do.end54.i:                                       ; preds = %imx8m_ddrc_smc_set_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %call49.i) #9
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end54.i, %imx8m_ddrc_smc_set_freq.exit.i.if.end55.i_crit_edge
  %tobool56.not.i = icmp eq ptr %new_dram_alt_parent.0.i, null
  br i1 %tobool56.not.i, label %if.end55.i.if.end66.i_crit_edge, label %if.then57.i

if.end55.i.if.end66.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

if.then57.i:                                      ; preds = %if.end55.i
  %dram_alt58.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %12, i32 0, i32 4
  %38 = ptrtoint ptr %dram_alt58.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dram_alt58.i, align 4
  %call59.i = call i32 @clk_set_parent(ptr noundef %39, ptr noundef nonnull %new_dram_alt_parent.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.then57.i.if.end66.i_crit_edge, label %do.end64.i

if.then57.i.if.end66.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

do.end64.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %call59.i) #9
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end64.i, %if.then57.i.if.end66.i_crit_edge, %if.end55.i.if.end66.i_crit_edge
  %ret.0.i = phi i32 [ %call59.i, %do.end64.i ], [ 0, %if.then57.i.if.end66.i_crit_edge ], [ %call49.i, %if.end55.i.if.end66.i_crit_edge ]
  %tobool67.not.i = icmp eq ptr %new_dram_apb_parent.0.i, null
  br i1 %tobool67.not.i, label %if.end66.i.if.end77.i_crit_edge, label %if.then68.i

if.end66.i.if.end77.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then68.i:                                      ; preds = %if.end66.i
  %dram_apb69.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %12, i32 0, i32 5
  %40 = ptrtoint ptr %dram_apb69.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dram_apb69.i, align 4
  %call70.i = call i32 @clk_set_parent(ptr noundef %41, ptr noundef nonnull %new_dram_apb_parent.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.then68.i.if.end77.i_crit_edge, label %do.end75.i

if.then68.i.if.end77.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

do.end75.i:                                       ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.70, i32 noundef %call70.i) #9
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end75.i, %if.then68.i.if.end77.i_crit_edge, %if.end66.i.if.end77.i_crit_edge
  %ret.1.i = phi i32 [ %call70.i, %do.end75.i ], [ 0, %if.then68.i.if.end77.i_crit_edge ], [ %ret.0.i, %if.end66.i.if.end77.i_crit_edge ]
  %dram_pll.i = getelementptr inbounds %struct.imx8m_ddrc, ptr %12, i32 0, i32 3
  %42 = ptrtoint ptr %dram_pll.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dram_pll.i, align 4
  %call78.i = call i32 @clk_get_rate(ptr noundef %43) #6
  call void @clk_disable(ptr noundef %new_dram_apb_parent.0.i) #6
  call void @clk_unprepare(ptr noundef %new_dram_apb_parent.0.i) #6
  br label %out_disable_alt_parent.i

out_disable_alt_parent.i:                         ; preds = %if.end77.i, %do.end46.i
  %ret.2.i = phi i32 [ %retval.0.i158.ph.i, %do.end46.i ], [ %ret.1.i, %if.end77.i ]
  call void @clk_disable(ptr noundef %new_dram_alt_parent.0.i) #6
  call void @clk_unprepare(ptr noundef %new_dram_alt_parent.0.i) #6
  br label %imx8m_ddrc_set_freq.exit

imx8m_ddrc_set_freq.exit.thread:                  ; preds = %do.end32.i, %do.end23.i, %do.end11.i, %do.end.i
  %retval.0.i69.ph = phi i32 [ %retval.0.i.ph.i, %do.end32.i ], [ -22, %do.end.i ], [ -22, %do.end11.i ], [ -22, %do.end23.i ]
  %44 = ptrtoint ptr %dram_core to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dram_core, align 4
  %call1273 = tail call i32 @clk_get_rate(ptr noundef %45) #6
  br label %do.end17

imx8m_ddrc_set_freq.exit:                         ; preds = %out_disable_alt_parent.i, %do.end39.i
  %ret.3.i = phi i32 [ %retval.0.i150.ph.i, %do.end39.i ], [ %ret.2.i, %out_disable_alt_parent.i ]
  call void @clk_disable(ptr noundef nonnull %18) #6
  call void @clk_unprepare(ptr noundef nonnull %18) #6
  %46 = ptrtoint ptr %dram_core to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dram_core, align 4
  %call12 = call i32 @clk_get_rate(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool13.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool13.not, label %if.else, label %imx8m_ddrc_set_freq.exit.do.end17_crit_edge

imx8m_ddrc_set_freq.exit.do.end17_crit_edge:      ; preds = %imx8m_ddrc_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17:                                         ; preds = %imx8m_ddrc_set_freq.exit.do.end17_crit_edge, %imx8m_ddrc_set_freq.exit.thread
  %call1276 = phi i32 [ %call1273, %imx8m_ddrc_set_freq.exit.thread ], [ %call12, %imx8m_ddrc_set_freq.exit.do.end17_crit_edge ]
  %retval.0.i6975 = phi i32 [ %retval.0.i69.ph, %imx8m_ddrc_set_freq.exit.thread ], [ %ret.3.i, %imx8m_ddrc_set_freq.exit.do.end17_crit_edge ]
  %48 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %freq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %49, i32 noundef %call4, i32 noundef %retval.0.i6975, i32 noundef %call1276) #9
  br label %cleanup

if.else:                                          ; preds = %imx8m_ddrc_set_freq.exit
  %50 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %call12)
  %cmp18.not = icmp eq i32 %51, %call12
  br i1 %cmp18.not, label %do.body24, label %do.end22

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %51, i32 noundef %call4, i32 noundef %call12) #9
  br label %cleanup

do.body24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx8m_ddrc_target.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx8m_ddrc_target, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !135

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %freq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx8m_ddrc_target.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %53, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body24, %do.end22, %do.end17, %imx8m_ddrc_find_freq.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %imx8m_ddrc_find_freq.exit.cleanup_crit_edge ], [ 0, %do.end22 ], [ 0, %if.then29 ], [ %retval.0.i6975, %do.end17 ], [ 0, %do.body24 ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_ddrc_exit(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_ddrc_get_cur_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dram_core = getelementptr inbounds %struct.imx8m_ddrc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dram_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dram_core, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #6
  %4 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %freq, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_imx8m_ddrc__171_453_imx8m_ddrc_platdrv_init6, !1, !"__initcall__kmod_imx8m_ddrc__171_453_imx8m_ddrc_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 453, i32 1}
!2 = !{ptr @__exitcall_imx8m_ddrc_platdrv_exit, !1, !"__exitcall_imx8m_ddrc_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description172, !4, !"__UNIQUE_ID_description172", i1 false, i1 false}
!4 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 455, i32 1}
!5 = !{ptr @__UNIQUE_ID_author173, !6, !"__UNIQUE_ID_author173", i1 false, i1 false}
!6 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 456, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 457, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 449, i32 11}
!12 = !{ptr @imx8m_ddrc_platdrv, !13, !"imx8m_ddrc_platdrv", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 446, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 370, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 381, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx8m_ddrc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx8m_ddrc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 385, i32 38}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 388, i32 3}
!28 = !{ptr @imx8m_ddrc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx8m_ddrc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 391, i32 37}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 394, i32 3}
!34 = !{ptr @imx8m_ddrc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @imx8m_ddrc_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 397, i32 37}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 400, i32 3}
!40 = !{ptr @imx8m_ddrc_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @imx8m_ddrc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 403, i32 37}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 406, i32 3}
!46 = !{ptr @imx8m_ddrc_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx8m_ddrc_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 412, i32 3}
!50 = !{ptr @imx8m_ddrc_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx8m_ddrc_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 429, i32 3}
!54 = !{ptr @imx8m_ddrc_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx8m_ddrc_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 344, i32 4}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @imx8m_ddrc_check_opps._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @imx8m_ddrc_check_opps._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 352, i32 4}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @imx8m_ddrc_check_opps._entry.31, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @imx8m_ddrc_check_opps._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 241, i32 3}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @imx8m_ddrc_target._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @imx8m_ddrc_target._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 262, i32 3}
!73 = !{ptr @imx8m_ddrc_target._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @imx8m_ddrc_target._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 265, i32 3}
!77 = !{ptr @imx8m_ddrc_target._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @imx8m_ddrc_target._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 268, i32 3}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @imx8m_ddrc_target.__UNIQUE_ID_ddebug170, !80, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 145, i32 3}
!85 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @imx8m_ddrc_set_freq._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @imx8m_ddrc_set_freq._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 153, i32 4}
!90 = !{ptr @imx8m_ddrc_set_freq._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 164, i32 4}
!94 = !{ptr @imx8m_ddrc_set_freq._entry.50, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.52, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 173, i32 3}
!98 = !{ptr @imx8m_ddrc_set_freq._entry.53, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.55, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 179, i32 3}
!102 = !{ptr @imx8m_ddrc_set_freq._entry.56, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.58, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 185, i32 3}
!106 = !{ptr @imx8m_ddrc_set_freq._entry.59, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.61, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.63, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 195, i32 3}
!110 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @imx8m_ddrc_set_freq._entry.62, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.65, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.67, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 199, i32 4}
!115 = !{ptr @imx8m_ddrc_set_freq._entry.66, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.68, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.70, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 205, i32 4}
!119 = !{ptr @imx8m_ddrc_set_freq._entry.69, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @imx8m_ddrc_set_freq._entry_ptr.71, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @imx8m_ddrc_of_match, !122, !"imx8m_ddrc_of_match", i1 false, i1 false}
!122 = !{!"../drivers/devfreq/imx8m-ddrc.c", i32 440, i32 34}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 756740}
!133 = !{i64 754443}
!134 = !{i64 754253}
!135 = !{i64 2148963685, i64 2148963690, i64 2148963703, i64 2148963747, i64 2148963781, i64 2148963802}
