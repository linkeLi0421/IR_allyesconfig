; ModuleID = '/llk/IR_all_yes/lib/fault-inject.c_pt.bc'
source_filename = "../lib/fault-inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+setup_fault_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_setup_fault_attr\09\09\09\09"
module asm "\09.long\09__crc_setup_fault_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_fault_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_fault_attr\22\09\09\09\09\09"
module asm "__kstrtabns_setup_fault_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+should_fail\22, \22a\22\09"
module asm "\09.weak\09__crc_should_fail\09\09\09\09"
module asm "\09.long\09__crc_should_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_should_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22should_fail\22\09\09\09\09\09"
module asm "__kstrtabns_should_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fault_create_debugfs_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_fault_create_debugfs_attr\09\09\09\09"
module asm "\09.long\09__crc_fault_create_debugfs_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fault_create_debugfs_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22fault_create_debugfs_attr\22\09\09\09\09\09"
module asm "__kstrtabns_fault_create_debugfs_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.41, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.41 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%lu,%lu,%d,%d\00", [18 x i8] zeroinitializer }, align 32
@setup_fault_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014FAULT_INJECTION: failed to parse arguments\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_fault_attr\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/fault-inject.c\00", [45 x i8] zeroinitializer }, align 32
@setup_fault_attr._entry_ptr = internal global ptr @setup_fault_attr._entry, section ".printk_index", align 4
@__kstrtab_setup_fault_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_fault_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_fault_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_fault_attr to i32), ptr @__kstrtab_setup_fault_attr, ptr @__kstrtabns_setup_fault_attr }, section "___ksymtab_gpl+setup_fault_attr", align 4
@__kstrtab_should_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns_should_fail = external dso_local constant [0 x i8], align 1
@__ksymtab_should_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @should_fail to i32), ptr @__kstrtab_should_fail, ptr @__kstrtabns_should_fail }, section "___ksymtab_gpl+should_fail", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"probability\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"interval\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"times\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"verbose_ratelimit_interval_ms\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"verbose_ratelimit_burst\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"task-filter\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stacktrace-depth\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"require-start\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"require-end\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reject-start\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reject-end\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_fault_create_debugfs_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fault_create_debugfs_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_fault_create_debugfs_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fault_create_debugfs_attr to i32), ptr @__kstrtab_fault_create_debugfs_attr, ptr @__kstrtabns_fault_create_debugfs_attr }, section "___ksymtab_gpl+fault_create_debugfs_attr", align 4
@__func__.fail_dump = private unnamed_addr constant [10 x i8] c"fail_dump\00", align 1
@fail_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.fail_dump, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\015FAULT_INJECTION: forcing a failure.\0Aname %pd, interval %lu, probability %lu, space %d, times %d\0A\00", [61 x i8] zeroinitializer }, align 32
@fail_dump._entry_ptr = internal global ptr @fail_dump._entry, section ".printk_index", align 4
@fops_ul = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_ul_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@fops_stacktrace_depth = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fops_stacktrace_depth_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 26, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 28, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 209, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 210, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 211, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 212, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 213, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 214, i32 21 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 216, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 218, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 221, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 223, i32 20 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 224, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 225, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 226, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 45, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"fops_ul\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 169, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"fops_stacktrace_depth\00", align 1
@___asan_gen_.86 = private constant [22 x i8] c"../lib/fault-inject.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 187, i32 1 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_fault_create_debugfs_attr, ptr @__ksymtab_setup_fault_attr, ptr @__ksymtab_should_fail, ptr @fail_dump._entry, ptr @fail_dump._entry_ptr, ptr @setup_fault_attr._entry, ptr @setup_fault_attr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @fops_ul, ptr @.str.18, ptr @fops_stacktrace_depth], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_fault_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ul to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_stacktrace_depth to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_fault_attr(ptr noundef %attr, ptr nocapture noundef readonly %str) #0 align 64 {
entry:
  %probability = alloca i32, align 4
  %interval = alloca i32, align 4
  %times = alloca i32, align 4
  %space = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %probability) #11
  %0 = ptrtoint ptr %probability to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %probability, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval) #11
  %1 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %interval, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %times) #11
  %2 = ptrtoint ptr %times to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %times, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %space) #11
  %3 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %space, align 4, !annotation !60
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %str, ptr noundef nonnull @.str, ptr noundef nonnull %interval, ptr noundef nonnull %probability, ptr noundef nonnull %space, ptr noundef nonnull %times)
  %cmp = icmp slt i32 %call, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %probability to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %probability, align 4
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %attr, align 4
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval, align 4
  %interval3 = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %interval3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %interval3, align 4
  %times4 = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %times to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %times, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %times4, i32 noundef 4) #11
  %12 = ptrtoint ptr %times4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %times4, align 4
  %space5 = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 3
  %13 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %space, align 4
  %call.i.i12 = call zeroext i1 @__kasan_check_write(ptr noundef %space5, i32 noundef 4) #11
  %15 = ptrtoint ptr %space5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %14, ptr %space5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %space) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %times) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %probability) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @should_fail(ptr noundef %attr, i32 noundef %size) #0 align 64 {
