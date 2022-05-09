; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/mediatek-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/mediatek-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_cpu_dvfs_info = type { %struct.cpumask, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i8 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_mediatek_cpufreq__309_583_mtk_cpufreq_driver_init6 = internal global ptr @mtk_cpufreq_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description310 = internal constant [53 x i8] c"mediatek_cpufreq.description=MediaTek CPUFreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [65 x i8] c"mediatek_cpufreq.author=Pi-Cheng Chen <pi-cheng.chen@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [55 x i8] c"mediatek_cpufreq.file=drivers/cpufreq/mediatek-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [32 x i8] c"mediatek_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@mtk_cpufreq_machines = internal constant [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8167\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt817x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8176\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8365\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@mtk_cpufreq_driver_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mediatek_cpufreq\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_cpufreq_driver_init\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/cpufreq/mediatek-cpufreq.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Machine is not compatible with mtk-cpufreq\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-cpufreq\00", [20 x i8] zeroinitializer }, align 32
@mtk_cpufreq_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013failed to register mtk-cpufreq platform device\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_cpufreq_driver_init._entry_ptr = internal global ptr @mtk_cpufreq_driver_init._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@mtk_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 497, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to initialize dvfs info for cpu%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_cpufreq_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_cpufreq_probe._entry_ptr = internal global ptr @mtk_cpufreq_probe._entry, section ".printk_index", align 4
@dvfs_info_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dvfs_info_list, ptr @dvfs_info_list }, [24 x i8] zeroinitializer }, align 32
@mtk_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"mtk-cpufreq\00\00\00\00\00", i16 44, ptr null, ptr @mtk_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @mtk_cpufreq_set_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cpufreq_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, [48 x i8] zeroinitializer }, align 32
@mtk_cpufreq_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.3, i32 506, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register mtk cpufreq driver\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_cpufreq_probe._entry_ptr.13 = internal global ptr @mtk_cpufreq_probe._entry.11, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013failed to get cpu%d device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_cpu_dvfs_info_init\00", [41 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr = internal global ptr @mtk_cpu_dvfs_info_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cpu clk for cpu%d not ready, retry.\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.20 = internal global ptr @mtk_cpu_dvfs_info_init._entry.18, section ".printk_index", align 4
@mtk_cpu_dvfs_info_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.3, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013failed to get cpu clk for cpu%d\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.23 = internal global ptr @mtk_cpu_dvfs_info_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intermediate\00", [19 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.3, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014intermediate clk for cpu%d not ready, retry.\0A\00", [48 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.27 = internal global ptr @mtk_cpu_dvfs_info_init._entry.25, section ".printk_index", align 4
@mtk_cpu_dvfs_info_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.16, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to get intermediate clk for cpu%d\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.30 = internal global ptr @mtk_cpu_dvfs_info_init._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"proc\00", [27 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014proc regulator for cpu%d not ready, retry.\0A\00", [50 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.34 = internal global ptr @mtk_cpu_dvfs_info_init._entry.32, section ".printk_index", align 4
@mtk_cpu_dvfs_info_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.3, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013failed to get proc regulator for cpu%d\0A\00", [54 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.37 = internal global ptr @mtk_cpu_dvfs_info_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.16, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013failed to get OPP-sharing information for cpu%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.41 = internal global ptr @mtk_cpu_dvfs_info_init._entry.39, section ".printk_index", align 4
@mtk_cpu_dvfs_info_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.16, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014no OPP table for cpu%d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.44 = internal global ptr @mtk_cpu_dvfs_info_init._entry.42, section ".printk_index", align 4
@mtk_cpu_dvfs_info_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.16, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to get intermediate opp for cpu%d\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_cpu_dvfs_info_init._entry_ptr.47 = internal global ptr @mtk_cpu_dvfs_info_init._entry.45, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@mtk_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dvfs info for cpu%d is not initialized.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_cpufreq_init\00", [47 x i8] zeroinitializer }, align 32
@mtk_cpufreq_init._entry_ptr = internal global ptr @mtk_cpufreq_init._entry, section ".printk_index", align 4
@mtk_cpufreq_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013failed to init cpufreq table for cpu%d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mtk_cpufreq_init._entry_ptr.52 = internal global ptr @mtk_cpufreq_init._entry.50, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid Vproc value: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_cpufreq_set_target\00", [41 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr = internal global ptr @mtk_cpufreq_set_target._entry, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cpu%d: failed to find OPP for %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr.57 = internal global ptr @mtk_cpufreq_set_target._entry.55, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013cpu%d: failed to scale up voltage!\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr.60 = internal global ptr @mtk_cpufreq_set_target._entry.58, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.3, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cpu%d: failed to re-parent cpu clock!\0A\00", [55 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr.63 = internal global ptr @mtk_cpufreq_set_target._entry.61, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cpu%d: failed to scale cpu clock rate!\0A\00", [54 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr.66 = internal global ptr @mtk_cpufreq_set_target._entry.64, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr.68 = internal global ptr @mtk_cpufreq_set_target._entry.67, section ".printk_index", align 4
@mtk_cpufreq_set_target._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.54, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013cpu%d: failed to scale down voltage!\0A\00", [56 x i8] zeroinitializer }, align 32
@mtk_cpufreq_set_target._entry_ptr.71 = internal global ptr @mtk_cpufreq_set_target._entry.69, section ".printk_index", align 4
@mtk_cpufreq_voltage_tracking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.72, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_cpufreq_voltage_tracking\00", [35 x i8] zeroinitializer }, align 32
@mtk_cpufreq_voltage_tracking._entry_ptr = internal global ptr @mtk_cpufreq_voltage_tracking._entry, section ".printk_index", align 4
@mtk_cpufreq_voltage_tracking._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: invalid Vsram value: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_cpufreq_voltage_tracking._entry_ptr.75 = internal global ptr @mtk_cpufreq_voltage_tracking._entry.73, section ".printk_index", align 4
@mtk_cpufreq_voltage_tracking._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.72, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_cpufreq_voltage_tracking._entry_ptr.77 = internal global ptr @mtk_cpufreq_voltage_tracking._entry.76, section ".printk_index", align 4
@mtk_cpufreq_voltage_tracking._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.72, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_cpufreq_voltage_tracking._entry_ptr.79 = internal global ptr @mtk_cpufreq_voltage_tracking._entry.78, section ".printk_index", align 4
@mtk_cpufreq_voltage_tracking._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mtk_cpufreq_voltage_tracking._entry_ptr.81 = internal global ptr @mtk_cpufreq_voltage_tracking._entry.80, section ".printk_index", align 4
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 553, i32 28 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 560, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"mtk_cpufreq_platdrv\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 521, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 574, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 576, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 495, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"dvfs_info_list\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 47, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"mtk_cpufreq_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 463, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 506, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 108, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 313, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 317, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 320, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 322, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 328, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 331, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 334, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 341, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 344, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 347, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 355, i32 46 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 360, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 367, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 375, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 434, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 441, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 219, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 227, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 242, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 252, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 262, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 272, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 286, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 70, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 86, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 92, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 141, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private constant [38 x i8] c"../drivers/cpufreq/mediatek-cpufreq.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 147, i32 5 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__initcall__kmod_mediatek_cpufreq__309_583_mtk_cpufreq_driver_init6, ptr @mtk_cpu_dvfs_info_init._entry, ptr @mtk_cpu_dvfs_info_init._entry.18, ptr @mtk_cpu_dvfs_info_init._entry.21, ptr @mtk_cpu_dvfs_info_init._entry.25, ptr @mtk_cpu_dvfs_info_init._entry.28, ptr @mtk_cpu_dvfs_info_init._entry.32, ptr @mtk_cpu_dvfs_info_init._entry.35, ptr @mtk_cpu_dvfs_info_init._entry.39, ptr @mtk_cpu_dvfs_info_init._entry.42, ptr @mtk_cpu_dvfs_info_init._entry.45, ptr @mtk_cpu_dvfs_info_init._entry_ptr, ptr @mtk_cpu_dvfs_info_init._entry_ptr.20, ptr @mtk_cpu_dvfs_info_init._entry_ptr.23, ptr @mtk_cpu_dvfs_info_init._entry_ptr.27, ptr @mtk_cpu_dvfs_info_init._entry_ptr.30, ptr @mtk_cpu_dvfs_info_init._entry_ptr.34, ptr @mtk_cpu_dvfs_info_init._entry_ptr.37, ptr @mtk_cpu_dvfs_info_init._entry_ptr.41, ptr @mtk_cpu_dvfs_info_init._entry_ptr.44, ptr @mtk_cpu_dvfs_info_init._entry_ptr.47, ptr @mtk_cpufreq_driver_init._entry, ptr @mtk_cpufreq_driver_init._entry_ptr, ptr @mtk_cpufreq_init._entry, ptr @mtk_cpufreq_init._entry.50, ptr @mtk_cpufreq_init._entry_ptr, ptr @mtk_cpufreq_init._entry_ptr.52, ptr @mtk_cpufreq_probe._entry, ptr @mtk_cpufreq_probe._entry.11, ptr @mtk_cpufreq_probe._entry_ptr, ptr @mtk_cpufreq_probe._entry_ptr.13, ptr @mtk_cpufreq_set_target._entry, ptr @mtk_cpufreq_set_target._entry.55, ptr @mtk_cpufreq_set_target._entry.58, ptr @mtk_cpufreq_set_target._entry.61, ptr @mtk_cpufreq_set_target._entry.64, ptr @mtk_cpufreq_set_target._entry.67, ptr @mtk_cpufreq_set_target._entry.69, ptr @mtk_cpufreq_set_target._entry_ptr, ptr @mtk_cpufreq_set_target._entry_ptr.57, ptr @mtk_cpufreq_set_target._entry_ptr.60, ptr @mtk_cpufreq_set_target._entry_ptr.63, ptr @mtk_cpufreq_set_target._entry_ptr.66, ptr @mtk_cpufreq_set_target._entry_ptr.68, ptr @mtk_cpufreq_set_target._entry_ptr.71, ptr @mtk_cpufreq_voltage_tracking._entry, ptr @mtk_cpufreq_voltage_tracking._entry.73, ptr @mtk_cpufreq_voltage_tracking._entry.76, ptr @mtk_cpufreq_voltage_tracking._entry.78, ptr @mtk_cpufreq_voltage_tracking._entry.80, ptr @mtk_cpufreq_voltage_tracking._entry_ptr, ptr @mtk_cpufreq_voltage_tracking._entry_ptr.75, ptr @mtk_cpufreq_voltage_tracking._entry_ptr.77, ptr @mtk_cpufreq_voltage_tracking._entry_ptr.79, ptr @mtk_cpufreq_voltage_tracking._entry_ptr.81, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mtk_cpufreq_platdrv, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dvfs_info_list, ptr @mtk_cpufreq_driver, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.70, ptr @.str.72, ptr @.str.74], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvfs_info_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_dvfs_info_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_set_target._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_voltage_tracking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_voltage_tracking._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_voltage_tracking._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_voltage_tracking._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_voltage_tracking._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_driver_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_match_node(ptr noundef nonnull @mtk_cpufreq_machines, ptr noundef nonnull %call.i) #8
  tail call void @of_node_put(ptr noundef nonnull %call.i) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_cpufreq_driver_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_cpufreq_driver_init, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !157

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mtk_cpufreq_driver_init.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_cpufreq_platdrv, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.5, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  call void @platform_driver_unregister(ptr noundef nonnull @mtk_cpufreq_platdrv) #8
  %9 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end20 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then8 ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %rate.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call125 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call125, i32 %0)
  %cmp126 = icmp ult i32 %call125, %0
  br i1 %cmp126, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %call127 = phi i32 [ %call125, %for.body.lr.ph ], [ %call, %for.cond.backedge.for.body_crit_edge ]
  %div3.i.i.i = lshr i32 %call127, 5
  %and.i.i.i = and i32 %call127, 31
  %1 = shl nuw i32 1, %and.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %cpumask_test_cpu.exit.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ @dvfs_info_list, %for.body ], [ %.pn.i, %cpumask_test_cpu.exit.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %info.0.i = getelementptr i8, ptr %.pn.i, i32 -24
  %cmp.not.i = icmp eq ptr %.pn.i, @dvfs_info_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call127)
  %cmp.not.i.i.i.i = icmp ugt i32 %3, %call127
  br i1 %cmp.not.i.i.i.i, label %for.body.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

