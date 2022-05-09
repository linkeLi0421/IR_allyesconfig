; ModuleID = '/llk/IR_all_yes/kernel/smp.c_pt.bc'
source_filename = "../kernel/smp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+smp_call_function_single\22, \22a\22\09"
module asm "\09.weak\09__crc_smp_call_function_single\09\09\09\09"
module asm "\09.long\09__crc_smp_call_function_single\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_single:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_single\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smp_call_function_single_async\22, \22a\22\09"
module asm "\09.weak\09__crc_smp_call_function_single_async\09\09\09\09"
module asm "\09.long\09__crc_smp_call_function_single_async\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_single_async:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_single_async\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_single_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smp_call_function_any\22, \22a\22\09"
module asm "\09.weak\09__crc_smp_call_function_any\09\09\09\09"
module asm "\09.long\09__crc_smp_call_function_any\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_any:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_any\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+smp_call_function_many\22, \22a\22\09"
module asm "\09.weak\09__crc_smp_call_function_many\09\09\09\09"
module asm "\09.long\09__crc_smp_call_function_many\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function_many:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function_many\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function_many:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+smp_call_function\22, \22a\22\09"
module asm "\09.weak\09__crc_smp_call_function\09\09\09\09"
module asm "\09.long\09__crc_smp_call_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_function:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_function\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+setup_max_cpus\22, \22a\22\09"
module asm "\09.weak\09__crc_setup_max_cpus\09\09\09\09"
module asm "\09.long\09__crc_setup_max_cpus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_max_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_max_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_setup_max_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nr_cpu_ids\22, \22a\22\09"
module asm "\09.weak\09__crc_nr_cpu_ids\09\09\09\09"
module asm "\09.long\09__crc_nr_cpu_ids\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_cpu_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_cpu_ids\22\09\09\09\09\09"
module asm "__kstrtabns_nr_cpu_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+on_each_cpu_cond_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_on_each_cpu_cond_mask\09\09\09\09"
module asm "\09.long\09__crc_on_each_cpu_cond_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_on_each_cpu_cond_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22on_each_cpu_cond_mask\22\09\09\09\09\09"
module asm "__kstrtabns_on_each_cpu_cond_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kick_all_cpus_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_kick_all_cpus_sync\09\09\09\09"
module asm "\09.long\09__crc_kick_all_cpus_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kick_all_cpus_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22kick_all_cpus_sync\22\09\09\09\09\09"
module asm "__kstrtabns_kick_all_cpus_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wake_up_all_idle_cpus\22, \22a\22\09"
module asm "\09.weak\09__crc_wake_up_all_idle_cpus\09\09\09\09"
module asm "\09.long\09__crc_wake_up_all_idle_cpus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_all_idle_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_all_idle_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_all_idle_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+smp_call_on_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_smp_call_on_cpu\09\09\09\09"
module asm "\09.long\09__crc_smp_call_on_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_smp_call_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22smp_call_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_smp_call_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.call_function_data = type { ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.llist_head = type { ptr }
%struct.irq_cpustat_t = type { i32, [124 x i8] }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smp_call_on_cpu_struct = type { %struct.work_struct, %struct.completion, ptr, ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@cfd_data = weak dso_local global %struct.call_function_data zeroinitializer, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = dso_local global i32 4, section ".data..read_mostly", align 4
@call_single_queue = weak dso_local global %struct.llist_head zeroinitializer, section ".data..percpu..shared_aligned", align 128
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 128
@__const.smp_call_function_single.csd_stack = private unnamed_addr constant %struct.__call_single_data { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon { i32 17 } }, ptr null, ptr null }, align 16
@smp_call_function_single.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel/smp.c\00", [19 x i8] zeroinitializer }, align 32
@smp_call_function_single.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@csd_data = weak dso_local global %struct.__call_single_data zeroinitializer, section ".data..percpu..shared_aligned", align 128
@__kstrtab_smp_call_function_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_single = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_single to i32), ptr @__kstrtab_smp_call_function_single, ptr @__kstrtabns_smp_call_function_single }, section "___ksymtab+smp_call_function_single", align 4
@__kstrtab_smp_call_function_single_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_single_async = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_single_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_single_async to i32), ptr @__kstrtab_smp_call_function_single_async, ptr @__kstrtabns_smp_call_function_single_async }, section "___ksymtab_gpl+smp_call_function_single_async", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_smp_call_function_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_any = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_any to i32), ptr @__kstrtab_smp_call_function_any, ptr @__kstrtabns_smp_call_function_any }, section "___ksymtab_gpl+smp_call_function_any", align 4
@__kstrtab_smp_call_function_many = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function_many = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function_many = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function_many to i32), ptr @__kstrtab_smp_call_function_many, ptr @__kstrtabns_smp_call_function_many }, section "___ksymtab+smp_call_function_many", align 4
@__kstrtab_smp_call_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_function = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_function to i32), ptr @__kstrtab_smp_call_function, ptr @__kstrtabns_smp_call_function }, section "___ksymtab+smp_call_function", align 4
@setup_max_cpus = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__kstrtab_setup_max_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_max_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_max_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_max_cpus to i32), ptr @__kstrtab_setup_max_cpus, ptr @__kstrtabns_setup_max_cpus }, section "___ksymtab+setup_max_cpus", align 4
@__setup_str_nosmp = internal constant [6 x i8] c"nosmp\00", section ".init.rodata", align 1
@__setup_nosmp = internal global %struct.obs_kernel_param { ptr @__setup_str_nosmp, ptr @nosmp, i32 1 }, section ".init.setup", align 4
@__setup_str_nrcpus = internal constant [8 x i8] c"nr_cpus\00", section ".init.rodata", align 1
@__setup_nrcpus = internal global %struct.obs_kernel_param { ptr @__setup_str_nrcpus, ptr @nrcpus, i32 1 }, section ".init.setup", align 4
@__setup_str_maxcpus = internal constant [8 x i8] c"maxcpus\00", section ".init.rodata", align 1
@__setup_maxcpus = internal global %struct.obs_kernel_param { ptr @__setup_str_maxcpus, ptr @maxcpus, i32 1 }, section ".init.setup", align 4
@__kstrtab_nr_cpu_ids = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_cpu_ids = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_cpu_ids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_cpu_ids to i32), ptr @__kstrtab_nr_cpu_ids, ptr @__kstrtabns_nr_cpu_ids }, section "___ksymtab+nr_cpu_ids", align 4
@smp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016smp: Bringing up secondary CPUs ...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smp_init\00", [23 x i8] zeroinitializer }, align 32
@smp_init._entry_ptr = internal global ptr @smp_init._entry, section ".printk_index", align 4
@smp_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.1, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016smp: Brought up %d node%s, %d CPU%s\0A\00", [57 x i8] zeroinitializer }, align 32
@smp_init._entry_ptr.7 = internal global ptr @smp_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_on_each_cpu_cond_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_on_each_cpu_cond_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_on_each_cpu_cond_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @on_each_cpu_cond_mask to i32), ptr @__kstrtab_on_each_cpu_cond_mask, ptr @__kstrtabns_on_each_cpu_cond_mask }, section "___ksymtab+on_each_cpu_cond_mask", align 4
@__kstrtab_kick_all_cpus_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kick_all_cpus_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_kick_all_cpus_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kick_all_cpus_sync to i32), ptr @__kstrtab_kick_all_cpus_sync, ptr @__kstrtabns_kick_all_cpus_sync }, section "___ksymtab_gpl+kick_all_cpus_sync", align 4
@__kstrtab_wake_up_all_idle_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_all_idle_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_all_idle_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_all_idle_cpus to i32), ptr @__kstrtab_wake_up_all_idle_cpus, ptr @__kstrtabns_wake_up_all_idle_cpus }, section "___ksymtab_gpl+wake_up_all_idle_cpus", align 4
@smp_call_on_cpu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&sscs.work)\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_smp_call_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_smp_call_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_smp_call_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @smp_call_on_cpu to i32), ptr @__kstrtab_smp_call_on_cpu, ptr @__kstrtabns_smp_call_on_cpu }, section "___ksymtab_gpl+smp_call_on_cpu", align 4
@__pcpu_unique_cfd_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_call_single_queue = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_csd_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@flush_smp_call_function_queue.warned = internal global { i1, [31 x i8] } zeroinitializer, align 32
@flush_smp_call_function_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IPI on offline CPU %d\0A\00", [41 x i8] zeroinitializer }, align 32
@flush_smp_call_function_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014smp: IPI callback %pS sent to offline CPU\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"flush_smp_call_function_queue\00", [34 x i8] zeroinitializer }, align 32
@flush_smp_call_function_queue._entry_ptr = internal global ptr @flush_smp_call_function_queue._entry, section ".printk_index", align 4
@flush_smp_call_function_queue._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.1, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014smp: IPI task-wakeup sent to offline CPU\0A\00", [52 x i8] zeroinitializer }, align 32
@flush_smp_call_function_queue._entry_ptr.16 = internal global ptr @flush_smp_call_function_queue._entry.14, section ".printk_index", align 4
@flush_smp_call_function_queue._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.1, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014smp: IPI callback, unknown type %d, sent to offline CPU\0A\00", [37 x i8] zeroinitializer }, align 32
@flush_smp_call_function_queue._entry_ptr.19 = internal global ptr @flush_smp_call_function_queue._entry.17, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@smp_call_function_many_cond.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@early_boot_irqs_disabled = external dso_local local_unnamed_addr global i8, align 1
@smp_call_function_many_cond.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@smp_call_function_many_cond.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 731, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"setup_max_cpus\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1021, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1090, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1096, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 1227, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [37 x i8] c"flush_smp_call_function_queue.warned\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 584, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 595, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 600, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private constant [16 x i8] c"../kernel/smp.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 604, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 108, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 87, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__ksymtab_kick_all_cpus_sync, ptr @__ksymtab_nr_cpu_ids, ptr @__ksymtab_on_each_cpu_cond_mask, ptr @__ksymtab_setup_max_cpus, ptr @__ksymtab_smp_call_function, ptr @__ksymtab_smp_call_function_any, ptr @__ksymtab_smp_call_function_many, ptr @__ksymtab_smp_call_function_single, ptr @__ksymtab_smp_call_function_single_async, ptr @__ksymtab_smp_call_on_cpu, ptr @__ksymtab_wake_up_all_idle_cpus, ptr @__setup_maxcpus, ptr @__setup_nosmp, ptr @__setup_nrcpus, ptr @flush_smp_call_function_queue._entry, ptr @flush_smp_call_function_queue._entry.14, ptr @flush_smp_call_function_queue._entry.17, ptr @flush_smp_call_function_queue._entry_ptr, ptr @flush_smp_call_function_queue._entry_ptr.16, ptr @flush_smp_call_function_queue._entry_ptr.19, ptr @smp_init._entry, ptr @smp_init._entry.5, ptr @smp_init._entry_ptr, ptr @smp_init._entry_ptr.7, ptr @.str.1, ptr @setup_max_cpus, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @smp_call_on_cpu.__key, ptr @.str.10, ptr @flush_smp_call_function_queue.warned, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @init_completion.__key, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_max_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_call_on_cpu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_smp_call_function_queue.warned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_smp_call_function_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_smp_call_function_queue._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_smp_call_function_queue._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpcfd_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cfd_data to i32)
  %2 = inttoptr i32 %add to ptr
  %cpumask = getelementptr inbounds %struct.call_function_data, ptr %2, i32 0, i32 1
  %call = tail call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %cpumask, i32 noundef 3264, i32 noundef 0) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpumask_ipi = getelementptr inbounds %struct.call_function_data, ptr %2, i32 0, i32 2
  %call2 = tail call zeroext i1 @zalloc_cpumask_var_node(ptr noundef %cpumask_ipi, i32 noundef 3264, i32 noundef 0) #12
  br i1 %call2, label %if.end5, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %call6 = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 16) #15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %2, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpumask, align 4
  tail call void @free_cpumask_var(ptr noundef %5) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end.cleanup.sink.split_crit_edge
  %cpumask_ipi.sink = phi ptr [ %cpumask_ipi, %if.then8 ], [ %cpumask, %if.end.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %cpumask_ipi.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpumask_ipi.sink, align 4
  tail call void @free_cpumask_var(ptr noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpcfd_dead_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cfd_data to i32)
  %2 = inttoptr i32 %add to ptr
  %cpumask = getelementptr inbounds %struct.call_function_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpumask, align 4
  tail call void @free_cpumask_var(ptr noundef %4) #12
  %cpumask_ipi = getelementptr inbounds %struct.call_function_data, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %cpumask_ipi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpumask_ipi, align 4
  tail call void @free_cpumask_var(ptr noundef %6) #12
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %8) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smpcfd_dying_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @flush_smp_call_function_queue(i1 noundef zeroext false)
  tail call void @irq_work_run() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_smp_call_function_queue(i1 noundef zeroext %warn_cpu_offline) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end88_crit_edge, label %land.lhs.true

