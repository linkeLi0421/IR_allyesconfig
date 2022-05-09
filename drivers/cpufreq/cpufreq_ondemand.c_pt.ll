; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/cpufreq_ondemand.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_ondemand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+od_register_powersave_bias_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_od_register_powersave_bias_handler\09\09\09\09"
module asm "\09.long\09__crc_od_register_powersave_bias_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_od_register_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22od_register_powersave_bias_handler\22\09\09\09\09\09"
module asm "__kstrtabns_od_register_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+od_unregister_powersave_bias_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_od_unregister_powersave_bias_handler\09\09\09\09"
module asm "\09.long\09__crc_od_unregister_powersave_bias_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_od_unregister_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22od_unregister_powersave_bias_handler\22\09\09\09\09\09"
module asm "__kstrtabns_od_unregister_powersave_bias_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dbs_data = type { %struct.gov_attr_set, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.od_policy_dbs_info = type { %struct.policy_dbs_info, i32, i32, i32, i8 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@od_ops.0 = internal global { ptr, [28 x i8] } { ptr @generic_powersave_bias_target, [28 x i8] zeroinitializer }, align 32
@__kstrtab_od_register_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_od_register_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_od_register_powersave_bias_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @od_register_powersave_bias_handler to i32), ptr @__kstrtab_od_register_powersave_bias_handler, ptr @__kstrtabns_od_register_powersave_bias_handler }, section "___ksymtab_gpl+od_register_powersave_bias_handler", align 4
@__kstrtab_od_unregister_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_od_unregister_powersave_bias_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_od_unregister_powersave_bias_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @od_unregister_powersave_bias_handler to i32), ptr @__kstrtab_od_unregister_powersave_bias_handler, ptr @__kstrtabns_od_unregister_powersave_bias_handler }, section "___ksymtab_gpl+od_unregister_powersave_bias_handler", align 4
@__UNIQUE_ID_author224 = internal constant [76 x i8] c"cpufreq_ondemand.author=Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [78 x i8] c"cpufreq_ondemand.author=Alexey Starikovskiy <alexey.y.starikovskiy@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [133 x i8] c"cpufreq_ondemand.description='cpufreq_ondemand' - A dynamic cpufreq governor for Low Latency Frequency Transition capable processors\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [55 x i8] c"cpufreq_ondemand.file=drivers/cpufreq/cpufreq_ondemand\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [29 x i8] c"cpufreq_ondemand.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_cpufreq_ondemand__229_480_CPU_FREQ_GOV_ONDEMAND_init1 = internal global ptr @CPU_FREQ_GOV_ONDEMAND_init, section ".initcall1.init", align 4
@od_dbs_gov = internal global { %struct.dbs_governor, [44 x i8] } { %struct.dbs_governor { %struct.cpufreq_governor { [16 x i8] c"ondemand\00\00\00\00\00\00\00\00", ptr @cpufreq_dbs_governor_init, ptr @cpufreq_dbs_governor_exit, ptr @cpufreq_dbs_governor_start, ptr @cpufreq_dbs_governor_stop, ptr @cpufreq_dbs_governor_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 1 }, %struct.kobj_type { ptr null, ptr null, ptr null, ptr @od_groups, ptr null, ptr null, ptr null }, ptr null, ptr @od_dbs_update, ptr @od_alloc, ptr @od_free, ptr @od_init, ptr @od_exit, ptr @od_start }, [44 x i8] zeroinitializer }, align 32
@__exitcall_CPU_FREQ_GOV_ONDEMAND_exit = internal global ptr @CPU_FREQ_GOV_ONDEMAND_exit, section ".exitcall.exit", align 4
@default_powersave_bias = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpufreq_frequency_table_target.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpufreq.h\00", [40 x i8] zeroinitializer }, align 32
@od_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @od_group, ptr null], [24 x i8] zeroinitializer }, align 32
@od_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @od_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@od_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sampling_rate, ptr @up_threshold, ptr @sampling_down_factor, ptr @ignore_nice_load, ptr @powersave_bias, ptr @io_is_busy, ptr null], [36 x i8] zeroinitializer }, align 32
@sampling_rate = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sampling_rate, ptr @store_sampling_rate }, [36 x i8] zeroinitializer }, align 32
@up_threshold = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_up_threshold, ptr @store_up_threshold }, [36 x i8] zeroinitializer }, align 32
@sampling_down_factor = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sampling_down_factor, ptr @store_sampling_down_factor }, [36 x i8] zeroinitializer }, align 32
@ignore_nice_load = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ignore_nice_load, ptr @store_ignore_nice_load }, [36 x i8] zeroinitializer }, align 32
@powersave_bias = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_powersave_bias, ptr @store_powersave_bias }, [36 x i8] zeroinitializer }, align 32
@io_is_busy = internal global { %struct.governor_attr, [36 x i8] } { %struct.governor_attr { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_io_is_busy, ptr @store_io_is_busy }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sampling_rate\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"up_threshold\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sampling_down_factor\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ignore_nice_load\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powersave_bias\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"io_is_busy\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"od_ops.0\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"od_dbs_gov\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 403, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"default_powersave_bias\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 31, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/cpufreq.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1050, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"od_groups\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [9 x i8] c"od_group\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 340, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"od_attrs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 331, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"sampling_rate\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"up_threshold\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"sampling_down_factor\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"ignore_nice_load\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"powersave_bias\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"io_is_busy\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 324, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 317, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 326, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 229, i32 20 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 327, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 328, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 329, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [38 x i8] c"../drivers/cpufreq/cpufreq_ondemand.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 325, i32 1 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @CPU_FREQ_GOV_ONDEMAND_exit, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_CPU_FREQ_GOV_ONDEMAND_exit, ptr @__initcall__kmod_cpufreq_ondemand__229_480_CPU_FREQ_GOV_ONDEMAND_init1, ptr @__ksymtab_od_register_powersave_bias_handler, ptr @__ksymtab_od_unregister_powersave_bias_handler, ptr @od_ops.0, ptr @od_dbs_gov, ptr @default_powersave_bias, ptr @.str.1, ptr @od_groups, ptr @od_group, ptr @od_attrs, ptr @sampling_rate, ptr @up_threshold, ptr @sampling_down_factor, ptr @ignore_nice_load, ptr @powersave_bias, ptr @io_is_busy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_ops.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_dbs_gov to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_powersave_bias to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @od_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampling_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_threshold to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sampling_down_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_nice_load to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powersave_bias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_is_busy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @od_register_powersave_bias_handler(ptr noundef %f, i32 noundef %powersave_bias) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %f, ptr @od_ops.0, align 4
  tail call fastcc void @od_set_powersave_bias(i32 noundef %powersave_bias)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @od_set_powersave_bias(i32 noundef %powersave_bias) unnamed_addr #0 align 64 {
entry:
  %done = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #11
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %done, align 4, !annotation !66
  store i32 %powersave_bias, ptr @default_powersave_bias, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %1, 31
  %2 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %2, 536870908
  %3 = call ptr @memset(ptr %done, i32 0, i32 %mul.i.i)
  tail call void @cpus_read_lock() #11
  %call22 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call22, i32 %4)
  %cmp23 = icmp ult i32 %call22, %4
  br i1 %cmp23, label %entry.cpumask_test_cpu.exit_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %cleanup.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %call24 = phi i32 [ %call, %cleanup.cpumask_test_cpu.exit_crit_edge ], [ %call22, %entry.cpumask_test_cpu.exit_crit_edge ]
  %5 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %done, align 4
  %and.i.i = and i32 %call24, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %cpumask_test_cpu.exit.cleanup_crit_edge

cpumask_test_cpu.exit.cleanup_crit_edge:          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cpumask_test_cpu.exit
  %call2 = call ptr @cpufreq_cpu_get_raw(i32 noundef %call24) #11
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %governor = getelementptr inbounds %struct.cpufreq_policy, ptr %call2, i32 0, i32 13
  %9 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %governor, align 4
  %cmp4.not = icmp eq ptr %10, @od_dbs_gov
  br i1 %cmp4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %call2, i32 0, i32 14
  %11 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %governor_data, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.else.i.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call2, align 4
  call void @__bitmap_or(ptr noundef nonnull %done, ptr noundef nonnull %done, ptr noundef %15, i32 noundef %13) #11
  %dbs_data10 = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 7
  %16 = ptrtoint ptr %dbs_data10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dbs_data10, align 8
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuners, align 4
  %20 = load i32, ptr @default_powersave_bias, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cpumask_test_cpu.exit.cleanup_crit_edge
  %call = call i32 @cpumask_next(i32 noundef %call24, ptr noundef nonnull @__cpu_online_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %22
  br i1 %cmp, label %cleanup.cpumask_test_cpu.exit_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.cpumask_test_cpu.exit_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpumask_test_cpu.exit

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @cpus_read_unlock() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @od_unregister_powersave_bias_handler() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @generic_powersave_bias_target, ptr @od_ops.0, align 4
  tail call fastcc void @od_set_powersave_bias(i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_powersave_bias_target(ptr noundef %policy, i32 noundef %freq_next, i32 noundef %relation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dbs_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbs_data1, align 8
  %freq_table2 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %4 = ptrtoint ptr %freq_table2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freq_table2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %freq_lo3 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %freq_lo3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %freq_lo3, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuners, align 4
  %and2.i = and i32 %relation, -5
  %freq_table_sorted.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 21
  %9 = ptrtoint ptr %freq_table_sorted.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq_table_sorted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %retry.preheader.i, !prof !67

retry.preheader.i:                                ; preds = %if.end
  %min.i119.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %max.i120.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7.i122.i = icmp eq i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2.i)
  %switch.i = icmp ult i32 %and2.i, 3
  br i1 %switch.i, label %retry.preheader184.i, label %land.end18.i

retry.preheader184.i:                             ; preds = %retry.preheader.i
  %and.i = and i32 %relation, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  %efficiencies_available.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 29
  %11 = ptrtoint ptr %efficiencies_available.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %efficiencies_available.i, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp ne i8 %12, 0
  %13 = and i1 %tobool1.i, %tobool.not.i
  br label %retry.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @cpufreq_table_index_unsorted(ptr noundef %policy, i32 noundef %freq_next, i32 noundef %and2.i) #11
  br label %cpufreq_frequency_table_target.exit

retry.i:                                          ; preds = %sw.epilog.i.retry.i_crit_edge, %retry.preheader184.i
  %efficiencies.0.off0.i = phi i1 [ false, %sw.epilog.i.retry.i_crit_edge ], [ %13, %retry.preheader184.i ]
  %14 = zext i32 %and2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2.i, label %sw.bb10.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %retry.i
  %15 = ptrtoint ptr %min.i119.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min.i119.i, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %freq_next) #11
  %18 = ptrtoint ptr %max.i120.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max.i120.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19) #11
  br i1 %cmp7.i122.i, label %sw.bb.i.for.cond.i.i.i_crit_edge, label %sw.bb.i.for.cond.i27.i.i_crit_edge

