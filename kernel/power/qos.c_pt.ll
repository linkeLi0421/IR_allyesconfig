; ModuleID = '/llk/IR_all_yes/kernel/power/qos.c_pt.bc'
source_filename = "../kernel/power/qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cpu_latency_qos_request_active\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_latency_qos_request_active\09\09\09\09"
module asm "\09.long\09__crc_cpu_latency_qos_request_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_request_active:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_request_active\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_request_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_latency_qos_add_request\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_latency_qos_add_request\09\09\09\09"
module asm "\09.long\09__crc_cpu_latency_qos_add_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_add_request\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_latency_qos_update_request\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_latency_qos_update_request\09\09\09\09"
module asm "\09.long\09__crc_cpu_latency_qos_update_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_update_request\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cpu_latency_qos_remove_request\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_latency_qos_remove_request\09\09\09\09"
module asm "\09.long\09__crc_cpu_latency_qos_remove_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_remove_request\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+freq_qos_add_request\22, \22a\22\09"
module asm "\09.weak\09__crc_freq_qos_add_request\09\09\09\09"
module asm "\09.long\09__crc_freq_qos_add_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_add_request\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+freq_qos_update_request\22, \22a\22\09"
module asm "\09.weak\09__crc_freq_qos_update_request\09\09\09\09"
module asm "\09.long\09__crc_freq_qos_update_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_update_request\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+freq_qos_remove_request\22, \22a\22\09"
module asm "\09.weak\09__crc_freq_qos_remove_request\09\09\09\09"
module asm "\09.long\09__crc_freq_qos_remove_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_remove_request\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+freq_qos_add_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_freq_qos_add_notifier\09\09\09\09"
module asm "\09.long\09__crc_freq_qos_add_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_add_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+freq_qos_remove_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_freq_qos_remove_notifier\09\09\09\09"
module asm "\09.long\09__crc_freq_qos_remove_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_remove_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.pm_qos_flags_request = type { %struct.list_head, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@pm_qos_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@cpu_latency_constraints = internal global { %struct.pm_qos_constraints, [36 x i8] } { %struct.pm_qos_constraints { %struct.plist_head { %struct.list_head { ptr @cpu_latency_constraints, ptr @cpu_latency_constraints } }, i32 2000000000, i32 2000000000, i32 2000000000, i32 2, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_cpu_latency_qos_request_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_request_active = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_request_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_request_active to i32), ptr @__kstrtab_cpu_latency_qos_request_active, ptr @__kstrtabns_cpu_latency_qos_request_active }, section "___ksymtab_gpl+cpu_latency_qos_request_active", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/power/qos.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s called for already added request\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.cpu_latency_qos_add_request = private unnamed_addr constant [28 x i8] c"cpu_latency_qos_add_request\00", align 1
@__kstrtab_cpu_latency_qos_add_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_add_request = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_add_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_add_request to i32), ptr @__kstrtab_cpu_latency_qos_add_request, ptr @__kstrtabns_cpu_latency_qos_add_request }, section "___ksymtab_gpl+cpu_latency_qos_add_request", align 4
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s called for unknown object\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.cpu_latency_qos_update_request = private unnamed_addr constant [31 x i8] c"cpu_latency_qos_update_request\00", align 1
@__kstrtab_cpu_latency_qos_update_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_update_request = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_update_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_update_request to i32), ptr @__kstrtab_cpu_latency_qos_update_request, ptr @__kstrtabns_cpu_latency_qos_update_request }, section "___ksymtab_gpl+cpu_latency_qos_update_request", align 4
@__func__.cpu_latency_qos_remove_request = private unnamed_addr constant [31 x i8] c"cpu_latency_qos_remove_request\00", align 1
@__kstrtab_cpu_latency_qos_remove_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_remove_request = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_remove_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_remove_request to i32), ptr @__kstrtab_cpu_latency_qos_remove_request, ptr @__kstrtabns_cpu_latency_qos_remove_request }, section "___ksymtab_gpl+cpu_latency_qos_remove_request", align 4
@__initcall__kmod_qos__311_424_cpu_latency_qos_init7 = internal global ptr @cpu_latency_qos_init, section ".initcall7.init", align 4
@freq_constraints_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(c->notifiers)->rwsem\00", [41 x i8] zeroinitializer }, align 32
@freq_constraints_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s() called for active request\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.freq_qos_add_request = private unnamed_addr constant [21 x i8] c"freq_qos_add_request\00", align 1
@__kstrtab_freq_qos_add_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_add_request = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_add_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_add_request to i32), ptr @__kstrtab_freq_qos_add_request, ptr @__kstrtabns_freq_qos_add_request }, section "___ksymtab_gpl+freq_qos_add_request", align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s() called for unknown object\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.freq_qos_update_request = private unnamed_addr constant [24 x i8] c"freq_qos_update_request\00", align 1
@__kstrtab_freq_qos_update_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_update_request = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_update_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_update_request to i32), ptr @__kstrtab_freq_qos_update_request, ptr @__kstrtabns_freq_qos_update_request }, section "___ksymtab_gpl+freq_qos_update_request", align 4
@__func__.freq_qos_remove_request = private unnamed_addr constant [24 x i8] c"freq_qos_remove_request\00", align 1
@__kstrtab_freq_qos_remove_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_remove_request = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_remove_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_remove_request to i32), ptr @__kstrtab_freq_qos_remove_request, ptr @__kstrtabns_freq_qos_remove_request }, section "___ksymtab_gpl+freq_qos_remove_request", align 4
@__kstrtab_freq_qos_add_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_add_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_add_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_add_notifier to i32), ptr @__kstrtab_freq_qos_add_notifier, ptr @__kstrtabns_freq_qos_add_notifier }, section "___ksymtab_gpl+freq_qos_add_notifier", align 4
@__kstrtab_freq_qos_remove_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_remove_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_remove_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_remove_notifier to i32), ptr @__kstrtab_freq_qos_remove_notifier, ptr @__kstrtabns_freq_qos_remove_notifier }, section "___ksymtab_gpl+freq_qos_remove_notifier", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pm_qos_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown PM QoS type in %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.pm_qos_get_value = private unnamed_addr constant [17 x i8] c"pm_qos_get_value\00", align 1
@__tracepoint_pm_qos_update_target = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/power.h\00", [35 x i8] zeroinitializer }, align 32
@trace_pm_qos_update_target.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_pm_qos_update_flags = external dso_local global %struct.tracepoint, align 4
@trace_pm_qos_update_flags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pm_qos_add_request = external dso_local global %struct.tracepoint, align 4
@trace_pm_qos_add_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pm_qos_update_request = external dso_local global %struct.tracepoint, align 4
@trace_pm_qos_update_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_pm_qos_remove_request = external dso_local global %struct.tracepoint, align 4
@trace_pm_qos_remove_request.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cpu_latency_qos_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.14, ptr @cpu_latency_qos_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@cpu_latency_qos_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: %s setup failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpu_latency_qos_init\00", [43 x i8] zeroinitializer }, align 32
@cpu_latency_qos_init._entry_ptr = internal global ptr @cpu_latency_qos_init._entry, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpu_dma_latency\00", [16 x i8] zeroinitializer }, align 32
@cpu_latency_qos_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @cpu_latency_qos_read, ptr @cpu_latency_qos_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cpu_latency_qos_open, ptr null, ptr @cpu_latency_qos_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"pm_qos_lock\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"cpu_latency_constraints\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 215, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 270, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 296, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 444, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 453, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 537, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 569, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 47, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 71, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [32 x i8] c"../include/trace/events/power.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 432, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 108, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"cpu_latency_qos_miscdev\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 407, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 419, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 409, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"cpu_latency_qos_fops\00", align 1
@___asan_gen_.90 = private constant [22 x i8] c"../kernel/power/qos.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 399, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 156, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_qos__311_424_cpu_latency_qos_init7, ptr @__ksymtab_cpu_latency_qos_add_request, ptr @__ksymtab_cpu_latency_qos_remove_request, ptr @__ksymtab_cpu_latency_qos_request_active, ptr @__ksymtab_cpu_latency_qos_update_request, ptr @__ksymtab_freq_qos_add_notifier, ptr @__ksymtab_freq_qos_add_request, ptr @__ksymtab_freq_qos_remove_notifier, ptr @__ksymtab_freq_qos_remove_request, ptr @__ksymtab_freq_qos_update_request, ptr @cpu_latency_qos_init._entry, ptr @cpu_latency_qos_init._entry_ptr, ptr @pm_qos_lock, ptr @cpu_latency_constraints, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @freq_constraints_init.__key, ptr @.str.3, ptr @freq_constraints_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cpu_latency_qos_miscdev, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cpu_latency_qos_fops, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_latency_constraints to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_constraints_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_constraints_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_latency_qos_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_latency_qos_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_latency_qos_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pm_qos_read_value(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %target_value = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %target_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %target_value, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_qos_update_target(ptr noundef %c, ptr noundef %node, i32 noundef %action, i32 noundef %value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pm_qos_lock) #11
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %c, align 4
  %cmp.i.i.not.i = icmp eq ptr %1, %c
  br i1 %cmp.i.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %no_constraint_value.i = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %no_constraint_value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %no_constraint_value.i, align 4
  br label %pm_qos_get_value.exit

