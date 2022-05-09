; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/qoriq-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/qoriq-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpu_data = type { ptr, ptr }

@__initcall__kmod_qoriq_cpufreq__195_304_qoriq_cpufreq_platform_driver_init6 = internal global ptr @qoriq_cpufreq_platform_driver_init, section ".initcall6.init", align 4
@qoriq_cpufreq_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qoriq_cpufreq_probe, ptr @qoriq_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qoriq_cpufreq_platform_driver_exit = internal global ptr @qoriq_cpufreq_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias196 = internal constant [43 x i8] c"qoriq_cpufreq.alias=platform:qoriq-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_file197 = internal constant [49 x i8] c"qoriq_cpufreq.file=drivers/cpufreq/qoriq-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [26 x i8] c"qoriq_cpufreq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author199 = internal constant [65 x i8] c"qoriq_cpufreq.author=Tang Yuantian <Yuantian.Tang@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description200 = internal constant [73 x i8] c"qoriq_cpufreq.description=cpufreq driver for Freescale QorIQ series SoCs\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qoriq-cpufreq\00", [18 x i8] zeroinitializer }, align 32
@qoriq_cpufreq_blacklist = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4420-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,b4860-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t2080-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t4240-clockgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@qoriq_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Disabling due to erratum A-008083\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qoriq_cpufreq_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/cpufreq/qoriq-cpufreq.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qoriq_cpufreq_probe._entry_ptr = internal global ptr @qoriq_cpufreq_probe._entry, section ".printk_index", align 4
@qoriq_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"qoriq_cpufreq\00\00\00", i16 6, ptr null, ptr @qoriq_cpufreq_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @qoriq_cpufreq_target, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_get, ptr null, ptr null, ptr null, ptr null, ptr @qoriq_cpufreq_cpu_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@qoriq_cpufreq_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Freescale QorIQ CPU frequency scaling driver\0A\00", [50 x i8] zeroinitializer }, align 32
@qoriq_cpufreq_probe._entry_ptr.8 = internal global ptr @qoriq_cpufreq_probe._entry.6, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@qoriq_cpufreq_cpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013qoriq_cpufreq: %s: no clock information\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qoriq_cpufreq_cpu_init\00", [41 x i8] zeroinitializer }, align 32
@qoriq_cpufreq_cpu_init._entry_ptr = internal global ptr @qoriq_cpufreq_cpu_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@set_affected_cpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013qoriq_cpufreq: %s: no clock for cpu %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_affected_cpus\00", [46 x i8] zeroinitializer }, align 32
@set_affected_cpus._entry_ptr = internal global ptr @set_affected_cpus._entry, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"soc\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bus-frequency\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cg-pll0-div1\00", [19 x i8] zeroinitializer }, align 32
@get_bus_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013qoriq_cpufreq: %s: can't get bus frequency %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_bus_freq\00", [19 x i8] zeroinitializer }, align 32
@get_bus_freq._entry_ptr = internal global ptr @get_bus_freq._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"qoriq_cpufreq_platform_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 297, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 299, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"qoriq_cpufreq_blacklist\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 262, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 278, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"qoriq_cpufreq_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 250, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 286, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 177, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 95, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 49, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 51, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 58, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [35 x i8] c"../drivers/cpufreq/qoriq-cpufreq.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 60, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_author199, ptr @__UNIQUE_ID_description200, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198, ptr @__exitcall_qoriq_cpufreq_platform_driver_exit, ptr @__initcall__kmod_qoriq_cpufreq__195_304_qoriq_cpufreq_platform_driver_init6, ptr @get_bus_freq._entry, ptr @get_bus_freq._entry_ptr, ptr @qoriq_cpufreq_cpu_init._entry, ptr @qoriq_cpufreq_cpu_init._entry_ptr, ptr @qoriq_cpufreq_platform_driver_exit, ptr @qoriq_cpufreq_probe._entry, ptr @qoriq_cpufreq_probe._entry.6, ptr @qoriq_cpufreq_probe._entry_ptr, ptr @qoriq_cpufreq_probe._entry_ptr.8, ptr @set_affected_cpus._entry, ptr @set_affected_cpus._entry_ptr, ptr @qoriq_cpufreq_platform_driver, ptr @.str, ptr @qoriq_cpufreq_blacklist, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @qoriq_cpufreq_driver, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_cpufreq_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_cpufreq_blacklist to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_cpufreq_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qoriq_cpufreq_cpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_affected_cpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_bus_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qoriq_cpufreq_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qoriq_cpufreq_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qoriq_cpufreq_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @qoriq_cpufreq_blacklist, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @qoriq_cpufreq_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.1, %entry.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull %.str.7.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @qoriq_cpufreq_driver) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_cpu_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  %sysfreq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu1 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu1, align 4
  %call = tail call ptr @of_get_cpu_node(i32 noundef %1, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.err_np_crit_edge, label %if.end5

if.end.err_np_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_np

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_clk_get(ptr noundef nonnull %call, i32 noundef 0) #9
  %clk7 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %3 = ptrtoint ptr %clk7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %clk7, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %err_nomem2

if.end12:                                         ; preds = %if.end5
  %call14 = tail call ptr @__clk_get_hw(ptr noundef %call6) #9
  %call15 = tail call i32 @clk_hw_get_num_parents(ptr noundef %call14) #9
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call15, i32 4) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !65

