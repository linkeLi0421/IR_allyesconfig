; ModuleID = '/llk/IR_all_yes/drivers/thermal/devfreq_cooling.c_pt.bc'
source_filename = "../drivers/thermal/devfreq_cooling.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_devfreq_cooling_register_power\22, \22a\22\09"
module asm "\09.weak\09__crc_of_devfreq_cooling_register_power\09\09\09\09"
module asm "\09.long\09__crc_of_devfreq_cooling_register_power\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_devfreq_cooling_register_power:\09\09\09\09\09"
module asm "\09.asciz \09\22of_devfreq_cooling_register_power\22\09\09\09\09\09"
module asm "__kstrtabns_of_devfreq_cooling_register_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_devfreq_cooling_register\22, \22a\22\09"
module asm "\09.weak\09__crc_of_devfreq_cooling_register\09\09\09\09"
module asm "\09.long\09__crc_of_devfreq_cooling_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_devfreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devfreq_cooling_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_cooling_register\09\09\09\09"
module asm "\09.long\09__crc_devfreq_cooling_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devfreq_cooling_em_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_cooling_em_register\09\09\09\09"
module asm "\09.long\09__crc_devfreq_cooling_em_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_cooling_em_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_cooling_em_register\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_cooling_em_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devfreq_cooling_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devfreq_cooling_unregister\09\09\09\09"
module asm "\09.long\09__crc_devfreq_cooling_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_cooling_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.43, ptr }
%union.anon.43 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_cooling_device = type { ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.dev_pm_qos_request, ptr }
%struct.em_perf_domain = type { ptr, i32, i32, [0 x i32] }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.em_perf_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@devfreq_cooling_ops = internal global { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @devfreq_cooling_get_max_state, ptr @devfreq_cooling_get_cur_state, ptr @devfreq_cooling_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_devfreq_cooling_register_power.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"of_devfreq_cooling_register_power\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/thermal/devfreq_cooling.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing EM for cooling device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"devfreq-%s\00", [21 x i8] zeroinitializer }, align 32
@of_devfreq_cooling_register_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to register devfreq cooling device (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@of_devfreq_cooling_register_power._entry_ptr = internal global ptr @of_devfreq_cooling_register_power._entry, section ".printk_index", align 4
@__kstrtab_of_devfreq_cooling_register_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_devfreq_cooling_register_power = external dso_local constant [0 x i8], align 1
@__ksymtab_of_devfreq_cooling_register_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_devfreq_cooling_register_power to i32), ptr @__kstrtab_of_devfreq_cooling_register_power, ptr @__kstrtabns_of_devfreq_cooling_register_power }, section "___ksymtab_gpl+of_devfreq_cooling_register_power", align 4
@__kstrtab_of_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_devfreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_devfreq_cooling_register to i32), ptr @__kstrtab_of_devfreq_cooling_register, ptr @__kstrtabns_of_devfreq_cooling_register }, section "___ksymtab_gpl+of_devfreq_cooling_register", align 4
@__kstrtab_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_cooling_register to i32), ptr @__kstrtab_devfreq_cooling_register, ptr @__kstrtabns_devfreq_cooling_register }, section "___ksymtab_gpl+devfreq_cooling_register", align 4
@devfreq_cooling_em_register.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"devfreq_cooling_em_register\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to register EM for devfreq cooling device (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_devfreq_cooling_em_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_cooling_em_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_cooling_em_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_cooling_em_register to i32), ptr @__kstrtab_devfreq_cooling_em_register, ptr @__kstrtabns_devfreq_cooling_em_register }, section "___ksymtab_gpl+devfreq_cooling_em_register", align 4
@__kstrtab_devfreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_cooling_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_cooling_unregister to i32), ptr @__kstrtab_devfreq_cooling_unregister, ptr @__kstrtabns_devfreq_cooling_unregister }, section "___ksymtab_gpl+devfreq_cooling_unregister", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_voltage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.get_voltage = private unnamed_addr constant [12 x i8] c"get_voltage\00", align 1
@get_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.get_voltage, ptr @.str.2, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to find OPP for frequency %lu: %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@get_voltage._entry_ptr = internal global ptr @get_voltage._entry, section ".printk_index", align 4
@get_voltage._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@get_voltage._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.get_voltage, ptr @.str.2, i32 156, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get voltage for frequency %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@get_voltage._entry_ptr.15 = internal global ptr @get_voltage._entry.13, section ".printk_index", align 4
@__tracepoint_thermal_power_devfreq_get_power = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/thermal.h\00", [33 x i8] zeroinitializer }, align 32
@trace_thermal_power_devfreq_get_power.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@devfreq_cooling_set_cur_state.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devfreq_cooling_set_cur_state\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Setting cooling state %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_thermal_power_devfreq_limit = external dso_local global %struct.tracepoint, align 4
@trace_thermal_power_devfreq_limit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"devfreq_cooling_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 293, i32 42 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 382, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 406, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 416, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 491, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 145, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 154, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [34 x i8] c"../include/trace/events/thermal.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 153, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [37 x i8] c"../drivers/thermal/devfreq_cooling.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 94, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_devfreq_cooling_em_register, ptr @__ksymtab_devfreq_cooling_register, ptr @__ksymtab_devfreq_cooling_unregister, ptr @__ksymtab_of_devfreq_cooling_register, ptr @__ksymtab_of_devfreq_cooling_register_power, ptr @get_voltage._entry, ptr @get_voltage._entry.13, ptr @get_voltage._entry_ptr, ptr @get_voltage._entry_ptr.15, ptr @of_devfreq_cooling_register_power._entry, ptr @of_devfreq_cooling_register_power._entry_ptr, ptr @devfreq_cooling_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @get_voltage._rs, ptr @.str.10, ptr @.str.11, ptr @get_voltage._rs.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_devfreq_cooling_register_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_voltage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_voltage._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_voltage._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_devfreq_cooling_register_power(ptr noundef %np, ptr noundef %df, ptr noundef %dfc_power) #0 align 64 {
entry:
  %freq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %devfreq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %devfreq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %df, ptr %devfreq, align 4
  %call3 = tail call ptr @em_pd_get(ptr noundef %1) #10
  %em_pd = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %em_pd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %em_pd, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @devfreq_cooling_get_requested_power, ptr getelementptr inbounds (%struct.thermal_cooling_device_ops, ptr @devfreq_cooling_ops, i32 0, i32 3), align 4
  store ptr @devfreq_cooling_state2power, ptr getelementptr inbounds (%struct.thermal_cooling_device_ops, ptr @devfreq_cooling_ops, i32 0, i32 4), align 4
  store ptr @devfreq_cooling_power2state, ptr getelementptr inbounds (%struct.thermal_cooling_device_ops, ptr @devfreq_cooling_ops, i32 0, i32 5), align 4
  %power_ops = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %power_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dfc_power, ptr %power_ops, align 4
  %nr_perf_states.i = getelementptr inbounds %struct.em_perf_domain, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %nr_perf_states.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_perf_states.i, align 4
  br label %if.end20

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_devfreq_cooling_register_power.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@of_devfreq_cooling_register_power, %if.then13)) #10
          to label %do.end [label %if.then13], !srcloc !67

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @of_devfreq_cooling_register_power.__UNIQUE_ID_ddebug199, ptr noundef %1, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %call15 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %1) #10
  %8 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devfreq, align 4
  %parent.i = getelementptr inbounds %struct.devfreq, ptr %9, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq.i) #10
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call15, i32 4) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !68