entry.if.end88_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !106
  %5 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i335 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i335 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %14 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i323 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i323 to ptr
  %preempt_count.i.i324 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i324 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i324, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i324, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %land.rhs, label %land.lhs.true.if.end88_crit_edge

land.lhs.true.if.end88_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i325 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i325 to ptr
  %preempt_count.i.i326 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i326 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i326, align 4
  %add.i327 = add i32 %21, 1
  store volatile i32 %add.i327, ptr %preempt_count.i.i326, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add46 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %29 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i328 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i328 to ptr
  %preempt_count.i.i329 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i329 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i329, align 4
  %sub.i330 = add i32 %32, -1
  store volatile i32 %sub.i330, ptr %preempt_count.i.i329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool53.not = icmp eq i32 %28, 0
  br i1 %tobool53.not, label %land.rhs.if.end88_crit_edge, label %land.rhs57

land.rhs.if.end88_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.rhs57:                                       ; preds = %land.rhs
  %.b315317 = load i1, ptr @flush_smp_call_function_queue.__already_done, align 1
  br i1 %.b315317, label %land.rhs57.if.end88_crit_edge, label %if.then, !prof !110

land.rhs57.if.end88_crit_edge:                    ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then:                                          ; preds = %land.rhs57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @flush_smp_call_function_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 568, i32 noundef 9, ptr noundef null) #12
  br label %if.end88

if.end88:                                         ; preds = %if.then, %land.rhs57.if.end88_crit_edge, %land.rhs.if.end88_crit_edge, %land.lhs.true.if.end88_crit_edge, %entry.if.end88_crit_edge
  %33 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i336 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i336 to ptr
  %cpu106 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu106, align 4
  %arrayidx107 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx107, align 4
  %add108 = add i32 %38, ptrtoint (ptr @call_single_queue to i32)
  %39 = inttoptr i32 %add108 to ptr
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %39, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %39) #12, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %40, 0
  %41 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  %call110 = tail call ptr @llist_reverse_order(ptr noundef %41) #12
  br i1 %warn_cpu_offline, label %land.lhs.true112, label %if.end88.if.end182_crit_edge

if.end88.if.end182_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

land.lhs.true112:                                 ; preds = %if.end88
  %42 = ptrtoint ptr %cpu106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu106, align 4
  %44 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %43)
  %cmp.not.i.i.i.i = icmp ugt i32 %44, %43
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true112.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

land.lhs.true112.cpu_online.exit_crit_edge:       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true112
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %land.lhs.true112.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %43, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i337 = and i32 %43, 31
  %47 = shl nuw i32 1, %and.i.i.i337
  %48 = and i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not = icmp eq i32 %48, 0
  br i1 %tobool.i.not, label %land.lhs.true116, label %cpu_online.exit.if.end182_crit_edge

cpu_online.exit.if.end182_crit_edge:              ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

land.lhs.true116:                                 ; preds = %cpu_online.exit
  %.b316 = load i1, ptr @flush_smp_call_function_queue.warned, align 1
  br i1 %.b316, label %land.lhs.true116.if.end182_crit_edge, label %land.rhs118

land.lhs.true116.if.end182_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

land.rhs118:                                      ; preds = %land.lhs.true116
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %39, align 4
  %cmp.i.not = icmp eq ptr %50, null
  br i1 %cmp.i.not, label %land.rhs118.if.end182_crit_edge, label %if.then129, !prof !110

land.rhs118.if.end182_crit_edge:                  ; preds = %land.rhs118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.then129:                                       ; preds = %land.rhs118
  store i1 true, ptr @flush_smp_call_function_queue.warned, align 1
  %51 = ptrtoint ptr %cpu106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu106, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 584, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %52) #12
  %cond = icmp eq ptr %call110, null
  br i1 %cond, label %if.then129.cleanup_crit_edge, label %if.then129.for.body_crit_edge

if.then129.for.body_crit_edge:                    ; preds = %if.then129
  br label %for.body

if.then129.cleanup_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then129.for.body_crit_edge
  %csd.0339 = phi ptr [ %61, %for.inc.for.body_crit_edge ], [ %call110, %if.then129.for.body_crit_edge ]
  %53 = getelementptr inbounds %struct.__call_single_node, ptr %csd.0339, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %and = and i32 %55, 240
  %56 = lshr exact i32 %and, 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %do.end173 [
    i32 0, label %for.body.do.end162_crit_edge
    i32 1, label %for.body.do.end162_crit_edge352
    i32 2, label %for.body.do.end162_crit_edge353
    i32 3, label %do.end168
  ]

for.body.do.end162_crit_edge353:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end162

for.body.do.end162_crit_edge352:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end162

for.body.do.end162_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end162

do.end162:                                        ; preds = %for.body.do.end162_crit_edge, %for.body.do.end162_crit_edge352, %for.body.do.end162_crit_edge353
  %func = getelementptr inbounds %struct.__call_single_data, ptr %csd.0339, i32 0, i32 1
  %58 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %func, align 8
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %59) #16
  br label %for.inc

do.end168:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #16
  br label %for.inc

do.end173:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %and) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end173, %do.end168, %do.end162
  %60 = ptrtoint ptr %csd.0339 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %csd.0339, align 16
  %cmp.not = icmp eq ptr %61, null
  br i1 %cmp.not, label %for.inc.if.end182_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end182_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.end182:                                        ; preds = %for.inc.if.end182_crit_edge, %land.rhs118.if.end182_crit_edge, %land.lhs.true116.if.end182_crit_edge, %cpu_online.exit.if.end182_crit_edge, %if.end88.if.end182_crit_edge
  %cmp188.not340 = icmp eq ptr %call110, null
  br i1 %cmp188.not340, label %if.end182.cleanup_crit_edge, label %if.end182.land.rhs189_crit_edge

if.end182.land.rhs189_crit_edge:                  ; preds = %if.end182
  br label %land.rhs189

if.end182.cleanup_crit_edge:                      ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs189:                                      ; preds = %for.inc217.land.rhs189_crit_edge, %if.end182.land.rhs189_crit_edge
  %csd.1344 = phi ptr [ %63, %for.inc217.land.rhs189_crit_edge ], [ %call110, %if.end182.land.rhs189_crit_edge ]
  %entry1.0343 = phi ptr [ %entry1.2, %for.inc217.land.rhs189_crit_edge ], [ %call110, %if.end182.land.rhs189_crit_edge ]
  %prev.0341 = phi ptr [ %prev.1, %for.inc217.land.rhs189_crit_edge ], [ null, %if.end182.land.rhs189_crit_edge ]
  %62 = ptrtoint ptr %csd.1344 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %csd.1344, align 16
  %64 = getelementptr inbounds %struct.__call_single_node, ptr %csd.1344, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %and199 = and i32 %66, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and199)
  %cmp200 = icmp eq i32 %and199, 16
  br i1 %cmp200, label %if.then201, label %land.rhs189.for.inc217_crit_edge

land.rhs189.for.inc217_crit_edge:                 ; preds = %land.rhs189
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc217

if.then201:                                       ; preds = %land.rhs189
  %func203 = getelementptr inbounds %struct.__call_single_data, ptr %csd.1344, i32 0, i32 1
  %67 = ptrtoint ptr %func203 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %func203, align 8
  %info204 = getelementptr inbounds %struct.__call_single_data, ptr %csd.1344, i32 0, i32 2
  %69 = ptrtoint ptr %info204 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %info204, align 4
  %tobool205.not = icmp eq ptr %prev.0341, null
  br i1 %tobool205.not, label %if.then201.if.end212_crit_edge, label %if.then206

if.then201.if.end212_crit_edge:                   ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