kcalloc.exit.thread:                              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call7.i.i, align 8
  br label %err_nomem2

if.end7.i.i:                                      ; preds = %if.end12
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #14
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool18.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool18.not, label %if.end7.i.i.err_nomem2_crit_edge, label %if.end20

if.end7.i.i.err_nomem2_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_nomem2

if.end20:                                         ; preds = %if.end7.i.i
  %add = add nuw nsw i32 %call15, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 12) #9
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end20.err_pclk_crit_edge, label %if.end7.i.i382, !prof !65

if.end20.err_pclk_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pclk

if.end7.i.i382:                                   ; preds = %if.end20
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i381 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #14
  %tobool22.not = icmp eq ptr %call8.i.i381, null
  br i1 %tobool22.not, label %if.end7.i.i382.err_pclk_crit_edge, label %for.cond.preheader

if.end7.i.i382.err_pclk_crit_edge:                ; preds = %if.end7.i.i382
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pclk

for.cond.preheader:                               ; preds = %if.end7.i.i382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp432.not = icmp eq i32 %call15, 0
  br i1 %cmp432.not, label %for.cond.preheader.freq_table_sort.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.freq_table_sort.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %freq_table_sort.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0433 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call25 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %call14, i32 noundef %i.0433) #9
  %clk26 = getelementptr inbounds %struct.clk_hw, ptr %call25, i32 0, i32 1
  %12 = ptrtoint ptr %clk26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk26, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0433
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %arrayidx, align 4
  %call28 = tail call i32 @clk_get_rate(ptr noundef %13) #9
  %div = udiv i32 %call28, 1000
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %i.0433, i32 2
  %17 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %frequency, align 4
  %driver_data = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %i.0433, i32 1
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.0433, ptr %driver_data, align 4
  %inc = add nuw nsw i32 %i.0433, 1
  %exitcond.not = icmp eq i32 %inc, %call15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp27.i = icmp sgt i32 %call15, 1
  br i1 %cmp27.i, label %for.end.for.body3.lr.ph.i_crit_edge, label %for.end.freq_table_sort.exit_crit_edge

for.end.freq_table_sort.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %freq_table_sort.exit

for.end.for.body3.lr.ph.i_crit_edge:              ; preds = %for.end
  br label %for.body3.lr.ph.i

for.body3.lr.ph.i:                                ; preds = %for.inc12.i.for.body3.lr.ph.i_crit_edge, %for.end.for.body3.lr.ph.i_crit_edge
  %i.028.i = phi i32 [ %inc13.i, %for.inc12.i.for.body3.lr.ph.i_crit_edge ], [ 1, %for.end.for.body3.lr.ph.i_crit_edge ]
  %frequency8.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %i.028.i, i32 2
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %j.026.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %frequency.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %j.026.i, i32 2
  %19 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frequency.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp4.i = icmp eq i32 %20, -1
  br i1 %cmp4.i, label %for.body3.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body3.i
  %21 = ptrtoint ptr %frequency8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frequency8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp9.not.i = icmp eq i32 %20, %22
  br i1 %cmp9.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %frequency8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %frequency8.i, align 4
  br label %for.inc12.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.028.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc12.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.inc.i.for.inc12.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %for.inc.i.for.inc12.i_crit_edge, %if.end.i
  %inc13.i = add nuw nsw i32 %i.028.i, 1
  %exitcond31.not.i = icmp eq i32 %inc13.i, %call15
  br i1 %exitcond31.not.i, label %freq_table_redup.exit, label %for.inc12.i.for.body3.lr.ph.i_crit_edge

for.inc12.i.for.body3.lr.ph.i_crit_edge:          ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.lr.ph.i

freq_table_redup.exit:                            ; preds = %for.inc12.i
  %sub.i = add i32 %call15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp65.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp65.i, label %freq_table_redup.exit.for.body.i_crit_edge, label %freq_table_redup.exit.freq_table_sort.exit_crit_edge

