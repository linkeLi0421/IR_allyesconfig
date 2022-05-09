; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/mediatek-cpufreq-hw.c_pt.bc'
source_filename = "../drivers/cpufreq/mediatek-cpufreq-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
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
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtk_cpufreq_data = type { ptr, [6 x ptr], ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.em_data_callback = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_mediatek_cpufreq_hw__203_331_mtk_cpufreq_hw_driver_init6 = internal global ptr @mtk_cpufreq_hw_driver_init, section ".initcall6.init", align 4
@mtk_cpufreq_hw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_cpufreq_hw_driver_probe, ptr @mtk_cpufreq_hw_driver_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_cpufreq_hw_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_cpufreq_hw_driver_exit = internal global ptr @mtk_cpufreq_hw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author204 = internal constant [66 x i8] c"mediatek_cpufreq_hw.author=Hector Yuan <hector.yuan@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [59 x i8] c"mediatek_cpufreq_hw.description=Mediatek cpufreq-hw driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [61 x i8] c"mediatek_cpufreq_hw.file=drivers/cpufreq/mediatek-cpufreq-hw\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [35 x i8] c"mediatek_cpufreq_hw.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk-cpufreq-hw\00", [17 x i8] zeroinitializer }, align 32
@mtk_cpufreq_hw_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,cpufreq-hw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpufreq_mtk_offsets }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cpufreq_mtk_hw_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"mtk-cpufreq-hw\00\00", i16 44, ptr null, ptr @mtk_cpufreq_hw_cpu_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @mtk_cpufreq_hw_target_index, ptr @mtk_cpufreq_hw_fast_switch, ptr null, ptr null, ptr null, ptr @mtk_cpufreq_hw_get, ptr null, ptr null, ptr null, ptr null, ptr @mtk_cpufreq_hw_cpu_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @mtk_cpufreq_register_em }, [48 x i8] zeroinitializer }, align 32
@mtk_cpufreq_hw_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CPUFreq HW driver failed to register\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_cpufreq_hw_driver_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/cpufreq/mediatek-cpufreq-hw.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_cpufreq_hw_driver_probe._entry_ptr = internal global ptr @mtk_cpufreq_hw_driver_probe._entry, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@mtk_cpufreq_hw_cpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 226, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CPUFreq resource init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_cpufreq_hw_cpu_init\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_cpufreq_hw_cpu_init._entry_ptr = internal global ptr @mtk_cpufreq_hw_cpu_init._entry, section ".printk_index", align 4
@mtk_cpufreq_hw_cpu_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cpufreq hardware of CPU%d is not enabled\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_cpufreq_hw_cpu_init._entry_ptr.11 = internal global ptr @mtk_cpufreq_hw_cpu_init._entry.9, section ".printk_index", align 4
@mtk_cpufreq_hw_cpu_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016SVS of CPU%d is not enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_cpufreq_hw_cpu_init._entry_ptr.14 = internal global ptr @mtk_cpufreq_hw_cpu_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"performance-domains\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"#performance-domain-cells\00", [38 x i8] zeroinitializer }, align 32
@mtk_cpu_resources_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 178, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get mem resource %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_cpu_resources_init\00", [41 x i8] zeroinitializer }, align 32
@mtk_cpu_resources_init._entry_ptr = internal global ptr @mtk_cpu_resources_init._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@mtk_cpu_resources_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request resource %pR\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_cpu_resources_init._entry_ptr.21 = internal global ptr @mtk_cpu_resources_init._entry.19, section ".printk_index", align 4
@mtk_cpu_resources_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to map resource %pR\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_cpu_resources_init._entry_ptr.24 = internal global ptr @mtk_cpu_resources_init._entry.22, section ".printk_index", align 4
@mtk_cpu_resources_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.3, i32 202, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Domain-%d failed to create freq table\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_cpu_resources_init._entry_ptr.27 = internal global ptr @mtk_cpu_resources_init._entry.25, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mtk_cpu_create_freq_table.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek_cpufreq_hw\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_cpu_create_freq_table\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"index=%d freq=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@cpufreq_mtk_offsets = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 0, i16 132, i16 136, i16 140, i16 144, i16 272], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"mtk_cpufreq_hw_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 323, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 327, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"mtk_cpufreq_hw_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 318, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"cpufreq_mtk_hw_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 279, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 308, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 226, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 245, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 250, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 170, i32 58 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 171, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 178, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 183, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 189, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 202, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 108, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 144, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"cpufreq_mtk_offsets\00", align 1
@___asan_gen_.132 = private constant [41 x i8] c"../drivers/cpufreq/mediatek-cpufreq-hw.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 44, i32 18 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__exitcall_mtk_cpufreq_hw_driver_exit, ptr @__initcall__kmod_mediatek_cpufreq_hw__203_331_mtk_cpufreq_hw_driver_init6, ptr @mtk_cpu_resources_init._entry, ptr @mtk_cpu_resources_init._entry.19, ptr @mtk_cpu_resources_init._entry.22, ptr @mtk_cpu_resources_init._entry.25, ptr @mtk_cpu_resources_init._entry_ptr, ptr @mtk_cpu_resources_init._entry_ptr.21, ptr @mtk_cpu_resources_init._entry_ptr.24, ptr @mtk_cpu_resources_init._entry_ptr.27, ptr @mtk_cpufreq_hw_cpu_init._entry, ptr @mtk_cpufreq_hw_cpu_init._entry.12, ptr @mtk_cpufreq_hw_cpu_init._entry.9, ptr @mtk_cpufreq_hw_cpu_init._entry_ptr, ptr @mtk_cpufreq_hw_cpu_init._entry_ptr.11, ptr @mtk_cpufreq_hw_cpu_init._entry_ptr.14, ptr @mtk_cpufreq_hw_driver_exit, ptr @mtk_cpufreq_hw_driver_probe._entry, ptr @mtk_cpufreq_hw_driver_probe._entry_ptr, ptr @mtk_cpufreq_hw_driver, ptr @.str, ptr @mtk_cpufreq_hw_match, ptr @cpufreq_mtk_hw_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @cpufreq_mtk_offsets], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_hw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_hw_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_mtk_hw_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_hw_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_hw_cpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_hw_cpu_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpufreq_hw_cpu_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_resources_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_resources_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_resources_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cpu_resources_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_mtk_offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_cpufreq_hw_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cpufreq_hw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_cpufreq_hw_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  store ptr %pdev, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @cpufreq_mtk_hw_driver, i32 0, i32 2), align 4
  %call1 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @cpufreq_mtk_hw_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_driver_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @cpufreq_mtk_hw_driver) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_cpu_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_get_driver_data() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @mtk_cpu_resources_init(ptr noundef %call, ptr noundef %policy, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %arrayidx = getelementptr %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !80
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %mul = mul i32 %7, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool4.not = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %tobool4.not, i32 -1, i32 %mul
  %transition_latency = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %transition_latency to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %transition_latency, align 4
  %fast_switch_possible = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 26
  %9 = ptrtoint ptr %fast_switch_possible to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %fast_switch_possible, align 4
  %arrayidx8 = getelementptr %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16777216) #7, !srcloc !81
  %call9 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call9, 300000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 243) #7
  %arrayidx24 = getelementptr %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx24, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %15 = and i32 %14, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %15)
  %cmp2897 = icmp eq i32 %15, 50331648
  br i1 %cmp2897, label %if.end.cleanup_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then45.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call32 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call32, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call32, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then45