sw.bb.i.for.cond.i27.i.i_crit_edge:               ; preds = %sw.bb.i
  br label %for.cond.i27.i.i

sw.bb.i.for.cond.i.i.i_crit_edge:                 ; preds = %sw.bb.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %sw.bb.i.for.cond.i.i.i_crit_edge
  %pos.0.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i ], [ %5, %sw.bb.i.for.cond.i.i.i_crit_edge ]
  %idx.0.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i ], [ 0, %sw.bb.i.for.cond.i.i.i_crit_edge ]
  %best.0.i.i.i = phi i32 [ %best.1.i.i.i, %for.inc.i.i.i ], [ -1, %sw.bb.i.for.cond.i.i.i_crit_edge ]
  %frequency.i.i.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %frequency.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frequency.i.i.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %22, label %if.else.i.i.i [
    i32 -2, label %for.cond.i.i.i.sw.epilog.i_crit_edge
    i32 -1, label %for.cond.i.i.i.for.inc.i.i.i_crit_edge
  ]

for.cond.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.cond.i.i.i.sw.epilog.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else.i.i.i:                                    ; preds = %for.cond.i.i.i
  br i1 %efficiencies.0.off0.i, label %land.lhs.true.i.i.i, label %if.else.i.i.i.if.else5.i.i.i_crit_edge

if.else.i.i.i.if.else5.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else.i.i.i
  %24 = ptrtoint ptr %pos.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pos.0.i.i.i, align 4
  %and.i.i.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.else5.i.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.if.else5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i.i

if.else5.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.else5.i.i.i_crit_edge, %if.else.i.i.i.if.else5.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp7.not.i.i.i = icmp ult i32 %22, %20
  br i1 %cmp7.not.i.i.i, label %if.else5.i.i.i.for.inc.i.i.i_crit_edge, label %if.else5.i.i.i.sw.epilog.i_crit_edge

if.else5.i.i.i.sw.epilog.i_crit_edge:             ; preds = %if.else5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else5.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.else5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else5.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.cond.i.i.i.for.inc.i.i.i_crit_edge
  %best.1.i.i.i = phi i32 [ %best.0.i.i.i, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge ], [ %best.0.i.i.i, %for.cond.i.i.i.for.inc.i.i.i_crit_edge ], [ %idx.0.i.i.i, %if.else5.i.i.i.for.inc.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i.i.i, i32 1
  %inc.i.i.i = add i32 %idx.0.i.i.i, 1
  br label %for.cond.i.i.i

for.cond.i27.i.i:                                 ; preds = %for.inc.i36.i.i, %sw.bb.i.for.cond.i27.i.i_crit_edge
  %pos.0.i23.i.i = phi ptr [ %incdec.ptr.i34.i.i, %for.inc.i36.i.i ], [ %5, %sw.bb.i.for.cond.i27.i.i_crit_edge ]
  %idx.0.i24.i.i = phi i32 [ %inc.i35.i.i, %for.inc.i36.i.i ], [ 0, %sw.bb.i.for.cond.i27.i.i_crit_edge ]
  %best.0.i25.i.i = phi i32 [ %best.1.i33.i.i, %for.inc.i36.i.i ], [ -1, %sw.bb.i.for.cond.i27.i.i_crit_edge ]
  %frequency.i26.i.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i23.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %frequency.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frequency.i26.i.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %27, label %if.else.i28.i.i [
    i32 -2, label %for.cond.i27.i.i.sw.epilog.i_crit_edge
    i32 -1, label %for.cond.i27.i.i.for.inc.i36.i.i_crit_edge
  ]

for.cond.i27.i.i.for.inc.i36.i.i_crit_edge:       ; preds = %for.cond.i27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i.i

for.cond.i27.i.i.sw.epilog.i_crit_edge:           ; preds = %for.cond.i27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else.i28.i.i:                                  ; preds = %for.cond.i27.i.i
  br i1 %efficiencies.0.off0.i, label %land.lhs.true.i31.i.i, label %if.else.i28.i.i.if.else5.i32.i.i_crit_edge

if.else.i28.i.i.if.else5.i32.i.i_crit_edge:       ; preds = %if.else.i28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i.i

land.lhs.true.i31.i.i:                            ; preds = %if.else.i28.i.i
  %29 = ptrtoint ptr %pos.0.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pos.0.i23.i.i, align 4
  %and.i29.i.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i.i)
  %tobool3.not.i30.i.i = icmp eq i32 %and.i29.i.i, 0
  br i1 %tobool3.not.i30.i.i, label %land.lhs.true.i31.i.i.if.else5.i32.i.i_crit_edge, label %land.lhs.true.i31.i.i.for.inc.i36.i.i_crit_edge

land.lhs.true.i31.i.i.for.inc.i36.i.i_crit_edge:  ; preds = %land.lhs.true.i31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i.i

land.lhs.true.i31.i.i.if.else5.i32.i.i_crit_edge: ; preds = %land.lhs.true.i31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i.i

if.else5.i32.i.i:                                 ; preds = %land.lhs.true.i31.i.i.if.else5.i32.i.i_crit_edge, %if.else.i28.i.i.if.else5.i32.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %20)
  %cmp7.i.i.i = icmp eq i32 %27, %20
  br i1 %cmp7.i.i.i, label %if.else5.i32.i.i.sw.epilog.i_crit_edge, label %if.end.i.i.i

if.else5.i32.i.i.sw.epilog.i_crit_edge:           ; preds = %if.else5.i32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.i.i:                                     ; preds = %if.else5.i32.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %20)
  %cmp9.i.i.i = icmp ugt i32 %27, %20
  br i1 %cmp9.i.i.i, label %if.end.i.i.i.for.inc.i36.i.i_crit_edge, label %if.end11.i.i.i

if.end.i.i.i.for.inc.i36.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i25.i.i)
  %cmp12.i.i.i = icmp eq i32 %best.0.i25.i.i, -1
  %idx.0.best.0.i.i.i = select i1 %cmp12.i.i.i, i32 %idx.0.i24.i.i, i32 %best.0.i25.i.i
  br label %sw.epilog.i

for.inc.i36.i.i:                                  ; preds = %if.end.i.i.i.for.inc.i36.i.i_crit_edge, %land.lhs.true.i31.i.i.for.inc.i36.i.i_crit_edge, %for.cond.i27.i.i.for.inc.i36.i.i_crit_edge
  %best.1.i33.i.i = phi i32 [ %best.0.i25.i.i, %land.lhs.true.i31.i.i.for.inc.i36.i.i_crit_edge ], [ %best.0.i25.i.i, %for.cond.i27.i.i.for.inc.i36.i.i_crit_edge ], [ %idx.0.i24.i.i, %if.end.i.i.i.for.inc.i36.i.i_crit_edge ]
  %incdec.ptr.i34.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i23.i.i, i32 1
  %inc.i35.i.i = add i32 %idx.0.i24.i.i, 1
  br label %for.cond.i27.i.i

sw.bb7.i:                                         ; preds = %retry.i
  %31 = ptrtoint ptr %min.i119.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min.i119.i, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 %freq_next) #11
  %34 = ptrtoint ptr %max.i120.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i120.i, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35) #11
  br i1 %cmp7.i122.i, label %sw.bb7.i.for.cond.i.i87.i_crit_edge, label %sw.bb7.i.for.cond.i27.i107.i_crit_edge

sw.bb7.i.for.cond.i27.i107.i_crit_edge:           ; preds = %sw.bb7.i
  br label %for.cond.i27.i107.i

sw.bb7.i.for.cond.i.i87.i_crit_edge:              ; preds = %sw.bb7.i
  br label %for.cond.i.i87.i

for.cond.i.i87.i:                                 ; preds = %for.inc.i.i102.i, %sw.bb7.i.for.cond.i.i87.i_crit_edge
  %pos.0.i.i83.i = phi ptr [ %incdec.ptr.i.i100.i, %for.inc.i.i102.i ], [ %5, %sw.bb7.i.for.cond.i.i87.i_crit_edge ]
  %idx.0.i.i84.i = phi i32 [ %inc.i.i101.i, %for.inc.i.i102.i ], [ 0, %sw.bb7.i.for.cond.i.i87.i_crit_edge ]
  %best.0.i.i85.i = phi i32 [ %best.1.i.i99.i, %for.inc.i.i102.i ], [ -1, %sw.bb7.i.for.cond.i.i87.i_crit_edge ]
  %frequency.i.i86.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i.i83.i, i32 0, i32 2
  %37 = ptrtoint ptr %frequency.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frequency.i.i86.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %38, label %if.else.i.i88.i [
    i32 -2, label %for.cond.i.i87.i.sw.epilog.i_crit_edge
    i32 -1, label %for.cond.i.i87.i.for.inc.i.i102.i_crit_edge
  ]