if.end.i:                                         ; preds = %entry
  %type.i = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 4
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -12
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  br label %pm_qos_get_value.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 -12
  %11 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i29.i, align 4
  br label %pm_qos_get_value.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.pm_qos_get_value) #11
  br label %pm_qos_get_value.exit

pm_qos_get_value.exit:                            ; preds = %do.end.i, %sw.bb3.i, %sw.bb.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ -1, %do.end.i ], [ %12, %sw.bb3.i ], [ %8, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %value)
  %cmp6 = icmp eq i32 %value, -1
  br i1 %cmp6, label %if.then, label %pm_qos_get_value.exit.if.end_crit_edge

pm_qos_get_value.exit.if.end_crit_edge:           ; preds = %pm_qos_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %pm_qos_get_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  %default_value = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 2
  %13 = ptrtoint ptr %default_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %default_value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_qos_get_value.exit.if.end_crit_edge
  %new_value.0 = phi i32 [ %14, %if.then ], [ %value, %pm_qos_get_value.exit.if.end_crit_edge ]
  %15 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %action, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 0, label %if.end.sw.bb10_crit_edge
  ]

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb10

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @plist_del(ptr noundef %node, ptr noundef %c) #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @plist_del(ptr noundef %node, ptr noundef %c) #11
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %if.end.sw.bb10_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %new_value.0, ptr %node, align 4
  %prio_list.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1
  %17 = ptrtoint ptr %prio_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %prio_list.i, ptr %prio_list.i, align 4
  %prev.i.i41 = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %prio_list.i, ptr %prev.i.i41, align 4
  %node_list.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2
  %19 = ptrtoint ptr %node_list.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node_list.i, ptr %node_list.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node_list.i, ptr %prev.i4.i, align 4
  tail call void @plist_add(ptr noundef %node, ptr noundef %c) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb, %if.end.sw.epilog_crit_edge
  %21 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %c, align 4
  %cmp.i.i.not.i42 = icmp eq ptr %22, %c
  br i1 %cmp.i.i.not.i42, label %if.then.i44, label %if.end.i46

if.then.i44:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %no_constraint_value.i43 = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 3
  %23 = ptrtoint ptr %no_constraint_value.i43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %no_constraint_value.i43, align 4
  br label %pm_qos_get_value.exit54

if.end.i46:                                       ; preds = %sw.epilog
  %type.i45 = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 4
  %25 = ptrtoint ptr %type.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i45, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %26, label %do.end.i52 [
    i32 2, label %sw.bb.i48
    i32 1, label %sw.bb3.i51
  ]

sw.bb.i48:                                        ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i47 = getelementptr i8, ptr %22, i32 -12
  %28 = ptrtoint ptr %add.ptr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i47, align 4
  br label %pm_qos_get_value.exit54

sw.bb3.i51:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i49 = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i49, align 4
  %add.ptr.i29.i50 = getelementptr i8, ptr %31, i32 -12
  %32 = ptrtoint ptr %add.ptr.i29.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i29.i50, align 4
  br label %pm_qos_get_value.exit54