if.then45:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx24, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %19 = and i32 %18, 50331648
  %cmp28 = icmp eq i32 %19, 50331648
  br i1 %cmp28, label %if.then45.cleanup_crit_edge, label %if.then45.land.lhs.true_crit_edge

if.then45.land.lhs.true_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx24, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !80
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %.pre = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pre)
  %cmp49 = icmp eq i32 %.pre, 3
  br i1 %cmp49, label %for.end.cleanup_crit_edge, label %if.then51

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %for.end
  %and52 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %24 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu, align 4
  br i1 %tobool53.not, label %do.end57, label %do.end63

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %25) #10
  br label %cleanup

do.end63:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.end57, %for.end.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %do.end57 ], [ 0, %do.end63 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_target_index(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %index)
  %arrayidx = getelementptr %struct.mtk_cpufreq_data, ptr %1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_fast_switch(ptr nocapture noundef readonly %policy, i32 noundef %target_freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %freq_table.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %2 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_table.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %entry
  %pos.0.i = phi ptr [ %3, %entry ], [ %incdec.ptr.i, %for.inc.i ]
  %idx.0.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i ]
  %best.0.i = phi i32 [ -1, %entry ], [ %best.1.i, %for.inc.i ]
  %frequency.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else5.i [
    i32 -2, label %for.cond.i.cpufreq_table_find_index_dl.exit_crit_edge
    i32 -1, label %for.cond.i.for.inc.i_crit_edge
  ]

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.cond.i.cpufreq_table_find_index_dl.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpufreq_table_find_index_dl.exit

if.else5.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %target_freq)
  %cmp7.i = icmp eq i32 %5, %target_freq
  br i1 %cmp7.i, label %if.else5.i.cpufreq_table_find_index_dl.exit_crit_edge, label %if.end.i

