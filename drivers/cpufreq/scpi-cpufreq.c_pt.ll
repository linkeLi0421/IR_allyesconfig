; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/scpi-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/scpi-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.scpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scpi_data = type { ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_scpi_cpufreq__196_233_scpi_cpufreq_platdrv_init6 = internal global ptr @scpi_cpufreq_platdrv_init, section ".initcall6.init", align 4
@scpi_cpufreq_platdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @scpi_cpufreq_probe, ptr @scpi_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_scpi_cpufreq_platdrv_exit = internal global ptr @scpi_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias197 = internal constant [41 x i8] c"scpi_cpufreq.alias=platform:scpi-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [56 x i8] c"scpi_cpufreq.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [59 x i8] c"scpi_cpufreq.description=ARM SCPI CPUFreq interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file200 = internal constant [47 x i8] c"scpi_cpufreq.file=drivers/cpufreq/scpi-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [28 x i8] c"scpi_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpi-cpufreq\00", [19 x i8] zeroinitializer }, align 32
@scpi_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scpi_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"scpi-cpufreq\00\00\00\00", i16 44, ptr null, ptr @scpi_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @scpi_cpufreq_set_target, ptr null, ptr null, ptr null, ptr null, ptr @scpi_cpufreq_get_rate, ptr null, ptr null, ptr null, ptr null, ptr @scpi_cpufreq_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @cpufreq_register_em_with_opp }, [48 x i8] zeroinitializer }, align 32
@scpi_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: registering cpufreq failed, err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scpi_cpufreq_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/cpufreq/scpi-cpufreq.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scpi_cpufreq_probe._entry_ptr = internal global ptr @scpi_cpufreq_probe._entry, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@scpi_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013scpi_cpufreq: failed to get cpu%d device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scpi_cpufreq_init\00", [46 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry_ptr = internal global ptr @scpi_cpufreq_init._entry, section ".printk_index", align 4
@scpi_cpufreq_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 107, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add opps to the device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry_ptr.11 = internal global ptr @scpi_cpufreq_init._entry.8, section ".printk_index", align 4
@scpi_cpufreq_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 113, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get sharing cpumask\0A\00", [33 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry_ptr.14 = internal global ptr @scpi_cpufreq_init._entry.12, section ".printk_index", align 4
@scpi_cpufreq_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to mark OPPs as shared: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry_ptr.17 = internal global ptr @scpi_cpufreq_init._entry.15, section ".printk_index", align 4
@scpi_cpufreq_init.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.7, ptr @.str.3, ptr @.str.19, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scpi_cpufreq\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OPP table is not ready, deferring probe\0A\00", [55 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init cpufreq table: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry_ptr.22 = internal global ptr @scpi_cpufreq_init._entry.20, section ".printk_index", align 4
@scpi_cpufreq_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to get clk for cpu: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@scpi_cpufreq_init._entry_ptr.25 = internal global ptr @scpi_cpufreq_init._entry.23, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"scpi_cpufreq_platdrv\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 226, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 228, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"scpi_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 36, i32 25 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"scpi_cpufreq_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 190, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 214, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 101, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 107, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 113, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 119, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 126, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 139, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private constant [34 x i8] c"../drivers/cpufreq/scpi-cpufreq.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 146, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 108, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias197, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201, ptr @__exitcall_scpi_cpufreq_platdrv_exit, ptr @__initcall__kmod_scpi_cpufreq__196_233_scpi_cpufreq_platdrv_init6, ptr @scpi_cpufreq_init._entry, ptr @scpi_cpufreq_init._entry.12, ptr @scpi_cpufreq_init._entry.15, ptr @scpi_cpufreq_init._entry.20, ptr @scpi_cpufreq_init._entry.23, ptr @scpi_cpufreq_init._entry.8, ptr @scpi_cpufreq_init._entry_ptr, ptr @scpi_cpufreq_init._entry_ptr.11, ptr @scpi_cpufreq_init._entry_ptr.14, ptr @scpi_cpufreq_init._entry_ptr.17, ptr @scpi_cpufreq_init._entry_ptr.22, ptr @scpi_cpufreq_init._entry_ptr.25, ptr @scpi_cpufreq_platdrv_exit, ptr @scpi_cpufreq_probe._entry, ptr @scpi_cpufreq_probe._entry_ptr, ptr @scpi_cpufreq_platdrv, ptr @.str, ptr @scpi_ops, ptr @scpi_cpufreq_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_platdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scpi_cpufreq_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_platdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @scpi_cpufreq_platdrv, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scpi_cpufreq_platdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @scpi_cpufreq_platdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_scpi_ops() #8
  store ptr %call, ptr @scpi_ops, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @scpi_cpufreq_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @scpi_cpufreq_driver) #8
  store ptr null, ptr @scpi_ops, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_scpi_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  %freq_table = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq_table) #8
  %0 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %freq_table, align 4, !annotation !70
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %2) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr @scpi_ops, align 4
  %add_opps_to_device = getelementptr inbounds %struct.scpi_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %add_opps_to_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add_opps_to_device, align 4
  %call3 = tail call i32 %7(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %policy, align 4
  %10 = load ptr, ptr @scpi_ops, align 4
  %device_domain_id.i = getelementptr inbounds %struct.scpi_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %device_domain_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_domain_id.i, align 4
  %call.i = tail call i32 %12(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end15, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9
  %call125.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call125.i, i32 %13)
  %cmp226.i = icmp ult i32 %call125.i, %13
  br i1 %cmp226.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end16_crit_edge

for.cond.preheader.i.if.end16_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %id.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call127.i = phi i32 [ %call125.i, %for.body.lr.ph.i ], [ %call1.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call127.i, i32 %15)
  %cmp3.i = icmp eq i32 %call127.i, %15
  br i1 %cmp3.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %if.end5.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i

if.end5.i:                                        ; preds = %for.body.i
  %call6.i = tail call ptr @get_cpu_device(i32 noundef %call127.i) #8
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.for.cond.backedge.i_crit_edge, label %if.end8.i

if.end5.i.for.cond.backedge.i_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i

if.end8.i:                                        ; preds = %if.end5.i
  %16 = load ptr, ptr @scpi_ops, align 4
  %device_domain_id9.i = getelementptr inbounds %struct.scpi_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %device_domain_id9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device_domain_id9.i, align 4
  %call10.i = tail call i32 %18(ptr noundef nonnull %call6.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %call.i)
  %cmp11.i = icmp eq i32 %call10.i, %call.i
  br i1 %cmp11.i, label %if.then12.i, label %if.end8.i.for.cond.backedge.i_crit_edge

if.end8.i.for.cond.backedge.i_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call127.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %19, %call127.i
  br i1 %cmp.not.i.i.i.i, label %if.then12.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then12.i.cpumask_set_cpu.exit.i_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then12.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !71

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then12.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %call127.i, ptr noundef %9) #8
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_set_cpu.exit.i, %if.end8.i.for.cond.backedge.i_crit_edge, %if.end5.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call127.i, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2.i = icmp ult i32 %call1.i, %20
  br i1 %cmp2.i, label %for.cond.backedge.i.for.body.i_crit_edge, label %for.cond.backedge.i.if.end16_crit_edge