kcalloc.exit.thread.i:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %freq_table24.i = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %freq_table24.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %freq_table24.i, align 4
  br label %devfreq_cooling_gen_tables.exit.thread84

if.end7.i.i.i:                                    ; preds = %do.end
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #14
  %freq_table.i = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i.i, ptr %freq_table.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.devfreq_cooling_gen_tables.exit.thread84_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.devfreq_cooling_gen_tables.exit.thread84_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %devfreq_cooling_gen_tables.exit.thread84

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %17 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp27.not.i = icmp eq i32 %call15, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.devfreq_cooling_gen_tables.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.devfreq_cooling_gen_tables.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %devfreq_cooling_gen_tables.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call3.i = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %11, ptr noundef nonnull %freq.i) #10
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %devfreq_cooling_gen_tables.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  call void @dev_pm_opp_put(ptr noundef %call3.i) #10
  %18 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %freq.i, align 4
  %20 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %freq_table.i, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 %i.028.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %23 = load i32, ptr %freq.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %freq.i, align 4
  %exitcond.not.i = icmp eq i32 %inc.i, %call15
  br i1 %exitcond.not.i, label %for.inc.i.devfreq_cooling_gen_tables.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.devfreq_cooling_gen_tables.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %devfreq_cooling_gen_tables.exit.thread