if.else5.i.cpufreq_table_find_index_dl.exit_crit_edge: ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpufreq_table_find_index_dl.exit

if.end.i:                                         ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %target_freq)
  %cmp9.i = icmp ugt i32 %5, %target_freq
  br i1 %cmp9.i, label %if.end.i.for.inc.i_crit_edge, label %if.end11.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i)
  %cmp12.i = icmp eq i32 %best.0.i, -1
  %idx.0.best.0.i = select i1 %cmp12.i, i32 %idx.0.i, i32 %best.0.i
  br label %cpufreq_table_find_index_dl.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.cond.i.for.inc.i_crit_edge
  %best.1.i = phi i32 [ %best.0.i, %for.cond.i.for.inc.i_crit_edge ], [ %idx.0.i, %if.end.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 1
  %inc.i = add i32 %idx.0.i, 1
  br label %for.cond.i

cpufreq_table_find_index_dl.exit:                 ; preds = %if.end11.i, %if.else5.i.cpufreq_table_find_index_dl.exit_crit_edge, %for.cond.i.cpufreq_table_find_index_dl.exit_crit_edge
  %retval.0.i = phi i32 [ %idx.0.best.0.i, %if.end11.i ], [ %idx.0.i, %if.else5.i.cpufreq_table_find_index_dl.exit_crit_edge ], [ %best.0.i, %for.cond.i.cpufreq_table_find_index_dl.exit_crit_edge ]
  %7 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %arrayidx = getelementptr %struct.mtk_cpufreq_data, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !81
  %10 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %freq_table.i, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %11, i32 %retval.0.i, i32 2
  %12 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_get(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %cpu) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %arrayidx = getelementptr %struct.mtk_cpufreq_data, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 31)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %8, i32 %6, i32 2
  %9 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_hw_cpu_exit(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %res1 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res1, align 4
  %base2 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %arrayidx = getelementptr %struct.mtk_cpufreq_data, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !81
  tail call void @iounmap(ptr noundef %5) #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %add.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cpufreq_register_em(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  %em_cb = alloca %struct.em_data_callback, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em_cb) #7
  %0 = ptrtoint ptr %em_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr @mtk_cpufreq_get_cpu_power to i32), ptr %em_cb, align 4
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data, align 4
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %4) #7
  %nr_opp = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %nr_opp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_opp, align 4
  %7 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %policy, align 4
  %call1 = call i32 @em_dev_register_perf_domain(ptr noundef %call, i32 noundef %6, ptr noundef nonnull %em_cb, ptr noundef %8, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em_cb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_get_driver_data() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_cpu_resources_init(ptr noundef %pdev, ptr nocapture noundef %policy, ptr nocapture noundef readonly %offsets) unnamed_addr #2 align 64 {
entry:
  %args.i1.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %2 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %4 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i.i = tail call ptr @get_cpu_device(i32 noundef %1) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i.i = tail call ptr @of_get_cpu_node(i32 noundef %1, ptr noundef null) #7
  br label %of_cpu_device_node_get.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i.i, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i.i.i, align 8
  %call2.i.i.i = tail call ptr @of_node_get(ptr noundef %6) #7
  br label %of_cpu_device_node_get.exit.i.i

of_cpu_device_node_get.exit.i.i:                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %call2.i.i.i, %if.end.i.i.i ], [ %call1.i.i.i, %if.then.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i, label %of_cpu_device_node_get.exit.i.i.parse_perf_domain.exit.thread.i_crit_edge, label %if.end.i.i

of_cpu_device_node_get.exit.i.i.parse_perf_domain.exit.thread.i_crit_edge: ; preds = %of_cpu_device_node_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_perf_domain.exit.thread.i

if.end.i.i:                                       ; preds = %of_cpu_device_node_get.exit.i.i
  %call.i1.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %retval.0.i.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %cmp.i.i = icmp slt i32 %call.i1.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.parse_perf_domain.exit.thread.i_crit_edge, label %parse_perf_domain.exit.i

if.end.i.i.parse_perf_domain.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_perf_domain.exit.thread.i

parse_perf_domain.exit.thread.i:                  ; preds = %if.end.i.i.parse_perf_domain.exit.thread.i_crit_edge, %of_cpu_device_node_get.exit.i.i.parse_perf_domain.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i1.i.i, %if.end.i.i.parse_perf_domain.exit.thread.i_crit_edge ], [ -19, %of_cpu_device_node_get.exit.i.i.parse_perf_domain.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %cleanup

parse_perf_domain.exit.i:                         ; preds = %if.end.i.i
  call void @of_node_put(ptr noundef nonnull %retval.0.i.i.i) #7
  %args4.i.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %args4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args4.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %parse_perf_domain.exit.i.cleanup_crit_edge, label %if.end.i

parse_perf_domain.exit.i.cleanup_crit_edge:       ; preds = %parse_perf_domain.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %parse_perf_domain.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp.not.i.i.i.i = icmp ugt i32 %9, %1
  br i1 %cmp.not.i.i.i.i, label %if.end.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.end.i.cpumask_set_cpu.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !84

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.end.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %1, ptr noundef %3) #7
  %call127.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call127.i, i32 %10)
  %cmp228.i = icmp ult i32 %call127.i, %10
  br i1 %cmp228.i, label %for.body.lr.ph.i, label %cpumask_set_cpu.exit.i.if.end4_crit_edge