for.body.i.cpumask_test_cpu.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !158

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %for.body.i.cpumask_test_cpu.exit.i_crit_edge
  %arrayidx.i.i.i = getelementptr i32, ptr %info.0.i, i32 %div3.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %6 = and i32 %5, %1
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %cpumask_test_cpu.exit.i.for.cond.i_crit_edge, label %mtk_cpu_dvfs_info_lookup.exit

cpumask_test_cpu.exit.i.for.cond.i_crit_edge:     ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mtk_cpu_dvfs_info_lookup.exit:                    ; preds = %cpumask_test_cpu.exit.i
  %tobool.not = icmp eq ptr %info.0.i, null
  br i1 %tobool.not, label %mtk_cpu_dvfs_info_lookup.exit.if.end_crit_edge, label %mtk_cpu_dvfs_info_lookup.exit.for.cond.backedge_crit_edge

mtk_cpu_dvfs_info_lookup.exit.for.cond.backedge_crit_edge: ; preds = %mtk_cpu_dvfs_info_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

mtk_cpu_dvfs_info_lookup.exit.if.end_crit_edge:   ; preds = %mtk_cpu_dvfs_info_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %mtk_cpu_dvfs_info_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.release_dvfs_info_list_crit_edge, label %if.end5

if.end.release_dvfs_info_list_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dvfs_info_list

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #8
  %7 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rate.i, align 4, !annotation !159
  %call4.i = call ptr @get_cpu_device(i32 noundef %call127) #8
  %tobool.not.i55 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i55, label %if.end5.mtk_cpu_dvfs_info_init.exit.thread_crit_edge, label %if.end.i