if.then206:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %prev.0341 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %63, ptr %prev.0341, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then206, %if.then201.if.end212_crit_edge
  %entry1.1 = phi ptr [ %entry1.0343, %if.then206 ], [ %63, %if.then201.if.end212_crit_edge ]
  tail call void %68(ptr noundef %70) #12
  %72 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %64, align 4
  %and.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end212.csd_unlock.exit_crit_edge, !prof !114

if.end212.csd_unlock.exit_crit_edge:              ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_unlock.exit

do.end.i:                                         ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #12
  br label %csd_unlock.exit

csd_unlock.exit:                                  ; preds = %do.end.i, %if.end212.csd_unlock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %64, align 4
  br label %for.inc217

for.inc217:                                       ; preds = %csd_unlock.exit, %land.rhs189.for.inc217_crit_edge
  %prev.1 = phi ptr [ %prev.0341, %csd_unlock.exit ], [ %csd.1344, %land.rhs189.for.inc217_crit_edge ]
  %entry1.2 = phi ptr [ %entry1.1, %csd_unlock.exit ], [ %entry1.0343, %land.rhs189.for.inc217_crit_edge ]
  %cmp188.not = icmp eq ptr %63, null
  br i1 %cmp188.not, label %for.end218, label %for.inc217.land.rhs189_crit_edge

for.inc217.land.rhs189_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs189

for.end218:                                       ; preds = %for.inc217
  %tobool219.not = icmp eq ptr %entry1.2, null
  br i1 %tobool219.not, label %for.end218.cleanup_crit_edge, label %for.end218.land.rhs228_crit_edge

for.end218.land.rhs228_crit_edge:                 ; preds = %for.end218
  br label %land.rhs228

for.end218.cleanup_crit_edge:                     ; preds = %for.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs228:                                      ; preds = %if.end264.land.rhs228_crit_edge, %for.end218.land.rhs228_crit_edge
  %csd.2348 = phi ptr [ %76, %if.end264.land.rhs228_crit_edge ], [ %entry1.2, %for.end218.land.rhs228_crit_edge ]
  %entry1.3347 = phi ptr [ %entry1.5, %if.end264.land.rhs228_crit_edge ], [ %entry1.2, %for.end218.land.rhs228_crit_edge ]
  %prev.2346 = phi ptr [ %prev.3, %if.end264.land.rhs228_crit_edge ], [ null, %for.end218.land.rhs228_crit_edge ]
  %75 = ptrtoint ptr %csd.2348 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %csd.2348, align 16
  %77 = getelementptr inbounds %struct.__call_single_node, ptr %csd.2348, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %and238 = and i32 %79, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and238)
  %cmp239.not = icmp eq i32 %and238, 48
  br i1 %cmp239.not, label %land.rhs228.if.end264_crit_edge, label %if.then240

land.rhs228.if.end264_crit_edge:                  ; preds = %land.rhs228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.then240:                                       ; preds = %land.rhs228
  %tobool241.not = icmp eq ptr %prev.2346, null
  br i1 %tobool241.not, label %if.then240.if.end249_crit_edge, label %if.then242

if.then240.if.end249_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end249

if.then242:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %prev.2346 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %76, ptr %prev.2346, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then242, %if.then240.if.end249_crit_edge
  %entry1.4 = phi ptr [ %entry1.3347, %if.then242 ], [ %76, %if.then240.if.end249_crit_edge ]
  %trunc = trunc i32 %and238 to i8
  %81 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %trunc, label %if.end249.if.end264_crit_edge [
    i8 0, label %if.then251
    i8 32, label %if.then258
  ]

if.end249.if.end264_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end264

if.then251:                                       ; preds = %if.end249
  %func253 = getelementptr inbounds %struct.__call_single_data, ptr %csd.2348, i32 0, i32 1
  %82 = ptrtoint ptr %func253 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %func253, align 8
  %info255 = getelementptr inbounds %struct.__call_single_data, ptr %csd.2348, i32 0, i32 2
  %84 = ptrtoint ptr %info255 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %info255, align 4
  %86 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %77, align 4
  %and.i331 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i331)
  %tobool.not.i332 = icmp eq i32 %and.i331, 0
  br i1 %tobool.not.i332, label %do.end.i333, label %if.then251.csd_unlock.exit334_crit_edge, !prof !114

if.then251.csd_unlock.exit334_crit_edge:          ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_unlock.exit334

do.end.i333:                                      ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #12
  br label %csd_unlock.exit334

csd_unlock.exit334:                               ; preds = %do.end.i333, %if.then251.csd_unlock.exit334_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %88 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 0, ptr %77, align 4
  tail call void %83(ptr noundef %85) #12
  br label %if.end264

if.then258:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @irq_work_single(ptr noundef nonnull %csd.2348) #12
  br label %if.end264

if.end264:                                        ; preds = %if.then258, %csd_unlock.exit334, %if.end249.if.end264_crit_edge, %land.rhs228.if.end264_crit_edge
  %prev.3 = phi ptr [ %prev.2346, %csd_unlock.exit334 ], [ %prev.2346, %if.then258 ], [ %prev.2346, %if.end249.if.end264_crit_edge ], [ %csd.2348, %land.rhs228.if.end264_crit_edge ]
  %entry1.5 = phi ptr [ %entry1.4, %csd_unlock.exit334 ], [ %entry1.4, %if.then258 ], [ %entry1.4, %if.end249.if.end264_crit_edge ], [ %entry1.3347, %land.rhs228.if.end264_crit_edge ]
  %cmp227.not = icmp eq ptr %76, null
  br i1 %cmp227.not, label %for.end266, label %if.end264.land.rhs228_crit_edge

if.end264.land.rhs228_crit_edge:                  ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs228

for.end266:                                       ; preds = %if.end264
  %tobool267.not = icmp eq ptr %entry1.5, null
  br i1 %tobool267.not, label %for.end266.cleanup_crit_edge, label %if.then268

for.end266.cleanup_crit_edge:                     ; preds = %for.end266
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then268:                                       ; preds = %for.end266
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sched_ttwu_pending(ptr noundef nonnull %entry1.5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then268, %for.end266.cleanup_crit_edge, %for.end218.cleanup_crit_edge, %if.end182.cleanup_crit_edge, %if.then129.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_run() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @call_function_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %0)
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call8 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call6, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @call_single_queue to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call8, ptr noundef nonnull @__cpu_possible_mask) #17
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %call3 = tail call i32 @smpcfd_prepare_cpu(i32 noundef %9)
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__smp_call_single_queue(i32 noundef %cpu, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @call_single_queue to i32)
  %2 = inttoptr i32 %add to ptr
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %node, ptr noundef %node, ptr noundef %2) #12
  br i1 %call.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @send_call_function_single_ipi(i32 noundef %cpu) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @send_call_function_single_ipi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_smp_call_function_single_interrupt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @flush_smp_call_function_queue(i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @call_single_queue to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !116
  %and.i74 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not = icmp eq i32 %and.i74, 0
  br i1 %tobool.not, label %if.then16, label %do.body4.do.end19_crit_edge

do.body4.do.end19_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body4.do.end19_crit_edge
  tail call fastcc void @flush_smp_call_function_queue(i1 noundef zeroext true)
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %13, ptrtoint (ptr @irq_stat to i32)
  %14 = inttoptr i32 %add36 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool38.not = icmp eq i32 %16, 0
  br i1 %tobool38.not, label %do.end19.do.body41_crit_edge, label %if.then39

do.end19.do.body41_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.then39:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @do_softirq() #12
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %do.end19.do.body41_crit_edge
  br i1 %tobool.not, label %if.then50, label %do.body41.do.body52_crit_edge

do.body41.do.body52_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

if.then50:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body52

do.body52:                                        ; preds = %if.then50, %do.body41.do.body52_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !117
  %and.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool60.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool60.not, label %if.then64, label %do.body52.do.end67_crit_edge, !prof !114

do.body52.do.end67_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52.do.end67_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #12, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_softirq() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_call_function_single(i32 noundef %cpu, ptr noundef %func, ptr noundef %info, i32 noundef %wait) #0 align 64 {
entry:
  %csd_stack = alloca %struct.__call_single_data, align 16
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csd_stack.sroa.gep183 = getelementptr inbounds %struct.__call_single_node, ptr %csd_stack, i32 0, i32 1
  %csd_stack.sroa.gep174 = getelementptr inbounds %struct.__call_single_data, ptr %csd_stack, i32 0, i32 2
  %csd_stack.sroa.gep = getelementptr inbounds %struct.__call_single_data, ptr %csd_stack, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %csd_stack) #12
  %0 = call ptr @memcpy(ptr %csd_stack, ptr @__const.smp_call_function_single.csd_stack, i32 16)
  %1 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !119
  %5 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i170 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i170 to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu1, align 4
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp.not.i.i.i.i = icmp ugt i32 %9, %8
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %8, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i171 = and i32 %8, 31
  %12 = shl nuw i32 1, %and.i.i.i171
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end52_crit_edge, label %land.lhs.true

cpu_online.exit.if.end52_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true:                                    ; preds = %cpu_online.exit
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !117
  %and.i172 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not = icmp eq i32 %and.i172, 0
  br i1 %tobool.not, label %land.lhs.true.if.end52_crit_edge, label %land.rhs

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %15 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %land.rhs21, label %land.rhs.if.end52_crit_edge

land.rhs.if.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.rhs21:                                       ; preds = %land.rhs
  %.b159 = load i1, ptr @smp_call_function_single.__already_done, align 1
  br i1 %.b159, label %land.rhs21.if.end52_crit_edge, label %if.then, !prof !110

land.rhs21.if.end52_crit_edge:                    ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then:                                          ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @smp_call_function_single.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 732, i32 noundef 9, ptr noundef null) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then, %land.rhs21.if.end52_crit_edge, %land.rhs.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %cpu_online.exit.if.end52_crit_edge
  %16 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %19, 15728640
  %20 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i163 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i163 to ptr
  %preempt_count.i164 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i164 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i164, align 4
  %and63 = and i32 %23, 983040
  %or = or i32 %and63, %and
  %24 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i165 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i165 to ptr
  %preempt_count.i166 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i166 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i166, align 4
  %and66 = and i32 %27, 256
  %or67 = or i32 %or, %and66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or67)
  %tobool68.not = icmp eq i32 %or67, 0
  br i1 %tobool68.not, label %if.end52.if.end118_crit_edge, label %land.rhs80

