; ModuleID = '/llk/IR_all_yes/drivers/thermal/cpufreq_cooling.c_pt.bc'
source_filename = "../drivers/thermal/cpufreq_cooling.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpufreq_cooling_register\22, \22a\22\09"
module asm "\09.weak\09__crc_cpufreq_cooling_register\09\09\09\09"
module asm "\09.long\09__crc_cpufreq_cooling_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_cpufreq_cooling_register\22, \22a\22\09"
module asm "\09.weak\09__crc_of_cpufreq_cooling_register\09\09\09\09"
module asm "\09.long\09__crc_of_cpufreq_cooling_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_cpufreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpufreq_cooling_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_cpufreq_cooling_unregister\09\09\09\09"
module asm "\09.long\09__crc_cpufreq_cooling_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cooling_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_cooling_device = type { i32, i32, i32, ptr, ptr, %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.em_perf_domain = type { ptr, i32, i32, [0 x i32] }
%struct.em_perf_state = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cooling_register to i32), ptr @__kstrtab_cpufreq_cooling_register, ptr @__kstrtabns_cpufreq_cooling_register }, section "___ksymtab_gpl+cpufreq_cooling_register", align 4
@of_cpufreq_cooling_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013cpufreq_cooling: OF node not available for cpu%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"of_cpufreq_cooling_register\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/thermal/cpufreq_cooling.c\00", [62 x i8] zeroinitializer }, align 32
@of_cpufreq_cooling_register._entry_ptr = internal global ptr @of_cpufreq_cooling_register._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#cooling-cells\00", [17 x i8] zeroinitializer }, align 32
@of_cpufreq_cooling_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013cpufreq_cooling: cpu%d failed to register as cooling device: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@of_cpufreq_cooling_register._entry_ptr.6 = internal global ptr @of_cpufreq_cooling_register._entry.4, section ".printk_index", align 4
@__kstrtab_of_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_cpufreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_cpufreq_cooling_register to i32), ptr @__kstrtab_of_cpufreq_cooling_register, ptr @__kstrtabns_of_cpufreq_cooling_register }, section "___ksymtab_gpl+of_cpufreq_cooling_register", align 4
@__kstrtab_cpufreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cooling_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cooling_unregister to i32), ptr @__kstrtab_cpufreq_cooling_unregister, ptr @__kstrtabns_cpufreq_cooling_unregister }, section "___ksymtab_gpl+cpufreq_cooling_unregister", align 4
@__cpufreq_cooling_register._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 526, ptr null, ptr null }, align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014No cpu device for cpu %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__cpufreq_cooling_register\00", [37 x i8] zeroinitializer }, align 32
@__cpufreq_cooling_register._entry_ptr = internal global ptr @__cpufreq_cooling_register._entry, section ".printk_index", align 4
@__cpufreq_cooling_register._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 531, ptr null, ptr null }, align 1
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: cpufreq policy isn't valid: %p\0A\00", [58 x i8] zeroinitializer }, align 32
@__cpufreq_cooling_register._entry_ptr.11 = internal global ptr @__cpufreq_cooling_register._entry.9, section ".printk_index", align 4
@__cpufreq_cooling_register.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: CPUFreq table not found or has no valid entries\0A\00", [43 x i8] zeroinitializer }, align 32
@cpufreq_cooling_ops = internal global { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @cpufreq_get_max_state, ptr @cpufreq_get_cur_state, ptr @cpufreq_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__cpufreq_cooling_register._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 569, ptr null, ptr null }, align 1
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: unsorted frequency tables are not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@__cpufreq_cooling_register._entry_ptr.16 = internal global ptr @__cpufreq_cooling_register._entry.14, section ".printk_index", align 4
@__cpufreq_cooling_register._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 579, ptr null, ptr null }, align 1
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Failed to add freq constraint (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@__cpufreq_cooling_register._entry_ptr.19 = internal global ptr @__cpufreq_cooling_register._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-%s\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@em_is_sane._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013The span of pd %*pbl is misaligned with cpufreq policy %*pbl\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"em_is_sane\00", [21 x i8] zeroinitializer }, align 32
@em_is_sane._entry_ptr = internal global ptr @em_is_sane._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@em_is_sane._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013The number of performance states in pd %*pbl (%u) doesn't match the number of cooling levels (%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@em_is_sane._entry_ptr.25 = internal global ptr @em_is_sane._entry.23, section ".printk_index", align 4
@__tracepoint_thermal_power_cpu_get_power = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/thermal.h\00", [33 x i8] zeroinitializer }, align 32
@trace_thermal_power_cpu_get_power.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_thermal_power_cpu_limit = external dso_local global %struct.tracepoint, align 4
@trace_thermal_power_cpu_limit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 651, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 656, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 661, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 526, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 531, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 537, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"cpufreq_cooling_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 490, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 568, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 578, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 585, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 336, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private constant [37 x i8] c"../drivers/thermal/cpufreq_cooling.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 344, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 108, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [34 x i8] c"../include/trace/events/thermal.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 95, i32 1 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__cpufreq_cooling_register._entry, ptr @__cpufreq_cooling_register._entry.14, ptr @__cpufreq_cooling_register._entry.17, ptr @__cpufreq_cooling_register._entry.9, ptr @__cpufreq_cooling_register._entry_ptr, ptr @__cpufreq_cooling_register._entry_ptr.11, ptr @__cpufreq_cooling_register._entry_ptr.16, ptr @__cpufreq_cooling_register._entry_ptr.19, ptr @__ksymtab_cpufreq_cooling_register, ptr @__ksymtab_cpufreq_cooling_unregister, ptr @__ksymtab_of_cpufreq_cooling_register, ptr @em_is_sane._entry, ptr @em_is_sane._entry.23, ptr @em_is_sane._entry_ptr, ptr @em_is_sane._entry_ptr.25, ptr @of_cpufreq_cooling_register._entry, ptr @of_cpufreq_cooling_register._entry.4, ptr @of_cpufreq_cooling_register._entry_ptr, ptr @of_cpufreq_cooling_register._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @cpufreq_cooling_ops, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cpufreq_cooling_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cpufreq_cooling_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_is_sane._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_is_sane._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpufreq_cooling_register(ptr noundef %policy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__cpufreq_cooling_register(ptr noundef null, ptr noundef %policy, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__cpufreq_cooling_register(ptr noundef %np, ptr noundef %policy, ptr noundef %em) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @get_cpu_device(i32 noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !73

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %policy, null
  %cmp.i = icmp ugt ptr %policy, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %policy) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %freq_table.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %4 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_table.i, align 4
  %tobool.not.i119 = icmp eq ptr %5, null
  br i1 %tobool.not.i119, label %if.end15.do.body19_crit_edge, label %if.end15.for.cond.i_crit_edge, !prof !73