devfreq_cooling_gen_tables.exit.thread:           ; preds = %for.inc.i.devfreq_cooling_gen_tables.exit.thread_crit_edge, %for.cond.preheader.i.devfreq_cooling_gen_tables.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #10
  br label %if.end20

devfreq_cooling_gen_tables.exit.thread84:         ; preds = %if.end7.i.i.i.devfreq_cooling_gen_tables.exit.thread84_crit_edge, %kcalloc.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #10
  br label %free_dfc

devfreq_cooling_gen_tables.exit:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %freq_table.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %freq_table.i, align 4
  call void @kfree(ptr noundef %25) #10
  %26 = ptrtoint ptr %call3.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq.i) #10
  br label %free_dfc

if.end20:                                         ; preds = %devfreq_cooling_gen_tables.exit.thread, %if.then6
  %num_opps.0 = phi i32 [ %7, %if.then6 ], [ %call15, %devfreq_cooling_gen_tables.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_opps.0)
  %cmp = icmp slt i32 %num_opps.0, 1
  br i1 %cmp, label %if.end20.free_dfc_crit_edge, label %if.end22

if.end20.free_dfc_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dfc

if.end22:                                         ; preds = %if.end20
  %sub = add nsw i32 %num_opps.0, -1
  %max_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %max_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %max_state, align 8
  %req_max_freq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 8
  %call23 = call i32 @dev_pm_qos_add_request(ptr noundef %1, ptr noundef %req_max_freq, i32 noundef 4, i32 noundef 2147483647) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.free_table_crit_edge, label %if.end26

if.end22.free_table_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_table

if.end26:                                         ; preds = %if.end22
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i78 = icmp eq ptr %29, null
  br i1 %tobool.not.i78, label %if.end.i, label %if.end26.dev_name.exit_crit_edge

if.end26.dev_name.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end26.dev_name.exit_crit_edge
  %retval.0.i79 = phi ptr [ %31, %if.end.i ], [ %29, %if.end26.dev_name.exit_crit_edge ]
  %call28 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i79) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %dev_name.exit.remove_qos_req_crit_edge, label %if.end31

dev_name.exit.remove_qos_req_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_qos_req

if.end31:                                         ; preds = %dev_name.exit
  %call32 = call ptr @thermal_of_cooling_device_register(ptr noundef %np, ptr noundef nonnull %call28, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @devfreq_cooling_ops) #10
  call void @kfree(ptr noundef nonnull %call28) #10
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %32) #15
  br label %remove_qos_req

if.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call32, ptr %call7.i.i, align 8
  br label %cleanup

remove_qos_req:                                   ; preds = %if.then34, %dev_name.exit.remove_qos_req_crit_edge
  %err.0 = phi i32 [ %32, %if.then34 ], [ -12, %dev_name.exit.remove_qos_req_crit_edge ]
  %call42 = call i32 @dev_pm_qos_remove_request(ptr noundef %req_max_freq) #10
  br label %free_table

free_table:                                       ; preds = %remove_qos_req, %if.end22.free_table_crit_edge
  %err.1 = phi i32 [ %call23, %if.end22.free_table_crit_edge ], [ %err.0, %remove_qos_req ]
  %freq_table = getelementptr inbounds %struct.devfreq_cooling_device, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %freq_table, align 4
  call void @kfree(ptr noundef %35) #10
  br label %free_dfc