for.cond.i.i87.i.for.inc.i.i102.i_crit_edge:      ; preds = %for.cond.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i102.i

for.cond.i.i87.i.sw.epilog.i_crit_edge:           ; preds = %for.cond.i.i87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else.i.i88.i:                                  ; preds = %for.cond.i.i87.i
  br i1 %efficiencies.0.off0.i, label %land.lhs.true.i.i91.i, label %if.else.i.i88.i.if.else5.i.i93.i_crit_edge

if.else.i.i88.i.if.else5.i.i93.i_crit_edge:       ; preds = %if.else.i.i88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i93.i

land.lhs.true.i.i91.i:                            ; preds = %if.else.i.i88.i
  %40 = ptrtoint ptr %pos.0.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pos.0.i.i83.i, align 4
  %and.i.i89.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89.i)
  %tobool3.not.i.i90.i = icmp eq i32 %and.i.i89.i, 0
  br i1 %tobool3.not.i.i90.i, label %land.lhs.true.i.i91.i.if.else5.i.i93.i_crit_edge, label %land.lhs.true.i.i91.i.for.inc.i.i102.i_crit_edge

land.lhs.true.i.i91.i.for.inc.i.i102.i_crit_edge: ; preds = %land.lhs.true.i.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i102.i

land.lhs.true.i.i91.i.if.else5.i.i93.i_crit_edge: ; preds = %land.lhs.true.i.i91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i93.i

if.else5.i.i93.i:                                 ; preds = %land.lhs.true.i.i91.i.if.else5.i.i93.i_crit_edge, %if.else.i.i88.i.if.else5.i.i93.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp7.i.i92.i = icmp eq i32 %38, %36
  br i1 %cmp7.i.i92.i, label %if.else5.i.i93.i.sw.epilog.i_crit_edge, label %if.end.i.i95.i

if.else5.i.i93.i.sw.epilog.i_crit_edge:           ; preds = %if.else5.i.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.i95.i:                                   ; preds = %if.else5.i.i93.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp9.i.i94.i = icmp ult i32 %38, %36
  br i1 %cmp9.i.i94.i, label %if.end.i.i95.i.for.inc.i.i102.i_crit_edge, label %if.end11.i.i98.i

if.end.i.i95.i.for.inc.i.i102.i_crit_edge:        ; preds = %if.end.i.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i102.i

if.end11.i.i98.i:                                 ; preds = %if.end.i.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i.i85.i)
  %cmp12.i.i96.i = icmp eq i32 %best.0.i.i85.i, -1
  %idx.0.best.0.i.i97.i = select i1 %cmp12.i.i96.i, i32 %idx.0.i.i84.i, i32 %best.0.i.i85.i
  br label %sw.epilog.i

for.inc.i.i102.i:                                 ; preds = %if.end.i.i95.i.for.inc.i.i102.i_crit_edge, %land.lhs.true.i.i91.i.for.inc.i.i102.i_crit_edge, %for.cond.i.i87.i.for.inc.i.i102.i_crit_edge
  %best.1.i.i99.i = phi i32 [ %best.0.i.i85.i, %land.lhs.true.i.i91.i.for.inc.i.i102.i_crit_edge ], [ %best.0.i.i85.i, %for.cond.i.i87.i.for.inc.i.i102.i_crit_edge ], [ %idx.0.i.i84.i, %if.end.i.i95.i.for.inc.i.i102.i_crit_edge ]
  %incdec.ptr.i.i100.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i.i83.i, i32 1
  %inc.i.i101.i = add i32 %idx.0.i.i84.i, 1
  br label %for.cond.i.i87.i

for.cond.i27.i107.i:                              ; preds = %for.inc.i36.i117.i, %sw.bb7.i.for.cond.i27.i107.i_crit_edge
  %pos.0.i23.i103.i = phi ptr [ %incdec.ptr.i34.i115.i, %for.inc.i36.i117.i ], [ %5, %sw.bb7.i.for.cond.i27.i107.i_crit_edge ]
  %idx.0.i24.i104.i = phi i32 [ %inc.i35.i116.i, %for.inc.i36.i117.i ], [ 0, %sw.bb7.i.for.cond.i27.i107.i_crit_edge ]
  %best.0.i25.i105.i = phi i32 [ %best.1.i33.i114.i, %for.inc.i36.i117.i ], [ -1, %sw.bb7.i.for.cond.i27.i107.i_crit_edge ]
  %frequency.i26.i106.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i23.i103.i, i32 0, i32 2
  %42 = ptrtoint ptr %frequency.i26.i106.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frequency.i26.i106.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %43, label %if.else.i28.i108.i [
    i32 -2, label %for.cond.i27.i107.i.sw.epilog.i_crit_edge
    i32 -1, label %for.cond.i27.i107.i.for.inc.i36.i117.i_crit_edge
  ]

for.cond.i27.i107.i.for.inc.i36.i117.i_crit_edge: ; preds = %for.cond.i27.i107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i117.i

for.cond.i27.i107.i.sw.epilog.i_crit_edge:        ; preds = %for.cond.i27.i107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else.i28.i108.i:                               ; preds = %for.cond.i27.i107.i
  br i1 %efficiencies.0.off0.i, label %land.lhs.true.i31.i111.i, label %if.else.i28.i108.i.if.else5.i32.i113.i_crit_edge

if.else.i28.i108.i.if.else5.i32.i113.i_crit_edge: ; preds = %if.else.i28.i108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i113.i

land.lhs.true.i31.i111.i:                         ; preds = %if.else.i28.i108.i
  %45 = ptrtoint ptr %pos.0.i23.i103.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pos.0.i23.i103.i, align 4
  %and.i29.i109.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i109.i)
  %tobool3.not.i30.i110.i = icmp eq i32 %and.i29.i109.i, 0
  br i1 %tobool3.not.i30.i110.i, label %land.lhs.true.i31.i111.i.if.else5.i32.i113.i_crit_edge, label %land.lhs.true.i31.i111.i.for.inc.i36.i117.i_crit_edge

land.lhs.true.i31.i111.i.for.inc.i36.i117.i_crit_edge: ; preds = %land.lhs.true.i31.i111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i117.i

land.lhs.true.i31.i111.i.if.else5.i32.i113.i_crit_edge: ; preds = %land.lhs.true.i31.i111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i113.i

if.else5.i32.i113.i:                              ; preds = %land.lhs.true.i31.i111.i.if.else5.i32.i113.i_crit_edge, %if.else.i28.i108.i.if.else5.i32.i113.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %36)
  %cmp7.not.i.i112.i = icmp ugt i32 %43, %36
  br i1 %cmp7.not.i.i112.i, label %if.else5.i32.i113.i.for.inc.i36.i117.i_crit_edge, label %if.else5.i32.i113.i.sw.epilog.i_crit_edge

if.else5.i32.i113.i.sw.epilog.i_crit_edge:        ; preds = %if.else5.i32.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else5.i32.i113.i.for.inc.i36.i117.i_crit_edge: ; preds = %if.else5.i32.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i117.i

for.inc.i36.i117.i:                               ; preds = %if.else5.i32.i113.i.for.inc.i36.i117.i_crit_edge, %land.lhs.true.i31.i111.i.for.inc.i36.i117.i_crit_edge, %for.cond.i27.i107.i.for.inc.i36.i117.i_crit_edge
  %best.1.i33.i114.i = phi i32 [ %best.0.i25.i105.i, %land.lhs.true.i31.i111.i.for.inc.i36.i117.i_crit_edge ], [ %best.0.i25.i105.i, %for.cond.i27.i107.i.for.inc.i36.i117.i_crit_edge ], [ %idx.0.i24.i104.i, %if.else5.i32.i113.i.for.inc.i36.i117.i_crit_edge ]
  %incdec.ptr.i34.i115.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i23.i103.i, i32 1
  %inc.i35.i116.i = add i32 %idx.0.i24.i104.i, 1
  br label %for.cond.i27.i107.i

sw.bb10.i:                                        ; preds = %retry.i
  %47 = ptrtoint ptr %min.i119.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %min.i119.i, align 4
  %49 = tail call i32 @llvm.umax.i32(i32 %48, i32 %freq_next) #11
  %50 = ptrtoint ptr %max.i120.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max.i120.i, align 4
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51) #11
  br i1 %cmp7.i122.i, label %sw.bb10.i.for.cond.i.i128.i_crit_edge, label %sw.bb10.i.for.cond.i27.i148.i_crit_edge

sw.bb10.i.for.cond.i27.i148.i_crit_edge:          ; preds = %sw.bb10.i
  br label %for.cond.i27.i148.i

sw.bb10.i.for.cond.i.i128.i_crit_edge:            ; preds = %sw.bb10.i
  br label %for.cond.i.i128.i

for.cond.i.i128.i:                                ; preds = %for.inc.i.i143.i, %sw.bb10.i.for.cond.i.i128.i_crit_edge
  %pos.0.i.i124.i = phi ptr [ %incdec.ptr.i.i141.i, %for.inc.i.i143.i ], [ %5, %sw.bb10.i.for.cond.i.i128.i_crit_edge ]
  %idx.0.i.i125.i = phi i32 [ %inc.i.i142.i, %for.inc.i.i143.i ], [ 0, %sw.bb10.i.for.cond.i.i128.i_crit_edge ]
  %best.0.i.i126.i = phi i32 [ %best.1.i.i140.i, %for.inc.i.i143.i ], [ -1, %sw.bb10.i.for.cond.i.i128.i_crit_edge ]
  %frequency.i.i127.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i.i124.i, i32 0, i32 2
  %53 = ptrtoint ptr %frequency.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frequency.i.i127.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %54, label %if.else.i.i129.i [
    i32 -2, label %for.cond.i.i128.i.sw.epilog.i_crit_edge
    i32 -1, label %for.cond.i.i128.i.for.inc.i.i143.i_crit_edge
  ]