if.end15.for.cond.i_crit_edge:                    ; preds = %if.end15
  br label %for.cond.i

if.end15.do.body19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

for.cond.i:                                       ; preds = %for.inc.i, %if.end15.for.cond.i_crit_edge
  %pos.0.i = phi ptr [ %incdec.ptr.i, %for.inc.i ], [ %5, %if.end15.for.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %count.1.i, %for.inc.i ], [ 0, %if.end15.for.cond.i_crit_edge ]
  %frequency.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.else.i [
    i32 -2, label %cpufreq_table_count_valid_entries.exit
    i32 -1, label %for.cond.i.for.inc.i_crit_edge
  ]

for.cond.i.for.inc.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %count.0.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.cond.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %if.else.i ], [ %count.0.i, %for.cond.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i, i32 1
  br label %for.cond.i

cpufreq_table_count_valid_entries.exit:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %tobool17.not = icmp eq i32 %count.0.i, 0
  br i1 %tobool17.not, label %cpufreq_table_count_valid_entries.exit.do.body19_crit_edge, label %if.end34

cpufreq_table_count_valid_entries.exit.do.body19_crit_edge: ; preds = %cpufreq_table_count_valid_entries.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body19

do.body19:                                        ; preds = %cpufreq_table_count_valid_entries.exit.do.body19_crit_edge, %if.end15.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cpufreq_cooling_register.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cpufreq_cooling_register, %if.then29)) #10
          to label %cleanup [label %if.then29], !srcloc !74