do.end.i52:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.pm_qos_get_value) #11
  br label %pm_qos_get_value.exit54

pm_qos_get_value.exit54:                          ; preds = %do.end.i52, %sw.bb3.i51, %sw.bb.i48, %if.then.i44
  %retval.0.i53 = phi i32 [ %24, %if.then.i44 ], [ -1, %do.end.i52 ], [ %33, %sw.bb3.i51 ], [ %29, %sw.bb.i48 ]
  %target_value.i = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 1
  %34 = ptrtoint ptr %target_value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %retval.0.i53, ptr %target_value.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pm_qos_lock, i32 noundef %call2) #11
  tail call fastcc void @trace_pm_qos_update_target(i32 noundef %action, i32 noundef %retval.0.i, i32 noundef %retval.0.i53)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i53)
  %cmp13 = icmp eq i32 %retval.0.i, %retval.0.i53
  br i1 %cmp13, label %pm_qos_get_value.exit54.cleanup_crit_edge, label %if.end16

pm_qos_get_value.exit54.cleanup_crit_edge:        ; preds = %pm_qos_get_value.exit54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %pm_qos_get_value.exit54
  %notifiers = getelementptr inbounds %struct.pm_qos_constraints, ptr %c, i32 0, i32 5
  %35 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %notifiers, align 4
  %tobool.not = icmp eq ptr %36, null
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %if.then17

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull %36, i32 noundef %retval.0.i53, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end16.cleanup_crit_edge, %pm_qos_get_value.exit54.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_qos_get_value.exit54.cleanup_crit_edge ], [ 1, %if.then17 ], [ 1, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pm_qos_update_target(i32 noundef %action, i32 noundef %prev_value, i32 noundef %curr_value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_target, i32 0, i32 1), ptr blockaddress(@trace_pm_qos_update_target, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  %call42 = tail call i32 @__traceiter_pm_qos_update_target(ptr noundef null, i32 noundef %action, i32 noundef %prev_value, i32 noundef %curr_value) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_target, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_target, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pm_qos_update_target.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_pm_qos_update_target.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 437, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pm_qos_update_flags(ptr noundef %pqf, ptr noundef %req, i32 noundef %action, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pm_qos_lock) #11
  %0 = ptrtoint ptr %pqf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pqf, align 4
  %cmp.i.not = icmp eq ptr %1, %pqf
  br i1 %cmp.i.not, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %effective_flags = getelementptr inbounds %struct.pm_qos_flags, ptr %pqf, i32 0, i32 1
  %2 = ptrtoint ptr %effective_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %effective_flags, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %4 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %action, label %cond.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 0, label %cond.end.sw.bb7_crit_edge
  ]

cond.end.sw.bb7_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.bb.list_del.exit.i_crit_edge

sw.bb.list_del.exit.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %sw.bb.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %req, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %pqf to i32
  call void @__asan_load4_noabort(i32 %13)
  %req.addr.014.i = load ptr, ptr %pqf, align 4
  %cmp.not15.i = icmp eq ptr %req.addr.014.i, %pqf
  br i1 %cmp.not15.i, label %list_del.exit.i.pm_qos_flags_remove_req.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  br label %for.body.i

list_del.exit.i.pm_qos_flags_remove_req.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_qos_flags_remove_req.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.i.for.body.i_crit_edge
  %req.addr.017.i = phi ptr [ %req.addr.0.i, %for.body.i.for.body.i_crit_edge ], [ %req.addr.014.i, %list_del.exit.i.for.body.i_crit_edge ]
  %val.016.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.pm_qos_flags_request, ptr %req.addr.017.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %15, %val.016.i
  %16 = ptrtoint ptr %req.addr.017.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %req.addr.0.i = load ptr, ptr %req.addr.017.i, align 4
  %cmp.not.i = icmp eq ptr %req.addr.0.i, %pqf
  br i1 %cmp.not.i, label %for.body.i.pm_qos_flags_remove_req.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.pm_qos_flags_remove_req.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_qos_flags_remove_req.exit

pm_qos_flags_remove_req.exit:                     ; preds = %for.body.i.pm_qos_flags_remove_req.exit_crit_edge, %list_del.exit.i.pm_qos_flags_remove_req.exit_crit_edge
  %val.0.lcssa.i = phi i32 [ 0, %list_del.exit.i.pm_qos_flags_remove_req.exit_crit_edge ], [ %or.i, %for.body.i.pm_qos_flags_remove_req.exit_crit_edge ]
  %effective_flags.i = getelementptr inbounds %struct.pm_qos_flags, ptr %pqf, i32 0, i32 1
  %17 = ptrtoint ptr %effective_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %val.0.lcssa.i, ptr %effective_flags.i, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  %call.i.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req) #11
  br i1 %call.i.i.i36, label %if.end.i.i.i39, label %sw.bb6.list_del.exit.i43_crit_edge

sw.bb6.list_del.exit.i43_crit_edge:               ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i43

if.end.i.i.i39:                                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i37, align 4
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  %prev1.i.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i38, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i43

list_del.exit.i43:                                ; preds = %if.end.i.i.i39, %sw.bb6.list_del.exit.i43_crit_edge
  %24 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %req, align 4
  %prev.i.i40 = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i40, align 4
  %26 = ptrtoint ptr %pqf to i32
  call void @__asan_load4_noabort(i32 %26)
  %req.addr.014.i41 = load ptr, ptr %pqf, align 4
  %cmp.not15.i42 = icmp eq ptr %req.addr.014.i41, %pqf
  br i1 %cmp.not15.i42, label %list_del.exit.i43.pm_qos_flags_remove_req.exit53_crit_edge, label %list_del.exit.i43.for.body.i50_crit_edge

list_del.exit.i43.for.body.i50_crit_edge:         ; preds = %list_del.exit.i43
  br label %for.body.i50

list_del.exit.i43.pm_qos_flags_remove_req.exit53_crit_edge: ; preds = %list_del.exit.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_qos_flags_remove_req.exit53