if.end52.if.end118_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.rhs80:                                       ; preds = %if.end52
  %.b157158 = load i1, ptr @smp_call_function_single.__already_done.2, align 1
  br i1 %.b157158, label %land.rhs80.if.end118_crit_edge, label %if.then91, !prof !110

land.rhs80.if.end118_crit_edge:                   ; preds = %land.rhs80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then91:                                        ; preds = %land.rhs80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @smp_call_function_single.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 740, i32 noundef 9, ptr noundef null) #12
  br label %if.end118

if.end118:                                        ; preds = %if.then91, %land.rhs80.if.end118_crit_edge, %if.end52.if.end118_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool126.not = icmp eq i32 %wait, 0
  br i1 %tobool126.not, label %do.body128, label %if.then140

do.body128:                                       ; preds = %if.end118
  %28 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add = add i32 %31, ptrtoint (ptr @csd_data to i32)
  %32 = inttoptr i32 %add to ptr
  %.sroa.gep184 = getelementptr inbounds %struct.__call_single_node, ptr %32, i32 0, i32 1
  %.sroa.gep175 = getelementptr inbounds %struct.__call_single_data, ptr %32, i32 0, i32 2
  %.sroa.gep = getelementptr inbounds %struct.__call_single_data, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %.sroa.gep184 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %.sroa.gep184, align 4
  %and19.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool.not20.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool.not20.i.i, label %do.body128.if.end135_crit_edge, label %do.body128.do.end5.i.i_crit_edge

do.body128.do.end5.i.i_crit_edge:                 ; preds = %do.body128
  br label %do.end5.i.i

do.body128.if.end135_crit_edge:                   ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

do.end5.i.i:                                      ; preds = %do.end5.i.i.do.end5.i.i_crit_edge, %do.body128.do.end5.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !121
  %35 = ptrtoint ptr %.sroa.gep184 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %.sroa.gep184, align 4
  %and.i.i167 = and i32 %36, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i167, 0
  br i1 %tobool.not.i.i, label %do.end5.i.i.if.end135_crit_edge, label %do.end5.i.i.do.end5.i.i_crit_edge

do.end5.i.i.do.end5.i.i_crit_edge:                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i.i

do.end5.i.i.if.end135_crit_edge:                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.end135:                                        ; preds = %do.end5.i.i.if.end135_crit_edge, %do.body128.if.end135_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %37 = ptrtoint ptr %.sroa.gep184 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %.sroa.gep184, align 4
  %or.i = or i32 %38, 1
  store i32 %or.i, ptr %.sroa.gep184, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %39 = ptrtoint ptr %.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %func, ptr %.sroa.gep, align 8
  %40 = ptrtoint ptr %.sroa.gep175 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %info, ptr %.sroa.gep175, align 4
  %call138 = tail call fastcc i32 @generic_exec_single(i32 noundef %cpu, ptr noundef %32)
  br label %do.body142

if.then140:                                       ; preds = %if.end118
  %41 = ptrtoint ptr %csd_stack.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %func, ptr %csd_stack.sroa.gep, align 8
  %42 = ptrtoint ptr %csd_stack.sroa.gep174 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %info, ptr %csd_stack.sroa.gep174, align 4
  %call138179 = call fastcc i32 @generic_exec_single(i32 noundef %cpu, ptr noundef nonnull %csd_stack)
  %43 = ptrtoint ptr %csd_stack.sroa.gep183 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %csd_stack.sroa.gep183, align 4
  %and19.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not20.i = icmp eq i32 %and19.i, 0
  br i1 %tobool.not20.i, label %if.then140.csd_lock_wait.exit_crit_edge, label %if.then140.do.end5.i_crit_edge

if.then140.do.end5.i_crit_edge:                   ; preds = %if.then140
  br label %do.end5.i

if.then140.csd_lock_wait.exit_crit_edge:          ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_lock_wait.exit

do.end5.i:                                        ; preds = %do.end5.i.do.end5.i_crit_edge, %if.then140.do.end5.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !121
  %45 = ptrtoint ptr %csd_stack.sroa.gep183 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %csd_stack.sroa.gep183, align 4
  %and.i = and i32 %46, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.i.csd_lock_wait.exit_crit_edge, label %do.end5.i.do.end5.i_crit_edge

do.end5.i.do.end5.i_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i

do.end5.i.csd_lock_wait.exit_crit_edge:           ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_lock_wait.exit

csd_lock_wait.exit:                               ; preds = %do.end5.i.csd_lock_wait.exit_crit_edge, %if.then140.csd_lock_wait.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  br label %do.body142

do.body142:                                       ; preds = %csd_lock_wait.exit, %if.end135
  %call138182 = phi i32 [ %call138, %if.end135 ], [ %call138179, %csd_lock_wait.exit ]
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %47 = call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i168 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i168 to ptr
  %preempt_count.i.i169 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i169 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i169, align 4
  %sub.i = add i32 %50, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i169, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %csd_stack) #12
  ret i32 %call138182
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_exec_single(i32 noundef %cpu, ptr noundef %csd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i68 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i68 to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu)
  %cmp = icmp eq i32 %3, %cpu
  br i1 %cmp, label %if.then, label %if.end48

if.then:                                          ; preds = %entry
  %func2 = getelementptr inbounds %struct.__call_single_data, ptr %csd, i32 0, i32 1
  %4 = ptrtoint ptr %func2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func2, align 4
  %info3 = getelementptr inbounds %struct.__call_single_data, ptr %csd, i32 0, i32 2
  %6 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info3, align 4
  %8 = getelementptr inbounds %struct.__call_single_node, ptr %csd, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.csd_unlock.exit_crit_edge, !prof !114

if.then.csd_unlock.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_unlock.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #12
  br label %csd_unlock.exit

csd_unlock.exit:                                  ; preds = %do.end.i, %if.then.csd_unlock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %8, align 4
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !116
  %and.i69 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not = icmp eq i32 %and.i69, 0
  br i1 %tobool.not, label %if.then26, label %do.end16

do.end16:                                         ; preds = %csd_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %7) #12
  br label %do.body28

if.then26:                                        ; preds = %csd_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  tail call void %5(ptr noundef %7) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.end16
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !117
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !114

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #12, !srcloc !118
  br label %return

if.end48:                                         ; preds = %entry
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %cpu)
  %cmp49.not = icmp ugt i32 %14, %cpu
  br i1 %cmp49.not, label %cpu_online.exit, label %if.end48.if.then52_crit_edge

if.end48.if.then52_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

cpu_online.exit:                                  ; preds = %if.end48
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %17 = shl nuw i32 1, %and.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.then52_crit_edge, label %if.end53

cpu_online.exit.if.then52_crit_edge:              ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then52:                                        ; preds = %cpu_online.exit.if.then52_crit_edge, %if.end48.if.then52_crit_edge
  %19 = getelementptr inbounds %struct.__call_single_node, ptr %csd, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i64 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %do.end.i66, label %if.then52.csd_unlock.exit67_crit_edge, !prof !114

if.then52.csd_unlock.exit67_crit_edge:            ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_unlock.exit67

do.end.i66:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 459, i32 noundef 9, ptr noundef null) #12
  br label %csd_unlock.exit67

csd_unlock.exit67:                                ; preds = %do.end.i66, %if.then52.csd_unlock.exit67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %19, align 4
  br label %return

if.end53:                                         ; preds = %cpu_online.exit
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, ptrtoint (ptr @call_single_queue to i32)
  %25 = inttoptr i32 %add.i to ptr
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %csd, ptr noundef %csd, ptr noundef %25) #12
  br i1 %call.i.i, label %if.then.i, label %if.end53.return_crit_edge

if.end53.return_crit_edge:                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @send_call_function_single_ipi(i32 noundef %cpu) #12
  br label %return