if.then29:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cpufreq_cooling_register.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end34:                                         ; preds = %cpufreq_table_count_valid_entries.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 48) #14
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %policy40 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %policy40 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %policy, ptr %policy40, align 8
  %sub = add i32 %count.0.i, -1
  %max_level = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %max_level to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %max_level, align 8
  %tobool.not.i121 = icmp eq ptr %em, null
  br i1 %tobool.not.i121, label %if.end39.if.else_crit_edge, label %if.end.i

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end.i:                                         ; preds = %if.end39
  %related_cpus.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 1
  %12 = ptrtoint ptr %related_cpus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %related_cpus.i, align 4
  %cpus.i = getelementptr inbounds %struct.em_perf_domain, ptr %em, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call13.i.i.i = tail call i32 @__bitmap_equal(ptr noundef %13, ptr noundef %cpus.i, i32 noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i.i)
  %tobool.i.not.i = icmp eq i32 %call13.i.i.i, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = ptrtoint ptr %related_cpus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %related_cpus.i, align 4
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %15, ptr noundef %cpus.i, i32 noundef %15, ptr noundef %17) #13
  br label %if.else

if.end10.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_level, align 8
  %add.i = add i32 %19, 1
  %nr_perf_states.i.i = getelementptr inbounds %struct.em_perf_domain, ptr %em, i32 0, i32 1
  %20 = ptrtoint ptr %nr_perf_states.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_perf_states.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add.i)
  %cmp.not.i = icmp eq i32 %21, %add.i
  br i1 %cmp.not.i, label %if.then47, label %do.end15.i

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %22, ptr noundef %cpus.i, i32 noundef %21, i32 noundef %add.i) #13
  br label %if.else

if.then47:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %em48 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %em48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %em, ptr %em48, align 4
  store ptr @cpufreq_get_requested_power, ptr getelementptr inbounds (%struct.thermal_cooling_device_ops, ptr @cpufreq_cooling_ops, i32 0, i32 3), align 4
  store ptr @cpufreq_state2power, ptr getelementptr inbounds (%struct.thermal_cooling_device_ops, ptr @cpufreq_cooling_ops, i32 0, i32 4), align 4
  store ptr @cpufreq_power2state, ptr getelementptr inbounds (%struct.thermal_cooling_device_ops, ptr @cpufreq_cooling_ops, i32 0, i32 5), align 4
  br label %if.end57

if.else:                                          ; preds = %do.end15.i, %do.end.i, %if.end39.if.else_crit_edge
  %freq_table_sorted = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 21
  %24 = ptrtoint ptr %freq_table_sorted to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %freq_table_sorted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %do.end52, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #13
  br label %free_idle_time

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.then47
  %constraints = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 17
  %qos_req = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %call7.i.i, i32 0, i32 5
  %em.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %em.i, align 4
  %tobool.not.i123 = icmp eq ptr %27, null
  br i1 %tobool.not.i123, label %if.end.i126, label %if.then.i

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_level, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %arrayidx.i = getelementptr %struct.em_perf_state, ptr %31, i32 %29
  br label %get_state_freq.exit

if.end.i126:                                      ; preds = %if.end57
  %32 = ptrtoint ptr %policy40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %policy40, align 8
  %freq_table_sorted.i = getelementptr inbounds %struct.cpufreq_policy, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %freq_table_sorted.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %freq_table_sorted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i125 = icmp eq i32 %35, 1
  br i1 %cmp.i125, label %if.then3.i, label %if.end.i126.if.end6.i_crit_edge