for.cond.i.i128.i.for.inc.i.i143.i_crit_edge:     ; preds = %for.cond.i.i128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i143.i

for.cond.i.i128.i.sw.epilog.i_crit_edge:          ; preds = %for.cond.i.i128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else.i.i129.i:                                 ; preds = %for.cond.i.i128.i
  br i1 %efficiencies.0.off0.i, label %land.lhs.true.i.i132.i, label %if.else.i.i129.i.if.else5.i.i134.i_crit_edge

if.else.i.i129.i.if.else5.i.i134.i_crit_edge:     ; preds = %if.else.i.i129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i134.i

land.lhs.true.i.i132.i:                           ; preds = %if.else.i.i129.i
  %56 = ptrtoint ptr %pos.0.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pos.0.i.i124.i, align 4
  %and.i.i130.i = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i130.i)
  %tobool3.not.i.i131.i = icmp eq i32 %and.i.i130.i, 0
  br i1 %tobool3.not.i.i131.i, label %land.lhs.true.i.i132.i.if.else5.i.i134.i_crit_edge, label %land.lhs.true.i.i132.i.for.inc.i.i143.i_crit_edge

land.lhs.true.i.i132.i.for.inc.i.i143.i_crit_edge: ; preds = %land.lhs.true.i.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i143.i

land.lhs.true.i.i132.i.if.else5.i.i134.i_crit_edge: ; preds = %land.lhs.true.i.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i134.i

if.else5.i.i134.i:                                ; preds = %land.lhs.true.i.i132.i.if.else5.i.i134.i_crit_edge, %if.else.i.i129.i.if.else5.i.i134.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp7.i.i133.i = icmp eq i32 %54, %52
  br i1 %cmp7.i.i133.i, label %if.else5.i.i134.i.sw.epilog.i_crit_edge, label %if.end.i.i136.i

if.else5.i.i134.i.sw.epilog.i_crit_edge:          ; preds = %if.else5.i.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i.i136.i:                                  ; preds = %if.else5.i.i134.i
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %52)
  %cmp9.i.i135.i = icmp ult i32 %54, %52
  br i1 %cmp9.i.i135.i, label %if.end.i.i136.i.for.inc.i.i143.i_crit_edge, label %if.end11.i.i138.i

if.end.i.i136.i.for.inc.i.i143.i_crit_edge:       ; preds = %if.end.i.i136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i143.i

if.end11.i.i138.i:                                ; preds = %if.end.i.i136.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i.i126.i)
  %cmp12.i.i137.i = icmp eq i32 %best.0.i.i126.i, -1
  br i1 %cmp12.i.i137.i, label %if.end11.i.i138.i.sw.epilog.i_crit_edge, label %if.end14.i.i.i

if.end11.i.i138.i.sw.epilog.i_crit_edge:          ; preds = %if.end11.i.i138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end14.i.i.i:                                   ; preds = %if.end11.i.i138.i
  call void @__sanitizer_cov_trace_pc() #13
  %frequency15.i.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %best.0.i.i126.i, i32 2
  %58 = ptrtoint ptr %frequency15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frequency15.i.i.i, align 4
  %sub.i.i.i = sub i32 %52, %59
  %sub16.i.i.i = sub i32 %54, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %sub16.i.i.i)
  %cmp17.i.i.i = icmp ugt i32 %sub.i.i.i, %sub16.i.i.i
  %idx.0.best.0.i.i139.i = select i1 %cmp17.i.i.i, i32 %idx.0.i.i125.i, i32 %best.0.i.i126.i
  br label %sw.epilog.i

for.inc.i.i143.i:                                 ; preds = %if.end.i.i136.i.for.inc.i.i143.i_crit_edge, %land.lhs.true.i.i132.i.for.inc.i.i143.i_crit_edge, %for.cond.i.i128.i.for.inc.i.i143.i_crit_edge
  %best.1.i.i140.i = phi i32 [ %best.0.i.i126.i, %land.lhs.true.i.i132.i.for.inc.i.i143.i_crit_edge ], [ %best.0.i.i126.i, %for.cond.i.i128.i.for.inc.i.i143.i_crit_edge ], [ %idx.0.i.i125.i, %if.end.i.i136.i.for.inc.i.i143.i_crit_edge ]
  %incdec.ptr.i.i141.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i.i124.i, i32 1
  %inc.i.i142.i = add i32 %idx.0.i.i125.i, 1
  br label %for.cond.i.i128.i

for.cond.i27.i148.i:                              ; preds = %for.inc.i47.i.i, %sw.bb10.i.for.cond.i27.i148.i_crit_edge
  %pos.0.i23.i144.i = phi ptr [ %incdec.ptr.i45.i.i, %for.inc.i47.i.i ], [ %5, %sw.bb10.i.for.cond.i27.i148.i_crit_edge ]
  %idx.0.i24.i145.i = phi i32 [ %inc.i46.i.i, %for.inc.i47.i.i ], [ 0, %sw.bb10.i.for.cond.i27.i148.i_crit_edge ]
  %best.0.i25.i146.i = phi i32 [ %best.1.i44.i.i, %for.inc.i47.i.i ], [ -1, %sw.bb10.i.for.cond.i27.i148.i_crit_edge ]
  %frequency.i26.i147.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i23.i144.i, i32 0, i32 2
  %60 = ptrtoint ptr %frequency.i26.i147.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frequency.i26.i147.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %61, label %if.else.i28.i149.i [
    i32 -2, label %for.cond.i27.i148.i.sw.epilog.i_crit_edge
    i32 -1, label %for.cond.i27.i148.i.for.inc.i47.i.i_crit_edge
  ]

for.cond.i27.i148.i.for.inc.i47.i.i_crit_edge:    ; preds = %for.cond.i27.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i47.i.i

for.cond.i27.i148.i.sw.epilog.i_crit_edge:        ; preds = %for.cond.i27.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else.i28.i149.i:                               ; preds = %for.cond.i27.i148.i
  br i1 %efficiencies.0.off0.i, label %land.lhs.true.i31.i152.i, label %if.else.i28.i149.i.if.else5.i33.i.i_crit_edge

if.else.i28.i149.i.if.else5.i33.i.i_crit_edge:    ; preds = %if.else.i28.i149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i33.i.i

land.lhs.true.i31.i152.i:                         ; preds = %if.else.i28.i149.i
  %63 = ptrtoint ptr %pos.0.i23.i144.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pos.0.i23.i144.i, align 4
  %and.i29.i150.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i150.i)
  %tobool3.not.i30.i151.i = icmp eq i32 %and.i29.i150.i, 0
  br i1 %tobool3.not.i30.i151.i, label %land.lhs.true.i31.i152.i.if.else5.i33.i.i_crit_edge, label %land.lhs.true.i31.i152.i.for.inc.i47.i.i_crit_edge

land.lhs.true.i31.i152.i.for.inc.i47.i.i_crit_edge: ; preds = %land.lhs.true.i31.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i47.i.i

land.lhs.true.i31.i152.i.if.else5.i33.i.i_crit_edge: ; preds = %land.lhs.true.i31.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i33.i.i

if.else5.i33.i.i:                                 ; preds = %land.lhs.true.i31.i152.i.if.else5.i33.i.i_crit_edge, %if.else.i28.i149.i.if.else5.i33.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %61)
  %cmp7.i32.i.i = icmp eq i32 %52, %61
  br i1 %cmp7.i32.i.i, label %if.else5.i33.i.i.sw.epilog.i_crit_edge, label %if.end.i35.i.i

if.else5.i33.i.i.sw.epilog.i_crit_edge:           ; preds = %if.else5.i33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end.i35.i.i:                                   ; preds = %if.else5.i33.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %61)
  %cmp9.i34.i.i = icmp ult i32 %52, %61
  br i1 %cmp9.i34.i.i, label %if.end.i35.i.i.for.inc.i47.i.i_crit_edge, label %if.end11.i37.i.i

if.end.i35.i.i.for.inc.i47.i.i_crit_edge:         ; preds = %if.end.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i47.i.i

if.end11.i37.i.i:                                 ; preds = %if.end.i35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i25.i146.i)
  %cmp12.i36.i.i = icmp eq i32 %best.0.i25.i146.i, -1
  br i1 %cmp12.i36.i.i, label %if.end11.i37.i.i.sw.epilog.i_crit_edge, label %if.end14.i43.i.i

if.end11.i37.i.i.sw.epilog.i_crit_edge:           ; preds = %if.end11.i37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end14.i43.i.i:                                 ; preds = %if.end11.i37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %frequency15.i38.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %best.0.i25.i146.i, i32 2
  %65 = ptrtoint ptr %frequency15.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %frequency15.i38.i.i, align 4
  %sub.i39.i.i = sub i32 %66, %52
  %sub16.i40.i.i = sub i32 %52, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i39.i.i, i32 %sub16.i40.i.i)
  %cmp17.i41.i.i = icmp ugt i32 %sub.i39.i.i, %sub16.i40.i.i
  %idx.0.best.0.i42.i.i = select i1 %cmp17.i41.i.i, i32 %idx.0.i24.i145.i, i32 %best.0.i25.i146.i
  br label %sw.epilog.i