entry:
  %entries.i = alloca [32 x i32], align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i86 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i86 to ptr
  %preempt_count.i87 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i87 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i87, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i88 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i88 to ptr
  %preempt_count.i89 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i89 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i89, align 4
  %and5 = and i32 %11, 256
  %or6 = or i32 %or, %and5
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %fail_nth8 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 183
  %16 = ptrtoint ptr %fail_nth8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %fail_nth8, align 128
  %tobool9.not = icmp eq i32 %17, 0
  br i1 %tobool9.not, label %if.end26, label %if.then10

if.then10:                                        ; preds = %if.then
  %dec = add i32 %17, -1
  %18 = ptrtoint ptr %fail_nth8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %dec, ptr %fail_nth8, align 128
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %fail, label %return

if.end26:                                         ; preds = %if.then, %entry
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attr, align 4
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %return, label %if.end28

if.end28:                                         ; preds = %if.end26
  %task_filter = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 5
  %21 = ptrtoint ptr %task_filter to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %task_filter, align 4, !range !61
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %23 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i94 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i94 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task31, align 8
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i95 = and i32 %28, 15728640
  %29 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i1.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i1.i to ptr
  %preempt_count.i2.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i2.i, align 4
  %and2.i = and i32 %32, 983040
  %or.i = or i32 %and2.i, %and.i95
  %33 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i3.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i3.i to ptr
  %preempt_count.i4.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i4.i, align 4
  %and5.i = and i32 %36, 256
  %or6.i = or i32 %or.i, %and5.i
  %tobool.not.i = icmp eq i32 %or6.i, 0
  br i1 %tobool.not.i, label %fail_task.exit, label %return

fail_task.exit:                                   ; preds = %land.lhs.true
  %make_it_fail.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 182
  %37 = ptrtoint ptr %make_it_fail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %make_it_fail.i, align 4
  %tobool7.i.not = icmp eq i32 %38, 0
  br i1 %tobool7.i.not, label %return, label %if.end34

if.end34:                                         ; preds = %fail_task.exit, %if.end28
  %times = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %times, i32 noundef 4) #11
  %39 = ptrtoint ptr %times to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %times, align 4
  %cmp36 = icmp eq i32 %40, 0
  br i1 %cmp36, label %return, label %if.end38

if.end38:                                         ; preds = %if.end34
  %space = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 3
  %call.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %space, i32 noundef 4) #11
  %41 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %space, align 4
  %cmp40 = icmp sgt i32 %42, %size
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %space, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %space, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %space, ptr %space, i32 %size, ptr elementtype(i32) %space) #11, !srcloc !62
  br label %return

