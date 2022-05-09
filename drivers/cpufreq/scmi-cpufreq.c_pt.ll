; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/scmi-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/scmi-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.scmi_data = type { i32, i32, ptr, ptr }
%struct.scmi_perf_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.em_data_callback = type { ptr }

@__initcall__kmod_scmi_cpufreq__195_332_scmi_cpufreq_drv_init6 = internal global ptr @scmi_cpufreq_drv_init, section ".initcall6.init", align 4
@scmi_cpufreq_drv = internal global { %struct.scmi_driver, [36 x i8] } { %struct.scmi_driver { ptr @.str.1, ptr @scmi_cpufreq_probe, ptr @scmi_cpufreq_remove, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_scmi_cpufreq_drv_exit = internal global ptr @scmi_cpufreq_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author196 = internal constant [56 x i8] c"scmi_cpufreq.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [59 x i8] c"scmi_cpufreq.description=ARM SCMI CPUFreq interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [47 x i8] c"scmi_cpufreq.file=drivers/cpufreq/scmi-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [28 x i8] c"scmi_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scmi_cpufreq\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scmi-cpufreq\00", [19 x i8] zeroinitializer }, align 32
@scmi_id_table = internal constant { [2 x %struct.scmi_device_id], [16 x i8] } { [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 19, ptr @.str.27 }, %struct.scmi_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@ph = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@perf_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@scmi_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"scmi\00\00\00\00\00\00\00\00\00\00\00\00", i16 44, ptr null, ptr @scmi_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @scmi_cpufreq_set_target, ptr @scmi_cpufreq_fast_switch, ptr null, ptr null, ptr null, ptr @scmi_cpufreq_get_rate, ptr null, ptr null, ptr null, ptr null, ptr @scmi_cpufreq_exit, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr @scmi_cpufreq_register_em }, [48 x i8] zeroinitializer }, align 32
@scmi_cpufreq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 309, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: registering cpufreq failed, err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scmi_cpufreq_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/cpufreq/scmi-cpufreq.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_cpufreq_probe._entry_ptr = internal global ptr @scmi_cpufreq_probe._entry, section ".printk_index", align 4
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@scmi_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013scmi_cpufreq: failed to get cpu%d device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scmi_cpufreq_init\00", [46 x i8] zeroinitializer }, align 32
@scmi_cpufreq_init._entry_ptr = internal global ptr @scmi_cpufreq_init._entry, section ".printk_index", align 4
@scmi_cpufreq_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 147, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get sharing cpumask\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scmi_cpufreq_init._entry_ptr.13 = internal global ptr @scmi_cpufreq_init._entry.10, section ".printk_index", align 4
@scmi_cpufreq_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.5, i32 175, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to add opps to the device\0A\00", [62 x i8] zeroinitializer }, align 32
@scmi_cpufreq_init._entry_ptr.16 = internal global ptr @scmi_cpufreq_init._entry.14, section ".printk_index", align 4
@scmi_cpufreq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.5, i32 182, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: No OPPs for this device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@scmi_cpufreq_init._entry_ptr.19 = internal global ptr @scmi_cpufreq_init._entry.17, section ".printk_index", align 4
@scmi_cpufreq_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.5, i32 191, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to mark OPPs as shared: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@scmi_cpufreq_init._entry_ptr.22 = internal global ptr @scmi_cpufreq_init._entry.20, section ".printk_index", align 4
@scmi_cpufreq_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.5, i32 201, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init cpufreq table: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@scmi_cpufreq_init._entry_ptr.25 = internal global ptr @scmi_cpufreq_init._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpufreq\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"scmi_cpufreq_drv\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 326, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 332, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 327, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"scmi_id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 320, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [3 x i8] c"ph\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 30, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"perf_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 31, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 302, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"scmi_cpufreq_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 270, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 308, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 131, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 147, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 175, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 181, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 190, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 201, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [34 x i8] c"../drivers/cpufreq/scmi-cpufreq.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 321, i32 24 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199, ptr @__exitcall_scmi_cpufreq_drv_exit, ptr @__initcall__kmod_scmi_cpufreq__195_332_scmi_cpufreq_drv_init6, ptr @scmi_cpufreq_drv_exit, ptr @scmi_cpufreq_init._entry, ptr @scmi_cpufreq_init._entry.10, ptr @scmi_cpufreq_init._entry.14, ptr @scmi_cpufreq_init._entry.17, ptr @scmi_cpufreq_init._entry.20, ptr @scmi_cpufreq_init._entry.23, ptr @scmi_cpufreq_init._entry_ptr, ptr @scmi_cpufreq_init._entry_ptr.13, ptr @scmi_cpufreq_init._entry_ptr.16, ptr @scmi_cpufreq_init._entry_ptr.19, ptr @scmi_cpufreq_init._entry_ptr.22, ptr @scmi_cpufreq_init._entry_ptr.25, ptr @scmi_cpufreq_probe._entry, ptr @scmi_cpufreq_probe._entry_ptr, ptr @scmi_cpufreq_drv, ptr @.str, ptr @.str.1, ptr @scmi_id_table, ptr @ph, ptr @perf_ops, ptr @.str.2, ptr @scmi_cpufreq_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_drv to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_cpufreq_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_cpufreq_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_cpufreq_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_cpufreq_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_probe(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %handle2 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle2, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %devm_protocol_get = getelementptr inbounds %struct.scmi_handle, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devm_protocol_get, align 4
  %call = tail call ptr %3(ptr noundef %sdev, i8 noundef zeroext 19, ptr noundef nonnull @ph) #7
  store ptr %call, ptr @perf_ops, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef null) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %call12 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @scmi_cpufreq_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end11.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ -19, %entry.cleanup_crit_edge ], [ %call12, %do.end ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_cpufreq_remove(ptr nocapture noundef readnone %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @scmi_cpufreq_driver) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  %freq_table = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq_table) #7
  %0 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %freq_table, align 4, !annotation !73
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %2) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %opp_shared_cpus = getelementptr inbounds %struct.scmi_data, ptr %call7.i.i, i32 0, i32 3
  %call7 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %opp_shared_cpus, i32 noundef 3264) #7
  br i1 %call7, label %if.end9, label %if.end6.out_free_priv_crit_edge