if.end5.mtk_cpu_dvfs_info_init.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_cpu_dvfs_info_init.exit.thread

if.end.i:                                         ; preds = %if.end5
  %call6.i = call ptr @clk_get(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.17) #8
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end23.i

if.then8.i:                                       ; preds = %if.end.i
  %cmp.i = icmp eq ptr %call6.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.then8.i.mtk_cpu_dvfs_info_init.exit.thread_crit_edge, label %do.end18.i

if.then8.i.mtk_cpu_dvfs_info_init.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_cpu_dvfs_info_init.exit.thread

do.end18.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call6.i to i32
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call127) #11
  br label %mtk_cpu_dvfs_info_init.exit

if.end23.i:                                       ; preds = %if.end.i
  %call24.i = call ptr @clk_get(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.24) #8
  %cmp.i175.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175.i, label %if.then26.i, label %if.end43.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call24.i to i32
  %cmp28.i = icmp eq ptr %call24.i, inttoptr (i32 -517 to ptr)
  %.str.26..str.29.i = select i1 %cmp28.i, ptr @.str.26, ptr @.str.29
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.26..str.29.i, i32 noundef %call127) #11
  call void @clk_put(ptr noundef %call6.i) #8
  br label %mtk_cpu_dvfs_info_init.exit

if.end43.i:                                       ; preds = %if.end23.i
  %call44.i = call ptr @regulator_get_optional(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.31) #8
  %cmp.i176.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176.i, label %if.then46.i, label %if.end63.i

if.then46.i:                                      ; preds = %if.end43.i
  %cmp48.i = icmp eq ptr %call44.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp48.i, label %do.end52.i, label %do.end58.i

do.end52.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call127) #11
  br label %if.then114.i

do.end58.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call44.i to i32
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %call127) #11
  br label %if.then114.i

if.end63.i:                                       ; preds = %if.end43.i
  %call64.i = call ptr @regulator_get_exclusive(ptr noundef nonnull %call4.i, ptr noundef nonnull @.str.38) #8
  %call65.i = call i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef nonnull %call4.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end73.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call127) #11
  br label %if.end106.i

if.end73.i:                                       ; preds = %if.end63.i
  %call75.i = call i32 @dev_pm_opp_of_cpumask_add_table(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end83.i, label %do.end80.i

do.end80.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call127) #11
  br label %if.end106.i

if.end83.i:                                       ; preds = %if.end73.i
  %call84.i = call i32 @clk_get_rate(ptr noundef %call24.i) #8
  %11 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call84.i, ptr %rate.i, align 4
  %call85.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef nonnull %call4.i, ptr noundef nonnull %rate.i) #8
  %cmp.i177.i = icmp ugt ptr %call85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %do.end90.i, label %mtk_cpu_dvfs_info_init.exit.thread66

do.end90.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %call127) #11
  %12 = ptrtoint ptr %call85.i to i32
  call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef nonnull %call.i) #8
  br label %if.end106.i

mtk_cpu_dvfs_info_init.exit.thread66:             ; preds = %if.end83.i
  %call95.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call85.i) #8
  %intermediate_voltage.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %intermediate_voltage.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call95.i, ptr %intermediate_voltage.i, align 4
  call void @dev_pm_opp_put(ptr noundef %call85.i) #8
  %cpu_dev96.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %cpu_dev96.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %cpu_dev96.i, align 4
  %proc_reg97.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %proc_reg97.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call44.i, ptr %proc_reg97.i, align 4
  %cmp.i178.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i178.i, ptr null, ptr %call64.i
  %sram_reg99.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %sram_reg99.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select.i, ptr %sram_reg99.i, align 4
  %cpu_clk100.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %cpu_clk100.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6.i, ptr %cpu_clk100.i, align 4
  %inter_clk101.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %inter_clk101.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24.i, ptr %inter_clk101.i, align 4
  %lnot.i = xor i1 %cmp.i178.i, true
  %need_voltage_tracking.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 8
  %frombool.i = zext i1 %lnot.i to i8
  %19 = ptrtoint ptr %need_voltage_tracking.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %need_voltage_tracking.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #8
  %list_head = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 6
  %20 = load ptr, ptr @dvfs_info_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_head, ptr noundef nonnull @dvfs_info_list, ptr noundef %20) #8
  br i1 %call.i.i, label %if.end.i.i, label %mtk_cpu_dvfs_info_init.exit.thread66.for.cond.backedge_crit_edge