cpumask_set_cpu.exit.i.if.end4_crit_edge:         ; preds = %cpumask_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %cpumask_set_cpu.exit.i
  %args4.i15.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i1.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call129.i = phi i32 [ %call127.i, %for.body.lr.ph.i ], [ %call1.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call129.i, i32 %1)
  %cmp3.i = icmp eq i32 %call129.i, %1
  br i1 %cmp3.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %if.end5.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.end5.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i1.i) #7
  %11 = call ptr @memset(ptr %args.i1.i, i32 255, i32 72)
  %call.i.i2.i = call ptr @get_cpu_device(i32 noundef %call129.i) #7
  %tobool.not.i.i3.i = icmp eq ptr %call.i.i2.i, null
  br i1 %tobool.not.i.i3.i, label %if.then.i.i5.i, label %if.end.i.i8.i

if.then.i.i5.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i4.i = call ptr @of_get_cpu_node(i32 noundef %call129.i, ptr noundef null) #7
  br label %of_cpu_device_node_get.exit.i11.i

if.end.i.i8.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %of_node.i.i6.i = getelementptr inbounds %struct.device, ptr %call.i.i2.i, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i.i6.i, align 8
  %call2.i.i7.i = call ptr @of_node_get(ptr noundef %13) #7
  br label %of_cpu_device_node_get.exit.i11.i

of_cpu_device_node_get.exit.i11.i:                ; preds = %if.end.i.i8.i, %if.then.i.i5.i
  %retval.0.i.i9.i = phi ptr [ %call2.i.i7.i, %if.end.i.i8.i ], [ %call1.i.i4.i, %if.then.i.i5.i ]
  %tobool.not.i10.i = icmp eq ptr %retval.0.i.i9.i, null
  br i1 %tobool.not.i10.i, label %of_cpu_device_node_get.exit.i11.i.parse_perf_domain.exit18.thread.i_crit_edge, label %if.end.i14.i

of_cpu_device_node_get.exit.i11.i.parse_perf_domain.exit18.thread.i_crit_edge: ; preds = %of_cpu_device_node_get.exit.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_perf_domain.exit18.thread.i

if.end.i14.i:                                     ; preds = %of_cpu_device_node_get.exit.i11.i
  %call.i1.i12.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %retval.0.i.i9.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i1.i12.i, 0
  br i1 %cmp.i13.i, label %if.end.i14.i.parse_perf_domain.exit18.thread.i_crit_edge, label %parse_perf_domain.exit18.i

if.end.i14.i.parse_perf_domain.exit18.thread.i_crit_edge: ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_perf_domain.exit18.thread.i