if.end6.out_free_priv_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_priv

if.end9:                                          ; preds = %if.end6
  %6 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %policy, align 4
  %8 = load ptr, ptr @perf_ops, align 4
  %device_domain_id.i = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %device_domain_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_domain_id.i, align 4
  %call.i = tail call i32 %10(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end15, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9
  %call125.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call125.i, i32 %11)
  %cmp226.i = icmp ult i32 %call125.i, %11
  br i1 %cmp226.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end16_crit_edge

for.cond.preheader.i.if.end16_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %id.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call127.i = phi i32 [ %call125.i, %for.body.lr.ph.i ], [ %call1.i, %for.cond.backedge.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call127.i, i32 %13)
  %cmp3.i = icmp eq i32 %call127.i, %13
  br i1 %cmp3.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %if.end5.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.end5.i:                                        ; preds = %for.body.i
  %call6.i = tail call ptr @get_cpu_device(i32 noundef %call127.i) #7
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end5.i.for.cond.backedge.i_crit_edge, label %if.end8.i

if.end5.i.for.cond.backedge.i_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.end8.i:                                        ; preds = %if.end5.i
  %14 = load ptr, ptr @perf_ops, align 4
  %device_domain_id9.i = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %device_domain_id9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_domain_id9.i, align 4
  %call10.i = tail call i32 %16(ptr noundef nonnull %call6.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %call.i)
  %cmp11.i = icmp eq i32 %call10.i, %call.i
  br i1 %cmp11.i, label %if.then12.i, label %if.end8.i.for.cond.backedge.i_crit_edge