mtk_cpu_dvfs_info_init.exit.thread66.for.cond.backedge_crit_edge: ; preds = %mtk_cpu_dvfs_info_init.exit.thread66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end106.i:                                      ; preds = %do.end90.i, %do.end80.i, %do.end70.i
  %ret.0.ph.i = phi i32 [ %12, %do.end90.i ], [ %call75.i, %do.end80.i ], [ %call65.i, %do.end70.i ]
  call void @regulator_put(ptr noundef %call44.i) #8
  %cmp.i181.i = icmp ugt ptr %call64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.i, label %if.end106.i.if.then114.i_crit_edge, label %if.then108.i

if.end106.i.if.then114.i_crit_edge:               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114.i

if.then108.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @regulator_put(ptr noundef %call64.i) #8
  br label %if.then114.i

if.then114.i:                                     ; preds = %if.then108.i, %if.end106.i.if.then114.i_crit_edge, %do.end58.i, %do.end52.i
  %ret.0199205.i = phi i32 [ %ret.0.ph.i, %if.then108.i ], [ %ret.0.ph.i, %if.end106.i.if.then114.i_crit_edge ], [ -517, %do.end52.i ], [ %10, %do.end58.i ]
  call void @clk_put(ptr noundef %call6.i) #8
  call void @clk_put(ptr noundef %call24.i) #8
  br label %mtk_cpu_dvfs_info_init.exit

mtk_cpu_dvfs_info_init.exit.thread:               ; preds = %if.then8.i.mtk_cpu_dvfs_info_init.exit.thread_crit_edge, %if.end5.mtk_cpu_dvfs_info_init.exit.thread_crit_edge
  %.str.15.sink = phi ptr [ @.str.19, %if.then8.i.mtk_cpu_dvfs_info_init.exit.thread_crit_edge ], [ @.str.15, %if.end5.mtk_cpu_dvfs_info_init.exit.thread_crit_edge ]
  %retval.0.i56.ph = phi i32 [ -517, %if.then8.i.mtk_cpu_dvfs_info_init.exit.thread_crit_edge ], [ -19, %if.end5.mtk_cpu_dvfs_info_init.exit.thread_crit_edge ]
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, i32 noundef %call127) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #8
  br label %do.end