return:                                           ; preds = %if.then.i, %if.end53.return_crit_edge, %csd_unlock.exit67, %do.end43
  %retval.0 = phi i32 [ 0, %do.end43 ], [ -6, %csd_unlock.exit67 ], [ 0, %if.end53.return_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_call_function_single_async(i32 noundef %cpu, ptr noundef %csd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %4 = getelementptr inbounds %struct.__call_single_node, ptr %csd, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !126
  %call = tail call fastcc i32 @generic_exec_single(i32 noundef %cpu, ptr noundef %csd)
  br label %do.body8

do.body8:                                         ; preds = %if.end, %entry.do.body8_crit_edge
  %err.0 = phi i32 [ %call, %if.end ], [ -16, %entry.do.body8_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  %8 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i13 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i13 to ptr
  %preempt_count.i.i14 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i14, align 4
  %sub.i = add i32 %11, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i14, align 4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_call_function_any(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %4 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1, align 4
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp.not.i.i.i = icmp ugt i32 %8, %7
  br i1 %cmp.not.i.i.i, label %entry.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_test_cpu.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !110

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %entry.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %7, 5
  %arrayidx.i.i = getelementptr i32, ptr %mask, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %7, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end.i.i, label %cpumask_test_cpu.exit.call9_crit_edge

cpumask_test_cpu.exit.call9_crit_edge:            ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %call9

if.end.i.i:                                       ; preds = %cpumask_test_cpu.exit
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef nonnull @__cpu_online_mask, ptr noundef %mask, i32 noundef %13) #12
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %14)
  %cmp41 = icmp ult i32 %call6.i.i, %14
  br i1 %cmp41, label %if.end.i.i.cpu_online.exit_crit_edge, label %if.end.i.i.if.end.i.i36_crit_edge

if.end.i.i.if.end.i.i36_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i36

if.end.i.i.cpu_online.exit_crit_edge:             ; preds = %if.end.i.i
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %for.inc.cpu_online.exit_crit_edge, %if.end.i.i.cpu_online.exit_crit_edge
  %cpu.042 = phi i32 [ %call7, %for.inc.cpu_online.exit_crit_edge ], [ %call6.i.i, %if.end.i.i.cpu_online.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %cpu.042, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i27 = and i32 %cpu.042, 31
  %17 = shl nuw i32 1, %and.i.i.i27
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %for.inc, label %cpu_online.exit.call9_crit_edge

cpu_online.exit.call9_crit_edge:                  ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %call9

for.inc:                                          ; preds = %cpu_online.exit
  %call7 = tail call i32 @cpumask_next_and(i32 noundef %cpu.042, ptr noundef nonnull @__cpu_online_mask, ptr noundef %mask) #17
  %cmp = icmp ult i32 %call7, %14
  br i1 %cmp, label %for.inc.cpu_online.exit_crit_edge, label %for.inc.if.end.i.i36_crit_edge

for.inc.if.end.i.i36_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i36

for.inc.cpu_online.exit_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.end.i.i36:                                     ; preds = %for.inc.if.end.i.i36_crit_edge, %if.end.i.i.if.end.i.i36_crit_edge
  %call6.i.i35 = tail call i32 @_find_first_and_bit(ptr noundef %mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %14) #12
  br label %call9

call9:                                            ; preds = %if.end.i.i36, %cpu_online.exit.call9_crit_edge, %cpumask_test_cpu.exit.call9_crit_edge
  %cpu.1 = phi i32 [ %7, %cpumask_test_cpu.exit.call9_crit_edge ], [ %call6.i.i35, %if.end.i.i36 ], [ %cpu.042, %cpu_online.exit.call9_crit_edge ]
  %call10 = tail call i32 @smp_call_function_single(i32 noundef %cpu.1, ptr noundef %func, ptr noundef %info, i32 noundef %wait)
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %19 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i23 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i23 to ptr
  %preempt_count.i.i24 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i24, align 4
  %sub.i = add i32 %22, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i24, align 4
  ret i32 %call10
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_call_function_many(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i1 noundef zeroext %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %wait to i32
  tail call fastcc void @smp_call_function_many_cond(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i32 noundef %conv, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smp_call_function_many_cond(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i32 noundef %scf_flags, ptr noundef readonly %cond_func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i566 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i566 to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %and = and i32 %scf_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %entry.if.end94_crit_edge, label %land.lhs.true

entry.if.end94_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.lhs.true:                                    ; preds = %entry
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %7 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %14 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i539 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i539 to ptr
  %preempt_count.i.i540 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i540 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i540, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i540, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %land.rhs, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %land.rhs26, label %land.rhs.if.end94_crit_edge

land.rhs.if.end94_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.rhs26:                                       ; preds = %land.rhs
  %22 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i541 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i541 to ptr
  %preempt_count.i.i542 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i542 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i542, align 4
  %add.i543 = add i32 %25, 1
  store volatile i32 %add.i543, ptr %preempt_count.i.i542, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %26 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu1, align 4
  %arrayidx50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add51 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  %33 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i544 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i544 to ptr
  %preempt_count.i.i545 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i545 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i545, align 4
  %sub.i546 = add i32 %36, -1
  store volatile i32 %sub.i546, ptr %preempt_count.i.i545, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool58.not = icmp eq i32 %32, 0
  br i1 %tobool58.not, label %land.rhs26.if.end94_crit_edge, label %land.rhs63

land.rhs26.if.end94_crit_edge:                    ; preds = %land.rhs26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

land.rhs63:                                       ; preds = %land.rhs26
  %.b530 = load i1, ptr @smp_call_function_many_cond.__already_done, align 1
  br i1 %.b530, label %land.rhs63.if.end94_crit_edge, label %if.then, !prof !110

land.rhs63.if.end94_crit_edge:                    ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then:                                          ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @smp_call_function_many_cond.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 876, i32 noundef 9, ptr noundef null) #12
  br label %if.end94

if.end94:                                         ; preds = %if.then, %land.rhs63.if.end94_crit_edge, %land.rhs26.if.end94_crit_edge, %land.rhs.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge, %entry.if.end94_crit_edge
  %37 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %37, %3
  br i1 %cmp.not.i.i.i.i, label %if.end94.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

if.end94.cpu_online.exit_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %if.end94
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %if.end94.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i567 = and i32 %3, 31
  %40 = shl nuw i32 1, %and.i.i.i567
  %41 = and i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not = icmp eq i32 %41, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end236_crit_edge, label %land.lhs.true105

cpu_online.exit.if.end236_crit_edge:              ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

land.lhs.true105:                                 ; preds = %cpu_online.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %42 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool106.not = icmp eq i32 %42, 0
  br i1 %tobool106.not, label %land.lhs.true107, label %land.lhs.true105.if.end236_crit_edge

land.lhs.true105.if.end236_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

land.lhs.true107:                                 ; preds = %land.lhs.true105
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @early_boot_irqs_disabled to i32))
  %43 = load i8, ptr @early_boot_irqs_disabled, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool108.not = icmp eq i8 %43, 0
  br i1 %tobool108.not, label %do.body110, label %land.lhs.true107.if.end236_crit_edge

land.lhs.true107.if.end236_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

do.body110:                                       ; preds = %land.lhs.true107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %44 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool112.not = icmp eq i32 %44, 0
  br i1 %tobool112.not, label %do.body110.if.end236_crit_edge, label %land.lhs.true113

do.body110.if.end236_crit_edge:                   ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

land.lhs.true113:                                 ; preds = %do.body110
  %45 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i547 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i547 to ptr
  %preempt_count.i.i548 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i548 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i548, align 4
  %add.i549 = add i32 %48, 1
  store volatile i32 %add.i549, ptr %preempt_count.i.i548, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  %49 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu1, align 4
  %arrayidx137 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx137, align 4
  %add138 = add i32 %52, ptrtoint (ptr @lockdep_recursion to i32)
  %53 = inttoptr i32 %add138 to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %56 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i550 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i550 to ptr
  %preempt_count.i.i551 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i551 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i551, align 4
  %sub.i552 = add i32 %59, -1
  store volatile i32 %sub.i552, ptr %preempt_count.i.i551, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool145.not = icmp eq i32 %55, 0
  br i1 %tobool145.not, label %land.rhs146, label %land.lhs.true113.if.end236_crit_edge

land.lhs.true113.if.end236_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

land.rhs146:                                      ; preds = %land.lhs.true113
  %60 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i553 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i553 to ptr
  %preempt_count.i.i554 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i554 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i554, align 4
  %add.i555 = add i32 %63, 1
  store volatile i32 %add.i555, ptr %preempt_count.i.i554, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %64 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu1, align 4
  %arrayidx170 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx170, align 4
  %add171 = add i32 %67, ptrtoint (ptr @hardirqs_enabled to i32)
  %68 = inttoptr i32 %add171 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %71 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i556 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i556 to ptr
  %preempt_count.i.i557 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i557 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i557, align 4
  %sub.i558 = add i32 %74, -1
  store volatile i32 %sub.i558, ptr %preempt_count.i.i557, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool178.not = icmp eq i32 %70, 0
  br i1 %tobool178.not, label %land.rhs188, label %land.rhs146.if.end236_crit_edge

land.rhs146.if.end236_crit_edge:                  ; preds = %land.rhs146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

land.rhs188:                                      ; preds = %land.rhs146
  %.b526529 = load i1, ptr @smp_call_function_many_cond.__already_done.21, align 1
  br i1 %.b526529, label %land.rhs188.if.end236_crit_edge, label %if.then199, !prof !110

land.rhs188.if.end236_crit_edge:                  ; preds = %land.rhs188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

if.then199:                                       ; preds = %land.rhs188
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @smp_call_function_many_cond.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 886, i32 noundef 9, ptr noundef null) #12
  br label %if.end236

if.end236:                                        ; preds = %if.then199, %land.rhs188.if.end236_crit_edge, %land.rhs146.if.end236_crit_edge, %land.lhs.true113.if.end236_crit_edge, %do.body110.if.end236_crit_edge, %land.lhs.true107.if.end236_crit_edge, %land.lhs.true105.if.end236_crit_edge, %cpu_online.exit.if.end236_crit_edge
  %75 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i559 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i559 to ptr
  %preempt_count.i560 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i560 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i560, align 4
  %and239 = and i32 %78, 15728640
  %79 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i561 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i561 to ptr
  %preempt_count.i562 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i562 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i562, align 4
  %and241 = and i32 %82, 983040
  %or = or i32 %and241, %and239
  %83 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i563 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i563 to ptr
  %preempt_count.i564 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i564 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i564, align 4
  %and244 = and i32 %86, 256
  %or245 = or i32 %or, %and244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or245)
  %tobool246.not = icmp eq i32 %or245, 0
  br i1 %tobool246.not, label %if.end236.if.end295_crit_edge, label %land.rhs257

if.end236.if.end295_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

land.rhs257:                                      ; preds = %if.end236
  %.b527528 = load i1, ptr @smp_call_function_many_cond.__already_done.22, align 1
  br i1 %.b527528, label %land.rhs257.if.end295_crit_edge, label %if.then268, !prof !110

land.rhs257.if.end295_crit_edge:                  ; preds = %land.rhs257
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end295

if.then268:                                       ; preds = %land.rhs257
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @smp_call_function_many_cond.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 894, i32 noundef 9, ptr noundef null) #12
  br label %if.end295

if.end295:                                        ; preds = %if.then268, %land.rhs257.if.end295_crit_edge, %if.end236.if.end295_crit_edge
  %and303 = and i32 %scf_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %if.end295.if.end.i.i_crit_edge, label %land.lhs.true305

if.end295.if.end.i.i_crit_edge:                   ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true305:                                 ; preds = %if.end295
  %87 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %87, %3
  br i1 %cmp.not.i.i.i, label %land.lhs.true305.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

land.lhs.true305.cpumask_test_cpu.exit_crit_edge: ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true305
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !110

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true305.cpumask_test_cpu.exit_crit_edge
  %arrayidx.i.i = getelementptr i32, ptr %mask, i32 %div3.i.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %arrayidx.i.i, align 4
  %90 = and i32 %89, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool307.not = icmp ne i32 %90, 0
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cpumask_test_cpu.exit, %if.end295.if.end.i.i_crit_edge
  %run_local.0.off0 = phi i1 [ false, %if.end295.if.end.i.i_crit_edge ], [ %tobool307.not, %cpumask_test_cpu.exit ]
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %91) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %3)
  %cmp311 = icmp eq i32 %call6.i.i, %3
  br i1 %cmp311, label %if.then312, label %if.end.i.i.if.end314_crit_edge

if.end.i.i.if.end314_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end314

if.then312:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call313 = tail call i32 @cpumask_next_and(i32 noundef %3, ptr noundef %mask, ptr noundef nonnull @__cpu_online_mask) #17
  br label %if.end314