for.cond.backedge.i.if.end16_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end16:                                         ; preds = %for.cond.backedge.i.if.end16_crit_edge, %for.cond.preheader.i.if.end16_crit_edge
  %21 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %policy, align 4
  %call18 = tail call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %call, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, i32 noundef %call18) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp = icmp slt i32 %call25, 1
  br i1 %cmp, label %do.body27, label %if.end37

do.body27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scpi_cpufreq_init.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scpi_cpufreq_init, %if.then33)) #8
          to label %out_free_opp [label %if.then33], !srcloc !72

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scpi_cpufreq_init.__UNIQUE_ID_ddebug195, ptr noundef nonnull %call, ptr noundef nonnull @.str.19) #8
  br label %out_free_opp

if.end37:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 8) #13
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %if.end37.out_free_opp_crit_edge, label %if.end41

if.end37.out_free_opp_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_opp

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef nonnull %call, ptr noundef nonnull %freq_table) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.21, i32 noundef %call42) #11
  br label %out_free_priv

if.end48:                                         ; preds = %if.end41
  %cpu_dev49 = getelementptr inbounds %struct.scpi_data, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %cpu_dev49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %cpu_dev49, align 4
  %call50 = call ptr @clk_get(ptr noundef nonnull %call, ptr noundef null) #8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call50, ptr %call7.i.i, align 8
  %cmp.i112 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %do.end56, label %if.end59

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 30
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.7, i32 noundef %27) #11
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @dev_pm_opp_free_cpufreq_table(ptr noundef nonnull %call, ptr noundef nonnull %freq_table) #8
  br label %out_free_priv