for.inc.i47.i.i:                                  ; preds = %if.end.i35.i.i.for.inc.i47.i.i_crit_edge, %land.lhs.true.i31.i152.i.for.inc.i47.i.i_crit_edge, %for.cond.i27.i148.i.for.inc.i47.i.i_crit_edge
  %best.1.i44.i.i = phi i32 [ %best.0.i25.i146.i, %land.lhs.true.i31.i152.i.for.inc.i47.i.i_crit_edge ], [ %best.0.i25.i146.i, %for.cond.i27.i148.i.for.inc.i47.i.i_crit_edge ], [ %idx.0.i24.i145.i, %if.end.i35.i.i.for.inc.i47.i.i_crit_edge ]
  %incdec.ptr.i45.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i23.i144.i, i32 1
  %inc.i46.i.i = add i32 %idx.0.i24.i145.i, 1
  br label %for.cond.i27.i148.i

land.end18.i:                                     ; preds = %retry.preheader.i
  %.b77.i = load i1, ptr @cpufreq_frequency_table_target.__already_done, align 1
  br i1 %.b77.i, label %land.end18.i.cpufreq_frequency_table_target.exit_crit_edge, label %if.then25.i, !prof !69

land.end18.i.cpufreq_frequency_table_target.exit_crit_edge: ; preds = %land.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_frequency_table_target.exit

if.then25.i:                                      ; preds = %land.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpufreq_frequency_table_target.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1050, i32 noundef 9, ptr noundef null) #11
  br label %cpufreq_frequency_table_target.exit

sw.epilog.i:                                      ; preds = %if.end14.i43.i.i, %if.end11.i37.i.i.sw.epilog.i_crit_edge, %if.else5.i33.i.i.sw.epilog.i_crit_edge, %for.cond.i27.i148.i.sw.epilog.i_crit_edge, %if.end14.i.i.i, %if.end11.i.i138.i.sw.epilog.i_crit_edge, %if.else5.i.i134.i.sw.epilog.i_crit_edge, %for.cond.i.i128.i.sw.epilog.i_crit_edge, %if.else5.i32.i113.i.sw.epilog.i_crit_edge, %for.cond.i27.i107.i.sw.epilog.i_crit_edge, %if.end11.i.i98.i, %if.else5.i.i93.i.sw.epilog.i_crit_edge, %for.cond.i.i87.i.sw.epilog.i_crit_edge, %if.end11.i.i.i, %if.else5.i32.i.i.sw.epilog.i_crit_edge, %for.cond.i27.i.i.sw.epilog.i_crit_edge, %if.else5.i.i.i.sw.epilog.i_crit_edge, %for.cond.i.i.i.sw.epilog.i_crit_edge
  %idx.0.i = phi i32 [ %idx.0.best.0.i.i.i, %if.end11.i.i.i ], [ %idx.0.best.0.i.i97.i, %if.end11.i.i98.i ], [ %idx.0.i.i125.i, %if.end11.i.i138.i.sw.epilog.i_crit_edge ], [ %idx.0.best.0.i.i139.i, %if.end14.i.i.i ], [ %idx.0.i24.i145.i, %if.end11.i37.i.i.sw.epilog.i_crit_edge ], [ %idx.0.best.0.i42.i.i, %if.end14.i43.i.i ], [ %idx.0.i.i125.i, %if.else5.i.i134.i.sw.epilog.i_crit_edge ], [ %best.0.i.i126.i, %for.cond.i.i128.i.sw.epilog.i_crit_edge ], [ %idx.0.i24.i145.i, %if.else5.i33.i.i.sw.epilog.i_crit_edge ], [ %best.0.i25.i146.i, %for.cond.i27.i148.i.sw.epilog.i_crit_edge ], [ %best.0.i.i.i, %for.cond.i.i.i.sw.epilog.i_crit_edge ], [ %idx.0.i.i.i, %if.else5.i.i.i.sw.epilog.i_crit_edge ], [ %idx.0.i24.i.i, %if.else5.i32.i.i.sw.epilog.i_crit_edge ], [ %best.0.i25.i.i, %for.cond.i27.i.i.sw.epilog.i_crit_edge ], [ %idx.0.i.i84.i, %if.else5.i.i93.i.sw.epilog.i_crit_edge ], [ %best.0.i.i85.i, %for.cond.i.i87.i.sw.epilog.i_crit_edge ], [ %best.0.i25.i105.i, %for.cond.i27.i107.i.sw.epilog.i_crit_edge ], [ %idx.0.i24.i104.i, %if.else5.i32.i113.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.0.i)
  %cmp55.i = icmp sgt i32 %idx.0.i, -1
  %efficiencies.0.off0.not.i = xor i1 %efficiencies.0.off0.i, true
  %brmerge.i = select i1 %cmp55.i, i1 true, i1 %efficiencies.0.off0.not.i
  br i1 %brmerge.i, label %sw.epilog.i.cpufreq_frequency_table_target.exit_crit_edge, label %sw.epilog.i.retry.i_crit_edge

sw.epilog.i.retry.i_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.i

sw.epilog.i.cpufreq_frequency_table_target.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_frequency_table_target.exit

cpufreq_frequency_table_target.exit:              ; preds = %sw.epilog.i.cpufreq_frequency_table_target.exit_crit_edge, %if.then25.i, %land.end18.i.cpufreq_frequency_table_target.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.then25.i ], [ 0, %land.end18.i.cpufreq_frequency_table_target.exit_crit_edge ], [ %idx.0.i, %sw.epilog.i.cpufreq_frequency_table_target.exit_crit_edge ]
  %frequency = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %retval.0.i, i32 2
  %67 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %frequency, align 4
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %8, align 4
  %mul = mul i32 %70, %68
  %div = udiv i32 %mul, 1000
  %sub = sub i32 %68, %div
  %and = and i32 %relation, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %min.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %71 = ptrtoint ptr %min.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %min.i, align 4
  %73 = tail call i32 @llvm.umax.i32(i32 %72, i32 %sub) #11
  %max.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 8
  %74 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max.i, align 4
  %76 = tail call i32 @llvm.umin.i32(i32 %73, i32 %75) #11
  %77 = ptrtoint ptr %freq_table_sorted.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %freq_table_sorted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp7.i = icmp eq i32 %78, 1
  %79 = ptrtoint ptr %freq_table2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %freq_table2, align 4
  br i1 %cmp7.i, label %cpufreq_frequency_table_target.exit.for.cond.i.i_crit_edge, label %cpufreq_frequency_table_target.exit.for.cond.i27.i_crit_edge

cpufreq_frequency_table_target.exit.for.cond.i27.i_crit_edge: ; preds = %cpufreq_frequency_table_target.exit
  br label %for.cond.i27.i

cpufreq_frequency_table_target.exit.for.cond.i.i_crit_edge: ; preds = %cpufreq_frequency_table_target.exit
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %cpufreq_frequency_table_target.exit.for.cond.i.i_crit_edge
  %pos.0.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i ], [ %80, %cpufreq_frequency_table_target.exit.for.cond.i.i_crit_edge ]
  %idx.0.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %cpufreq_frequency_table_target.exit.for.cond.i.i_crit_edge ]
  %best.0.i.i = phi i32 [ %best.1.i.i, %for.inc.i.i ], [ -1, %cpufreq_frequency_table_target.exit.for.cond.i.i_crit_edge ]
  %frequency.i.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %frequency.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %frequency.i.i, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %82, label %if.else.i.i [
    i32 -2, label %for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge
    i32 -1, label %for.cond.i.i.for.inc.i.i_crit_edge
  ]

for.cond.i.i.for.inc.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_h.exit

if.else.i.i:                                      ; preds = %for.cond.i.i
  br i1 %tobool5.not, label %if.else.i.i.if.else5.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.if.else5.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %84 = ptrtoint ptr %pos.0.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pos.0.i.i, align 4
  %and.i.i = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.else5.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i.if.else5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i

if.else5.i.i:                                     ; preds = %land.lhs.true.i.i.if.else5.i.i_crit_edge, %if.else.i.i.if.else5.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %76)
  %cmp7.i.i = icmp eq i32 %82, %76
  br i1 %cmp7.i.i, label %if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge, label %if.end.i.i

if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_h.exit

if.end.i.i:                                       ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %76)
  %cmp9.i.i = icmp ult i32 %82, %76
  br i1 %cmp9.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end11.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i.i)
  %cmp12.i.i = icmp eq i32 %best.0.i.i, -1
  %idx.0.best.0.i.i = select i1 %cmp12.i.i, i32 %idx.0.i.i, i32 %best.0.i.i
  br label %cpufreq_table_find_index_h.exit

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.cond.i.i.for.inc.i.i_crit_edge
  %best.1.i.i = phi i32 [ %best.0.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %best.0.i.i, %for.cond.i.i.for.inc.i.i_crit_edge ], [ %idx.0.i.i, %if.end.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i.i, i32 1
  %inc.i.i = add i32 %idx.0.i.i, 1
  br label %for.cond.i.i

for.cond.i27.i:                                   ; preds = %for.inc.i36.i, %cpufreq_frequency_table_target.exit.for.cond.i27.i_crit_edge
  %pos.0.i23.i = phi ptr [ %incdec.ptr.i34.i, %for.inc.i36.i ], [ %80, %cpufreq_frequency_table_target.exit.for.cond.i27.i_crit_edge ]
  %idx.0.i24.i = phi i32 [ %inc.i35.i, %for.inc.i36.i ], [ 0, %cpufreq_frequency_table_target.exit.for.cond.i27.i_crit_edge ]
  %best.0.i25.i = phi i32 [ %best.1.i33.i, %for.inc.i36.i ], [ -1, %cpufreq_frequency_table_target.exit.for.cond.i27.i_crit_edge ]
  %frequency.i26.i = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i23.i, i32 0, i32 2
  %86 = ptrtoint ptr %frequency.i26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %frequency.i26.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %87, label %if.else.i28.i [
    i32 -2, label %for.cond.i27.i.cpufreq_table_find_index_h.exit_crit_edge
    i32 -1, label %for.cond.i27.i.for.inc.i36.i_crit_edge
  ]

for.cond.i27.i.for.inc.i36.i_crit_edge:           ; preds = %for.cond.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i

for.cond.i27.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %for.cond.i27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_h.exit

if.else.i28.i:                                    ; preds = %for.cond.i27.i
  br i1 %tobool5.not, label %if.else.i28.i.if.else5.i32.i_crit_edge, label %land.lhs.true.i31.i

if.else.i28.i.if.else5.i32.i_crit_edge:           ; preds = %if.else.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i

land.lhs.true.i31.i:                              ; preds = %if.else.i28.i
  %89 = ptrtoint ptr %pos.0.i23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pos.0.i23.i, align 4
  %and.i29.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool3.not.i30.i = icmp eq i32 %and.i29.i, 0
  br i1 %tobool3.not.i30.i, label %land.lhs.true.i31.i.if.else5.i32.i_crit_edge, label %land.lhs.true.i31.i.for.inc.i36.i_crit_edge

land.lhs.true.i31.i.for.inc.i36.i_crit_edge:      ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i

land.lhs.true.i31.i.if.else5.i32.i_crit_edge:     ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i

if.else5.i32.i:                                   ; preds = %land.lhs.true.i31.i.if.else5.i32.i_crit_edge, %if.else.i28.i.if.else5.i32.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %76)
  %cmp7.not.i.i = icmp ugt i32 %87, %76
  br i1 %cmp7.not.i.i, label %if.else5.i32.i.for.inc.i36.i_crit_edge, label %if.else5.i32.i.cpufreq_table_find_index_h.exit_crit_edge