mtk_cpu_dvfs_info_init.exit:                      ; preds = %if.then114.i, %if.then26.i, %do.end18.i
  %retval.0.i56 = phi i32 [ %ret.0199205.i, %if.then114.i ], [ %9, %if.then26.i ], [ %8, %do.end18.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #8
  br label %do.end

do.end:                                           ; preds = %mtk_cpu_dvfs_info_init.exit, %mtk_cpu_dvfs_info_init.exit.thread
  %retval.0.i5665 = phi i32 [ %retval.0.i56.ph, %mtk_cpu_dvfs_info_init.exit.thread ], [ %retval.0.i56, %mtk_cpu_dvfs_info_init.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call127) #11
  br label %release_dvfs_info_list

if.end.i.i:                                       ; preds = %mtk_cpu_dvfs_info_init.exit.thread66
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list_head, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %list_head to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %list_head, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %call.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dvfs_info_list, ptr %prev3.i.i, align 4
  store volatile ptr %list_head, ptr @dvfs_info_list, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end.i.i, %mtk_cpu_dvfs_info_init.exit.thread66.for.cond.backedge_crit_edge, %mtk_cpu_dvfs_info_lookup.exit.for.cond.backedge_crit_edge
  %call = call i32 @cpumask_next(i32 noundef %call127, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %24
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  %call11 = call i32 @cpufreq_register_driver(ptr noundef nonnull @mtk_cpufreq_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.end.cleanup_crit_edge, label %do.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.12) #11
  br label %release_dvfs_info_list

release_dvfs_info_list:                           ; preds = %do.end16, %do.end, %if.end.release_dvfs_info_list_crit_edge
  %ret.0 = phi i32 [ %retval.0.i5665, %do.end ], [ %call11, %do.end16 ], [ -12, %if.end.release_dvfs_info_list_crit_edge ]
  %25 = load ptr, ptr @dvfs_info_list, align 4
  %cmp26.not128 = icmp eq ptr %25, @dvfs_info_list
  br i1 %cmp26.not128, label %release_dvfs_info_list.cleanup_crit_edge, label %release_dvfs_info_list.for.body27_crit_edge

release_dvfs_info_list.for.body27_crit_edge:      ; preds = %release_dvfs_info_list
  br label %for.body27

release_dvfs_info_list.cleanup_crit_edge:         ; preds = %release_dvfs_info_list
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body27:                                       ; preds = %list_del.exit.for.body27_crit_edge, %release_dvfs_info_list.for.body27_crit_edge
  %.pn.in129 = phi ptr [ %.pn, %list_del.exit.for.body27_crit_edge ], [ %25, %release_dvfs_info_list.for.body27_crit_edge ]
  %info.0 = getelementptr i8, ptr %.pn.in129, i32 -24
  %26 = ptrtoint ptr %.pn.in129 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn.in129, align 4
  %proc_reg.i = getelementptr i8, ptr %.pn.in129, i32 -16
  %27 = ptrtoint ptr %proc_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %proc_reg.i, align 4
  %cmp.i.i57 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i57, label %for.body27.if.end.i58_crit_edge, label %if.then.i

for.body27.if.end.i58_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i58

if.then.i:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  call void @regulator_put(ptr noundef %28) #8
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.then.i, %for.body27.if.end.i58_crit_edge
  %sram_reg.i = getelementptr i8, ptr %.pn.in129, i32 -12
  %29 = ptrtoint ptr %sram_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sram_reg.i, align 4
  %cmp.i22.i = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22.i, label %if.end.i58.if.end5.i_crit_edge, label %if.then3.i

if.end.i58.if.end5.i_crit_edge:                   ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  call void @regulator_put(ptr noundef %30) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i58.if.end5.i_crit_edge
  %cpu_clk.i = getelementptr i8, ptr %.pn.in129, i32 -8
  %31 = ptrtoint ptr %cpu_clk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_clk.i, align 4
  %cmp.i23.i = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then7.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_put(ptr noundef %32) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  %inter_clk.i = getelementptr i8, ptr %.pn.in129, i32 -4
  %33 = ptrtoint ptr %inter_clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inter_clk.i, align 4
  %cmp.i24.i = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.end9.i.mtk_cpu_dvfs_info_release.exit_crit_edge, label %if.then11.i

if.end9.i.mtk_cpu_dvfs_info_release.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_cpu_dvfs_info_release.exit

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_put(ptr noundef %34) #8
  br label %mtk_cpu_dvfs_info_release.exit

mtk_cpu_dvfs_info_release.exit:                   ; preds = %if.then11.i, %if.end9.i.mtk_cpu_dvfs_info_release.exit_crit_edge
  call void @dev_pm_opp_of_cpumask_remove_table(ptr noundef %info.0) #8
  %call.i.i59 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in129) #8
  br i1 %call.i.i59, label %if.end.i.i60, label %mtk_cpu_dvfs_info_release.exit.list_del.exit_crit_edge

mtk_cpu_dvfs_info_release.exit.list_del.exit_crit_edge: ; preds = %mtk_cpu_dvfs_info_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i60:                                     ; preds = %mtk_cpu_dvfs_info_release.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in129, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %.pn.in129 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn.in129, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i60, %mtk_cpu_dvfs_info_release.exit.list_del.exit_crit_edge
  %41 = ptrtoint ptr %.pn.in129 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in129, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in129, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp26.not = icmp eq ptr %.pn, @dvfs_info_list
  br i1 %cmp26.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body27_crit_edge

list_del.exit.for.body27_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %release_dvfs_info_list.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %ret.0, %release_dvfs_info_list.cleanup_crit_edge ], [ %ret.0, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_cpumask_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_cpumask_remove_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_init(ptr nocapture noundef %policy) #4 align 64 {
entry:
  %freq_table = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq_table) #8
  %0 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %freq_table, align 4, !annotation !159
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %div3.i.i.i = lshr i32 %2, 5
  %and.i.i.i = and i32 %2, 31
  %3 = shl nuw i32 1, %and.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %cpumask_test_cpu.exit.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @dvfs_info_list, %entry ], [ %.pn.i, %cpumask_test_cpu.exit.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %info.0.i = getelementptr i8, ptr %.pn.i, i32 -24
  %cmp.not.i = icmp eq ptr %.pn.i, @dvfs_info_list
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %2)
  %cmp.not.i.i.i.i = icmp ugt i32 %5, %2
  br i1 %cmp.not.i.i.i.i, label %for.body.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

for.body.i.cpumask_test_cpu.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !158

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %for.body.i.cpumask_test_cpu.exit.i_crit_edge
  %arrayidx.i.i.i = getelementptr i32, ptr %info.0.i, i32 %div3.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %8 = and i32 %7, %3
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %cpumask_test_cpu.exit.i.for.cond.i_crit_edge, label %mtk_cpu_dvfs_info_lookup.exit

cpumask_test_cpu.exit.i.for.cond.i_crit_edge:     ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

mtk_cpu_dvfs_info_lookup.exit:                    ; preds = %cpumask_test_cpu.exit.i
  %tobool.not = icmp eq ptr %info.0.i, null
  br i1 %tobool.not, label %mtk_cpu_dvfs_info_lookup.exit.do.end_crit_edge, label %if.end

mtk_cpu_dvfs_info_lookup.exit.do.end_crit_edge:   ; preds = %mtk_cpu_dvfs_info_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %mtk_cpu_dvfs_info_lookup.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %10) #11
  br label %cleanup

if.end:                                           ; preds = %mtk_cpu_dvfs_info_lookup.exit
  %cpu_dev = getelementptr i8, ptr %.pn.i, i32 -20
  %11 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_dev, align 4
  %call3 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %12, ptr noundef nonnull %freq_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %14, i32 noundef %call3) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %policy, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %17, 31
  %18 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %18, 536870908
  %19 = call ptr @memcpy(ptr %16, ptr %info.0.i, i32 %mul.i.i)
  %20 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %freq_table, align 4
  %freq_table14 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %22 = ptrtoint ptr %freq_table14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %freq_table14, align 4
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %info.0.i, ptr %driver_data, align 4
  %cpu_clk = getelementptr i8, ptr %.pn.i, i32 -8
  %24 = ptrtoint ptr %cpu_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpu_clk, align 4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8, %do.end
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ 0, %if.end12 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq_table) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #4 align 64 {
entry:
  %freq_hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_table1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %0 = ptrtoint ptr %freq_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_table1, align 4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call ptr @clk_get_parent(ptr noundef %3) #8
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %cpu_dev2 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq_hz) #8
  %intermediate_voltage = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %intermediate_voltage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intermediate_voltage, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %proc_reg = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %proc_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_reg, align 4
  %call4 = tail call i32 @regulator_get_voltage(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %1, i32 %index, i32 2
  %12 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency, align 4
  %mul = mul i32 %13, 1000
  %14 = ptrtoint ptr %freq_hz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %freq_hz, align 4
  %call6 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %7, ptr noundef nonnull %freq_hz) #8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %17 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %freq_hz, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %16, i32 noundef %18) #11
  %19 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = call i32 @dev_pm_opp_get_voltage(ptr noundef %call6) #8
  call void @dev_pm_opp_put(ptr noundef %call6) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call16)
  %cmp17 = icmp sgt i32 %9, %call16
  %20 = call i32 @llvm.smax.i32(i32 %9, i32 %call16)
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %20)
  %cmp18 = icmp slt i32 %call4, %20
  br i1 %cmp18, label %if.then19, label %if.end15.if.end30_crit_edge

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then19:                                        ; preds = %if.end15
  %call20 = call fastcc i32 @mtk_cpufreq_set_voltage(ptr noundef %5, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.then19.if.end30_crit_edge, label %do.end24

if.then19.if.end30_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %cpu26 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %21 = ptrtoint ptr %cpu26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu26, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %22) #11
  %call28 = call fastcc i32 @mtk_cpufreq_set_voltage(ptr noundef %5, i32 noundef %call4)
  br label %cleanup