if.end43:                                         ; preds = %if.end38
  %interval = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 1
  %44 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %interval, align 4
  %cmp44 = icmp ugt i32 %45, 1
  br i1 %cmp44, label %if.then45, label %if.end51

if.then45:                                        ; preds = %if.end43
  %count = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 11
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %count, align 4
  %rem = urem i32 %inc, %45
  %tobool48.not = icmp eq i32 %rem, 0
  br i1 %tobool48.not, label %if.end51, label %return

if.end51:                                         ; preds = %if.then45, %if.end43
  %48 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %attr, align 4
  %call53 = tail call i32 @prandom_u32() #11
  %rem54 = urem i32 %call53, 100
  %cmp55.not = icmp ugt i32 %49, %rem54
  br i1 %cmp55.not, label %if.end57, label %return

if.end57:                                         ; preds = %if.end51
  %stacktrace_depth.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 6
  %50 = ptrtoint ptr %stacktrace_depth.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stacktrace_depth.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %entries.i) #11
  %52 = call ptr @memset(ptr %entries.i, i32 255, i32 128)
  %require_start.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 7
  %53 = ptrtoint ptr %require_start.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %require_start.i, align 4
  %cmp.i = icmp eq i32 %54, 0
  br i1 %cmp.i, label %land.rhs.i96, label %land.end.i

land.rhs.i96:                                     ; preds = %if.end57
  %require_end.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 8
  %55 = ptrtoint ptr %require_end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %require_end.i, align 4
  %cmp1.i = icmp eq i32 %56, -1
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i96, %if.end57
  %57 = phi i1 [ false, %if.end57 ], [ %cmp1.i, %land.rhs.i96 ]
  %cmp2.i = icmp eq i32 %51, 0
  br i1 %cmp2.i, label %fail_stacktrace.exit, label %if.end.i

if.end.i:                                         ; preds = %land.end.i
  %call.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i, i32 noundef %51, i32 noundef 1) #11
  %reject_end.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 10
  %cmp341.i = icmp sgt i32 %call.i, 0
  br i1 %cmp341.i, label %for.body.lr.ph.i, label %fail_stacktrace.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %reject_start.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 9
  %58 = ptrtoint ptr %reject_start.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reject_start.i, align 4
  %require_end14.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %found.0.off043.i = phi i1 [ %57, %for.body.lr.ph.i ], [ %found.1.off0.i, %for.inc.i ]
  %n.042.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %arrayidx.i = getelementptr [32 x i32], ptr %entries.i, i32 0, i32 %n.042.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %cmp4.not.i = icmp ugt i32 %59, %61
  br i1 %cmp4.not.i, label %if.end8.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %62 = ptrtoint ptr %reject_end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reject_end.i, align 4
  %cmp6.i = icmp ult i32 %61, %63
  br i1 %cmp6.i, label %fail_stacktrace.exit.thread, label %if.end8.i

fail_stacktrace.exit.thread:                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %entries.i) #11
  br label %return

if.end8.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %64 = ptrtoint ptr %require_start.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %require_start.i, align 4
  %cmp11.not.i = icmp ugt i32 %65, %61
  br i1 %cmp11.not.i, label %for.inc.i, label %land.lhs.true12.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %66 = ptrtoint ptr %require_end14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %require_end14.i, align 4
  %cmp15.i = icmp ult i32 %61, %67
  %spec.select.i = select i1 %cmp15.i, i1 true, i1 %found.0.off043.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true12.i, %if.end8.i
  %found.1.off0.i = phi i1 [ %found.0.off043.i, %if.end8.i ], [ %spec.select.i, %land.lhs.true12.i ]
  %inc.i = add nuw nsw i32 %n.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %fail_stacktrace.exit, label %for.body.i

fail_stacktrace.exit:                             ; preds = %for.inc.i, %if.end.i, %land.end.i
  %retval.0.i = phi i1 [ %57, %land.end.i ], [ %57, %if.end.i ], [ %found.1.off0.i, %for.inc.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %entries.i) #11
  br i1 %retval.0.i, label %fail, label %return