if.else5.i32.i.cpufreq_table_find_index_h.exit_crit_edge: ; preds = %if.else5.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_h.exit

if.else5.i32.i.for.inc.i36.i_crit_edge:           ; preds = %if.else5.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i

for.inc.i36.i:                                    ; preds = %if.else5.i32.i.for.inc.i36.i_crit_edge, %land.lhs.true.i31.i.for.inc.i36.i_crit_edge, %for.cond.i27.i.for.inc.i36.i_crit_edge
  %best.1.i33.i = phi i32 [ %best.0.i25.i, %land.lhs.true.i31.i.for.inc.i36.i_crit_edge ], [ %best.0.i25.i, %for.cond.i27.i.for.inc.i36.i_crit_edge ], [ %idx.0.i24.i, %if.else5.i32.i.for.inc.i36.i_crit_edge ]
  %incdec.ptr.i34.i = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i23.i, i32 1
  %inc.i35.i = add i32 %idx.0.i24.i, 1
  br label %for.cond.i27.i

cpufreq_table_find_index_h.exit:                  ; preds = %if.else5.i32.i.cpufreq_table_find_index_h.exit_crit_edge, %for.cond.i27.i.cpufreq_table_find_index_h.exit_crit_edge, %if.end11.i.i, %if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge, %for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge
  %retval.0.i78 = phi i32 [ %idx.0.best.0.i.i, %if.end11.i.i ], [ %best.0.i.i, %for.cond.i.i.cpufreq_table_find_index_h.exit_crit_edge ], [ %idx.0.i.i, %if.else5.i.i.cpufreq_table_find_index_h.exit_crit_edge ], [ %idx.0.i24.i, %if.else5.i32.i.cpufreq_table_find_index_h.exit_crit_edge ], [ %best.0.i25.i, %for.cond.i27.i.cpufreq_table_find_index_h.exit_crit_edge ]
  %frequency8 = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %retval.0.i78, i32 2
  %91 = ptrtoint ptr %frequency8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %frequency8, align 4
  br i1 %cmp7.i, label %cpufreq_table_find_index_h.exit.for.cond.i.i88_crit_edge, label %cpufreq_table_find_index_h.exit.for.cond.i27.i103_crit_edge

cpufreq_table_find_index_h.exit.for.cond.i27.i103_crit_edge: ; preds = %cpufreq_table_find_index_h.exit
  br label %for.cond.i27.i103

cpufreq_table_find_index_h.exit.for.cond.i.i88_crit_edge: ; preds = %cpufreq_table_find_index_h.exit
  br label %for.cond.i.i88

for.cond.i.i88:                                   ; preds = %for.inc.i.i98, %cpufreq_table_find_index_h.exit.for.cond.i.i88_crit_edge
  %pos.0.i.i84 = phi ptr [ %incdec.ptr.i.i96, %for.inc.i.i98 ], [ %80, %cpufreq_table_find_index_h.exit.for.cond.i.i88_crit_edge ]
  %idx.0.i.i85 = phi i32 [ %inc.i.i97, %for.inc.i.i98 ], [ 0, %cpufreq_table_find_index_h.exit.for.cond.i.i88_crit_edge ]
  %best.0.i.i86 = phi i32 [ %best.1.i.i95, %for.inc.i.i98 ], [ -1, %cpufreq_table_find_index_h.exit.for.cond.i.i88_crit_edge ]
  %frequency.i.i87 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i.i84, i32 0, i32 2
  %93 = ptrtoint ptr %frequency.i.i87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %frequency.i.i87, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %94, label %if.else.i.i89 [
    i32 -2, label %for.cond.i.i88.cpufreq_table_find_index_l.exit_crit_edge
    i32 -1, label %for.cond.i.i88.for.inc.i.i98_crit_edge
  ]

for.cond.i.i88.for.inc.i.i98_crit_edge:           ; preds = %for.cond.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i98

for.cond.i.i88.cpufreq_table_find_index_l.exit_crit_edge: ; preds = %for.cond.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_l.exit

if.else.i.i89:                                    ; preds = %for.cond.i.i88
  br i1 %tobool5.not, label %if.else.i.i89.if.else5.i.i94_crit_edge, label %land.lhs.true.i.i92

if.else.i.i89.if.else5.i.i94_crit_edge:           ; preds = %if.else.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i94

land.lhs.true.i.i92:                              ; preds = %if.else.i.i89
  %96 = ptrtoint ptr %pos.0.i.i84 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pos.0.i.i84, align 4
  %and.i.i90 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool3.not.i.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool3.not.i.i91, label %land.lhs.true.i.i92.if.else5.i.i94_crit_edge, label %land.lhs.true.i.i92.for.inc.i.i98_crit_edge

land.lhs.true.i.i92.for.inc.i.i98_crit_edge:      ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i98

land.lhs.true.i.i92.if.else5.i.i94_crit_edge:     ; preds = %land.lhs.true.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i.i94

if.else5.i.i94:                                   ; preds = %land.lhs.true.i.i92.if.else5.i.i94_crit_edge, %if.else.i.i89.if.else5.i.i94_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %76)
  %cmp7.not.i.i93 = icmp ult i32 %94, %76
  br i1 %cmp7.not.i.i93, label %if.else5.i.i94.for.inc.i.i98_crit_edge, label %if.else5.i.i94.cpufreq_table_find_index_l.exit_crit_edge

if.else5.i.i94.cpufreq_table_find_index_l.exit_crit_edge: ; preds = %if.else5.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_l.exit

if.else5.i.i94.for.inc.i.i98_crit_edge:           ; preds = %if.else5.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i98

for.inc.i.i98:                                    ; preds = %if.else5.i.i94.for.inc.i.i98_crit_edge, %land.lhs.true.i.i92.for.inc.i.i98_crit_edge, %for.cond.i.i88.for.inc.i.i98_crit_edge
  %best.1.i.i95 = phi i32 [ %best.0.i.i86, %land.lhs.true.i.i92.for.inc.i.i98_crit_edge ], [ %best.0.i.i86, %for.cond.i.i88.for.inc.i.i98_crit_edge ], [ %idx.0.i.i85, %if.else5.i.i94.for.inc.i.i98_crit_edge ]
  %incdec.ptr.i.i96 = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i.i84, i32 1
  %inc.i.i97 = add i32 %idx.0.i.i85, 1
  br label %for.cond.i.i88

for.cond.i27.i103:                                ; preds = %for.inc.i36.i118, %cpufreq_table_find_index_h.exit.for.cond.i27.i103_crit_edge
  %pos.0.i23.i99 = phi ptr [ %incdec.ptr.i34.i116, %for.inc.i36.i118 ], [ %80, %cpufreq_table_find_index_h.exit.for.cond.i27.i103_crit_edge ]
  %idx.0.i24.i100 = phi i32 [ %inc.i35.i117, %for.inc.i36.i118 ], [ 0, %cpufreq_table_find_index_h.exit.for.cond.i27.i103_crit_edge ]
  %best.0.i25.i101 = phi i32 [ %best.1.i33.i115, %for.inc.i36.i118 ], [ -1, %cpufreq_table_find_index_h.exit.for.cond.i27.i103_crit_edge ]
  %frequency.i26.i102 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %pos.0.i23.i99, i32 0, i32 2
  %98 = ptrtoint ptr %frequency.i26.i102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %frequency.i26.i102, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %99, label %if.else.i28.i104 [
    i32 -2, label %for.cond.i27.i103.cpufreq_table_find_index_l.exit_crit_edge
    i32 -1, label %for.cond.i27.i103.for.inc.i36.i118_crit_edge
  ]

for.cond.i27.i103.for.inc.i36.i118_crit_edge:     ; preds = %for.cond.i27.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i118

for.cond.i27.i103.cpufreq_table_find_index_l.exit_crit_edge: ; preds = %for.cond.i27.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_l.exit

if.else.i28.i104:                                 ; preds = %for.cond.i27.i103
  br i1 %tobool5.not, label %if.else.i28.i104.if.else5.i32.i109_crit_edge, label %land.lhs.true.i31.i107

if.else.i28.i104.if.else5.i32.i109_crit_edge:     ; preds = %if.else.i28.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i109