free_dfc:                                         ; preds = %free_table, %if.end20.free_dfc_crit_edge, %devfreq_cooling_gen_tables.exit, %devfreq_cooling_gen_tables.exit.thread84
  %err.2 = phi i32 [ %err.1, %free_table ], [ %26, %devfreq_cooling_gen_tables.exit ], [ -22, %if.end20.free_dfc_crit_edge ], [ -12, %devfreq_cooling_gen_tables.exit.thread84 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %36 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_dfc, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %36, %free_dfc ], [ %call32, %if.end39 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @em_pd_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_cooling_get_requested_power(ptr noundef %cdev, ptr noundef %power) #0 align 64 {
entry:
  %status = alloca %struct.devfreq_dev_status, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %devfreq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %status) #10
  %4 = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 1
  %5 = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 2
  %lock = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %last_status = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 9
  %6 = call ptr @memcpy(ptr %status, ptr %last_status, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %power_ops = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %power_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power_ops, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.else17_crit_edge, label %land.lhs.true

entry.if.else17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

land.lhs.true:                                    ; preds = %entry
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %land.lhs.true.if.else17_crit_edge, label %if.then

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

if.then:                                          ; preds = %land.lhs.true
  %parent.i = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  %call.i = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %14, i32 noundef %8, i1 noundef zeroext true) #10
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -34 to ptr)
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %14, i32 noundef %8, i1 noundef zeroext false) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %opp.0.i = phi ptr [ %call3.i, %if.then.i ], [ %call.i, %if.then.if.end.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %opp.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @get_voltage._rs, ptr noundef nonnull @__func__.get_voltage) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %do.body.i.fail_crit_edge, label %do.end.i

do.body.i.fail_crit_edge:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %opp.0.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %8, i32 noundef %15) #15
  br label %fail

if.end13.i:                                       ; preds = %if.end.i
  %call14.i = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %opp.0.i) #10
  tail call void @dev_pm_opp_put(ptr noundef %opp.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call14.i)
  %16 = icmp ult i32 %call14.i, 1000
  br i1 %16, label %do.body17.i, label %if.end

do.body17.i:                                      ; preds = %if.end13.i
  %call18.i = tail call i32 @___ratelimit(ptr noundef nonnull @get_voltage._rs.12, ptr noundef nonnull @__func__.get_voltage) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.fail_crit_edge, label %do.end23.i

do.body17.i.fail_crit_edge:                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end23.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %8) #15
  br label %fail

if.end:                                           ; preds = %if.end13.i
  %div.i = udiv i32 %call14.i, 1000
  %17 = ptrtoint ptr %power_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power_ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call7 = tail call i32 %20(ptr noundef %3, ptr noundef %power, i32 noundef %8, i32 noundef %div.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then9:                                         ; preds = %if.end
  %capped_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %capped_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capped_state, align 4
  %em_pd = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %em_pd, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %power10 = getelementptr %struct.em_perf_state, ptr %26, i32 %22, i32 1
  %27 = ptrtoint ptr %power10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %power10, align 4
  %res_util = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 6
  %mul = mul i32 %28, 100
  %29 = ptrtoint ptr %res_util to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %res_util, align 4
  %30 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp12 = icmp ugt i32 %31, 1
  br i1 %cmp12, label %if.then13, label %if.then9.if.end29_crit_edge

if.then9.if.end29_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %mul, %31
  %32 = ptrtoint ptr %res_util to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div, ptr %res_util, align 4
  br label %if.end29

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %entry.if.else17_crit_edge
  %em_pd18 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %em_pd18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %em_pd18, align 4
  %div19 = udiv i32 %8, 1000
  %nr_perf_states.i = getelementptr inbounds %struct.em_perf_domain, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %nr_perf_states.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_perf_states.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp6.i = icmp sgt i32 %36, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.else17.fail_crit_edge

if.else17.fail_crit_edge:                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.body.lr.ph.i:                                 ; preds = %if.else17
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.em_perf_state, ptr %38, i32 %i.07.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %div19)
  %cmp1.i = icmp eq i32 %40, %div19
  br i1 %cmp1.i, label %if.end23, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %36
  br i1 %exitcond.not.i, label %for.inc.i.fail_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.fail_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end23:                                         ; preds = %for.body.i
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %42)
  %cmp.i68 = icmp ugt i32 %42, 1048575
  br i1 %cmp.i68, label %if.then.i69, label %if.end23._normalize_load.exit_crit_edge

if.end23._normalize_load.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %_normalize_load.exit

if.then.i69:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i = lshr i32 %42, 10
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr.i, ptr %status, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %4, align 4
  %shr2.i = lshr i32 %45, 10
  store i32 %shr2.i, ptr %4, align 4
  br label %_normalize_load.exit