if.end.i126.if.end6.i_crit_edge:                  ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_level, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i126.if.end6.i_crit_edge
  %idx.0.i = phi i32 [ %37, %if.then3.i ], [ 0, %if.end.i126.if.end6.i_crit_edge ]
  %freq_table.i127 = getelementptr inbounds %struct.cpufreq_policy, ptr %33, i32 0, i32 20
  %38 = ptrtoint ptr %freq_table.i127 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %freq_table.i127, align 4
  %frequency8.i = getelementptr %struct.cpufreq_frequency_table, ptr %39, i32 %idx.0.i, i32 2
  br label %get_state_freq.exit

get_state_freq.exit:                              ; preds = %if.end6.i, %if.then.i
  %retval.0.in.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %frequency8.i, %if.end6.i ]
  %40 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %retval.0.i128 = load i32, ptr %retval.0.in.i, align 4
  %call59 = tail call i32 @freq_qos_add_request(ptr noundef %constraints, ptr noundef %qos_req, i32 noundef 2, i32 noundef %retval.0.i128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end68

do.end64:                                         ; preds = %get_state_freq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8, i32 noundef %call59) #13
  %41 = inttoptr i32 %call59 to ptr
  br label %free_idle_time

if.end68:                                         ; preds = %get_state_freq.exit
  %init_name.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i129 = icmp eq ptr %43, null
  br i1 %tobool.not.i129, label %if.end.i130, label %if.end68.dev_name.exit_crit_edge

if.end68.dev_name.exit_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i130:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i130, %if.end68.dev_name.exit_crit_edge
  %retval.0.i131 = phi ptr [ %45, %if.end.i130 ], [ %43, %if.end68.dev_name.exit_crit_edge ]
  %call71 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i131) #10
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %dev_name.exit.remove_qos_req_crit_edge, label %if.end74

dev_name.exit.remove_qos_req_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_qos_req

if.end74:                                         ; preds = %dev_name.exit
  %call75 = tail call ptr @thermal_of_cooling_device_register(ptr noundef %np, ptr noundef nonnull %call71, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cpufreq_cooling_ops) #10
  tail call void @kfree(ptr noundef nonnull %call71) #10
  %cmp.i132 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.end74.remove_qos_req_crit_edge, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74.remove_qos_req_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_qos_req

remove_qos_req:                                   ; preds = %if.end74.remove_qos_req_crit_edge, %dev_name.exit.remove_qos_req_crit_edge
  %cdev.0 = phi ptr [ %call75, %if.end74.remove_qos_req_crit_edge ], [ inttoptr (i32 -12 to ptr), %dev_name.exit.remove_qos_req_crit_edge ]
  %call80 = tail call i32 @freq_qos_remove_request(ptr noundef %qos_req) #10
  br label %free_idle_time