freq_table_redup.exit.freq_table_sort.exit_crit_edge: ; preds = %freq_table_redup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %freq_table_sort.exit

freq_table_redup.exit.for.body.i_crit_edge:       ; preds = %freq_table_redup.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %freq_table_redup.exit.for.body.i_crit_edge
  %i.066.i = phi i32 [ %add.i, %for.inc30.i.for.body.i_crit_edge ], [ 0, %freq_table_redup.exit.for.body.i_crit_edge ]
  %frequency.i385 = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %i.066.i, i32 2
  %24 = ptrtoint ptr %frequency.i385 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frequency.i385, align 4
  %add.i = add nuw nsw i32 %i.066.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call15)
  %cmp261.i = icmp slt i32 %add.i, %call15
  br i1 %cmp261.i, label %for.body.i.for.body3.i388_crit_edge, label %for.body.i.for.inc30.i_crit_edge

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i

for.body.i.for.body3.i388_crit_edge:              ; preds = %for.body.i
  br label %for.body3.i388

for.body3.i388:                                   ; preds = %for.body3.i388.for.body3.i388_crit_edge, %for.body.i.for.body3.i388_crit_edge
  %max_freq.064.i = phi i32 [ %max_freq.1.i, %for.body3.i388.for.body3.i388_crit_edge ], [ %25, %for.body.i.for.body3.i388_crit_edge ]
  %ind.063.i = phi i32 [ %ind.1.i, %for.body3.i388.for.body3.i388_crit_edge ], [ %i.066.i, %for.body.i.for.body3.i388_crit_edge ]
  %j.062.i = phi i32 [ %inc.i386, %for.body3.i388.for.body3.i388_crit_edge ], [ %add.i, %for.body.i.for.body3.i388_crit_edge ]
  %frequency5.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %j.062.i, i32 2
  %26 = ptrtoint ptr %frequency5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frequency5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp6.i = icmp ne i32 %27, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %max_freq.064.i)
  %cmp7.not.i = icmp ugt i32 %27, %max_freq.064.i
  %or.cond.i = select i1 %cmp6.i, i1 %cmp7.not.i, i1 false
  %ind.1.i = select i1 %or.cond.i, i32 %j.062.i, i32 %ind.063.i
  %max_freq.1.i = select i1 %or.cond.i, i32 %27, i32 %max_freq.064.i
  %inc.i386 = add nuw nsw i32 %j.062.i, 1
  %exitcond.not.i387 = icmp eq i32 %inc.i386, %call15
  br i1 %exitcond.not.i387, label %for.end.i, label %for.body3.i388.for.body3.i388_crit_edge

for.body3.i388.for.body3.i388_crit_edge:          ; preds = %for.body3.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i388

for.end.i:                                        ; preds = %for.body3.i388
  call void @__sanitizer_cov_trace_cmp4(i32 %ind.1.i, i32 %i.066.i)
  %cmp8.not.i = icmp eq i32 %ind.1.i, %i.066.i
  br i1 %cmp8.not.i, label %for.end.i.for.inc30.i_crit_edge, label %if.then9.i

for.end.i.for.inc30.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30.i

if.then9.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %i.066.i, i32 1
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data.i, align 4
  %driver_data16.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %ind.1.i, i32 1
  %30 = ptrtoint ptr %driver_data16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %driver_data16.i, align 4
  store i32 %31, ptr %driver_data.i, align 4
  %frequency20.i = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %ind.1.i, i32 2
  %32 = ptrtoint ptr %frequency20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frequency20.i, align 4
  %34 = ptrtoint ptr %frequency.i385 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %frequency.i385, align 4
  store i32 %29, ptr %driver_data16.i, align 4
  store i32 %25, ptr %frequency20.i, align 4
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.then9.i, %for.end.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %exitcond68.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond68.not.i, label %for.inc30.i.freq_table_sort.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc30.i.freq_table_sort.exit_crit_edge:       ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freq_table_sort.exit

freq_table_sort.exit:                             ; preds = %for.inc30.i.freq_table_sort.exit_crit_edge, %freq_table_redup.exit.freq_table_sort.exit_crit_edge, %for.end.freq_table_sort.exit_crit_edge, %for.cond.preheader.freq_table_sort.exit_crit_edge
  %frequency32 = getelementptr %struct.cpufreq_frequency_table, ptr %call8.i.i381, i32 %call15, i32 2
  %35 = ptrtoint ptr %frequency32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2, ptr %frequency32, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %36 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i381, ptr %freq_table, align 4
  %table33 = getelementptr inbounds %struct.cpu_data, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %table33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i381, ptr %table33, align 4
  %38 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %policy, align 4
  %call17.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i, i32 %40)
  %cmp18.i = icmp ult i32 %call17.i, %40
  br i1 %cmp18.i, label %freq_table_sort.exit.cpu_present.exit.i.i_crit_edge, label %freq_table_sort.exit.set_affected_cpus.exit_crit_edge