fail:                                             ; preds = %fail_stacktrace.exit, %if.then10
  %verbose.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 4
  %68 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %verbose.i, align 4
  %cmp.not.i = icmp eq i32 %69, 0
  br i1 %cmp.not.i, label %fail_dump.exit, label %land.lhs.true.i99

land.lhs.true.i99:                                ; preds = %fail
  %ratelimit_state.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 12
  %call.i97 = call i32 @___ratelimit(ptr noundef %ratelimit_state.i, ptr noundef nonnull @__func__.fail_dump) #11
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %fail_dump.exit, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i99
  %dname.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 13
  %70 = ptrtoint ptr %dname.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dname.i, align 4
  %interval.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 1
  %72 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %interval.i, align 4
  %74 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %attr, align 4
  %space.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %space.i, i32 noundef 4) #11
  %76 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %space.i, align 4
  %times.i = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 2
  %call.i.i15.i = call zeroext i1 @__kasan_check_read(ptr noundef %times.i, i32 noundef 4) #11
  %78 = ptrtoint ptr %times.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %times.i, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #12
  %80 = ptrtoint ptr %verbose.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %verbose.i, align 4
  %cmp5.i = icmp ugt i32 %81, 1
  br i1 %cmp5.i, label %if.then6.i, label %fail_dump.exit

if.then6.i:                                       ; preds = %do.end.i
  call void @dump_stack() #12
  br label %fail_dump.exit

fail_dump.exit:                                   ; preds = %if.then6.i, %do.end.i, %land.lhs.true.i99, %fail
  %times61 = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 2
  %call.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef %times61, i32 noundef 4) #11
  %82 = ptrtoint ptr %times61 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %times61, align 4
  %cmp63.not = icmp eq i32 %83, -1
  br i1 %cmp63.not, label %return, label %if.then64

if.then64:                                        ; preds = %fail_dump.exit
  %call.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef %times61, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !63
  call void @llvm.prefetch.p0(ptr %times61, i32 1, i32 3, i32 1) #11
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %times61, ptr %times61, i32 0, i32 -1, ptr elementtype(i32) %times61) #11, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %return, label %do.end11.i.i.i

do.end11.i.i.i:                                   ; preds = %if.then64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !65
  br label %return

return:                                           ; preds = %do.end11.i.i.i, %if.then64, %fail_dump.exit, %fail_stacktrace.exit, %fail_stacktrace.exit.thread, %if.end51, %if.then45, %if.then41, %if.end34, %fail_task.exit, %land.lhs.true, %if.end26, %if.then10
  %retval.1 = phi i1 [ false, %if.then41 ], [ false, %if.end26 ], [ false, %fail_task.exit ], [ false, %if.end34 ], [ false, %if.then45 ], [ false, %if.end51 ], [ false, %fail_stacktrace.exit ], [ true, %fail_dump.exit ], [ false, %fail_stacktrace.exit.thread ], [ true, %if.then64 ], [ true, %do.end11.i.i.i ], [ false, %if.then10 ], [ false, %land.lhs.true ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fault_create_debugfs_attr(ptr noundef %name, ptr noundef %parent, ptr noundef %attr) #0 align 64 {
entry:
  %call = tail call ptr @debugfs_create_dir(ptr noundef %name, ptr noundef %parent) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %attr, ptr noundef nonnull @fops_ul) #11
  %interval = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 1
  %call.i47 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %interval, ptr noundef nonnull @fops_ul) #11
  %times = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 2
  tail call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.6, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %times) #11
  %space = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 3
  tail call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.7, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %space) #11
  %verbose = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 4
  %call.i48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %verbose, ptr noundef nonnull @fops_ul) #11
  %interval2 = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 12, i32 1
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.9, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %interval2) #11
  %burst = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 12, i32 2
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.10, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %burst) #11
  %task_filter = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 5
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.11, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %task_filter) #11
  %stacktrace_depth = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 6
  %call.i49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %stacktrace_depth, ptr noundef nonnull @fops_stacktrace_depth) #11
  %require_start = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 7
  %call.i50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %require_start, ptr noundef nonnull @fops_ul) #11
  %require_end = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 8
  %call.i51 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %require_end, ptr noundef nonnull @fops_ul) #11
  %reject_start = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 9
  %call.i52 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %reject_start, ptr noundef nonnull @fops_ul) #11
  %reject_end = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 10
  %call.i53 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef %reject_end, ptr noundef nonnull @fops_ul) #11
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %dget.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #11
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end
  %dname = getelementptr inbounds %struct.fault_attr, ptr %attr, i32 0, i32 13
  %0 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dname, align 4
  br label %cleanup