for.body.i50:                                     ; preds = %for.body.i50.for.body.i50_crit_edge, %list_del.exit.i43.for.body.i50_crit_edge
  %req.addr.017.i44 = phi ptr [ %req.addr.0.i48, %for.body.i50.for.body.i50_crit_edge ], [ %req.addr.014.i41, %list_del.exit.i43.for.body.i50_crit_edge ]
  %val.016.i45 = phi i32 [ %or.i47, %for.body.i50.for.body.i50_crit_edge ], [ 0, %list_del.exit.i43.for.body.i50_crit_edge ]
  %flags.i46 = getelementptr inbounds %struct.pm_qos_flags_request, ptr %req.addr.017.i44, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i46, align 4
  %or.i47 = or i32 %28, %val.016.i45
  %29 = ptrtoint ptr %req.addr.017.i44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %req.addr.0.i48 = load ptr, ptr %req.addr.017.i44, align 4
  %cmp.not.i49 = icmp eq ptr %req.addr.0.i48, %pqf
  br i1 %cmp.not.i49, label %for.body.i50.pm_qos_flags_remove_req.exit53_crit_edge, label %for.body.i50.for.body.i50_crit_edge

for.body.i50.for.body.i50_crit_edge:              ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i50

for.body.i50.pm_qos_flags_remove_req.exit53_crit_edge: ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_qos_flags_remove_req.exit53

pm_qos_flags_remove_req.exit53:                   ; preds = %for.body.i50.pm_qos_flags_remove_req.exit53_crit_edge, %list_del.exit.i43.pm_qos_flags_remove_req.exit53_crit_edge
  %val.0.lcssa.i51 = phi i32 [ 0, %list_del.exit.i43.pm_qos_flags_remove_req.exit53_crit_edge ], [ %or.i47, %for.body.i50.pm_qos_flags_remove_req.exit53_crit_edge ]
  %effective_flags.i52 = getelementptr inbounds %struct.pm_qos_flags, ptr %pqf, i32 0, i32 1
  %30 = ptrtoint ptr %effective_flags.i52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val.0.lcssa.i51, ptr %effective_flags.i52, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %pm_qos_flags_remove_req.exit53, %cond.end.sw.bb7_crit_edge
  %flags = getelementptr inbounds %struct.pm_qos_flags_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %val, ptr %flags, align 4
  %32 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %req, ptr %req, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %req, ptr %prev.i, align 4
  %prev.i54 = getelementptr inbounds %struct.list_head, ptr %pqf, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i54, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %35, ptr noundef %pqf) #11
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb7.list_add_tail.exit_crit_edge

sw.bb7.list_add_tail.exit_crit_edge:              ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %req, ptr %prev.i54, align 4
  %37 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pqf, ptr %req, align 4
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %req, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.bb7.list_add_tail.exit_crit_edge
  %effective_flags10 = getelementptr inbounds %struct.pm_qos_flags, ptr %pqf, i32 0, i32 1
  %40 = ptrtoint ptr %effective_flags10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %effective_flags10, align 4
  %or = or i32 %41, %val
  store i32 %or, ptr %effective_flags10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_add_tail.exit, %pm_qos_flags_remove_req.exit, %cond.end.sw.epilog_crit_edge
  %42 = ptrtoint ptr %pqf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %pqf, align 4
  %cmp.i55.not = icmp eq ptr %43, %pqf
  br i1 %cmp.i55.not, label %sw.epilog.cond.end17_crit_edge, label %cond.false15

sw.epilog.cond.end17_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end17

cond.false15:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %effective_flags16 = getelementptr inbounds %struct.pm_qos_flags, ptr %pqf, i32 0, i32 1
  %44 = ptrtoint ptr %effective_flags16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %effective_flags16, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false15, %sw.epilog.cond.end17_crit_edge
  %cond18 = phi i32 [ %45, %cond.false15 ], [ 0, %sw.epilog.cond.end17_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pm_qos_lock, i32 noundef %call2) #11
  tail call fastcc void @trace_pm_qos_update_flags(i32 noundef %action, i32 noundef %cond, i32 noundef %cond18)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cond18)
  %cmp19 = icmp ne i32 %cond, %cond18
  ret i1 %cmp19
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pm_qos_update_flags(i32 noundef %action, i32 noundef %prev_value, i32 noundef %curr_value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_flags, i32 0, i32 1), ptr blockaddress(@trace_pm_qos_update_flags, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %call42 = tail call i32 @__traceiter_pm_qos_update_flags(ptr noundef null, i32 noundef %action, i32 noundef %prev_value, i32 noundef %curr_value) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_flags, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_flags, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pm_qos_update_flags.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_pm_qos_update_flags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 451, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpu_latency_qos_limit() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 1), align 4
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_latency_qos_request_active(ptr nocapture noundef readonly %req) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qos = getelementptr inbounds %struct.pm_qos_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %qos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos, align 4
  %cmp = icmp eq ptr %1, @cpu_latency_constraints
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_latency_qos_add_request(ptr noundef %req, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %qos.i = getelementptr inbounds %struct.pm_qos_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %cmp.i = icmp eq ptr %1, @cpu_latency_constraints
  br i1 %cmp.i, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cpu_latency_qos_add_request) #11
  br label %return