if.end8.i.for.cond.backedge.i_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.backedge.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call127.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %17, %call127.i
  br i1 %cmp.not.i.i.i.i, label %if.then12.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then12.i.cpumask_set_cpu.exit.i_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then12.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !74

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then12.i.cpumask_set_cpu.exit.i_crit_edge
  tail call void @_set_bit(i32 noundef %call127.i, ptr noundef %7) #7
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %cpumask_set_cpu.exit.i, %if.end8.i.for.cond.backedge.i_crit_edge, %if.end5.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call127.i, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2.i = icmp ult i32 %call1.i, %18
  br i1 %cmp2.i, label %for.cond.backedge.i.for.body.i_crit_edge, label %for.cond.backedge.i.if.end16_crit_edge

for.cond.backedge.i.if.end16_crit_edge:           ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.11) #10
  br label %out_free_cpumask

if.end16:                                         ; preds = %for.cond.backedge.i.if.end16_crit_edge, %for.cond.preheader.i.if.end16_crit_edge
  %19 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %opp_shared_cpus, align 4
  %call18 = tail call i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef nonnull %call, ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end.i.i, label %if.end16.if.then23_crit_edge

if.end16.if.then23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.end.i.i:                                       ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %opp_shared_cpus, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %23, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool22.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool22.not, label %if.end.i.i.if.then23_crit_edge, label %if.end.i.i.if.end26_crit_edge

if.end.i.i.if.end26_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end.i.i.if.then23_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %if.end.i.i.if.then23_crit_edge, %if.end16.if.then23_crit_edge
  %24 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %opp_shared_cpus, align 4
  %26 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %policy, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i122 = add i32 %28, 31
  %29 = lshr i32 %sub.i.i122, 3
  %mul.i.i = and i32 %29, 536870908
  %30 = call ptr @memcpy(ptr %25, ptr %27, i32 %mul.i.i)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end.i.i.if.end26_crit_edge
  %call27 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp = icmp slt i32 %call27, 1
  br i1 %cmp, label %if.then28, label %if.end26.if.end52_crit_edge

if.end26.if.end52_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then28:                                        ; preds = %if.end26
  %31 = load ptr, ptr @perf_ops, align 4
  %device_opps_add = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %device_opps_add to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_opps_add, align 4
  %34 = load ptr, ptr @ph, align 4
  %call29 = tail call i32 %33(ptr noundef %34, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.15) #10
  br label %out_free_cpumask

if.end35:                                         ; preds = %if.then28
  %call36 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, i32 noundef %call36) #10
  br label %out_free_opp

if.end42:                                         ; preds = %if.end35
  %35 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %opp_shared_cpus, align 4
  %call44 = tail call i32 @dev_pm_opp_set_sharing_cpus(ptr noundef nonnull %call, ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end50, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.9, i32 noundef %call44) #10
  br label %out_free_opp

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %nr_opp51 = getelementptr inbounds %struct.scmi_data, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %nr_opp51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call36, ptr %nr_opp51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %if.end26.if.end52_crit_edge
  %call53 = call i32 @dev_pm_opp_init_cpufreq_table(ptr noundef nonnull %call, ptr noundef nonnull %freq_table) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end59, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.24, i32 noundef %call53) #10
  br label %out_free_opp