if.end314:                                        ; preds = %if.then312, %if.end.i.i.if.end314_crit_edge
  %cpu.0 = phi i32 [ %call313, %if.then312 ], [ %call6.i.i, %if.end.i.i.if.end314_crit_edge ]
  %92 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0, i32 %92)
  %cmp315 = icmp ult i32 %cpu.0, %92
  br i1 %cmp315, label %do.body320, label %if.end314.if.end387_crit_edge

if.end314.if.end387_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end387

do.body320:                                       ; preds = %if.end314
  %93 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu1, align 4
  %arrayidx329 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx329, align 4
  %add330 = add i32 %96, ptrtoint (ptr @cfd_data to i32)
  %97 = inttoptr i32 %add330 to ptr
  %cpumask = getelementptr inbounds %struct.call_function_data, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cpumask, align 4
  %call.i.i = tail call i32 @__bitmap_and(ptr noundef %99, ptr noundef %mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %92) #12
  %100 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cpumask, align 4
  %102 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %3)
  %cmp.not.i.i.i576 = icmp ugt i32 %102, %3
  br i1 %cmp.not.i.i.i576, label %do.body320.__cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i578

do.body320.__cpumask_clear_cpu.exit_crit_edge:    ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cpumask_clear_cpu.exit

land.rhs.i.i.i578:                                ; preds = %do.body320
  %.b37.i.i.i577 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i577, label %land.rhs.i.i.i578.__cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i579, !prof !110

land.rhs.i.i.i578.__cpumask_clear_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i578
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cpumask_clear_cpu.exit

if.then.i.i.i579:                                 ; preds = %land.rhs.i.i.i578
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %__cpumask_clear_cpu.exit

__cpumask_clear_cpu.exit:                         ; preds = %if.then.i.i.i579, %land.rhs.i.i.i578.__cpumask_clear_cpu.exit_crit_edge, %do.body320.__cpumask_clear_cpu.exit_crit_edge
  %add.ptr.i.i = getelementptr i32, ptr %101, i32 %div3.i.i.i
  %neg.i.i = xor i32 %40, -1
  %103 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i580 = and i32 %104, %neg.i.i
  store i32 %and.i.i580, ptr %add.ptr.i.i, align 4
  %cpumask_ipi = getelementptr inbounds %struct.call_function_data, ptr %97, i32 0, i32 2
  %105 = ptrtoint ptr %cpumask_ipi to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cpumask_ipi, align 4
  %107 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i581 = add i32 %107, 31
  %108 = lshr i32 %sub.i.i581, 3
  %mul.i.i = and i32 %108, 536870908
  %109 = call ptr @memset(ptr %106, i32 0, i32 %mul.i.i)
  %110 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cpumask, align 4
  %call334593 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %111) #17
  %112 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call334593, i32 %112)
  %cmp335594 = icmp ult i32 %call334593, %112
  br i1 %cmp335594, label %for.body.lr.ph, label %__cpumask_clear_cpu.exit.if.end387_crit_edge

__cpumask_clear_cpu.exit.if.end387_crit_edge:     ; preds = %__cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end387

for.body.lr.ph:                                   ; preds = %__cpumask_clear_cpu.exit
  %tobool347.not = icmp eq ptr %cond_func, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %call334597 = phi i32 [ %call334593, %for.body.lr.ph ], [ %call334, %cleanup.for.body_crit_edge ]
  %last_cpu.0596 = phi i32 [ -1, %for.body.lr.ph ], [ %last_cpu.2, %cleanup.for.body_crit_edge ]
  %nr_cpus.0595 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_cpus.2, %cleanup.for.body_crit_edge ]
  %113 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %97, align 4
  %115 = ptrtoint ptr %114 to i32
  %arrayidx344 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call334597
  %116 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx344, align 4
  %add345 = add i32 %117, %115
  %118 = inttoptr i32 %add345 to ptr
  br i1 %tobool347.not, label %for.body.if.end351_crit_edge, label %land.lhs.true348

for.body.if.end351_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end351

land.lhs.true348:                                 ; preds = %for.body
  %call349 = tail call zeroext i1 %cond_func(i32 noundef %call334597, ptr noundef %info) #12
  br i1 %call349, label %land.lhs.true348.if.end351_crit_edge, label %land.lhs.true348.cleanup_crit_edge

land.lhs.true348.cleanup_crit_edge:               ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true348.if.end351_crit_edge:             ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end351

if.end351:                                        ; preds = %land.lhs.true348.if.end351_crit_edge, %for.body.if.end351_crit_edge
  %119 = getelementptr inbounds %struct.__call_single_node, ptr %118, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 4
  %and19.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool.not20.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool.not20.i.i, label %if.end351.csd_lock.exit_crit_edge, label %if.end351.do.end5.i.i_crit_edge

if.end351.do.end5.i.i_crit_edge:                  ; preds = %if.end351
  br label %do.end5.i.i

if.end351.csd_lock.exit_crit_edge:                ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_lock.exit

do.end5.i.i:                                      ; preds = %do.end5.i.i.do.end5.i.i_crit_edge, %if.end351.do.end5.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !121
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %119, align 4
  %and.i.i565 = and i32 %123, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i565, 0
  br i1 %tobool.not.i.i, label %do.end5.i.i.csd_lock.exit_crit_edge, label %do.end5.i.i.do.end5.i.i_crit_edge

do.end5.i.i.do.end5.i.i_crit_edge:                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i.i

do.end5.i.i.csd_lock.exit_crit_edge:              ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_lock.exit

csd_lock.exit:                                    ; preds = %do.end5.i.i.csd_lock.exit_crit_edge, %if.end351.csd_lock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %124 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %119, align 4
  %or.i = or i32 %125, 1
  store i32 %or.i, ptr %119, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  br i1 %tobool.not, label %csd_lock.exit.if.end355_crit_edge, label %if.then353

csd_lock.exit.if.end355_crit_edge:                ; preds = %csd_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end355

if.then353:                                       ; preds = %csd_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %119, align 4
  %or354 = or i32 %127, 16
  store i32 %or354, ptr %119, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.then353, %csd_lock.exit.if.end355_crit_edge
  %func356 = getelementptr inbounds %struct.__call_single_data, ptr %118, i32 0, i32 1
  %128 = ptrtoint ptr %func356 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %func, ptr %func356, align 8
  %info357 = getelementptr inbounds %struct.__call_single_data, ptr %118, i32 0, i32 2
  %129 = ptrtoint ptr %info357 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %info, ptr %info357, align 4
  %130 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx344, align 4
  %add367 = add i32 %131, ptrtoint (ptr @call_single_queue to i32)
  %132 = inttoptr i32 %add367 to ptr
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %118, ptr noundef %118, ptr noundef %132) #12
  br i1 %call.i, label %if.then369, label %if.end355.cleanup_crit_edge

if.end355.cleanup_crit_edge:                      ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then369:                                       ; preds = %if.end355
  %133 = ptrtoint ptr %cpumask_ipi to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cpumask_ipi, align 4
  %135 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %call334597)
  %cmp.not.i.i.i582 = icmp ugt i32 %135, %call334597
  br i1 %cmp.not.i.i.i582, label %if.then369.__cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i584

if.then369.__cpumask_set_cpu.exit_crit_edge:      ; preds = %if.then369
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cpumask_set_cpu.exit

land.rhs.i.i.i584:                                ; preds = %if.then369
  %.b37.i.i.i583 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i583, label %land.rhs.i.i.i584.__cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i585, !prof !110

land.rhs.i.i.i584.__cpumask_set_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i584
  call void @__sanitizer_cov_trace_pc() #14
  br label %__cpumask_set_cpu.exit

if.then.i.i.i585:                                 ; preds = %land.rhs.i.i.i584
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %__cpumask_set_cpu.exit

__cpumask_set_cpu.exit:                           ; preds = %if.then.i.i.i585, %land.rhs.i.i.i584.__cpumask_set_cpu.exit_crit_edge, %if.then369.__cpumask_set_cpu.exit_crit_edge
  %rem.i.i586 = and i32 %call334597, 31
  %shl.i.i587 = shl nuw i32 1, %rem.i.i586
  %div2.i.i588 = lshr i32 %call334597, 5
  %add.ptr.i.i589 = getelementptr i32, ptr %134, i32 %div2.i.i588
  %136 = ptrtoint ptr %add.ptr.i.i589 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr.i.i589, align 4
  %or.i.i = or i32 %137, %shl.i.i587
  store i32 %or.i.i, ptr %add.ptr.i.i589, align 4
  %inc = add i32 %nr_cpus.0595, 1
  br label %cleanup

cleanup:                                          ; preds = %__cpumask_set_cpu.exit, %if.end355.cleanup_crit_edge, %land.lhs.true348.cleanup_crit_edge
  %nr_cpus.2 = phi i32 [ %nr_cpus.0595, %land.lhs.true348.cleanup_crit_edge ], [ %inc, %__cpumask_set_cpu.exit ], [ %nr_cpus.0595, %if.end355.cleanup_crit_edge ]
  %last_cpu.2 = phi i32 [ %last_cpu.0596, %land.lhs.true348.cleanup_crit_edge ], [ %call334597, %__cpumask_set_cpu.exit ], [ %last_cpu.0596, %if.end355.cleanup_crit_edge ]
  %138 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cpumask, align 4
  %call334 = tail call i32 @cpumask_next(i32 noundef %call334597, ptr noundef %139) #17
  %140 = load i32, ptr @nr_cpu_ids, align 4
  %cmp335 = icmp ult i32 %call334, %140
  br i1 %cmp335, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_cpus.2)
  %cmp373 = icmp eq i32 %nr_cpus.2, 1
  br i1 %cmp373, label %if.then374, label %if.else375

if.then374:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @send_call_function_single_ipi(i32 noundef %last_cpu.2) #12
  br label %if.end387

if.else375:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_cpus.2)
  %cmp376 = icmp sgt i32 %nr_cpus.2, 1
  br i1 %cmp376, label %if.then383, label %if.else375.if.end387_crit_edge, !prof !110

if.else375.if.end387_crit_edge:                   ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end387

if.then383:                                       ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %cpumask_ipi to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cpumask_ipi, align 4
  tail call void @arch_send_call_function_ipi_mask(ptr noundef %142) #12
  br label %if.end387