if.end59:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %31 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %32 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %freq_table, align 4
  %freq_table60 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %34 = ptrtoint ptr %freq_table60 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %freq_table60, align 4
  %dvfs_possible_from_any_cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 31
  %35 = ptrtoint ptr %dvfs_possible_from_any_cpu to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dvfs_possible_from_any_cpu, align 4
  %36 = load ptr, ptr @scpi_ops, align 4
  %get_transition_latency = getelementptr inbounds %struct.scpi_ops, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %get_transition_latency to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_transition_latency, align 4
  %call61 = call i32 %38(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %spec.store.select = select i1 %tobool62.not, i32 -1, i32 %call61
  %transition_latency = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %transition_latency to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.store.select, ptr %transition_latency, align 4
  %fast_switch_possible = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 26
  %40 = ptrtoint ptr %fast_switch_possible to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %fast_switch_possible, align 4
  br label %cleanup

out_free_priv:                                    ; preds = %do.end56, %do.end47
  %ret.0 = phi i32 [ %call42, %do.end47 ], [ %30, %do.end56 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %out_free_opp

out_free_opp:                                     ; preds = %out_free_priv, %if.end37.out_free_opp_crit_edge, %if.then33, %do.body27
  %ret.1 = phi i32 [ %ret.0, %out_free_priv ], [ -517, %if.then33 ], [ -12, %if.end37.out_free_opp_crit_edge ], [ -517, %do.body27 ]
  call void @dev_pm_opp_remove_all_dynamic(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_opp, %if.end59, %do.end23, %do.end15, %do.end8, %do.end
  %retval.0 = phi i32 [ %call3, %do.end8 ], [ %call.i, %do.end15 ], [ %call18, %do.end23 ], [ %ret.1, %out_free_opp ], [ 0, %if.end59 ], [ -19, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq_table) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %0 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %1, i32 %index, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %mul = mul i32 %3, 1000
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %mul)
  %cmp.not = icmp eq i32 %call3, %mul
  %. = select i1 %cmp.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_get_rate(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %cpu) #8
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %div = udiv i32 %call1, 1000
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scpi_cpufreq_exit(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_put(ptr noundef %3) #8
  %cpu_dev = getelementptr inbounds %struct.scpi_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_dev, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %5, ptr noundef %freq_table) #8
  %6 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_dev, align 4
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef %7) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_register_em_with_opp(ptr nocapture noundef readonly %policy) #5 align 64 {
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
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_scpi_cpufreq__196_233_scpi_cpufreq_platdrv_init6, !1, !"__initcall__kmod_scpi_cpufreq__196_233_scpi_cpufreq_platdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 233, i32 1}
!2 = !{ptr @__exitcall_scpi_cpufreq_platdrv_exit, !1, !"__exitcall_scpi_cpufreq_platdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias197, !4, !"__UNIQUE_ID_alias197", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 235, i32 1}
!5 = !{ptr @__UNIQUE_ID_author198, !6, !"__UNIQUE_ID_author198", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 236, i32 1}
!7 = !{ptr @__UNIQUE_ID_description199, !8, !"__UNIQUE_ID_description199", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 237, i32 1}
!9 = !{ptr @__UNIQUE_ID_file200, !10, !"__UNIQUE_ID_file200", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 238, i32 1}
!11 = !{ptr @__UNIQUE_ID_license201, !10, !"__UNIQUE_ID_license201", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 228, i32 11}
!14 = !{ptr @scpi_cpufreq_platdrv, !15, !"scpi_cpufreq_platdrv", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 226, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 214, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @scpi_cpufreq_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @scpi_cpufreq_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @scpi_ops, !25, !"scpi_ops", i1 false, i1 false}
!25 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 36, i32 25}
!26 = !{ptr @scpi_cpufreq_driver, !27, !"scpi_cpufreq_driver", i1 false, i1 false}
!27 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 190, i32 30}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 101, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @scpi_cpufreq_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @scpi_cpufreq_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 107, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @scpi_cpufreq_init._entry.8, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @scpi_cpufreq_init._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 113, i32 3}
!40 = !{ptr @scpi_cpufreq_init._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @scpi_cpufreq_init._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 119, i32 3}
!44 = !{ptr @scpi_cpufreq_init._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @scpi_cpufreq_init._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 126, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @scpi_cpufreq_init.__UNIQUE_ID_ddebug195, !47, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 139, i32 3}
!52 = !{ptr @scpi_cpufreq_init._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @scpi_cpufreq_init._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/cpufreq/scpi-cpufreq.c", i32 146, i32 3}
!56 = !{ptr @scpi_cpufreq_init._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @scpi_cpufreq_init._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2148725546, i64 2148725551, i64 2148725564, i64 2148725608, i64 2148725642, i64 2148725663}