if.end19:                                         ; preds = %if.end
  tail call fastcc void @trace_pm_qos_add_request(i32 noundef %value)
  %2 = ptrtoint ptr %qos.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cpu_latency_constraints, ptr %qos.i, align 4
  %call.i = tail call i32 @pm_qos_update_target(ptr noundef nonnull @cpu_latency_constraints, ptr noundef nonnull %req, i32 noundef 0, i32 noundef %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i26 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i26, label %if.then.i, label %if.end19.return_crit_edge

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_all_idle_cpus() #11
  br label %return

return:                                           ; preds = %if.then.i, %if.end19.return_crit_edge, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pm_qos_add_request(i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_add_request, i32 0, i32 1), ptr blockaddress(@trace_pm_qos_add_request, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !106
  %call42 = tail call i32 @__traceiter_pm_qos_add_request(ptr noundef null, i32 noundef %value) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_add_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_add_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pm_qos_add_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_pm_qos_add_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 387, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_latency_qos_update_request(ptr noundef %req, i32 noundef %new_value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %qos.i = getelementptr inbounds %struct.pm_qos_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %cmp.i = icmp eq ptr %1, @cpu_latency_constraints
  br i1 %cmp.i, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpu_latency_qos_update_request) #11
  br label %return

if.end19:                                         ; preds = %if.end
  tail call fastcc void @trace_pm_qos_update_request(i32 noundef %new_value)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_value)
  %cmp = icmp eq i32 %3, %new_value
  br i1 %cmp, label %if.end19.return_crit_edge, label %if.end21

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end21:                                         ; preds = %if.end19
  %4 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qos.i, align 4
  %call.i = tail call i32 @pm_qos_update_target(ptr noundef %5, ptr noundef nonnull %req, i32 noundef 1, i32 noundef %new_value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i29 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i29, label %if.then.i, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_all_idle_cpus() #11
  br label %return

return:                                           ; preds = %if.then.i, %if.end21.return_crit_edge, %if.end19.return_crit_edge, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pm_qos_update_request(i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_request, i32 0, i32 1), ptr blockaddress(@trace_pm_qos_update_request, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !108
  %call42 = tail call i32 @__traceiter_pm_qos_update_request(ptr noundef null, i32 noundef %value) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !99

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_pm_qos_update_request.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_pm_qos_update_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 394, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpu_latency_qos_remove_request(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %qos.i = getelementptr inbounds %struct.pm_qos_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %cmp.i = icmp eq ptr %1, @cpu_latency_constraints
  br i1 %cmp.i, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 322, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpu_latency_qos_remove_request) #11
  br label %return

if.end19:                                         ; preds = %if.end
  tail call fastcc void @trace_pm_qos_remove_request()
  %2 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qos.i, align 4
  %call.i = tail call i32 @pm_qos_update_target(ptr noundef %3, ptr noundef nonnull %req, i32 noundef 2, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i25 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i25, label %if.then.i, label %if.end19.cpu_latency_qos_apply.exit_crit_edge

if.end19.cpu_latency_qos_apply.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_latency_qos_apply.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_all_idle_cpus() #11
  br label %cpu_latency_qos_apply.exit

cpu_latency_qos_apply.exit:                       ; preds = %if.then.i, %if.end19.cpu_latency_qos_apply.exit_crit_edge
  %4 = call ptr @memset(ptr %req, i32 0, i32 24)
  br label %return

return:                                           ; preds = %cpu_latency_qos_apply.exit, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pm_qos_remove_request() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_remove_request, i32 0, i32 1), ptr blockaddress(@trace_pm_qos_remove_request, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !99

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %call42 = tail call i32 @__traceiter_pm_qos_remove_request(ptr noundef null, i32 noundef -1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !99

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_remove_request, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_remove_request, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pm_qos_remove_request.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_pm_qos_remove_request.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 401, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @cpu_latency_qos_miscdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @cpu_latency_qos_miscdev, i32 0, i32 1), align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %0) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @freq_constraints_init(ptr noundef %qos) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %qos, ptr %qos, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qos, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %qos, ptr %prev.i.i, align 4
  %target_value = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 1
  %2 = ptrtoint ptr %target_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %target_value, align 4
  %default_value = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 2
  %3 = ptrtoint ptr %default_value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %default_value, align 4
  %no_constraint_value = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 3
  %4 = ptrtoint ptr %no_constraint_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %no_constraint_value, align 4
  %type = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %min_freq_notifiers = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 1
  %notifiers = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 5
  %6 = ptrtoint ptr %notifiers to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %min_freq_notifiers, ptr %notifiers, align 4
  tail call void @__init_rwsem(ptr noundef %min_freq_notifiers, ptr noundef nonnull @.str.3, ptr noundef nonnull @freq_constraints_init.__key) #11
  %7 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notifiers, align 4
  %head = getelementptr inbounds %struct.blocking_notifier_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %head, align 4
  %max_freq = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2
  %10 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %max_freq, ptr %max_freq, align 4
  %prev.i.i40 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %max_freq, ptr %prev.i.i40, align 4
  %target_value7 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %target_value7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2147483647, ptr %target_value7, align 4
  %default_value8 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %default_value8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2147483647, ptr %default_value8, align 4
  %no_constraint_value9 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %no_constraint_value9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2147483647, ptr %no_constraint_value9, align 4
  %type10 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %type10, align 4
  %max_freq_notifiers = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 3
  %notifiers11 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %notifiers11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %max_freq_notifiers, ptr %notifiers11, align 4
  tail call void @__init_rwsem(ptr noundef %max_freq_notifiers, ptr noundef nonnull @.str.3, ptr noundef nonnull @freq_constraints_init.__key.4) #11
  %17 = ptrtoint ptr %notifiers11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %notifiers11, align 4
  %head19 = getelementptr inbounds %struct.blocking_notifier_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %head19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %head19, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_read_value(ptr noundef %qos, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not.i = icmp eq ptr %qos, null
  %cmp.i = icmp ugt ptr %qos, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %target_value.i = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 1
  %1 = ptrtoint ptr %target_value.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %target_value.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %tobool.not.i27 = icmp eq ptr %qos, null
  %cmp.i28 = icmp ugt ptr %qos, inttoptr (i32 -4096 to ptr)
  %spec.select.i29 = or i1 %tobool.not.i27, %cmp.i28
  br i1 %spec.select.i29, label %sw.bb2.sw.epilog_crit_edge, label %cond.false5

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

cond.false5:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %target_value.i30 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %target_value.i30 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %target_value.i30, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cond.false5, %sw.bb2.sw.epilog_crit_edge, %cond.false, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.end ], [ %2, %cond.false ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %4, %cond.false5 ], [ 2147483647, %sw.bb2.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_apply(ptr noundef %req, i32 noundef %action, i32 noundef %value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qos = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %qos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qos, align 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qos2 = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %qos2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qos2, align 4
  %max_freq = getelementptr inbounds %struct.freq_constraints, ptr %6, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %max_freq.sink = phi ptr [ %max_freq, %sw.bb1 ], [ %4, %sw.bb ]
  %pnode3 = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 1
  %call4 = tail call i32 @pm_qos_update_target(ptr noundef %max_freq.sink, ptr noundef %pnode3, i32 noundef %action, i32 noundef %value)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call4, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_add_request(ptr noundef %qos, ptr noundef %req, i32 noundef %type, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qos, null
  %cmp.i = icmp ugt ptr %qos, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool.not = icmp eq ptr %req, null
  %or.cond = or i1 %spec.select.i, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qos.i = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %tobool2.not = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %tobool2.not, label %if.end26, label %do.end, !prof !99

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.freq_qos_add_request) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %2 = ptrtoint ptr %qos.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qos, ptr %qos.i, align 4
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %req, align 4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %type, label %if.end26.if.then30_crit_edge [
    i32 1, label %if.end26.freq_qos_apply.exit_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end26.freq_qos_apply.exit_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %freq_qos_apply.exit

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

sw.bb1.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %max_freq.i = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2
  br label %freq_qos_apply.exit

freq_qos_apply.exit:                              ; preds = %sw.bb1.i, %if.end26.freq_qos_apply.exit_crit_edge
  %max_freq.sink.i = phi ptr [ %max_freq.i, %sw.bb1.i ], [ %qos, %if.end26.freq_qos_apply.exit_crit_edge ]
  %pnode3.i = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 1
  %call4.i = tail call i32 @pm_qos_update_target(ptr noundef %max_freq.sink.i, ptr noundef %pnode3.i, i32 noundef 0, i32 noundef %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %freq_qos_apply.exit.if.then30_crit_edge, label %freq_qos_apply.exit.cleanup_crit_edge

freq_qos_apply.exit.cleanup_crit_edge:            ; preds = %freq_qos_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

freq_qos_apply.exit.if.then30_crit_edge:          ; preds = %freq_qos_apply.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30

if.then30:                                        ; preds = %freq_qos_apply.exit.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %ret.0.i46 = phi i32 [ %call4.i, %freq_qos_apply.exit.if.then30_crit_edge ], [ -22, %if.end26.if.then30_crit_edge ]
  %5 = ptrtoint ptr %qos.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %qos.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %freq_qos_apply.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i46, %if.then30 ], [ %call4.i, %freq_qos_apply.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_update_request(ptr noundef %req, i32 noundef %new_value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %qos.i = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %tobool1.not = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !112

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 570, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.freq_qos_update_request) #11
  br label %return

if.end26:                                         ; preds = %if.end
  %pnode = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %pnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pnode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_value)
  %cmp = icmp eq i32 %3, %new_value
  br i1 %cmp, label %if.end26.return_crit_edge, label %if.end28

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end28:                                         ; preds = %if.end26
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %if.end28.return_crit_edge [
    i32 1, label %if.end28.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end28.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %max_freq.i = getelementptr inbounds %struct.freq_constraints, ptr %1, i32 0, i32 2
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.end28.sw.epilog.sink.split.i_crit_edge
  %max_freq.sink.i = phi ptr [ %max_freq.i, %sw.bb1.i ], [ %1, %if.end28.sw.epilog.sink.split.i_crit_edge ]
  %call4.i = tail call i32 @pm_qos_update_target(ptr noundef %max_freq.sink.i, ptr noundef %pnode, i32 noundef 1, i32 noundef %new_value) #11
  br label %return

return:                                           ; preds = %sw.epilog.sink.split.i, %if.end28.return_crit_edge, %if.end26.return_crit_edge, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.return_crit_edge ], [ 0, %if.end26.return_crit_edge ], [ -22, %if.end28.return_crit_edge ], [ %call4.i, %sw.epilog.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_remove_request(ptr noundef %req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qos.i = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %tobool1.not = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !112

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.freq_qos_remove_request) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %3, label %if.end26.freq_qos_apply.exit_crit_edge [
    i32 1, label %if.end26.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb1.i
  ]

if.end26.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.i

if.end26.freq_qos_apply.exit_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %freq_qos_apply.exit

sw.bb1.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %max_freq.i = getelementptr inbounds %struct.freq_constraints, ptr %1, i32 0, i32 2
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.end26.sw.epilog.sink.split.i_crit_edge
  %max_freq.sink.i = phi ptr [ %max_freq.i, %sw.bb1.i ], [ %1, %if.end26.sw.epilog.sink.split.i_crit_edge ]
  %pnode3.i = getelementptr inbounds %struct.freq_qos_request, ptr %req, i32 0, i32 1
  %call4.i = tail call i32 @pm_qos_update_target(ptr noundef %max_freq.sink.i, ptr noundef %pnode3.i, i32 noundef 2, i32 noundef -1) #11
  br label %freq_qos_apply.exit

freq_qos_apply.exit:                              ; preds = %sw.epilog.sink.split.i, %if.end26.freq_qos_apply.exit_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end26.freq_qos_apply.exit_crit_edge ], [ %call4.i, %sw.epilog.sink.split.i ]
  %5 = ptrtoint ptr %qos.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %qos.i, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %freq_qos_apply.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0.i, %freq_qos_apply.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_add_notifier(ptr noundef readonly %qos, i32 noundef %type, ptr noundef %notifier) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qos, null
  %cmp.i = icmp ugt ptr %qos, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool.not = icmp eq ptr %notifier, null
  %or.cond = or i1 %spec.select.i, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %notifiers = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 5
  %1 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %notifiers, align 4
  %call1 = tail call i32 @blocking_notifier_chain_register(ptr noundef %2, ptr noundef nonnull %notifier) #11
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %notifiers3 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 5
  %3 = ptrtoint ptr %notifiers3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notifiers3, align 4
  %call4 = tail call i32 @blocking_notifier_chain_register(ptr noundef %4, ptr noundef nonnull %notifier) #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @freq_qos_remove_notifier(ptr noundef readonly %qos, i32 noundef %type, ptr noundef %notifier) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qos, null
  %cmp.i = icmp ugt ptr %qos, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool.not = icmp eq ptr %notifier, null
  %or.cond = or i1 %spec.select.i, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %type, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %notifiers = getelementptr inbounds %struct.pm_qos_constraints, ptr %qos, i32 0, i32 5
  %1 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %notifiers, align 4
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %2, ptr noundef nonnull %notifier) #11
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %notifiers3 = getelementptr inbounds %struct.freq_constraints, ptr %qos, i32 0, i32 2, i32 5
  %3 = ptrtoint ptr %notifiers3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notifiers3, align 4
  %call4 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %4, ptr noundef nonnull %notifier) #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_update_target(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_update_flags(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_remove_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %f_pos) #1 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %qos.i = getelementptr inbounds %struct.pm_qos_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qos.i, align 4
  %cmp.i = icmp eq ptr %3, @cpu_latency_constraints
  br i1 %cmp.i, label %do.body1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %lor.lhs.false
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pm_qos_lock) #11
  %4 = load volatile ptr, ptr @cpu_latency_constraints, align 4
  %cmp.i.i.not.i = icmp eq ptr %4, @cpu_latency_constraints
  br i1 %cmp.i.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load i32, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 3), align 4
  br label %pm_qos_get_value.exit

if.end.i:                                         ; preds = %do.body1
  %6 = load i32, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 4), align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %6, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -12
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  br label %pm_qos_get_value.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = load ptr, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 0, i32 0, i32 1), align 4
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 -12
  %11 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i29.i, align 4
  br label %pm_qos_get_value.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.pm_qos_get_value) #11
  br label %pm_qos_get_value.exit