free_idle_time:                                   ; preds = %remove_qos_req, %do.end64, %do.end52
  %cdev.1 = phi ptr [ %41, %do.end64 ], [ %cdev.0, %remove_qos_req ], [ inttoptr (i32 -22 to ptr), %do.end52 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_idle_time, %if.end74.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then29, %do.body19, %do.end11, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end11 ], [ %cdev.1, %free_idle_time ], [ %call75, %if.end74.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.body19 ], [ inttoptr (i32 -19 to ptr), %if.then29 ], [ inttoptr (i32 -12 to ptr), %if.end34.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_cpufreq_cooling_register(ptr noundef %policy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call = tail call ptr @of_get_cpu_node(i32 noundef %1, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_find_property(ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef null) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then5:                                         ; preds = %if.end
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %call7 = tail call ptr @em_cpu_get(i32 noundef %5) #10
  %call8 = tail call fastcc ptr @__cpufreq_cooling_register(ptr noundef nonnull %call, ptr noundef %policy, ptr noundef %call7)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.then5.if.end19_crit_edge

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %8 = ptrtoint ptr %call8 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %7, i32 noundef %8) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end13, %if.then5.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %cdev.1 = phi ptr [ null, %if.end.if.end19_crit_edge ], [ null, %do.end13 ], [ %call8, %if.then5.if.end19_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  %retval.0 = phi ptr [ %cdev.1, %if.end19 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @em_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpufreq_cooling_unregister(ptr noundef %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %cdev) #10
  %qos_req = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 5
  %call = tail call i32 @freq_qos_remove_request(ptr noundef %qos_req) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_get_requested_power(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %policy1 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %policy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy1, align 4
  %cpu2 = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  %call = tail call i32 @cpufreq_quick_get(i32 noundef %5) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_get_power, i32 0, i32 1), ptr blockaddress(@cpufreq_get_requested_power, %if.end.i.i)) #10
          to label %if.end [label %if.end.i.i], !srcloc !74

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %related_cpus, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %8, i32 noundef %6) #10
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i.i, i32 4) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.i.i.if.end_crit_edge, label %if.end7.i.i, !prof !73

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #15
  br label %if.end

if.end:                                           ; preds = %if.end7.i.i, %if.end.i.i.if.end_crit_edge, %entry
  %load_cpu.0 = phi ptr [ null, %entry ], [ %call8.i.i, %if.end7.i.i ], [ null, %if.end.i.i.if.end_crit_edge ]
  %related_cpus6 = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %related_cpus6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %related_cpus6, align 4
  %call746 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %13) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call746, i32 %14)
  %cmp47 = icmp ult i32 %call746, %14
  br i1 %cmp47, label %cpu_online.exit.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cpu_online.exit.lr.ph:                            ; preds = %if.end
  %tobool.not = icmp eq ptr %load_cpu.0, null
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.end13.cpu_online.exit_crit_edge, %cpu_online.exit.lr.ph
  %call750 = phi i32 [ %call746, %cpu_online.exit.lr.ph ], [ %call7, %if.end13.cpu_online.exit_crit_edge ]
  %total_load.049 = phi i32 [ 0, %cpu_online.exit.lr.ph ], [ %add, %if.end13.cpu_online.exit_crit_edge ]
  %i.048 = phi i32 [ 0, %cpu_online.exit.lr.ph ], [ %inc, %if.end13.cpu_online.exit_crit_edge ]
  %div1.i.i.i = lshr i32 %call750, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i41 = and i32 %call750, 31
  %17 = shl nuw i32 1, %and.i.i.i41
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end11_crit_edge, label %if.then9