_normalize_load.exit:                             ; preds = %if.then.i69, %if.end23._normalize_load.exit_crit_edge
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %4, align 4
  %shl.i = shl i32 %47, 10
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i70 = icmp eq i32 %49, 0
  %..i = select i1 %tobool.not.i70, i32 1, i32 %49
  %div.i71 = udiv i32 %shl.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %shl.i)
  %tobool7.not.i = icmp ugt i32 %..i, %shl.i
  %cond11.i = select i1 %tobool7.not.i, i32 1, i32 %div.i71
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond11.i, ptr %4, align 4
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1024, ptr %status, align 4
  %52 = ptrtoint ptr %em_pd18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %em_pd18, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %power27 = getelementptr %struct.em_perf_state, ptr %55, i32 %i.07.i, i32 1
  %56 = ptrtoint ptr %power27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %power27, align 4
  %mul28 = mul i32 %57, %cond11.i
  %shr = lshr i32 %mul28, 10
  %58 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shr, ptr %power, align 4
  br label %if.end29

if.end29:                                         ; preds = %_normalize_load.exit, %if.then13, %if.then9.if.end29_crit_edge
  %59 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %power, align 4
  call fastcc void @trace_thermal_power_devfreq_get_power(ptr noundef %cdev, ptr noundef nonnull %status, i32 noundef %8, i32 noundef %60)
  br label %cleanup