land.lhs.true.i31.i107:                           ; preds = %if.else.i28.i104
  %101 = ptrtoint ptr %pos.0.i23.i99 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pos.0.i23.i99, align 4
  %and.i29.i105 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i105)
  %tobool3.not.i30.i106 = icmp eq i32 %and.i29.i105, 0
  br i1 %tobool3.not.i30.i106, label %land.lhs.true.i31.i107.if.else5.i32.i109_crit_edge, label %land.lhs.true.i31.i107.for.inc.i36.i118_crit_edge

land.lhs.true.i31.i107.for.inc.i36.i118_crit_edge: ; preds = %land.lhs.true.i31.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i118

land.lhs.true.i31.i107.if.else5.i32.i109_crit_edge: ; preds = %land.lhs.true.i31.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else5.i32.i109

if.else5.i32.i109:                                ; preds = %land.lhs.true.i31.i107.if.else5.i32.i109_crit_edge, %if.else.i28.i104.if.else5.i32.i109_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %76)
  %cmp7.i.i108 = icmp eq i32 %99, %76
  br i1 %cmp7.i.i108, label %if.else5.i32.i109.cpufreq_table_find_index_l.exit_crit_edge, label %if.end.i.i111

if.else5.i32.i109.cpufreq_table_find_index_l.exit_crit_edge: ; preds = %if.else5.i32.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpufreq_table_find_index_l.exit

if.end.i.i111:                                    ; preds = %if.else5.i32.i109
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %76)
  %cmp9.i.i110 = icmp ugt i32 %99, %76
  br i1 %cmp9.i.i110, label %if.end.i.i111.for.inc.i36.i118_crit_edge, label %if.end11.i.i114

if.end.i.i111.for.inc.i36.i118_crit_edge:         ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i36.i118

if.end11.i.i114:                                  ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best.0.i25.i101)
  %cmp12.i.i112 = icmp eq i32 %best.0.i25.i101, -1
  %idx.0.best.0.i.i113 = select i1 %cmp12.i.i112, i32 %idx.0.i24.i100, i32 %best.0.i25.i101
  br label %cpufreq_table_find_index_l.exit

for.inc.i36.i118:                                 ; preds = %if.end.i.i111.for.inc.i36.i118_crit_edge, %land.lhs.true.i31.i107.for.inc.i36.i118_crit_edge, %for.cond.i27.i103.for.inc.i36.i118_crit_edge
  %best.1.i33.i115 = phi i32 [ %best.0.i25.i101, %land.lhs.true.i31.i107.for.inc.i36.i118_crit_edge ], [ %best.0.i25.i101, %for.cond.i27.i103.for.inc.i36.i118_crit_edge ], [ %idx.0.i24.i100, %if.end.i.i111.for.inc.i36.i118_crit_edge ]
  %incdec.ptr.i34.i116 = getelementptr %struct.cpufreq_frequency_table, ptr %pos.0.i23.i99, i32 1
  %inc.i35.i117 = add i32 %idx.0.i24.i100, 1
  br label %for.cond.i27.i103

cpufreq_table_find_index_l.exit:                  ; preds = %if.end11.i.i114, %if.else5.i32.i109.cpufreq_table_find_index_l.exit_crit_edge, %for.cond.i27.i103.cpufreq_table_find_index_l.exit_crit_edge, %if.else5.i.i94.cpufreq_table_find_index_l.exit_crit_edge, %for.cond.i.i88.cpufreq_table_find_index_l.exit_crit_edge
  %retval.0.i119 = phi i32 [ %idx.0.best.0.i.i113, %if.end11.i.i114 ], [ %idx.0.i.i85, %if.else5.i.i94.cpufreq_table_find_index_l.exit_crit_edge ], [ %best.0.i.i86, %for.cond.i.i88.cpufreq_table_find_index_l.exit_crit_edge ], [ %best.0.i25.i101, %for.cond.i27.i103.cpufreq_table_find_index_l.exit_crit_edge ], [ %idx.0.i24.i100, %if.else5.i32.i109.cpufreq_table_find_index_l.exit_crit_edge ]
  %frequency13 = getelementptr %struct.cpufreq_frequency_table, ptr %5, i32 %retval.0.i119, i32 2
  %103 = ptrtoint ptr %frequency13 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %frequency13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %92)
  %cmp = icmp eq i32 %104, %92
  br i1 %cmp, label %if.then14, label %if.end17

if.then14:                                        ; preds = %cpufreq_table_find_index_l.exit
  call void @__sanitizer_cov_trace_pc() #13
  %freq_lo15 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %freq_lo15 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %freq_lo15, align 8
  br label %cleanup

if.end17:                                         ; preds = %cpufreq_table_find_index_l.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub18 = sub i32 %sub, %92
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %3, i32 0, i32 3
  %106 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sampling_rate, align 4
  %mul19 = mul i32 %107, %sub18
  %sub20 = sub i32 %104, %92
  %div2176 = lshr i32 %sub20, 1
  %add = add i32 %mul19, %div2176
  %div23 = udiv i32 %add, %sub20
  %freq_hi_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 3
  %108 = ptrtoint ptr %freq_hi_delay_us to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %div23, ptr %freq_hi_delay_us, align 8
  %freq_lo24 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 1
  %109 = ptrtoint ptr %freq_lo24 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %92, ptr %freq_lo24, align 8
  %110 = load i32, ptr %sampling_rate, align 4
  %sub26 = sub i32 %110, %div23
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then
  %sub26.sink = phi i32 [ %sub26, %if.end17 ], [ 0, %if.then14 ], [ 0, %if.then ]
  %retval.0 = phi i32 [ %104, %if.end17 ], [ %92, %if.then14 ], [ %freq_next, %if.then ]
  %freq_lo_delay_us27 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 2
  %111 = ptrtoint ptr %freq_lo_delay_us27 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub26.sink, ptr %freq_lo_delay_us27, align 4
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @CPU_FREQ_GOV_ONDEMAND_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @od_dbs_gov) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @CPU_FREQ_GOV_ONDEMAND_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cpufreq_unregister_governor(ptr noundef nonnull @od_dbs_gov) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_unregister_governor(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_table_index_unsorted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_start(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_stop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_limits(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @od_dbs_update(ptr noundef %policy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %dbs_data1 = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dbs_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbs_data1, align 8
  %sample_type2 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sample_type2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %sample_type2, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %sample_type2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp = icmp slt i8 %bf.load, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sample_delay_ns = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %sample_delay_ns to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sample_delay_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp5 = icmp sgt i64 %6, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %freq_lo = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %freq_lo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq_lo, align 8
  %call6 = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %8, i32 noundef 5) #11
  %freq_lo_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %freq_lo_delay_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq_lo_delay_us, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %governor_data, align 4
  %dbs_data1.i = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %dbs_data1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dbs_data1.i, align 8
  %tuners.i = getelementptr inbounds %struct.dbs_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tuners.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tuners.i, align 4
  %call2.i = tail call i32 @dbs_update(ptr noundef %policy) #11
  %freq_lo.i = getelementptr inbounds %struct.od_policy_dbs_info, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %freq_lo.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %freq_lo.i, align 8
  %up_threshold.i = getelementptr inbounds %struct.dbs_data, ptr %14, i32 0, i32 5
  %18 = ptrtoint ptr %up_threshold.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %up_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %19)
  %cmp.i = icmp ugt i32 %call2.i, %19
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %cur.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 9
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur.i, align 4
  %max.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 8
  %22 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp3.i = icmp ult i32 %21, %23
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sampling_down_factor.i = getelementptr inbounds %struct.dbs_data, ptr %14, i32 0, i32 4
  %24 = ptrtoint ptr %sampling_down_factor.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sampling_down_factor.i, align 4
  %rate_mult.i = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 9
  %26 = ptrtoint ptr %rate_mult.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rate_mult.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max.i, align 4
  %29 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %governor_data, align 4
  %dbs_data1.i.i = getelementptr inbounds %struct.policy_dbs_info, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %dbs_data1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbs_data1.i.i, align 8
  %tuners.i.i = getelementptr inbounds %struct.dbs_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %tuners.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tuners.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load ptr, ptr @od_ops.0, align 4
  %call.i.i = tail call i32 %37(ptr noundef %policy, i32 noundef %28, i32 noundef 5) #11
  br label %if.end3.i.i

if.else.i.i:                                      ; preds = %if.end.i
  %38 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %28)
  %cmp.i.i = icmp eq i32 %39, %28
  br i1 %cmp.i.i, label %if.else.i.i.od_update.exit_crit_edge, label %if.else.i.i.if.end3.i.i_crit_edge

if.else.i.i.if.end3.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

if.else.i.i.od_update.exit_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %od_update.exit

if.end3.i.i:                                      ; preds = %if.else.i.i.if.end3.i.i_crit_edge, %if.then.i.i
  %freq.addr.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %28, %if.else.i.i.if.end3.i.i_crit_edge ]
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool5.not.i.i = icmp eq i32 %41, 0
  %cond.i.i = select i1 %tobool5.not.i.i, i32 5, i32 4
  %call6.i.i = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %freq.addr.0.i.i, i32 noundef %cond.i.i) #11
  br label %od_update.exit

if.else.i:                                        ; preds = %if.end
  %cpuinfo.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6
  %min_freq.i = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %min_freq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %min_freq.i, align 4
  %44 = ptrtoint ptr %cpuinfo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpuinfo.i, align 4
  %sub.i = sub i32 %45, %43
  %mul.i = mul i32 %sub.i, %call2.i
  %div.i = udiv i32 %mul.i, 100
  %add.i = add i32 %div.i, %43
  %rate_mult7.i = getelementptr inbounds %struct.policy_dbs_info, ptr %12, i32 0, i32 9
  %46 = ptrtoint ptr %rate_mult7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %rate_mult7.i, align 4
  %47 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.else.i.if.end10.i_crit_edge, label %if.then8.i

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = load ptr, ptr @od_ops.0, align 4
  %call9.i = tail call i32 %49(ptr noundef %policy, i32 noundef %add.i, i32 noundef 4) #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.else.i.if.end10.i_crit_edge
  %freq_next.0.i = phi i32 [ %call9.i, %if.then8.i ], [ %add.i, %if.else.i.if.end10.i_crit_edge ]
  %call11.i = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %freq_next.0.i, i32 noundef 6) #11
  br label %od_update.exit