pm_qos_get_value.exit:                            ; preds = %do.end.i, %sw.bb3.i, %sw.bb.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ -1, %do.end.i ], [ %12, %sw.bb3.i ], [ %9, %sw.bb.i ]
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %value, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pm_qos_lock, i32 noundef %call3) #11
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %f_pos, ptr noundef nonnull %value, i32 noundef 4) #11
  br label %cleanup

cleanup:                                          ; preds = %pm_qos_get_value.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %pm_qos_get_value.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) #1 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp eq i32 %count, 4
  br i1 %cmp, label %if.then.i, label %if.else

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #15, !srcloc !114
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value, i32 noundef 4) #11
  %2 = call i32 @llvm.read_register.i32(metadata !88) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !115
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %value, ptr noundef %buf, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end6_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !99

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i.if.end6_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.then.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %value, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup7

if.else:                                          ; preds = %entry
  %call.i = call i32 @kstrtoint_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 16, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.else.if.end6_crit_edge, label %if.else.cleanup7_crit_edge

if.else.cleanup7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.end.i.i.if.end6_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end6.cleanup7_crit_edge, label %if.end.i

if.end6.cleanup7_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

if.end.i:                                         ; preds = %if.end6
  %qos.i.i = getelementptr inbounds %struct.pm_qos_request, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qos.i.i, align 4
  %cmp.i.i12 = icmp eq ptr %11, @cpu_latency_constraints
  br i1 %cmp.i.i12, label %if.end19.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpu_latency_qos_update_request) #11
  br label %cleanup7