if.end30:                                         ; preds = %if.then19.if.end30_crit_edge, %if.end15.if.end30_crit_edge
  %inter_clk = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %inter_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inter_clk, align 4
  %call31 = call i32 @clk_set_parent(ptr noundef %3, ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end62, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %cpu38 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %25 = ptrtoint ptr %cpu38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu38, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %26) #11
  %call40 = call fastcc i32 @mtk_cpufreq_set_voltage(ptr noundef %5, i32 noundef %call4)
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 255, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end30
  %27 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freq_hz, align 4
  %call63 = call i32 @clk_set_rate(ptr noundef %call, i32 noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end74, label %do.end68

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %cpu70 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %29 = ptrtoint ptr %cpu70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu70, align 4
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %30) #11
  %call72 = call i32 @clk_set_parent(ptr noundef %3, ptr noundef %call) #8
  %call73 = call fastcc i32 @mtk_cpufreq_set_voltage(ptr noundef %5, i32 noundef %call4)
  br label %cleanup

if.end74:                                         ; preds = %if.end62
  %call75 = call i32 @clk_set_parent(ptr noundef %3, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end111, label %do.end80

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %cpu82 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %31 = ptrtoint ptr %cpu82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu82, align 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %32) #11
  %call84 = call fastcc i32 @mtk_cpufreq_set_voltage(ptr noundef %5, i32 noundef %9)
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 275, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end111:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %call4)
  %cmp113 = icmp slt i32 %call16, %call4
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp113
  br i1 %or.cond, label %if.then114, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then114:                                       ; preds = %if.end111
  %call115 = call fastcc i32 @mtk_cpufreq_set_voltage(ptr noundef %5, i32 noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then114.cleanup_crit_edge, label %do.end120

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end120:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  %cpu122 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %33 = ptrtoint ptr %cpu122 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu122, align 4
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %34) #11
  %35 = ptrtoint ptr %inter_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inter_clk, align 4
  %call125 = call i32 @clk_set_parent(ptr noundef %3, ptr noundef %36) #8
  %call126 = call i32 @clk_set_rate(ptr noundef %call, i32 noundef %call3) #8
  %call127 = call i32 @clk_set_parent(ptr noundef %3, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end120, %if.then114.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end80, %do.end68, %do.end36, %do.end24, %do.end11, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %19, %do.end11 ], [ %call20, %do.end24 ], [ %call31, %do.end36 ], [ %call63, %do.end68 ], [ %call75, %do.end80 ], [ %call115, %do.end120 ], [ 0, %if.end111.cleanup_crit_edge ], [ 0, %if.then114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq_hz) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_exit(ptr noundef %policy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cpu_dev = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dev, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %3, ptr noundef %freq_table) #8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr nocapture noundef readonly %policy) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #8
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %2 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %related_cpus, align 4
  %call1 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %call, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_cpufreq_set_voltage(ptr nocapture noundef readonly %info, i32 noundef %vproc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %need_voltage_tracking = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %need_voltage_tracking to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_voltage_tracking, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %proc_reg = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %proc_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_reg, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sram_reg2.i = getelementptr inbounds %struct.mtk_cpu_dvfs_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %sram_reg2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram_reg2.i, align 4
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.72, i32 noundef %call.i) #11
  br label %return

if.end.i:                                         ; preds = %if.then
  %add.i = add i32 %vproc, 100000
  %6 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 1150000) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %vproc)
  %cmp6.i = icmp slt i32 %call.i, %vproc
  br i1 %cmp6.i, label %if.end.i.do.body8.i_crit_edge, label %if.else58.i

if.end.i.do.body8.i_crit_edge:                    ; preds = %if.end.i
  br label %do.body8.i

do.body8.i:                                       ; preds = %do.cond54.i.do.body8.i_crit_edge, %if.end.i.do.body8.i_crit_edge
  %call9.i = tail call i32 @regulator_get_voltage(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %call9.i) #11
  br label %return

if.end17.i:                                       ; preds = %do.body8.i
  %call18.i = tail call i32 @regulator_get_voltage(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.72, i32 noundef %call18.i) #11
  br label %return

if.end26.i:                                       ; preds = %if.end17.i
  %add27.i = add nuw i32 %call18.i, 200000
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %add27.i) #8
  %add34.i = add i32 %7, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1149999, i32 %add34.i)
  %cmp35.i = icmp sgt i32 %add34.i, 1149999
  br i1 %cmp35.i, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %if.end26.i
  %call37.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef 1150000, i32 noundef 1150000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool.not.i, label %if.then36.i.if.end47.i_crit_edge, label %if.then38.i