parse_perf_domain.exit18.thread.i:                ; preds = %if.end.i14.i.parse_perf_domain.exit18.thread.i_crit_edge, %of_cpu_device_node_get.exit.i11.i.parse_perf_domain.exit18.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i1.i) #7
  br label %for.cond.backedge.i

parse_perf_domain.exit18.i:                       ; preds = %if.end.i14.i
  call void @of_node_put(ptr noundef nonnull %retval.0.i.i9.i) #7
  %14 = ptrtoint ptr %args4.i15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %args4.i15.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp7.i = icmp sgt i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %15)
  %cmp10.i = icmp eq i32 %8, %15
  %or.cond.i = select i1 %cmp7.i, i1 %cmp10.i, i1 false
  br i1 %or.cond.i, label %if.then11.i, label %parse_perf_domain.exit18.i.for.cond.backedge.i_crit_edge

parse_perf_domain.exit18.i.for.cond.backedge.i_crit_edge: ; preds = %parse_perf_domain.exit18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.then11.i:                                      ; preds = %parse_perf_domain.exit18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call129.i)
  %cmp.not.i.i.i19.i = icmp ugt i32 %16, %call129.i
  br i1 %cmp.not.i.i.i19.i, label %if.then11.i.cpumask_set_cpu.exit23.i_crit_edge, label %land.rhs.i.i.i21.i

if.then11.i.cpumask_set_cpu.exit23.i_crit_edge:   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit23.i

land.rhs.i.i.i21.i:                               ; preds = %if.then11.i
  %.b37.i.i.i20.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i20.i, label %land.rhs.i.i.i21.i.cpumask_set_cpu.exit23.i_crit_edge, label %if.then.i.i.i22.i, !prof !84

land.rhs.i.i.i21.i.cpumask_set_cpu.exit23.i_crit_edge: ; preds = %land.rhs.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit23.i

if.then.i.i.i22.i:                                ; preds = %land.rhs.i.i.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit23.i

cpumask_set_cpu.exit23.i:                         ; preds = %if.then.i.i.i22.i, %land.rhs.i.i.i21.i.cpumask_set_cpu.exit23.i_crit_edge, %if.then11.i.cpumask_set_cpu.exit23.i_crit_edge
  call void @_set_bit(i32 noundef %call129.i, ptr noundef %3) #7
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_set_cpu.exit23.i, %parse_perf_domain.exit18.i.for.cond.backedge.i_crit_edge, %parse_perf_domain.exit18.thread.i, %for.body.i.for.cond.backedge.i_crit_edge
  %call1.i = call i32 @cpumask_next(i32 noundef %call129.i, ptr noundef nonnull @__cpu_possible_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2.i = icmp ult i32 %call1.i, %17
  br i1 %cmp2.i, label %for.cond.backedge.i.for.body.i_crit_edge, label %for.cond.backedge.i.if.end4_crit_edge

for.cond.backedge.i.if.end4_crit_edge:            ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end4:                                          ; preds = %for.cond.backedge.i.if.end4_crit_edge, %cpumask_set_cpu.exit.i.if.end4_crit_edge
  %call5 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %8) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %8) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %18 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %19
  %add.i = add i32 %sub.i, %21
  %name = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 2
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %call10 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %add.i, ptr noundef %23, i32 noundef 0) #7
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull %call5) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %24 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call5, align 4
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %sub.i82 = sub i32 1, %25
  %add.i83 = add i32 %sub.i82, %27
  %call19 = call ptr @ioremap(i32 noundef %25, i32 noundef %add.i83) #7
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull %call5) #10
  %28 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call5, align 4
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end.i, align 4
  %sub.i85 = sub i32 1, %29
  %add.i86 = add i32 %sub.i85, %31
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %add.i86) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %base26 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %base26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call19, ptr %base26, align 4
  %res27 = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %res27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5, ptr %res27, align 4
  %34 = ptrtoint ptr %offsets to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %offsets, align 2
  %conv = zext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %call19, i32 %conv
  %arrayidx29 = getelementptr %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 1, i32 0
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr, ptr %arrayidx29, align 4
  %arrayidx.1 = getelementptr i16, ptr %offsets, i32 1
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %38 to i32
  %add.ptr.1 = getelementptr i8, ptr %call19, i32 %conv.1
  %arrayidx29.1 = getelementptr %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.1, ptr %arrayidx29.1, align 4
  %arrayidx.2 = getelementptr i16, ptr %offsets, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %41 to i32
  %add.ptr.2 = getelementptr i8, ptr %call19, i32 %conv.2
  %arrayidx29.2 = getelementptr %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.2, ptr %arrayidx29.2, align 4
  %arrayidx.3 = getelementptr i16, ptr %offsets, i32 3
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %44 to i32
  %add.ptr.3 = getelementptr i8, ptr %call19, i32 %conv.3
  %arrayidx29.3 = getelementptr %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.3, ptr %arrayidx29.3, align 4
  %arrayidx.4 = getelementptr i16, ptr %offsets, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %47 to i32
  %add.ptr.4 = getelementptr i8, ptr %call19, i32 %conv.4
  %arrayidx29.4 = getelementptr %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.4, ptr %arrayidx29.4, align 4
  %arrayidx.5 = getelementptr i16, ptr %offsets, i32 5
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %50 to i32
  %add.ptr.5 = getelementptr i8, ptr %call19, i32 %conv.5
  %arrayidx29.5 = getelementptr %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 1, i32 5
  %51 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.5, ptr %arrayidx29.5, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 396, i32 noundef 3520) #7
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i.i, ptr %call.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %do.end35, label %if.end.i87