cleanup:                                          ; preds = %dget.exit, %entry
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_ul_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @debugfs_ul_get, ptr noundef nonnull @debugfs_ul_set, ptr noundef nonnull @.str.18) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_ul_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #7 align 64 {
entry:
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_ul_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #8 align 64 {
entry:
  %conv = trunc i64 %val to i32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_stacktrace_depth_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @debugfs_ul_get, ptr noundef nonnull @debugfs_stacktrace_depth_set, ptr noundef nonnull @.str.18) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debugfs_stacktrace_depth_set(ptr nocapture noundef writeonly %data, i64 noundef %val) #8 align 64 {
entry:
  %conv = trunc i64 %val to i32
  %0 = tail call i32 @llvm.umin.i32(i32 %conv, i32 32)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/fault-inject.c", i32 26, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/fault-inject.c", i32 28, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @setup_fault_attr._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @setup_fault_attr._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_setup_fault_attr, !9, !"__ksymtab_setup_fault_attr", i1 false, i1 false}
!9 = !{!"../lib/fault-inject.c", i32 40, i32 1}
!10 = !{ptr @__ksymtab_should_fail, !11, !"__ksymtab_should_fail", i1 false, i1 false}
!11 = !{!"../lib/fault-inject.c", i32 153, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/fault-inject.c", i32 209, i32 20}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/fault-inject.c", i32 210, i32 20}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/fault-inject.c", i32 211, i32 26}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/fault-inject.c", i32 212, i32 26}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/fault-inject.c", i32 213, i32 20}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/fault-inject.c", i32 214, i32 21}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/fault-inject.c", i32 216, i32 21}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/fault-inject.c", i32 218, i32 22}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/fault-inject.c", i32 221, i32 34}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/fault-inject.c", i32 223, i32 20}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/fault-inject.c", i32 224, i32 20}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/fault-inject.c", i32 225, i32 20}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/fault-inject.c", i32 226, i32 20}
!38 = !{ptr @__ksymtab_fault_create_debugfs_attr, !39, !"__ksymtab_fault_create_debugfs_attr", i1 false, i1 false}
!39 = !{!"../lib/fault-inject.c", i32 232, i32 1}
!40 = !{ptr @__func__.fail_dump, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/fault-inject.c", i32 44, i32 27}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/fault-inject.c", i32 45, i32 3}
!44 = !{ptr @fail_dump._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fail_dump._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @fops_ul, !47, !"fops_ul", i1 false, i1 false}
!47 = !{!"../lib/fault-inject.c", i32 169, i32 1}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fops_stacktrace_depth, !50, !"fops_stacktrace_depth", i1 false, i1 false}
!50 = !{!"../lib/fault-inject.c", i32 187, i32 1}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2148216245, i64 2148216271, i64 2148216300, i64 2148216334, i64 2148216365, i64 2148216388}
!63 = !{i64 2148213199}
!64 = !{i64 698022, i64 698047, i64 698069, i64 698085, i64 698097, i64 698117, i64 698141, i64 698157, i64 698169}
!65 = !{i64 2148213387}