cpu_online.exit.if.end11_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call750
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, ptrtoint (ptr @cpu_scale to i32)
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %call1.i = tail call i32 @sched_cpu_util(i32 noundef %call750, i32 noundef %23) #10
  %mul.i = mul i32 %call1.i, 100
  %div.i = udiv i32 %mul.i, %23
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %cpu_online.exit.if.end11_crit_edge
  %load.0 = phi i32 [ %div.i, %if.then9 ], [ 0, %cpu_online.exit.if.end11_crit_edge ]
  %add = add i32 %load.0, %total_load.049
  br i1 %tobool.not, label %if.end11.if.end13_crit_edge, label %if.then12

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i32, ptr %load_cpu.0, i32 %i.048
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %load.0, ptr %arrayidx, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end11.if.end13_crit_edge
  %inc = add i32 %i.048, 1
  %25 = ptrtoint ptr %related_cpus6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %related_cpus6, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %call750, ptr noundef %26) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %27
  br i1 %cmp, label %if.end13.cpu_online.exit_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end13.cpu_online.exit_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %if.end13.for.end_crit_edge ]
  %total_load.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %if.end13.for.end_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %total_load.0.lcssa, ptr %1, align 4
  %max_level.i.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %max_level.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_level.i.i, align 4
  %em.i.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 3
  %31 = add i32 %30, -1
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %31, i32 -1) #10
  %32 = add nsw i32 %smin.i.i, 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.end
  %i.0.in.i.i = phi i32 [ %30, %for.end ], [ %i.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %for.body.i.i, label %for.cond.i.i.get_dynamic_power.exit_crit_edge

for.cond.i.i.get_dynamic_power.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_dynamic_power.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %33 = ptrtoint ptr %em.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %em.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %arrayidx.i.i42 = getelementptr %struct.em_perf_state, ptr %36, i32 %i.0.i.i
  %37 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i42, align 4
  %cmp1.i.i = icmp ult i32 %38, %call
  br i1 %cmp1.i.i, label %for.body.i.i.get_dynamic_power.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.get_dynamic_power.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_dynamic_power.exit

get_dynamic_power.exit:                           ; preds = %for.body.i.i.get_dynamic_power.exit_crit_edge, %for.cond.i.i.get_dynamic_power.exit_crit_edge
  %i.0.in.lcssa.i.i = phi i32 [ %i.0.in.i.i, %for.body.i.i.get_dynamic_power.exit_crit_edge ], [ %32, %for.cond.i.i.get_dynamic_power.exit_crit_edge ]
  %39 = ptrtoint ptr %em.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %em.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %power.i.i = getelementptr %struct.em_perf_state, ptr %42, i32 %i.0.in.lcssa.i.i, i32 1
  %43 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %power.i.i, align 4
  %mul.i43 = mul i32 %44, %total_load.0.lcssa
  %div.i44 = udiv i32 %mul.i43, 100
  %45 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div.i44, ptr %power, align 4
  %tobool15.not = icmp eq ptr %load_cpu.0, null
  br i1 %tobool15.not, label %get_dynamic_power.exit.if.end18_crit_edge, label %if.then16

get_dynamic_power.exit.if.end18_crit_edge:        ; preds = %get_dynamic_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %get_dynamic_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %related_cpus6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %related_cpus6, align 4
  tail call fastcc void @trace_thermal_power_cpu_get_power(ptr noundef %47, i32 noundef %call, ptr noundef nonnull %load_cpu.0, i32 noundef %i.0.lcssa, i32 noundef %div.i44)
  tail call void @kfree(ptr noundef nonnull %load_cpu.0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %get_dynamic_power.exit.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_state2power(ptr nocapture noundef readonly %cdev, i32 noundef %state, ptr nocapture noundef writeonly %power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_level = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp ult i32 %3, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %policy = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %policy, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %8, i32 noundef %4) #10
  %9 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_level, align 4
  %sub = sub i32 %10, %state
  %em = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %em to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %em, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx = getelementptr %struct.em_perf_state, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = add i32 %10, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %17, i32 -1) #10
  %18 = add nsw i32 %smin.i, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.i
  %i.0.in.i = phi i32 [ %10, %if.end.i.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.cpu_freq_to_power.exit_crit_edge

for.cond.i.cpu_freq_to_power.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_freq_to_power.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.em_perf_state, ptr %14, i32 %i.0.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp ult i32 %20, %16
  br i1 %cmp1.i, label %for.body.i.cpu_freq_to_power.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.cpu_freq_to_power.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_freq_to_power.exit

cpu_freq_to_power.exit:                           ; preds = %for.body.i.cpu_freq_to_power.exit_crit_edge, %for.cond.i.cpu_freq_to_power.exit_crit_edge
  %i.0.in.lcssa.i = phi i32 [ %i.0.in.i, %for.body.i.cpu_freq_to_power.exit_crit_edge ], [ %18, %for.cond.i.cpu_freq_to_power.exit_crit_edge ]
  %power.i = getelementptr %struct.em_perf_state, ptr %14, i32 %i.0.in.lcssa.i, i32 1
  %21 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %power.i, align 4
  %mul = mul i32 %22, %call4.i.i
  %23 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %power, align 4
  br label %cleanup

cleanup:                                          ; preds = %cpu_freq_to_power.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpu_freq_to_power.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_power2state(ptr nocapture noundef readonly %cdev, i32 noundef %power, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %policy1 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %policy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %policy1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 1, i32 %5
  %mul = mul i32 %power, 100
  %div = udiv i32 %mul, %.
  %max_level.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %max_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.i = icmp sgt i32 %7, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %entry.cpu_power_to_freq.exit_crit_edge

entry.cpu_power_to_freq.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_power_to_freq.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %em.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %em.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ %7, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %power1.i = getelementptr %struct.em_perf_state, ptr %11, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %power1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div)
  %cmp2.not.i = icmp ugt i32 %13, %div
  br i1 %cmp2.not.i, label %for.inc.i, label %for.body.i.cpu_power_to_freq.exit_crit_edge

for.body.i.cpu_power_to_freq.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_power_to_freq.exit

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.012.i, -1
  %cmp.i = icmp sgt i32 %i.012.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cpu_power_to_freq.exit_crit_edge

for.inc.i.cpu_power_to_freq.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_power_to_freq.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cpu_power_to_freq.exit:                           ; preds = %for.inc.i.cpu_power_to_freq.exit_crit_edge, %for.body.i.cpu_power_to_freq.exit_crit_edge, %entry.cpu_power_to_freq.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %7, %entry.cpu_power_to_freq.exit_crit_edge ], [ 0, %for.inc.i.cpu_power_to_freq.exit_crit_edge ], [ %i.012.i, %for.body.i.cpu_power_to_freq.exit_crit_edge ]
  %em3.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %em3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %em3.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %arrayidx5.i = getelementptr %struct.em_perf_state, ptr %17, i32 %i.0.lcssa.i
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i, align 4
  %20 = add i32 %7, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %20, i32 -1) #10
  %21 = add nsw i32 %smin.i, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i13.for.cond.i_crit_edge, %cpu_power_to_freq.exit
  %i.0.in.i = phi i32 [ %7, %cpu_power_to_freq.exit ], [ %i.0.i, %for.body.i13.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i12 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i12, label %for.body.i13, label %for.cond.i.get_level.exit_crit_edge

for.cond.i.get_level.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_level.exit

for.body.i13:                                     ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.em_perf_state, ptr %17, i32 %i.0.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp ult i32 %23, %19
  br i1 %cmp1.i, label %for.body.i13.get_level.exit_crit_edge, label %for.body.i13.for.cond.i_crit_edge

for.body.i13.for.cond.i_crit_edge:                ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i13.get_level.exit_crit_edge:            ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_level.exit

get_level.exit:                                   ; preds = %for.body.i13.get_level.exit_crit_edge, %for.cond.i.get_level.exit_crit_edge
  %i.0.in.lcssa.i = phi i32 [ %i.0.in.i, %for.body.i13.get_level.exit_crit_edge ], [ %21, %for.cond.i.get_level.exit_crit_edge ]
  %sub4.i = sub i32 %7, %i.0.in.lcssa.i
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub4.i, ptr %state, align 4
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %related_cpus, align 4
  tail call fastcc void @trace_thermal_power_cpu_limit(ptr noundef %26, i32 noundef %19, i32 noundef %sub4.i, i32 noundef %power)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_get_max_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_level = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_level, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %cpufreq_state = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpufreq_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpufreq_state, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_level = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp ult i32 %3, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpufreq_state = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cpufreq_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpufreq_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %state)
  %cmp1 = icmp eq i32 %5, %state
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %em.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %em.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %em.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %3, %state
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx.i = getelementptr %struct.em_perf_state, ptr %9, i32 %sub.i
  br label %get_state_freq.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %policy2.i = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %policy2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policy2.i, align 4
  %freq_table_sorted.i = getelementptr inbounds %struct.cpufreq_policy, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %freq_table_sorted.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq_table_sorted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  %sub5.i = sub i32 %3, %state
  %spec.select = select i1 %cmp.i, i32 %sub5.i, i32 %state
  %freq_table.i = getelementptr inbounds %struct.cpufreq_policy, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %freq_table.i, align 4
  %frequency8.i = getelementptr %struct.cpufreq_frequency_table, ptr %15, i32 %spec.select, i32 2
  br label %get_state_freq.exit