freq_table_sort.exit.set_affected_cpus.exit_crit_edge: ; preds = %freq_table_sort.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_affected_cpus.exit

freq_table_sort.exit.cpu_present.exit.i.i_crit_edge: ; preds = %freq_table_sort.exit
  br label %cpu_present.exit.i.i

cpu_present.exit.i.i:                             ; preds = %for.cond.backedge.i.cpu_present.exit.i.i_crit_edge, %freq_table_sort.exit.cpu_present.exit.i.i_crit_edge
  %call19.i = phi i32 [ %call.i, %for.cond.backedge.i.cpu_present.exit.i.i_crit_edge ], [ %call17.i, %freq_table_sort.exit.cpu_present.exit.i.i_crit_edge ]
  %div1.i.i.i.i.i = lshr i32 %call19.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr @__cpu_present_mask, i32 %div1.i.i.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %call19.i, 31
  %43 = shl nuw i32 1, %and.i.i.i.i.i
  %44 = and i32 %43, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i.i, label %cpu_present.exit.i.i.if.end.i391_crit_edge, label %if.end.i.i389

cpu_present.exit.i.i.if.end.i391_crit_edge:       ; preds = %cpu_present.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i391

if.end.i.i389:                                    ; preds = %cpu_present.exit.i.i
  %call1.i.i = tail call ptr @of_get_cpu_node(i32 noundef %call19.i, ptr noundef null) #9
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i389.if.end.i391_crit_edge, label %cpu_to_clk.exit.i

if.end.i.i389.if.end.i391_crit_edge:              ; preds = %if.end.i.i389
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i391

cpu_to_clk.exit.i:                                ; preds = %if.end.i.i389
  %call4.i.i = tail call ptr @of_clk_get(ptr noundef nonnull %call1.i.i, i32 noundef 0) #9
  tail call void @of_node_put(ptr noundef nonnull %call1.i.i) #9
  %cmp.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %cpu_to_clk.exit.i.if.end.i391_crit_edge

cpu_to_clk.exit.i.if.end.i391_crit_edge:          ; preds = %cpu_to_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i391

do.end.i:                                         ; preds = %cpu_to_clk.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call19.i) #12
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_set_cpu.exit.i, %if.end.i391.for.cond.backedge.i_crit_edge, %do.end.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call19.i, ptr noundef nonnull @__cpu_present_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i390 = icmp ult i32 %call.i, %45
  br i1 %cmp.i390, label %for.cond.backedge.i.cpu_present.exit.i.i_crit_edge, label %for.cond.backedge.i.set_affected_cpus.exit_crit_edge

for.cond.backedge.i.set_affected_cpus.exit_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_affected_cpus.exit

for.cond.backedge.i.cpu_present.exit.i.i_crit_edge: ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_present.exit.i.i

if.end.i391:                                      ; preds = %cpu_to_clk.exit.i.if.end.i391_crit_edge, %if.end.i.i389.if.end.i391_crit_edge, %cpu_present.exit.i.i.if.end.i391_crit_edge
  %retval.0.i16.i = phi ptr [ %call4.i.i, %cpu_to_clk.exit.i.if.end.i391_crit_edge ], [ null, %cpu_present.exit.i.i.if.end.i391_crit_edge ], [ null, %if.end.i.i389.if.end.i391_crit_edge ]
  %46 = ptrtoint ptr %clk7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk7, align 4
  %call5.i = tail call zeroext i1 @clk_is_match(ptr noundef %47, ptr noundef %retval.0.i16.i) #9
  br i1 %call5.i, label %if.then6.i, label %if.end.i391.for.cond.backedge.i_crit_edge

if.end.i391.for.cond.backedge.i_crit_edge:        ; preds = %if.end.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge.i

if.then6.i:                                       ; preds = %if.end.i391
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %call19.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %48, %call19.i
  br i1 %cmp.not.i.i.i.i, label %if.then6.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then6.i.cpumask_set_cpu.exit.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then6.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then6.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %call19.i, ptr noundef %39) #9
  br label %for.cond.backedge.i