if.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %cpu_dev60 = getelementptr inbounds %struct.scmi_data, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %cpu_dev60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call, ptr %cpu_dev60, align 8
  %39 = load ptr, ptr @perf_ops, align 4
  %device_domain_id = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %device_domain_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_domain_id, align 4
  %call61 = call i32 %41(ptr noundef nonnull %call) #7
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call61, ptr %call7.i.i, align 8
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %43 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %driver_data, align 4
  %44 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %freq_table, align 4
  %freq_table62 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %46 = ptrtoint ptr %freq_table62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %freq_table62, align 4
  %dvfs_possible_from_any_cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 31
  %47 = ptrtoint ptr %dvfs_possible_from_any_cpu to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %dvfs_possible_from_any_cpu, align 4
  %48 = load ptr, ptr @perf_ops, align 4
  %transition_latency_get = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %transition_latency_get to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %transition_latency_get, align 4
  %51 = load ptr, ptr @ph, align 4
  %call63 = call i32 %50(ptr noundef %51, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  %spec.store.select = select i1 %tobool64.not, i32 -1, i32 %call63
  %transition_latency = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %transition_latency to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.store.select, ptr %transition_latency, align 4
  %53 = load ptr, ptr @perf_ops, align 4
  %fast_switch_possible = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %fast_switch_possible to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fast_switch_possible, align 4
  %56 = load ptr, ptr @ph, align 4
  %call67 = call zeroext i1 %55(ptr noundef %56, ptr noundef nonnull %call) #7
  %fast_switch_possible68 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 26
  %frombool = zext i1 %call67 to i8
  %57 = ptrtoint ptr %fast_switch_possible68 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool, ptr %fast_switch_possible68, align 4
  br label %cleanup

out_free_opp:                                     ; preds = %do.end58, %do.end49, %do.end41
  %ret.0 = phi i32 [ -19, %do.end41 ], [ %call44, %do.end49 ], [ %call53, %do.end58 ]
  call void @dev_pm_opp_remove_all_dynamic(ptr noundef nonnull %call) #7
  br label %out_free_cpumask

out_free_cpumask:                                 ; preds = %out_free_opp, %do.end34, %do.end15
  %ret.1 = phi i32 [ %call.i, %do.end15 ], [ %call29, %do.end34 ], [ %ret.0, %out_free_opp ]
  %58 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %opp_shared_cpus, align 4
  call void @free_cpumask_var(ptr noundef %59) #7
  br label %out_free_priv

out_free_priv:                                    ; preds = %out_free_cpumask, %if.end6.out_free_priv_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_free_cpumask ], [ -12, %if.end6.out_free_priv_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_priv, %if.end59, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %out_free_priv ], [ 0, %if.end59 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq_table) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %2 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freq_table, align 4
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %3, i32 %index, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  %6 = load ptr, ptr @perf_ops, align 4
  %freq_set = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %freq_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %freq_set, align 4
  %9 = load ptr, ptr @ph, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %mul = mul i32 %5, 1000
  %call = tail call i32 %8(ptr noundef %9, i32 noundef %11, i32 noundef %mul, i1 noundef zeroext false) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_fast_switch(ptr nocapture noundef readonly %policy, i32 noundef %target_freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = load ptr, ptr @perf_ops, align 4
  %freq_set = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %freq_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %freq_set, align 4
  %5 = load ptr, ptr @ph, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %mul = mul i32 %target_freq, 1000
  %call = tail call i32 %4(ptr noundef %5, i32 noundef %7, i32 noundef %mul, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %target_freq. = select i1 %tobool.not, i32 %target_freq, i32 0
  ret i32 %target_freq.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_get_rate(i32 noundef %cpu) #2 align 64 {
entry:
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_cpu_get_raw(i32 noundef %cpu) #7
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate, align 4, !annotation !73
  %3 = load ptr, ptr @perf_ops, align 4
  %freq_get = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %freq_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_get, align 4
  %6 = load ptr, ptr @ph, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %rate, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate, align 4
  %div = udiv i32 %10, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_cpufreq_exit(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cpu_dev = getelementptr inbounds %struct.scmi_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_dev, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  tail call void @dev_pm_opp_free_cpufreq_table(ptr noundef %3, ptr noundef %freq_table) #7
  %4 = ptrtoint ptr %cpu_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_dev, align 4
  tail call void @dev_pm_opp_remove_all_dynamic(ptr noundef %5) #7
  %opp_shared_cpus = getelementptr inbounds %struct.scmi_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opp_shared_cpus, align 4
  tail call void @free_cpumask_var(ptr noundef %7) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_cpufreq_register_em(ptr nocapture noundef readonly %policy) #2 align 64 {
entry:
  %em_cb = alloca %struct.em_data_callback, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em_cb) #7
  %0 = ptrtoint ptr %em_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 ptrtoint (ptr @scmi_get_cpu_power to i32), ptr %em_cb, align 4
  %1 = load ptr, ptr @perf_ops, align 4
  %power_scale_mw_get = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %power_scale_mw_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_scale_mw_get, align 4
  %4 = load ptr, ptr @ph, align 4
  %call = tail call zeroext i1 %3(ptr noundef %4) #7
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data, align 4
  %nr_opp = getelementptr inbounds %struct.scmi_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nr_opp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_opp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %call1 = tail call ptr @get_cpu_device(i32 noundef %10) #7
  %11 = ptrtoint ptr %nr_opp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_opp, align 4
  %opp_shared_cpus = getelementptr inbounds %struct.scmi_data, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %opp_shared_cpus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %opp_shared_cpus, align 4
  %call4 = call i32 @em_dev_register_perf_domain(ptr noundef %call1, i32 noundef %12, ptr noundef nonnull %em_cb, ptr noundef %14, i1 noundef zeroext %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em_cb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_get_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_free_cpufreq_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_get_cpu_power(ptr noundef %power, ptr nocapture noundef %KHz, ptr noundef %cpu_dev) #2 align 64 {
entry:
  %Hz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Hz) #7
  %0 = load ptr, ptr @perf_ops, align 4
  %device_domain_id = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %device_domain_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_domain_id, align 4
  %call = tail call i32 %2(ptr noundef %cpu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %KHz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %KHz, align 4
  %mul = mul i32 %4, 1000
  %5 = ptrtoint ptr %Hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %Hz, align 4
  %6 = load ptr, ptr @perf_ops, align 4
  %est_power_get = getelementptr inbounds %struct.scmi_perf_proto_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %est_power_get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %est_power_get, align 4
  %9 = load ptr, ptr @ph, align 4
  %call1 = call i32 %8(ptr noundef %9, i32 noundef %call, ptr noundef nonnull %Hz, ptr noundef %power) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %Hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %Hz, align 4
  %div = udiv i32 %11, 1000
  %12 = ptrtoint ptr %KHz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %KHz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Hz) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em_dev_register_perf_domain(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_scmi_cpufreq__195_332_scmi_cpufreq_drv_init6, !1, !"__initcall__kmod_scmi_cpufreq__195_332_scmi_cpufreq_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 332, i32 1}
!2 = !{ptr @__exitcall_scmi_cpufreq_drv_exit, !1, !"__exitcall_scmi_cpufreq_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author196, !4, !"__UNIQUE_ID_author196", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 334, i32 1}
!5 = !{ptr @__UNIQUE_ID_description197, !6, !"__UNIQUE_ID_description197", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 335, i32 1}
!7 = !{ptr @__UNIQUE_ID_file198, !8, !"__UNIQUE_ID_file198", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 336, i32 1}
!9 = !{ptr @__UNIQUE_ID_license199, !8, !"__UNIQUE_ID_license199", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 327, i32 11}
!13 = !{ptr @scmi_cpufreq_drv, !14, !"scmi_cpufreq_drv", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 326, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 302, i32 37}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 308, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @scmi_cpufreq_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @scmi_cpufreq_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ph, !26, !"ph", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 30, i32 37}
!27 = !{ptr @perf_ops, !28, !"perf_ops", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 31, i32 42}
!29 = !{ptr @scmi_cpufreq_driver, !30, !"scmi_cpufreq_driver", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 270, i32 30}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 131, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @scmi_cpufreq_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @scmi_cpufreq_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 147, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @scmi_cpufreq_init._entry.10, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @scmi_cpufreq_init._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 175, i32 4}
!43 = !{ptr @scmi_cpufreq_init._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @scmi_cpufreq_init._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 181, i32 4}
!47 = !{ptr @scmi_cpufreq_init._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @scmi_cpufreq_init._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 190, i32 4}
!51 = !{ptr @scmi_cpufreq_init._entry.20, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @scmi_cpufreq_init._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 201, i32 3}
!55 = !{ptr @scmi_cpufreq_init._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @scmi_cpufreq_init._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 321, i32 24}
!62 = !{ptr @scmi_id_table, !63, !"scmi_id_table", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/scmi-cpufreq.c", i32 320, i32 36}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{!"branch_weights", i32 2000, i32 1}