get_state_freq.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %frequency8.i, %if.end.i ]
  %16 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %qos_req = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @freq_qos_update_request(ptr noundef %qos_req, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, -1
  br i1 %cmp5, label %if.then6, label %get_state_freq.exit.cleanup_crit_edge

get_state_freq.exit.cleanup_crit_edge:            ; preds = %get_state_freq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %get_state_freq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %cpufreq_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %state, ptr %cpufreq_state, align 4
  %policy = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %policy, align 4
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %related_cpus, align 4
  tail call void @topology_update_thermal_pressure(ptr noundef %21, i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %get_state_freq.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ %call4, %get_state_freq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_update_thermal_pressure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_quick_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_power_cpu_get_power(ptr noundef %cpus, i32 noundef %freq, ptr noundef %load, i32 noundef %load_len, i32 noundef %dynamic_power) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_get_power, i32 0, i32 1), ptr blockaddress(@trace_thermal_power_cpu_get_power, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !74

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %call42 = tail call i32 @__traceiter_thermal_power_cpu_get_power(ptr noundef null, ptr noundef %cpus, i32 noundef %freq, ptr noundef %load, i32 noundef %load_len, i32 noundef %dynamic_power) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_get_power, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_get_power, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_thermal_power_cpu_get_power.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_thermal_power_cpu_get_power.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 123, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %31 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_util(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_thermal_power_cpu_get_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_power_cpu_limit(ptr noundef %cpus, i32 noundef %freq, i32 noundef %cdev_state, i32 noundef %power) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_limit, i32 0, i32 1), ptr blockaddress(@trace_thermal_power_cpu_limit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !74

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  %call42 = tail call i32 @__traceiter_thermal_power_cpu_limit(ptr noundef null, ptr noundef %cpus, i32 noundef %freq, i32 noundef %cdev_state, i32 noundef %power) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %13 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_limit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_limit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_thermal_power_cpu_limit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_thermal_power_cpu_limit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 149, ptr noundef nonnull @.str.28) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %31 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_thermal_power_cpu_limit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__ksymtab_cpufreq_cooling_register, !1, !"__ksymtab_cpufreq_cooling_register", i1 false, i1 false}
!1 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 623, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 651, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @of_cpufreq_cooling_register._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @of_cpufreq_cooling_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 656, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 661, i32 4}
!12 = !{ptr @of_cpufreq_cooling_register._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_cpufreq_cooling_register._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_of_cpufreq_cooling_register, !15, !"__ksymtab_of_cpufreq_cooling_register", i1 false, i1 false}
!15 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 670, i32 1}
!16 = !{ptr @__ksymtab_cpufreq_cooling_unregister, !17, !"__ksymtab_cpufreq_cooling_unregister", i1 false, i1 false}
!17 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 692, i32 1}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 526, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__cpufreq_cooling_register._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @__cpufreq_cooling_register._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 531, i32 3}
!25 = !{ptr @__cpufreq_cooling_register._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @__cpufreq_cooling_register._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 537, i32 3}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__cpufreq_cooling_register.__UNIQUE_ID_ddebug210, !28, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 568, i32 3}
!33 = !{ptr @__cpufreq_cooling_register._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @__cpufreq_cooling_register._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 578, i32 3}
!37 = !{ptr @__cpufreq_cooling_register._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @__cpufreq_cooling_register._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 585, i32 31}
!41 = !{ptr @cpufreq_cooling_ops, !42, !"cpufreq_cooling_ops", i1 false, i1 false}
!42 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 490, i32 42}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 336, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @em_is_sane._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @em_is_sane._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/thermal/cpufreq_cooling.c", i32 344, i32 3}
!50 = !{ptr @em_is_sane._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @em_is_sane._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/trace/events/thermal.h", i32 95, i32 1}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/trace/events/thermal.h", i32 125, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2148307617, i64 2148307622, i64 2148307635, i64 2148307679, i64 2148307713, i64 2148307734}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2153125958}
!77 = !{i64 2153126257}
!78 = !{i64 2149330297}
!79 = !{i64 2149331333}
!80 = !{i64 2153148564}
!81 = !{i64 2153148831}