set_affected_cpus.exit:                           ; preds = %for.cond.backedge.i.set_affected_cpus.exit_crit_edge, %freq_table_sort.exit.set_affected_cpus.exit_crit_edge
  %driver_data34 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %49 = ptrtoint ptr %driver_data34 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %driver_data34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sysfreq.i) #9
  %50 = ptrtoint ptr %sysfreq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %sysfreq.i, align 4, !annotation !67
  %call.i393 = tail call ptr @of_find_node_by_type(ptr noundef null, ptr noundef nonnull @.str.14) #9
  %tobool.not.i = icmp eq ptr %call.i393, null
  br i1 %tobool.not.i, label %set_affected_cpus.exit.if.end4.i_crit_edge, label %if.then.i

set_affected_cpus.exit.if.end4.i_crit_edge:       ; preds = %set_affected_cpus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i:                                        ; preds = %set_affected_cpus.exit
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i393, ptr noundef nonnull @.str.15, ptr noundef nonnull %sysfreq.i, i32 noundef 1, i32 noundef 0) #9
  call void @of_node_put(ptr noundef nonnull %call.i393) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %sysfreq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sysfreq.i, align 4
  br label %get_bus_freq.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %set_affected_cpus.exit.if.end4.i_crit_edge
  %call5.i394 = call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.16) #9
  %cmp.i.i395 = icmp ugt ptr %call5.i394, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i395, label %do.end.i396, label %if.end11.i

do.end.i396:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %call5.i394 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %53) #12
  br label %get_bus_freq.exit

if.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = call i32 @clk_get_rate(ptr noundef %call5.i394) #9
  br label %get_bus_freq.exit

get_bus_freq.exit:                                ; preds = %if.end11.i, %do.end.i396, %if.then3.i
  %retval.0.i = phi i32 [ %53, %do.end.i396 ], [ %call12.i, %if.end11.i ], [ %52, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sysfreq.i) #9
  %54 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval.0.i, i64 12000000000) #16, !srcloc !68
  %asmresult1.i = extractvalue { i64, i64 } %54, 1
  %extract.t443 = trunc i64 %asmresult1.i to i32
  %conv224 = add i32 %extract.t443, 1
  %transition_latency = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %55 = ptrtoint ptr %transition_latency to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv224, ptr %transition_latency, align 4
  call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup

err_pclk:                                         ; preds = %if.end7.i.i382.err_pclk_crit_edge, %if.end20.err_pclk_crit_edge
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %57) #9
  br label %err_nomem2

err_nomem2:                                       ; preds = %err_pclk, %if.end7.i.i.err_nomem2_crit_edge, %kcalloc.exit.thread, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err_np

err_np:                                           ; preds = %err_nomem2, %if.end.err_np_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %err_np, %get_bus_freq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %err_np ], [ 0, %get_bus_freq.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %table = getelementptr inbounds %struct.cpu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %driver_data1 = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %index, i32 1
  %6 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data1, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %clk = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_parent(ptr noundef %11, ptr noundef %9) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_get(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qoriq_cpufreq_cpu_exit(ptr nocapture noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #9
  %table = getelementptr inbounds %struct.cpu_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %1) #9
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_qoriq_cpufreq__195_304_qoriq_cpufreq_platform_driver_init6, !1, !"__initcall__kmod_qoriq_cpufreq__195_304_qoriq_cpufreq_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_qoriq_cpufreq_platform_driver_exit, !1, !"__exitcall_qoriq_cpufreq_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias196, !4, !"__UNIQUE_ID_alias196", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_file197, !6, !"__UNIQUE_ID_file197", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_license198, !6, !"__UNIQUE_ID_license198", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author199, !9, !"__UNIQUE_ID_author199", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 308, i32 1}
!10 = !{ptr @__UNIQUE_ID_description200, !11, !"__UNIQUE_ID_description200", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 309, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 299, i32 11}
!14 = !{ptr @qoriq_cpufreq_platform_driver, !15, !"qoriq_cpufreq_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 297, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 278, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qoriq_cpufreq_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @qoriq_cpufreq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 286, i32 2}
!26 = !{ptr @qoriq_cpufreq_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qoriq_cpufreq_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @qoriq_cpufreq_blacklist, !29, !"qoriq_cpufreq_blacklist", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 262, i32 34}
!30 = !{ptr @qoriq_cpufreq_driver, !31, !"qoriq_cpufreq_driver", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 250, i32 30}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 177, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qoriq_cpufreq_cpu_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @qoriq_cpufreq_cpu_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 95, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @set_affected_cpus._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @set_affected_cpus._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 49, i32 35}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 51, i32 35}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 58, i32 25}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/cpufreq/qoriq-cpufreq.c", i32 60, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @get_bus_freq._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_bus_freq._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!"auto-init"}
!68 = !{i64 2148635667, i64 2148635947, i64 2148636281, i64 2148636615}