fail:                                             ; preds = %for.inc.i.fail_crit_edge, %if.else17.fail_crit_edge, %if.end.fail_crit_edge, %do.end23.i, %do.body17.i.fail_crit_edge, %do.end.i, %do.body.i.fail_crit_edge
  %res.0 = phi i32 [ %call7, %if.end.fail_crit_edge ], [ -22, %do.end.i ], [ -22, %do.body.i.fail_crit_edge ], [ -11, %if.else17.fail_crit_edge ], [ -22, %do.body17.i.fail_crit_edge ], [ -22, %do.end23.i ], [ -11, %for.inc.i.fail_crit_edge ]
  %res_util30 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %res_util30 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 100, ptr %res_util30, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end29
  %retval.0 = phi i32 [ %res.0, %fail ], [ 0, %if.end29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devfreq_cooling_state2power(ptr nocapture noundef readonly %cdev, i32 noundef %state, ptr nocapture noundef writeonly %power) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp ult i32 %3, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %3, %state
  %em_pd = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %em_pd, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %power2 = getelementptr %struct.em_perf_state, ptr %7, i32 %sub, i32 1
  %8 = ptrtoint ptr %power2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power2, align 4
  %10 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %power, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_cooling_power2state(ptr noundef %cdev, i32 noundef %power, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %devfreq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %last_status = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %status.sroa.0.0.copyload = load i32, ptr %last_status, align 8
  %status.sroa.8.0.last_status.sroa_idx = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %status.sroa.8.0.last_status.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %status.sroa.8.0.copyload = load i32, ptr %status.sroa.8.0.last_status.sroa_idx, align 4
  %status.sroa.14.0.last_status.sroa_idx = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %status.sroa.14.0.last_status.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %status.sroa.14.0.copyload = load i32, ptr %status.sroa.14.0.last_status.sroa_idx, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %power_ops = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %power_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power_ops, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %res_util = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %res_util to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_util, align 4
  %mul = mul i32 %12, %power
  %div = sdiv i32 %mul, 100
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %status.sroa.0.0.copyload)
  %cmp.i = icmp ugt i32 %status.sroa.0.0.copyload, 1048575
  %shr.i = lshr i32 %status.sroa.0.0.copyload, 10
  %shr2.i = lshr i32 %status.sroa.8.0.copyload, 10
  %status.sroa.8.0 = select i1 %cmp.i, i32 %shr2.i, i32 %status.sroa.8.0.copyload
  %status.sroa.0.0 = select i1 %cmp.i, i32 %shr.i, i32 %status.sroa.0.0.copyload
  %shl.i = shl i32 %status.sroa.8.0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.sroa.0.0)
  %tobool.not.i = icmp eq i32 %status.sroa.0.0, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 %status.sroa.0.0
  %div.i = udiv i32 %shl.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %shl.i)
  %tobool7.not.i = icmp ugt i32 %..i, %shl.i
  %cond11.i = select i1 %tobool7.not.i, i32 1, i32 %div.i
  %shl = shl i32 %power, 10
  %div4 = udiv i32 %shl, %cond11.i
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %est_power.0 = phi i32 [ %div, %if.then ], [ %div4, %if.else ]
  %max_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp32 = icmp sgt i32 %14, 0
  br i1 %cmp32, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %em_pd = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %em_pd, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ %14, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %power5 = getelementptr %struct.em_perf_state, ptr %18, i32 %i.033, i32 1
  %19 = ptrtoint ptr %power5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %est_power.0, i32 %20)
  %cmp6.not = icmp ult i32 %est_power.0, %20
  br i1 %cmp6.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.033, -1
  %cmp = icmp sgt i32 %i.033, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %14, %if.end.for.end_crit_edge ], [ %i.033, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %sub = sub i32 %14, %i.0.lcssa
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %state, align 4
  %capped_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %capped_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %capped_state, align 4
  %23 = load i32, ptr %state, align 4
  tail call fastcc void @trace_thermal_power_devfreq_limit(ptr noundef %cdev, i32 noundef %status.sroa.14.0.copyload, i32 noundef %23, i32 noundef %power)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_devfreq_cooling_register(ptr noundef %np, ptr noundef %df) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_devfreq_cooling_register_power(ptr noundef %np, ptr noundef %df, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devfreq_cooling_register(ptr noundef %df) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_devfreq_cooling_register_power(ptr noundef null, ptr noundef %df, ptr noundef null) #10
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devfreq_cooling_em_register(ptr noundef %df, ptr noundef %dfc_power) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %df, null
  %cmp.i = icmp ugt ptr %df, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call3 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @devfreq_cooling_em_register.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devfreq_cooling_em_register, %if.then9)) #10
          to label %if.end11 [label %if.then9], !srcloc !67

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @devfreq_cooling_em_register.__UNIQUE_ID_ddebug200, ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %call3) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.end.if.end11_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call12 = tail call ptr @of_devfreq_cooling_register_power(ptr noundef %3, ptr noundef nonnull %df, ptr noundef %dfc_power)
  %tobool.not.i25 = icmp eq ptr %call12, null
  %cmp.i26 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %spec.select.i27 = or i1 %tobool.not.i25, %cmp.i26
  br i1 %spec.select.i27, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @em_dev_unregister_perf_domain(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call12, %if.then14 ], [ %call12, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @em_dev_unregister_perf_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devfreq_cooling_unregister(ptr noundef readonly %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %cdev, null
  %cmp.i = icmp ugt ptr %cdev, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %devfreq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq, align 4
  %parent = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %7) #10
  %req_max_freq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %req_max_freq) #10
  tail call void @em_dev_unregister_perf_domain(ptr noundef %5) #10
  %freq_table = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %freq_table, align 4
  tail call void @kfree(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_power_devfreq_get_power(ptr noundef %cdev, ptr noundef %status, i32 noundef %freq, i32 noundef %power) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_get_power, i32 0, i32 1), ptr blockaddress(@trace_thermal_power_devfreq_get_power, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !67

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %call42 = tail call i32 @__traceiter_thermal_power_devfreq_get_power(ptr noundef null, ptr noundef %cdev, ptr noundef %status, i32 noundef %freq, i32 noundef %power) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_get_power, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_get_power, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_thermal_power_devfreq_get_power.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_thermal_power_devfreq_get_power.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 181, ptr noundef nonnull @.str.17) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_thermal_power_devfreq_get_power(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devfreq_cooling_get_max_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %max_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_state, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @devfreq_cooling_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %cooling_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cooling_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cooling_state, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_cooling_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %devfreq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq, align 4
  %parent = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %cooling_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cooling_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cooling_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %state)
  %cmp = icmp eq i32 %7, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @devfreq_cooling_set_cur_state.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@devfreq_cooling_set_cur_state, %if.then4)) #10
          to label %do.end [label %if.then4], !srcloc !67

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @devfreq_cooling_set_cur_state.__UNIQUE_ID_ddebug198, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %state) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %max_state = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %state)
  %cmp6 = icmp ult i32 %9, %state
  br i1 %cmp6, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %em_pd = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %em_pd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %em_pd, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %9, %state
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx = getelementptr %struct.em_perf_state, ptr %13, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %15, 1000
  br label %if.end14

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %freq_table = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %freq_table, align 4
  %arrayidx13 = getelementptr i32, ptr %17, i32 %state
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %freq.0 = phi i32 [ %mul, %if.then10 ], [ %19, %if.else ]
  %req_max_freq = getelementptr inbounds %struct.devfreq_cooling_device, ptr %1, i32 0, i32 8
  %sub15 = add i32 %freq.0, 999
  %div = udiv i32 %sub15, 1000
  %call16 = tail call i32 @dev_pm_qos_update_request(ptr noundef %req_max_freq, i32 noundef %div) #10
  %20 = ptrtoint ptr %cooling_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %state, ptr %cooling_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_power_devfreq_limit(ptr noundef %cdev, i32 noundef %freq, i32 noundef %cdev_state, i32 noundef %power) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_limit, i32 0, i32 1), ptr blockaddress(@trace_thermal_power_devfreq_limit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !67

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %call42 = tail call i32 @__traceiter_thermal_power_devfreq_limit(ptr noundef null, ptr noundef %cdev, i32 noundef %freq, i32 noundef %cdev_state, i32 noundef %power) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_limit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_limit, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_thermal_power_devfreq_limit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_thermal_power_devfreq_limit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 206, ptr noundef nonnull @.str.17) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #10
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
declare dso_local i32 @__traceiter_thermal_power_devfreq_limit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !52, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/devfreq_cooling.c", i32 382, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @of_devfreq_cooling_register_power.__UNIQUE_ID_ddebug199, !1, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thermal/devfreq_cooling.c", i32 406, i32 31}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thermal/devfreq_cooling.c", i32 416, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @of_devfreq_cooling_register_power._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_devfreq_cooling_register_power._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_of_devfreq_cooling_register_power, !15, !"__ksymtab_of_devfreq_cooling_register_power", i1 false, i1 false}
!15 = !{!"../drivers/thermal/devfreq_cooling.c", i32 435, i32 1}
!16 = !{ptr @__ksymtab_of_devfreq_cooling_register, !17, !"__ksymtab_of_devfreq_cooling_register", i1 false, i1 false}
!17 = !{!"../drivers/thermal/devfreq_cooling.c", i32 448, i32 1}
!18 = !{ptr @__ksymtab_devfreq_cooling_register, !19, !"__ksymtab_devfreq_cooling_register", i1 false, i1 false}
!19 = !{!"../drivers/thermal/devfreq_cooling.c", i32 458, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thermal/devfreq_cooling.c", i32 491, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @devfreq_cooling_em_register.__UNIQUE_ID_ddebug200, !21, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!24 = !{ptr @__ksymtab_devfreq_cooling_em_register, !25, !"__ksymtab_devfreq_cooling_em_register", i1 false, i1 false}
!25 = !{!"../drivers/thermal/devfreq_cooling.c", i32 501, i32 1}
!26 = !{ptr @__ksymtab_devfreq_cooling_unregister, !27, !"__ksymtab_devfreq_cooling_unregister", i1 false, i1 false}
!27 = !{!"../drivers/thermal/devfreq_cooling.c", i32 529, i32 1}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thermal/devfreq_cooling.c", i32 145, i32 3}
!30 = !{ptr @get_voltage._rs, !29, !"_rs", i1 false, i1 false}
!31 = !{ptr @__func__.get_voltage, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @get_voltage._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @get_voltage._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @get_voltage._rs.12, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../drivers/thermal/devfreq_cooling.c", i32 154, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @get_voltage._entry.13, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @get_voltage._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/trace/events/thermal.h", i32 153, i32 1}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @devfreq_cooling_ops, !49, !"devfreq_cooling_ops", i1 false, i1 false}
!49 = !{!"../drivers/thermal/devfreq_cooling.c", i32 293, i32 42}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thermal/devfreq_cooling.c", i32 94, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @devfreq_cooling_set_cur_state.__UNIQUE_ID_ddebug198, !51, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/trace/events/thermal.h", i32 183, i32 1}
!56 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148303734, i64 2148303739, i64 2148303752, i64 2148303796, i64 2148303830, i64 2148303851}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2153012118}
!71 = !{i64 2153012395}
!72 = !{i64 2149326414}
!73 = !{i64 2149327450}
!74 = !{i64 2153031073}
!75 = !{i64 2153031348}