if.then36.i.if.end47.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.then38.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef 1140000, i32 noundef 1150000) #8
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef %7, i32 noundef %add34.i) #8
  %sub43.i = add i32 %7, -100000
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i, %if.then38.i
  %ret.1.i = phi i32 [ %call42.i, %if.else.i ], [ %call39.i, %if.then38.i ]
  %vproc.0.i = phi i32 [ %sub43.i, %if.else.i ], [ %vproc, %if.then38.i ]
  %vsram.0.i = phi i32 [ %7, %if.else.i ], [ 1150000, %if.then38.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool45.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end47.i_crit_edge, label %if.end44.i.return_crit_edge

if.end44.i.return_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end44.i.if.end47.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end44.i.if.end47.i_crit_edge, %if.then36.i.if.end47.i_crit_edge
  %vsram.0229.i = phi i32 [ %vsram.0.i, %if.end44.i.if.end47.i_crit_edge ], [ 1150000, %if.then36.i.if.end47.i_crit_edge ]
  %vproc.0228.i = phi i32 [ %vproc.0.i, %if.end44.i.if.end47.i_crit_edge ], [ %vproc, %if.then36.i.if.end47.i_crit_edge ]
  %add48.i = add i32 %vproc.0228.i, 10000
  %call49.i = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %vproc.0228.i, i32 noundef %add48.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %do.cond54.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %call52.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef %call9.i, i32 noundef %call9.i) #8
  br label %return

do.cond54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %vproc.0228.i, i32 %vproc)
  %cmp55.i = icmp slt i32 %vproc.0228.i, %vproc
  call void @__sanitizer_cov_trace_cmp4(i32 %vsram.0229.i, i32 %6)
  %cmp56.i = icmp slt i32 %vsram.0229.i, %6
  %or.cond.i = select i1 %cmp55.i, i1 true, i1 %cmp56.i
  br i1 %or.cond.i, label %do.cond54.i.do.body8.i_crit_edge, label %do.cond54.i.return_crit_edge

do.cond54.i.return_crit_edge:                     ; preds = %do.cond54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.cond54.i.do.body8.i_crit_edge:                 ; preds = %do.cond54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

if.else58.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %vproc)
  %cmp59.i = icmp sgt i32 %call.i, %vproc
  br i1 %cmp59.i, label %do.body61.preheader.i, label %if.else58.i.return_crit_edge

if.else58.i.return_crit_edge:                     ; preds = %if.else58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body61.preheader.i:                            ; preds = %if.else58.i
  %add121.i = add i32 %vproc, 10000
  %add124.i = add nsw i32 %6, 10000
  br label %do.body61.i

do.body61.i:                                      ; preds = %do.cond120.i.do.body61.i_crit_edge, %do.body61.preheader.i
  %call62.i = tail call i32 @regulator_get_voltage(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end67.i, label %if.end70.i

do.end67.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #10
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.72, i32 noundef %call62.i) #11
  br label %return

if.end70.i:                                       ; preds = %do.body61.i
  %call71.i = tail call i32 @regulator_get_voltage(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %do.end76.i, label %if.end79.i

do.end76.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %call71.i) #11
  br label %return

if.end79.i:                                       ; preds = %if.end70.i
  %sub80.i = add nsw i32 %call71.i, -200000
  %8 = tail call i32 @llvm.smax.i32(i32 %sub80.i, i32 %vproc) #8
  %add87.i = add i32 %8, 10000
  %call88.i = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %8, i32 noundef %add87.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end91.i, label %if.end79.i.return_crit_edge

if.end79.i.return_crit_edge:                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end91.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub80.i, i32 %vproc)
  %cmp92.not.i = icmp sgt i32 %sub80.i, %vproc
  %add95.i = add i32 %8, 100000
  %9 = tail call i32 @llvm.smax.i32(i32 %6, i32 %add95.i) #8
  %vsram.1.i = select i1 %cmp92.not.i, i32 %9, i32 %6
  %add103.i = add i32 %vsram.1.i, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1149999, i32 %add103.i)
  %cmp104.i = icmp sgt i32 %add103.i, 1149999
  br i1 %cmp104.i, label %if.then105.i, label %if.else112.i

if.then105.i:                                     ; preds = %if.end91.i
  %call106.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef 1150000, i32 noundef 1150000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.then105.i.do.cond120.i_crit_edge, label %if.then108.i

if.then105.i.do.cond120.i_crit_edge:              ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond120.i

if.then108.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  %call110.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef 1140000, i32 noundef 1150000) #8
  br label %if.end115.i

if.else112.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  %call114.i = tail call i32 @regulator_set_voltage(ptr noundef %5, i32 noundef %vsram.1.i, i32 noundef %add103.i) #8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else112.i, %if.then108.i
  %ret.2.i = phi i32 [ %call110.i, %if.then108.i ], [ %call114.i, %if.else112.i ]
  %vsram.2.i = phi i32 [ 1150000, %if.then108.i ], [ %vsram.1.i, %if.else112.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool116.not.i = icmp eq i32 %ret.2.i, 0
  br i1 %tobool116.not.i, label %if.end115.i.do.cond120.i_crit_edge, label %if.then117.i

if.end115.i.do.cond120.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond120.i

if.then117.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  %call118.i = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %call62.i, i32 noundef %call62.i) #8
  br label %return

do.cond120.i:                                     ; preds = %if.end115.i.do.cond120.i_crit_edge, %if.then105.i.do.cond120.i_crit_edge
  %vsram.2233.i = phi i32 [ %vsram.2.i, %if.end115.i.do.cond120.i_crit_edge ], [ 1150000, %if.then105.i.do.cond120.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add121.i)
  %cmp122.i = icmp sgt i32 %8, %add121.i
  call void @__sanitizer_cov_trace_cmp4(i32 %vsram.2233.i, i32 %add124.i)
  %cmp125.i = icmp sgt i32 %vsram.2233.i, %add124.i
  %or.cond223.i = select i1 %cmp122.i, i1 true, i1 %cmp125.i
  br i1 %or.cond223.i, label %do.cond120.i.do.body61.i_crit_edge, label %do.cond120.i.return_crit_edge

do.cond120.i.return_crit_edge:                    ; preds = %do.cond120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.cond120.i.do.body61.i_crit_edge:               ; preds = %do.cond120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body61.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %vproc, 10000
  %call1 = tail call i32 @regulator_set_voltage(ptr noundef %3, i32 noundef %vproc, i32 noundef %add) #8
  br label %return