if.end.i87:                                       ; preds = %if.end25
  %53 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx29, align 4
  br label %for.body.i88

for.body.i88:                                     ; preds = %do.end35.i.for.body.i88_crit_edge, %if.end.i87
  %i.062.i = phi i32 [ 0, %if.end.i87 ], [ %inc.i, %do.end35.i.for.body.i88_crit_edge ]
  %prev_freq.061.i = phi i32 [ 0, %if.end.i87 ], [ %mul17.i, %do.end35.i.for.body.i88_crit_edge ]
  %mul.i = shl nuw nsw i32 %i.062.i, 2
  %add.ptr.i = getelementptr i8, ptr %54, i32 %mul.i
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %56 = and i32 %55, -15794176
  %57 = call i32 @llvm.bswap.i32(i32 %56) #7
  %mul17.i = mul nuw nsw i32 %57, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul17.i, i32 %prev_freq.061.i)
  %cmp18.i = icmp eq i32 %mul17.i, %prev_freq.061.i
  br i1 %cmp18.i, label %for.body.i88.if.end36_crit_edge, label %if.end20.i

for.body.i88.if.end36_crit_edge:                  ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end20.i:                                       ; preds = %for.body.i88
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %frequency.i = getelementptr %struct.cpufreq_frequency_table, ptr %59, i32 %i.062.i, i32 2
  %60 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul17.i, ptr %frequency.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_cpu_create_freq_table.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_cpu_resources_init, %if.then29.i)) #7
          to label %do.end35.i [label %if.then29.i], !srcloc !85

if.then29.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %frequency32.i = getelementptr %struct.cpufreq_frequency_table, ptr %62, i32 %i.062.i, i32 2
  %63 = ptrtoint ptr %frequency32.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %frequency32.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_cpu_create_freq_table.__UNIQUE_ID_ddebug202, ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %i.062.i, i32 noundef %64) #7
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.then29.i, %if.end20.i
  %inc.i = add nuw nsw i32 %i.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %do.end35.i.if.end36_crit_edge, label %do.end35.i.for.body.i88_crit_edge

do.end35.i.for.body.i88_crit_edge:                ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i88

do.end35.i.if.end36_crit_edge:                    ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %8) #10
  br label %cleanup