if.end387:                                        ; preds = %if.then383, %if.else375.if.end387_crit_edge, %if.then374, %__cpumask_clear_cpu.exit.if.end387_crit_edge, %if.end314.if.end387_crit_edge
  %cfd.0 = phi ptr [ %97, %if.then374 ], [ %97, %if.then383 ], [ %97, %if.else375.if.end387_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end314.if.end387_crit_edge ], [ %97, %__cpumask_clear_cpu.exit.if.end387_crit_edge ]
  br i1 %run_local.0.off0, label %land.lhs.true389, label %if.end387.if.end448_crit_edge

if.end387.if.end448_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end448

land.lhs.true389:                                 ; preds = %if.end387
  %tobool390.not = icmp eq ptr %cond_func, null
  br i1 %tobool390.not, label %land.lhs.true389.if.then392_crit_edge, label %lor.lhs.false

land.lhs.true389.if.then392_crit_edge:            ; preds = %land.lhs.true389
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

lor.lhs.false:                                    ; preds = %land.lhs.true389
  %call391 = tail call zeroext i1 %cond_func(i32 noundef %3, ptr noundef %info) #12
  br i1 %call391, label %lor.lhs.false.if.then392_crit_edge, label %lor.lhs.false.if.end448_crit_edge

lor.lhs.false.if.end448_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end448

lor.lhs.false.if.then392_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then392

if.then392:                                       ; preds = %lor.lhs.false.if.then392_crit_edge, %land.lhs.true389.if.then392_crit_edge
  %143 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !116
  %and.i590 = and i32 %143, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i590)
  %tobool407.not = icmp eq i32 %and.i590, 0
  br i1 %tobool407.not, label %if.then421, label %do.end411

do.end411:                                        ; preds = %if.then392
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %func(ptr noundef %info) #12
  br label %do.body423

if.then421:                                       ; preds = %if.then392
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  tail call void %func(ptr noundef %info) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body423

do.body423:                                       ; preds = %if.then421, %do.end411
  %144 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !117
  %and.i.i592 = and i32 %144, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i592)
  %tobool431.not = icmp eq i32 %and.i.i592, 0
  br i1 %tobool431.not, label %if.then440, label %do.body423.do.end443_crit_edge, !prof !114

do.body423.do.end443_crit_edge:                   ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end443

if.then440:                                       ; preds = %do.body423
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end443

do.end443:                                        ; preds = %if.then440, %do.body423.do.end443_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %143) #12, !srcloc !118
  br label %if.end448

if.end448:                                        ; preds = %do.end443, %lor.lhs.false.if.end448_crit_edge, %if.end387.if.end448_crit_edge
  %cmp315.not = xor i1 %cmp315, true
  %brmerge = or i1 %tobool.not, %cmp315.not
  br i1 %brmerge, label %if.end448.if.end474_crit_edge, label %for.cond455.preheader

if.end448.if.end474_crit_edge:                    ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end474

for.cond455.preheader:                            ; preds = %if.end448
  %cpumask456 = getelementptr inbounds %struct.call_function_data, ptr %cfd.0, i32 0, i32 1
  %145 = ptrtoint ptr %cpumask456 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cpumask456, align 4
  %call457599 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %146) #17
  %147 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call457599, i32 %147)
  %cmp458600 = icmp ult i32 %call457599, %147
  br i1 %cmp458600, label %for.cond455.preheader.for.body460_crit_edge, label %for.cond455.preheader.if.end474_crit_edge

for.cond455.preheader.if.end474_crit_edge:        ; preds = %for.cond455.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end474

for.cond455.preheader.for.body460_crit_edge:      ; preds = %for.cond455.preheader
  br label %for.body460

for.body460:                                      ; preds = %csd_lock_wait.exit.for.body460_crit_edge, %for.cond455.preheader.for.body460_crit_edge
  %call457601 = phi i32 [ %call457, %csd_lock_wait.exit.for.body460_crit_edge ], [ %call457599, %for.cond455.preheader.for.body460_crit_edge ]
  %148 = ptrtoint ptr %cfd.0 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfd.0, align 4
  %150 = ptrtoint ptr %149 to i32
  %arrayidx470 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call457601
  %151 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx470, align 4
  %add471 = add i32 %152, %150
  %153 = inttoptr i32 %add471 to ptr
  %154 = getelementptr inbounds %struct.__call_single_node, ptr %153, i32 0, i32 1
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %154, align 4
  %and19.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not20.i = icmp eq i32 %and19.i, 0
  br i1 %tobool.not20.i, label %for.body460.csd_lock_wait.exit_crit_edge, label %for.body460.do.end5.i_crit_edge

for.body460.do.end5.i_crit_edge:                  ; preds = %for.body460
  br label %do.end5.i

for.body460.csd_lock_wait.exit_crit_edge:         ; preds = %for.body460
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_lock_wait.exit

do.end5.i:                                        ; preds = %do.end5.i.do.end5.i_crit_edge, %for.body460.do.end5.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !121
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %154, align 4
  %and.i = and i32 %158, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.i.csd_lock_wait.exit_crit_edge, label %do.end5.i.do.end5.i_crit_edge

do.end5.i.do.end5.i_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i

do.end5.i.csd_lock_wait.exit_crit_edge:           ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csd_lock_wait.exit

csd_lock_wait.exit:                               ; preds = %do.end5.i.csd_lock_wait.exit_crit_edge, %for.body460.csd_lock_wait.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %159 = ptrtoint ptr %cpumask456 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cpumask456, align 4
  %call457 = tail call i32 @cpumask_next(i32 noundef %call457601, ptr noundef %160) #17
  %161 = load i32, ptr @nr_cpu_ids, align 4
  %cmp458 = icmp ult i32 %call457, %161
  br i1 %cmp458, label %csd_lock_wait.exit.for.body460_crit_edge, label %csd_lock_wait.exit.if.end474_crit_edge

csd_lock_wait.exit.if.end474_crit_edge:           ; preds = %csd_lock_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end474

csd_lock_wait.exit.for.body460_crit_edge:         ; preds = %csd_lock_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body460

if.end474:                                        ; preds = %csd_lock_wait.exit.if.end474_crit_edge, %for.cond455.preheader.if.end474_crit_edge, %if.end448.if.end474_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_call_function(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool = icmp ne i32 %wait, 0
  %conv.i = zext i1 %tobool to i32
  tail call fastcc void @smp_call_function_many_cond(ptr noundef nonnull @__cpu_online_mask, ptr noundef %func, ptr noundef %info, i32 noundef %conv.i, ptr noundef null) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  %4 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i3 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i3 to ptr
  %preempt_count.i.i4 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i4, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_disable_smp_support() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nosmp(ptr nocapture noundef readnone %str) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @setup_max_cpus, align 4
  tail call void @arch_disable_smp_support()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nrcpus(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %nr_cpus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_cpus) #12
  %1 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr_cpus, align 4, !annotation !141
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %nr_cpus) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp2 = icmp ult i32 %3, %4
  br i1 %cmp2, label %if.then, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #14
  store i32 %3, ptr @nr_cpu_ids, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_cpus) #12
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @maxcpus(ptr noundef %str) #4 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @setup_max_cpus) #12
  %1 = load i32, ptr @setup_max_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @arch_disable_smp_support()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @setup_nr_cpu_ids() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_possible_mask to i32))
  %0 = load i32, ptr @__cpu_possible_mask, align 4
  %and4.i = and i32 %0, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %and4.i, i1 false) #12, !range !142
  %sub.i.i.op = sub nuw nsw i32 32, %1
  %add = select i1 %tobool.not.i, i32 5, i32 %sub.i.i.op
  store i32 %add, ptr @nr_cpu_ids, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @smp_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @idle_threads_init() #12
  tail call void @cpuhp_threads_init() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #16
  %0 = load i32, ptr @setup_max_cpus, align 4
  tail call void @bringup_nonboot_cpus(i32 noundef %0) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp7 = icmp sgt i32 %1, 1
  %cond8 = select i1 %cmp7, ptr @.str.8, ptr @.str.9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef nonnull %cond8) #16
  %2 = load i32, ptr @setup_max_cpus, align 4
  tail call void @smp_cpus_done(i32 noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_threads_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cpuhp_threads_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bringup_nonboot_cpus(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_cpus_done(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @on_each_cpu_cond_mask(ptr noundef %cond_func, ptr noundef %func, ptr noundef %info, i1 noundef zeroext %wait, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %wait, i32 3, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  tail call fastcc void @smp_call_function_many_cond(ptr noundef %mask, ptr noundef %func, ptr noundef %info, i32 noundef %spec.select, ptr noundef %cond_func)
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %4 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i5 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %7, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kick_all_cpus_sync() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
  tail call fastcc void @smp_call_function_many_cond(ptr noundef nonnull @__cpu_online_mask, ptr noundef nonnull @do_nothing, ptr noundef null, i32 noundef 1, ptr noundef null) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  %4 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i3.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %sub.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i4.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @do_nothing(ptr nocapture noundef %unused) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wake_up_all_idle_cpus() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %0)
  %cmp16 = icmp ult i32 %call15, %0
  br i1 %cmp16, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body5.do.body_crit_edge, %entry.do.body_crit_edge
  %call17 = phi i32 [ %call, %do.body5.do.body_crit_edge ], [ %call15, %entry.do.body_crit_edge ]
  %1 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %5 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %8)
  %cmp3.not = icmp eq i32 %call17, %8
  br i1 %cmp3.not, label %do.body.do.body5_crit_edge, label %land.lhs.true

do.body.do.body5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

land.lhs.true:                                    ; preds = %do.body
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call17)
  %cmp.not.i.i.i.i = icmp ugt i32 %9, %call17
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

land.lhs.true.cpu_online.exit_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !110

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %land.lhs.true.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %call17, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i14 = and i32 %call17, 31
  %12 = shl nuw i32 1, %and.i.i.i14
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %cpu_online.exit.do.body5_crit_edge, label %if.then

cpu_online.exit.do.body5_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

if.then:                                          ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wake_up_if_idle(i32 noundef %call17) #12
  br label %do.body5

do.body5:                                         ; preds = %if.then, %cpu_online.exit.do.body5_crit_edge, %do.body.do.body5_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !147
  %14 = tail call i32 @llvm.read_register.i32(metadata !96) #12
  %and.i.i.i12 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i12 to ptr
  %preempt_count.i.i13 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i13, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i13, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #17
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %18
  br i1 %cmp, label %do.body5.do.body_crit_edge, label %do.body5.for.end_crit_edge

do.body5.for.end_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body5.do.body_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.body5.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_if_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smp_call_on_cpu(i32 noundef %cpu, ptr noundef %func, ptr noundef %par, i1 noundef zeroext %phys) #0 align 64 {
entry:
  %sscs = alloca %struct.smp_call_on_cpu_struct, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %sscs) #12
  %0 = getelementptr inbounds i8, ptr %sscs, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %done = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %sscs, i32 0, i32 1
  %wait.i = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %sscs, i32 0, i32 1, i32 1
  %2 = call ptr @memset(ptr %sscs, i32 0, i32 48)
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #12
  %func3 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %sscs, i32 0, i32 2
  %3 = ptrtoint ptr %func3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %func, ptr %func3, align 4
  %data = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %sscs, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %par, ptr %data, align 4
  %ret = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %sscs, i32 0, i32 4
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ret, align 4
  %cpu4 = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %sscs, i32 0, i32 5
  %spec.select = select i1 %phys, i32 %cpu, i32 -1
  %6 = ptrtoint ptr %cpu4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %cpu4, align 4
  call void @__init_work(ptr noundef nonnull %sscs, i32 noundef 1) #12
  %7 = ptrtoint ptr %sscs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %sscs, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %sscs, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @smp_call_on_cpu.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry10 = getelementptr inbounds %struct.work_struct, ptr %sscs, i32 0, i32 1
  %8 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %sscs, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry10, ptr %prev.i, align 4
  %func12 = getelementptr inbounds %struct.work_struct, ptr %sscs, i32 0, i32 2
  %10 = ptrtoint ptr %func12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smp_call_on_cpu_callback, ptr %func12, align 4
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cpu)
  %cmp.not = icmp ugt i32 %11, %cpu
  br i1 %cmp.not, label %cpu_online.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cpu_online.exit:                                  ; preds = %entry
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %14 = shl nuw i32 1, %and.i.i.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %cpu_online.exit.cleanup_crit_edge, label %if.end