return:                                           ; preds = %if.else, %do.cond120.i.return_crit_edge, %if.then117.i, %if.end79.i.return_crit_edge, %do.end76.i, %do.end67.i, %if.else58.i.return_crit_edge, %do.cond54.i.return_crit_edge, %if.then51.i, %if.end44.i.return_crit_edge, %do.end23.i, %do.end14.i, %do.end.i
  %retval.0 = phi i32 [ %call1, %if.else ], [ %call.i, %do.end.i ], [ %call9.i, %do.end14.i ], [ %call18.i, %do.end23.i ], [ %call49.i, %if.then51.i ], [ %call62.i, %do.end67.i ], [ %call71.i, %do.end76.i ], [ %ret.2.i, %if.then117.i ], [ 0, %if.else58.i.return_crit_edge ], [ %ret.1.i, %if.end44.i.return_crit_edge ], [ 0, %do.cond54.i.return_crit_edge ], [ %call88.i, %if.end79.i.return_crit_edge ], [ 0, %do.cond120.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_mediatek_cpufreq__309_583_mtk_cpufreq_driver_init6, !1, !"__initcall__kmod_mediatek_cpufreq__309_583_mtk_cpufreq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 583, i32 1}
!2 = !{ptr @__UNIQUE_ID_description310, !3, !"__UNIQUE_ID_description310", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 585, i32 1}
!4 = !{ptr @__UNIQUE_ID_author311, !5, !"__UNIQUE_ID_author311", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 586, i32 1}
!6 = !{ptr @__UNIQUE_ID_file312, !7, !"__UNIQUE_ID_file312", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 587, i32 1}
!8 = !{ptr @__UNIQUE_ID_license313, !7, !"__UNIQUE_ID_license313", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 553, i32 28}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 560, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_cpufreq_driver_init.__UNIQUE_ID_ddebug308, !12, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 574, i32 41}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 576, i32 3}
!21 = !{ptr @mtk_cpufreq_driver_init._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mtk_cpufreq_driver_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mtk_cpufreq_machines, !24, !"mtk_cpufreq_machines", i1 false, i1 false}
!24 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 529, i32 34}
!25 = !{ptr @mtk_cpufreq_platdrv, !26, !"mtk_cpufreq_platdrv", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 521, i32 31}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 495, i32 4}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mtk_cpufreq_probe._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_cpufreq_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 506, i32 3}
!36 = !{ptr @mtk_cpufreq_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_cpufreq_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 313, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mtk_cpu_dvfs_info_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 317, i32 29}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 320, i32 4}
!50 = !{ptr @mtk_cpu_dvfs_info_init._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 322, i32 4}
!54 = !{ptr @mtk_cpu_dvfs_info_init._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 328, i32 31}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 331, i32 4}
!60 = !{ptr @mtk_cpu_dvfs_info_init._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 334, i32 4}
!64 = !{ptr @mtk_cpu_dvfs_info_init._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 341, i32 45}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 344, i32 4}
!70 = !{ptr @mtk_cpu_dvfs_info_init._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 347, i32 4}
!74 = !{ptr @mtk_cpu_dvfs_info_init._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 355, i32 46}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 360, i32 3}
!80 = !{ptr @mtk_cpu_dvfs_info_init._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 367, i32 3}
!84 = !{ptr @mtk_cpu_dvfs_info_init._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 375, i32 3}
!88 = !{ptr @mtk_cpu_dvfs_info_init._entry.45, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mtk_cpu_dvfs_info_init._entry_ptr.47, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @dvfs_info_list, !91, !"dvfs_info_list", i1 false, i1 false}
!91 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 47, i32 8}
!92 = !{ptr @mtk_cpufreq_driver, !93, !"mtk_cpufreq_driver", i1 false, i1 false}
!93 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 463, i32 30}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 434, i32 3}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mtk_cpufreq_init._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @mtk_cpufreq_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 441, i32 3}
!101 = !{ptr @mtk_cpufreq_init._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mtk_cpufreq_init._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 219, i32 3}
!105 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mtk_cpufreq_set_target._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mtk_cpufreq_set_target._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 227, i32 3}
!110 = !{ptr @mtk_cpufreq_set_target._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mtk_cpufreq_set_target._entry_ptr.57, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 242, i32 4}
!114 = !{ptr @mtk_cpufreq_set_target._entry.58, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mtk_cpufreq_set_target._entry_ptr.60, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 252, i32 3}
!118 = !{ptr @mtk_cpufreq_set_target._entry.61, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mtk_cpufreq_set_target._entry_ptr.63, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 262, i32 3}
!122 = !{ptr @mtk_cpufreq_set_target._entry.64, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mtk_cpufreq_set_target._entry_ptr.66, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @mtk_cpufreq_set_target._entry.67, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 272, i32 3}
!126 = !{ptr @mtk_cpufreq_set_target._entry_ptr.68, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 286, i32 4}
!129 = !{ptr @mtk_cpufreq_set_target._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mtk_cpufreq_set_target._entry_ptr.71, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 70, i32 3}
!133 = !{ptr @mtk_cpufreq_voltage_tracking._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @mtk_cpufreq_voltage_tracking._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 86, i32 5}
!137 = !{ptr @mtk_cpufreq_voltage_tracking._entry.73, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @mtk_cpufreq_voltage_tracking._entry_ptr.75, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @mtk_cpufreq_voltage_tracking._entry.76, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 92, i32 5}
!141 = !{ptr @mtk_cpufreq_voltage_tracking._entry_ptr.77, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @mtk_cpufreq_voltage_tracking._entry.78, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 141, i32 5}
!144 = !{ptr @mtk_cpufreq_voltage_tracking._entry_ptr.79, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @mtk_cpufreq_voltage_tracking._entry.80, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/cpufreq/mediatek-cpufreq.c", i32 147, i32 5}
!147 = !{ptr @mtk_cpufreq_voltage_tracking._entry_ptr.81, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 2148735399, i64 2148735404, i64 2148735417, i64 2148735461, i64 2148735495, i64 2148735516}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{!"auto-init"}
!160 = !{i8 0, i8 2}