if.end19.i:                                       ; preds = %if.end.i
  call fastcc void @trace_pm_qos_update_request(i32 noundef %9) #11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp eq i32 %13, %9
  br i1 %cmp.i, label %if.end19.i.cleanup7_crit_edge, label %if.end21.i

if.end19.i.cleanup7_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

if.end21.i:                                       ; preds = %if.end19.i
  %14 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qos.i.i, align 4
  %call.i.i13 = call i32 @pm_qos_update_target(ptr noundef %15, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp.i29.i = icmp sgt i32 %call.i.i13, 0
  br i1 %cmp.i29.i, label %if.then.i.i, label %if.end21.i.cleanup7_crit_edge

if.end21.i.cleanup7_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @wake_up_all_idle_cpus() #11
  br label %cleanup7

cleanup7:                                         ; preds = %if.then.i.i, %if.end21.i.cleanup7_crit_edge, %if.end19.i.cleanup7_crit_edge, %do.end.i, %if.end6.cleanup7_crit_edge, %if.else.cleanup7_crit_edge, %if.then11.i.i
  %retval.1 = phi i32 [ %call.i, %if.else.cleanup7_crit_edge ], [ %count, %if.end6.cleanup7_crit_edge ], [ %count, %do.end.i ], [ %count, %if.end19.i.cleanup7_crit_edge ], [ %count, %if.end21.i.cleanup7_crit_edge ], [ %count, %if.then.i.i ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %qos.i.i = getelementptr inbounds %struct.pm_qos_request, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qos.i.i, align 4
  %cmp.i.i = icmp eq ptr %2, @cpu_latency_constraints
  br i1 %cmp.i.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cpu_latency_qos_add_request) #11
  br label %cpu_latency_qos_add_request.exit

if.end19.i:                                       ; preds = %if.end.i
  tail call fastcc void @trace_pm_qos_add_request(i32 noundef -1) #11
  %3 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cpu_latency_constraints, ptr %qos.i.i, align 4
  %call.i.i = tail call i32 @pm_qos_update_target(ptr noundef nonnull @cpu_latency_constraints, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i26.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i26.i, label %if.then.i.i, label %if.end19.i.cpu_latency_qos_add_request.exit_crit_edge

if.end19.i.cpu_latency_qos_add_request.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_latency_qos_add_request.exit

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_all_idle_cpus() #11
  br label %cpu_latency_qos_add_request.exit

cpu_latency_qos_add_request.exit:                 ; preds = %if.then.i.i, %if.end19.i.cpu_latency_qos_add_request.exit_crit_edge, %do.end.i
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %cpu_latency_qos_add_request.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpu_latency_qos_add_request.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  store ptr null, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cpu_latency_qos_remove_request.exit_crit_edge, label %if.end.i

entry.cpu_latency_qos_remove_request.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_latency_qos_remove_request.exit

if.end.i:                                         ; preds = %entry
  %qos.i.i = getelementptr inbounds %struct.pm_qos_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qos.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @cpu_latency_constraints
  br i1 %cmp.i.i, label %if.end19.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 322, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpu_latency_qos_remove_request) #11
  br label %cpu_latency_qos_remove_request.exit

if.end19.i:                                       ; preds = %if.end.i
  tail call fastcc void @trace_pm_qos_remove_request() #11
  %4 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qos.i.i, align 4
  %call.i.i = tail call i32 @pm_qos_update_target(ptr noundef %5, ptr noundef nonnull %1, i32 noundef 2, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i25.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i25.i, label %if.then.i.i, label %if.end19.i.cpu_latency_qos_apply.exit.i_crit_edge

if.end19.i.cpu_latency_qos_apply.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_latency_qos_apply.exit.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @wake_up_all_idle_cpus() #11
  br label %cpu_latency_qos_apply.exit.i

cpu_latency_qos_apply.exit.i:                     ; preds = %if.then.i.i, %if.end19.i.cpu_latency_qos_apply.exit.i_crit_edge
  %6 = call ptr @memset(ptr %1, i32 0, i32 24)
  br label %cpu_latency_qos_remove_request.exit

cpu_latency_qos_remove_request.exit:              ; preds = %cpu_latency_qos_apply.exit.i, %do.end.i, %entry.cpu_latency_qos_remove_request.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !79, !81, !83, !84, !86}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__ksymtab_cpu_latency_qos_request_active, !1, !"__ksymtab_cpu_latency_qos_request_active", i1 false, i1 false}
!1 = !{!"../kernel/power/qos.c", i32 242, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/power/qos.c", i32 270, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.cpu_latency_qos_add_request, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_cpu_latency_qos_add_request, !7, !"__ksymtab_cpu_latency_qos_add_request", i1 false, i1 false}
!7 = !{!"../kernel/power/qos.c", i32 279, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/power/qos.c", i32 296, i32 3}
!10 = !{ptr @__func__.cpu_latency_qos_update_request, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_cpu_latency_qos_update_request, !12, !"__ksymtab_cpu_latency_qos_update_request", i1 false, i1 false}
!12 = !{!"../kernel/power/qos.c", i32 307, i32 1}
!13 = !{ptr @__func__.cpu_latency_qos_remove_request, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/power/qos.c", i32 322, i32 3}
!15 = !{ptr @__ksymtab_cpu_latency_qos_remove_request, !16, !"__ksymtab_cpu_latency_qos_remove_request", i1 false, i1 false}
!16 = !{!"../kernel/power/qos.c", i32 331, i32 1}
!17 = !{ptr @__initcall__kmod_qos__311_424_cpu_latency_qos_init7, !18, !"__initcall__kmod_qos__311_424_cpu_latency_qos_init7", i1 false, i1 false}
!18 = !{!"../kernel/power/qos.c", i32 424, i32 1}
!19 = !{ptr @freq_constraints_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../kernel/power/qos.c", i32 444, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @freq_constraints_init.__key.4, !23, !"__key", i1 false, i1 false}
!23 = !{!"../kernel/power/qos.c", i32 453, i32 2}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/power/qos.c", i32 537, i32 6}
!26 = !{ptr @__func__.freq_qos_add_request, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__ksymtab_freq_qos_add_request, !28, !"__ksymtab_freq_qos_add_request", i1 false, i1 false}
!28 = !{!"../kernel/power/qos.c", i32 551, i32 1}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/power/qos.c", i32 569, i32 6}
!31 = !{ptr @__func__.freq_qos_update_request, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__ksymtab_freq_qos_update_request, !33, !"__ksymtab_freq_qos_update_request", i1 false, i1 false}
!33 = !{!"../kernel/power/qos.c", i32 578, i32 1}
!34 = !{ptr @__func__.freq_qos_remove_request, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/power/qos.c", i32 597, i32 6}
!36 = !{ptr @__ksymtab_freq_qos_remove_request, !37, !"__ksymtab_freq_qos_remove_request", i1 false, i1 false}
!37 = !{!"../kernel/power/qos.c", i32 607, i32 1}
!38 = !{ptr @__ksymtab_freq_qos_add_notifier, !39, !"__ksymtab_freq_qos_add_notifier", i1 false, i1 false}
!39 = !{!"../kernel/power/qos.c", i32 640, i32 1}
!40 = !{ptr @__ksymtab_freq_qos_remove_notifier, !41, !"__ksymtab_freq_qos_remove_notifier", i1 false, i1 false}
!41 = !{!"../kernel/power/qos.c", i32 673, i32 1}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/power/qos.c", i32 47, i32 8}
!44 = !{ptr @pm_qos_lock, !43, !"pm_qos_lock", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/power/qos.c", i32 71, i32 3}
!47 = !{ptr @__func__.pm_qos_get_value, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/trace/events/power.h", i32 432, i32 1}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!52 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!55 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/trace/events/power.h", i32 439, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{ptr @cpu_latency_constraints, !60, !"cpu_latency_constraints", i1 false, i1 false}
!60 = !{!"../kernel/power/qos.c", i32 215, i32 34}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/trace/events/power.h", i32 382, i32 1}
!63 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/trace/events/power.h", i32 389, i32 1}
!66 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/trace/events/power.h", i32 396, i32 1}
!69 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/power/qos.c", i32 419, i32 3}
!72 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cpu_latency_qos_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cpu_latency_qos_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/power/qos.c", i32 409, i32 10}
!77 = !{ptr @cpu_latency_qos_miscdev, !78, !"cpu_latency_qos_miscdev", i1 false, i1 false}
!78 = !{!"../kernel/power/qos.c", i32 407, i32 26}
!79 = !{ptr @cpu_latency_qos_fops, !80, !"cpu_latency_qos_fops", i1 false, i1 false}
!80 = !{!"../kernel/power/qos.c", i32 399, i32 37}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!83 = distinct !{null, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!86 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2148296000, i64 2148296005, i64 2148296018, i64 2148296062, i64 2148296096, i64 2148296117}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2155439276}
!101 = !{i64 2155439539}
!102 = !{i64 2149306750}
!103 = !{i64 2149307786}
!104 = !{i64 2155456816}
!105 = !{i64 2155457077}
!106 = !{i64 2155385223}
!107 = !{i64 2155385432}
!108 = !{i64 2155401474}
!109 = !{i64 2155401689}
!110 = !{i64 2155421948}
!111 = !{i64 2155422163}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"auto-init"}
!114 = !{i64 2153066836, i64 2153066861}
!115 = !{i64 5562391}
!116 = !{i64 5562588}
!117 = !{i64 2153047821}