cpu_online.exit.cleanup_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call14 = call zeroext i1 @queue_work_on(i32 noundef %cpu, ptr noundef %16, ptr noundef nonnull %sscs) #12
  call void @wait_for_completion(ptr noundef %done) #12
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cpu_online.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end ], [ -6, %cpu_online.exit.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %sscs) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_call_on_cpu_callback(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %data = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call i32 %1(ptr noundef %3) #12
  %ret = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %ret, align 4
  %done = getelementptr inbounds %struct.smp_call_on_cpu_struct, ptr %work, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llist_reverse_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_single(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_ttwu_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_call_function_ipi_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !46, !48, !50, !51, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !88, !90, !91, !92, !93, !95}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/smp.c", i32 695, i32 6}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/smp.c", i32 731, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/smp.c", i32 740, i32 2}
!7 = !{ptr @__ksymtab_smp_call_function_single, !8, !"__ksymtab_smp_call_function_single", i1 false, i1 false}
!8 = !{!"../kernel/smp.c", i32 764, i32 1}
!9 = !{ptr @__ksymtab_smp_call_function_single_async, !10, !"__ksymtab_smp_call_function_single_async", i1 false, i1 false}
!10 = !{!"../kernel/smp.c", i32 810, i32 1}
!11 = !{ptr @__ksymtab_smp_call_function_any, !12, !"__ksymtab_smp_call_function_any", i1 false, i1 false}
!12 = !{!"../kernel/smp.c", i32 853, i32 1}
!13 = !{ptr @__ksymtab_smp_call_function_many, !14, !"__ksymtab_smp_call_function_many", i1 false, i1 false}
!14 = !{!"../kernel/smp.c", i32 995, i32 1}
!15 = !{ptr @__ksymtab_smp_call_function, !16, !"__ksymtab_smp_call_function", i1 false, i1 false}
!16 = !{!"../kernel/smp.c", i32 1018, i32 1}
!17 = !{ptr @setup_max_cpus, !18, !"setup_max_cpus", i1 false, i1 false}
!18 = !{!"../kernel/smp.c", i32 1021, i32 14}
!19 = !{ptr @__ksymtab_setup_max_cpus, !20, !"__ksymtab_setup_max_cpus", i1 false, i1 false}
!20 = !{!"../kernel/smp.c", i32 1022, i32 1}
!21 = !{ptr @__setup_nosmp, !22, !"__setup_nosmp", i1 false, i1 false}
!22 = !{!"../kernel/smp.c", i32 1046, i32 1}
!23 = !{ptr @__setup_nrcpus, !24, !"__setup_nrcpus", i1 false, i1 false}
!24 = !{!"../kernel/smp.c", i32 1059, i32 1}
!25 = !{ptr @__setup_maxcpus, !26, !"__setup_maxcpus", i1 false, i1 false}
!26 = !{!"../kernel/smp.c", i32 1070, i32 1}
!27 = !{ptr @nr_cpu_ids, !28, !"nr_cpu_ids", i1 false, i1 false}
!28 = !{!"../kernel/smp.c", i32 1073, i32 14}
!29 = !{ptr @__ksymtab_nr_cpu_ids, !30, !"__ksymtab_nr_cpu_ids", i1 false, i1 false}
!30 = !{!"../kernel/smp.c", i32 1074, i32 1}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/smp.c", i32 1090, i32 2}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @smp_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @smp_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/smp.c", i32 1096, i32 2}
!38 = !{ptr @smp_init._entry.5, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @smp_init._entry_ptr.7, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__ksymtab_on_each_cpu_cond_mask, !43, !"__ksymtab_on_each_cpu_cond_mask", i1 false, i1 false}
!43 = !{!"../kernel/smp.c", i32 1138, i32 1}
!44 = !{ptr @__ksymtab_kick_all_cpus_sync, !45, !"__ksymtab_kick_all_cpus_sync", i1 false, i1 false}
!45 = !{!"../kernel/smp.c", i32 1161, i32 1}
!46 = !{ptr @__ksymtab_wake_up_all_idle_cpus, !47, !"__ksymtab_wake_up_all_idle_cpus", i1 false, i1 false}
!47 = !{!"../kernel/smp.c", i32 1180, i32 1}
!48 = !{ptr @smp_call_on_cpu.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../kernel/smp.c", i32 1227, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__ksymtab_smp_call_on_cpu, !52, !"__ksymtab_smp_call_on_cpu", i1 false, i1 false}
!52 = !{!"../kernel/smp.c", i32 1237, i32 1}
!53 = !{ptr @__pcpu_unique_cfd_data, !54, !"__pcpu_unique_cfd_data", i1 false, i1 false}
!54 = !{!"../kernel/smp.c", i32 95, i32 8}
!55 = !{ptr @cfd_data, !54, !"cfd_data", i1 false, i1 false}
!56 = !{ptr @__pcpu_unique_call_single_queue, !57, !"__pcpu_unique_call_single_queue", i1 false, i1 false}
!57 = !{!"../kernel/smp.c", i32 97, i32 8}
!58 = !{ptr @call_single_queue, !57, !"call_single_queue", i1 false, i1 false}
!59 = !{ptr @__pcpu_unique_csd_data, !60, !"__pcpu_unique_csd_data", i1 false, i1 false}
!60 = !{!"../kernel/smp.c", i32 467, i32 8}
!61 = !{ptr @csd_data, !60, !"csd_data", i1 false, i1 false}
!62 = distinct !{null, !63, !"warned", i1 false, i1 false}
!63 = !{!"../kernel/smp.c", i32 566, i32 14}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../kernel/smp.c", i32 568, i32 2}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/smp.c", i32 584, i32 3}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/smp.c", i32 595, i32 5}
!70 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @flush_smp_call_function_queue._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @flush_smp_call_function_queue._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/smp.c", i32 600, i32 5}
!75 = !{ptr @flush_smp_call_function_queue._entry.14, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @flush_smp_call_function_queue._entry_ptr.16, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/smp.c", i32 604, i32 5}
!79 = !{ptr @flush_smp_call_function_queue._entry.17, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @flush_smp_call_function_queue._entry_ptr.19, !78, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!83 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../kernel/smp.c", i32 876, i32 2}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../kernel/smp.c", i32 886, i32 3}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../kernel/smp.c", i32 894, i32 2}
!90 = !{ptr @__setup_str_nosmp, !22, !"__setup_str_nosmp", i1 false, i1 false}
!91 = !{ptr @__setup_str_nrcpus, !24, !"__setup_str_nrcpus", i1 false, i1 false}
!92 = !{ptr @__setup_str_maxcpus, !26, !"__setup_str_maxcpus", i1 false, i1 false}
!93 = !{ptr @init_completion.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../include/linux/completion.h", i32 87, i32 2}
!95 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2153679820}
!107 = !{i64 2153684754}
!108 = !{i64 2153706436}
!109 = !{i64 2153711330}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148490671}
!112 = !{i64 670257, i64 670274, i64 670298, i64 670324, i64 670342}
!113 = !{i64 2148491024}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 2153443122}
!116 = !{i64 616816, i64 616877}
!117 = !{i64 619548}
!118 = !{i64 619833}
!119 = !{i64 2153745449}
!120 = !{i64 2153439684}
!121 = !{i64 2153439526}
!122 = !{i64 2153439859}
!123 = !{i64 2153440226}
!124 = !{i64 2153750930}
!125 = !{i64 2153752765}
!126 = !{i64 2153752878}
!127 = !{i64 2153753021}
!128 = !{i64 2153755081}
!129 = !{i64 2153755494}
!130 = !{i64 2153984586}
!131 = !{i64 2153989520}
!132 = !{i64 2154011238}
!133 = !{i64 2154016132}
!134 = !{i8 0, i8 2}
!135 = !{i64 2154251326}
!136 = !{i64 2154256260}
!137 = !{i64 2154277944}
!138 = !{i64 2154282838}
!139 = !{i64 2154304200}
!140 = !{i64 2154304342}
!141 = !{!"auto-init"}
!142 = !{i32 28, i32 33}
!143 = !{i64 2154315571}
!144 = !{i64 2154315668}
!145 = !{i64 2154317389}
!146 = !{i64 2154319367}
!147 = !{i64 2154319538}