if.end36:                                         ; preds = %do.end35.i.if.end36_crit_edge, %for.body.i88.if.end36_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.062.i, %for.body.i88.if.end36_crit_edge ], [ 32, %do.end35.i.if.end36_crit_edge ]
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %frequency38.i = getelementptr %struct.cpufreq_frequency_table, ptr %66, i32 %i.0.lcssa.i, i32 2
  %67 = ptrtoint ptr %frequency38.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -2, ptr %frequency38.i, align 4
  %nr_opp.i = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %call.i, i32 0, i32 4
  %68 = ptrtoint ptr %nr_opp.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i.0.lcssa.i, ptr %nr_opp.i, align 4
  %69 = load ptr, ptr %call.i, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %70 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %freq_table, align 4
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %71 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %driver_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end35, %do.end24, %do.end15, %do.end, %parse_perf_domain.exit.i.cleanup_crit_edge, %parse_perf_domain.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end35 ], [ 0, %if.end36 ], [ -12, %do.end24 ], [ -16, %do.end15 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %8, %parse_perf_domain.exit.i.cleanup_crit_edge ], [ %retval.0.i.ph.i, %parse_perf_domain.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cpufreq_get_cpu_power(ptr nocapture noundef writeonly %mW, ptr nocapture noundef %KHz, ptr nocapture noundef readonly %cpu_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %cpu_dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %call = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 39
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data, align 4
  %nr_opp = getelementptr inbounds %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nr_opp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_opp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %KHz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %KHz, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %7, i32 %i.022, i32 2
  %10 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1 = icmp ult i32 %11, %9
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.022, %for.body.for.end_crit_edge ], [ %5, %for.inc.for.end_crit_edge ]
  %dec = add nsw i32 %i.0.lcssa, -1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %frequency6 = getelementptr %struct.cpufreq_frequency_table, ptr %13, i32 %dec, i32 2
  %14 = ptrtoint ptr %frequency6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frequency6, align 4
  %16 = ptrtoint ptr %KHz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %KHz, align 4
  %arrayidx7 = getelementptr %struct.mtk_cpufreq_data, ptr %3, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7, align 4
  %mul = shl i32 %dec, 2
  %add.ptr = getelementptr i8, ptr %18, i32 %mul
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !80
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %div = udiv i32 %20, 1000
  %21 = ptrtoint ptr %mW to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %mW, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em_dev_register_perf_domain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_mediatek_cpufreq_hw__203_331_mtk_cpufreq_hw_driver_init6, !1, !"__initcall__kmod_mediatek_cpufreq_hw__203_331_mtk_cpufreq_hw_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 331, i32 1}
!2 = !{ptr @__exitcall_mtk_cpufreq_hw_driver_exit, !1, !"__exitcall_mtk_cpufreq_hw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author204, !4, !"__UNIQUE_ID_author204", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 333, i32 1}
!5 = !{ptr @__UNIQUE_ID_description205, !6, !"__UNIQUE_ID_description205", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 334, i32 1}
!7 = !{ptr @__UNIQUE_ID_file206, !8, !"__UNIQUE_ID_file206", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 335, i32 1}
!9 = !{ptr @__UNIQUE_ID_license207, !8, !"__UNIQUE_ID_license207", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 327, i32 11}
!12 = !{ptr @mtk_cpufreq_hw_driver, !13, !"mtk_cpufreq_hw_driver", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 323, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 308, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_cpufreq_hw_driver_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_cpufreq_hw_driver_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @cpufreq_mtk_hw_driver, !23, !"cpufreq_mtk_hw_driver", i1 false, i1 false}
!23 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 279, i32 30}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 226, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mtk_cpufreq_hw_cpu_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_cpufreq_hw_cpu_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 245, i32 4}
!32 = !{ptr @mtk_cpufreq_hw_cpu_init._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_cpufreq_hw_cpu_init._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 250, i32 3}
!36 = !{ptr @mtk_cpufreq_hw_cpu_init._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_cpufreq_hw_cpu_init._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 170, i32 58}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 171, i32 10}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 178, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mtk_cpu_resources_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_cpu_resources_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 183, i32 3}
!49 = !{ptr @mtk_cpu_resources_init._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mtk_cpu_resources_init._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 189, i32 3}
!53 = !{ptr @mtk_cpu_resources_init._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_cpu_resources_init._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 202, i32 3}
!57 = !{ptr @mtk_cpu_resources_init._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mtk_cpu_resources_init._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 144, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mtk_cpu_create_freq_table.__UNIQUE_ID_ddebug202, !63, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!67 = !{ptr @mtk_cpufreq_hw_match, !68, !"mtk_cpufreq_hw_match", i1 false, i1 false}
!68 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 318, i32 34}
!69 = !{ptr @cpufreq_mtk_offsets, !70, !"cpufreq_mtk_offsets", i1 false, i1 false}
!70 = !{!"../drivers/cpufreq/mediatek-cpufreq-hw.c", i32 44, i32 18}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 5154313}
!81 = !{i64 5153895}
!82 = !{i64 2153161771}
!83 = !{i64 2153162325}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148796080, i64 2148796085, i64 2148796098, i64 2148796142, i64 2148796176, i64 2148796197}