od_update.exit:                                   ; preds = %if.end10.i, %if.end3.i.i, %if.else.i.i.od_update.exit_crit_edge
  %freq_lo7 = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %freq_lo7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %freq_lo7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  br i1 %tobool.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %od_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %sample_type2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load10 = load i8, ptr %sample_type2, align 4
  %bf.set12 = or i8 %bf.load10, -128
  store i8 %bf.set12, ptr %sample_type2, align 4
  %freq_hi_delay_us = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %freq_hi_delay_us to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %freq_hi_delay_us, align 8
  br label %cleanup

if.end13:                                         ; preds = %od_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sampling_rate, align 4
  %rate_mult = getelementptr inbounds %struct.policy_dbs_info, ptr %1, i32 0, i32 9
  %57 = ptrtoint ptr %rate_mult to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate_mult, align 4
  %mul = mul i32 %58, %56
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then8, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %54, %if.then8 ], [ %mul, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @od_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #15
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @od_free(ptr noundef %policy_dbs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %policy_dbs) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @od_init(ptr nocapture noundef writeonly %dbs_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %5 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu2, align 4
  %call3 = tail call i64 @get_cpu_idle_time_us(i32 noundef %8, ptr noundef null) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #11
  %and.i.i.i21 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i21 to ptr
  %preempt_count.i.i22 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i22, align 4
  %sub.i = add i32 %12, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call3)
  %cmp.not = icmp eq i64 %call3, -1
  %spec.select = select i1 %cmp.not, i32 80, i32 95
  %13 = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 4
  %15 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sampling_down_factor, align 4
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 2
  %16 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ignore_nice_load, align 4
  %17 = load i32, ptr @default_powersave_bias, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i, align 8
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 6
  %19 = ptrtoint ptr %io_is_busy to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %io_is_busy, align 4
  %tuners11 = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 1
  %20 = ptrtoint ptr %tuners11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %tuners11, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @od_exit(ptr nocapture noundef readonly %dbs_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %dbs_data, i32 0, i32 1
  %0 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @od_start(ptr nocapture noundef readonly %policy) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %governor_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 14
  %0 = ptrtoint ptr %governor_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %governor_data, align 4
  %sample_type = getelementptr inbounds %struct.od_policy_dbs_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sample_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %sample_type, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %sample_type, align 4
  %3 = load ptr, ptr %governor_data, align 4
  %freq_lo.i = getelementptr inbounds %struct.od_policy_dbs_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %freq_lo.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %freq_lo.i, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sampling_rate(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sampling_rate = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 3
  %0 = ptrtoint ptr %sampling_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sampling_rate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_sampling_rate(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_up_threshold(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 5
  %0 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %up_threshold, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_up_threshold(ptr nocapture noundef writeonly %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #6 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #11
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !66
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  %3 = add i32 %2, -101
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %3)
  %4 = icmp ult i32 %3, -100
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %up_threshold = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 5
  %5 = ptrtoint ptr %up_threshold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %up_threshold, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sampling_down_factor(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 4
  %0 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sampling_down_factor, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sampling_down_factor(ptr noundef %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #11
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !66
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  %3 = add i32 %2, -100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100000, i32 %3)
  %4 = icmp ult i32 %3, -100000
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sampling_down_factor = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 4
  %5 = ptrtoint ptr %sampling_down_factor to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %sampling_down_factor, align 4
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1
  %6 = ptrtoint ptr %policy_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn22 = load ptr, ptr %policy_list, align 4
  %cmp6.not23 = icmp eq ptr %.pn22, %policy_list
  br i1 %cmp6.not23, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn22, %if.end.for.body_crit_edge ]
  %update_mutex = getelementptr i8, ptr %.pn24, i32 -176
  call void @mutex_lock_nested(ptr noundef %update_mutex, i32 noundef 0) #11
  %rate_mult = getelementptr i8, ptr %.pn24, i32 8
  %7 = ptrtoint ptr %rate_mult to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %rate_mult, align 4
  call void @mutex_unlock(ptr noundef %update_mutex) #11
  %8 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp6.not = icmp eq ptr %.pn, %policy_list
  br i1 %cmp6.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ignore_nice_load(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 2
  %0 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ignore_nice_load, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ignore_nice_load(ptr noundef %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #11
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !66
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp ugt i32 %2, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %input, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input, align 4
  %ignore_nice_load = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 2
  %6 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ignore_nice_load, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp eq i32 %5, %7
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ignore_nice_load to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %ignore_nice_load, align 4
  call void @gov_update_cpu_data(ptr noundef %attr_set) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_update_cpu_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_powersave_bias(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners1 = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_powersave_bias(ptr noundef readonly %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #6 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tuners = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 1
  %0 = ptrtoint ptr %tuners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuners, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #11
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %input, align 4, !annotation !66
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %cmp2 = icmp ugt i32 %4, 1000
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000, ptr %input, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %policy_list = getelementptr inbounds %struct.gov_attr_set, ptr %attr_set, i32 0, i32 1
  %9 = ptrtoint ptr %policy_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn20 = load ptr, ptr %policy_list, align 4
  %cmp6.not21 = icmp eq ptr %.pn20, %policy_list
  br i1 %cmp6.not21, label %if.end4.cleanup_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn20, %if.end4.for.body_crit_edge ]
  %policy_dbs.0 = getelementptr i8, ptr %.pn22, i32 -180
  %10 = ptrtoint ptr %policy_dbs.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %policy_dbs.0, align 8
  %governor_data.i = getelementptr inbounds %struct.cpufreq_policy, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %governor_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %governor_data.i, align 4
  %freq_lo.i = getelementptr inbounds %struct.od_policy_dbs_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %freq_lo.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %freq_lo.i, align 8
  %15 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp6.not = icmp eq ptr %.pn, %policy_list
  br i1 %cmp6.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end4.cleanup_crit_edge ], [ %count, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_io_is_busy(ptr nocapture noundef readonly %attr_set, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 6
  %0 = ptrtoint ptr %io_is_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_is_busy, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_io_is_busy(ptr noundef %attr_set, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %input = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %input) #11
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %input, align 4, !annotation !66
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %input)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  %lnot.ext = zext i1 %tobool to i32
  %io_is_busy = getelementptr inbounds %struct.dbs_data, ptr %attr_set, i32 0, i32 6
  %3 = ptrtoint ptr %io_is_busy to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %lnot.ext, ptr %io_is_busy, align 4
  call void @gov_update_cpu_data(ptr noundef %attr_set) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %input) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbs_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !50, !52, !53, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__ksymtab_od_register_powersave_bias_handler, !1, !"__ksymtab_od_register_powersave_bias_handler", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 458, i32 1}
!2 = !{ptr @__ksymtab_od_unregister_powersave_bias_handler, !3, !"__ksymtab_od_unregister_powersave_bias_handler", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 465, i32 1}
!4 = !{ptr @__UNIQUE_ID_author224, !5, !"__UNIQUE_ID_author224", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 467, i32 1}
!6 = !{ptr @__UNIQUE_ID_author225, !7, !"__UNIQUE_ID_author225", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 468, i32 1}
!8 = !{ptr @__UNIQUE_ID_description226, !9, !"__UNIQUE_ID_description226", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 469, i32 1}
!10 = !{ptr @__UNIQUE_ID_file227, !11, !"__UNIQUE_ID_file227", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 471, i32 1}
!12 = !{ptr @__UNIQUE_ID_license228, !11, !"__UNIQUE_ID_license228", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_cpufreq_ondemand__229_480_CPU_FREQ_GOV_ONDEMAND_init1, !14, !"__initcall__kmod_cpufreq_ondemand__229_480_CPU_FREQ_GOV_ONDEMAND_init1", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 480, i32 1}
!15 = !{ptr @__exitcall_CPU_FREQ_GOV_ONDEMAND_exit, !16, !"__exitcall_CPU_FREQ_GOV_ONDEMAND_exit", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 481, i32 1}
!17 = distinct !{null, !18, !"od_ops", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 399, i32 22}
!19 = !{ptr @default_powersave_bias, !20, !"default_powersave_bias", i1 false, i1 false}
!20 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 31, i32 21}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpufreq.h", i32 1050, i32 3}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @od_dbs_gov, !28, !"od_dbs_gov", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 403, i32 28}
!29 = !{ptr @od_groups, !30, !"od_groups", i1 false, i1 false}
!30 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 340, i32 1}
!31 = !{ptr @od_group, !30, !"od_group", i1 false, i1 false}
!32 = !{ptr @od_attrs, !33, !"od_attrs", i1 false, i1 false}
!33 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 331, i32 26}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 324, i32 1}
!36 = !{ptr @sampling_rate, !35, !"sampling_rate", i1 false, i1 false}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 317, i32 1}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 326, i32 1}
!41 = !{ptr @up_threshold, !40, !"up_threshold", i1 false, i1 false}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 229, i32 20}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 327, i32 1}
!46 = !{ptr @sampling_down_factor, !45, !"sampling_down_factor", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 328, i32 1}
!49 = !{ptr @ignore_nice_load, !48, !"ignore_nice_load", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 329, i32 1}
!52 = !{ptr @powersave_bias, !51, !"powersave_bias", i1 false, i1 false}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/cpufreq/cpufreq_ondemand.c", i32 325, i32 1}
!55 = !{ptr @io_is_busy, !54, !"io_is_busy", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i8 0, i8 2}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2153667224}
!71 = !{i64 2153667403}
