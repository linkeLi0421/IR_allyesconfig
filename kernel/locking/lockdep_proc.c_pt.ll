; ModuleID = '/llk/IR_all_yes/kernel/locking/lockdep_proc.c_pt.bc'
source_filename = "../kernel/locking/lockdep_proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, [10 x ptr], i32, ptr, i8, i8, i8, [4 x i32], [4 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8192 x i32] }
%struct.lock_chain = type { i32, %struct.hlist_node, i64 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_list = type { %struct.list_head, ptr, ptr, ptr, i16, i8, i8, ptr }
%struct.lock_class_stats = type { [4 x i32], [4 x i32], %struct.lock_time, %struct.lock_time, %struct.lock_time, %struct.lock_time, [4 x i32] }
%struct.lock_time = type { i64, i64, i64, i32 }
%struct.lock_stat_seq = type { ptr, [8192 x %struct.lock_stat_data] }
%struct.lock_stat_data = type { ptr, %struct.lock_class_stats }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_lockdep_proc__229_694_lockdep_proc_init6 = internal global ptr @lockdep_proc_init, section ".initcall6.init", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lockdep\00", [24 x i8] zeroinitializer }, align 32
@lockdep_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @l_start, ptr @l_stop, ptr @l_next, ptr @l_show }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lockdep_chains\00", [17 x i8] zeroinitializer }, align 32
@lockdep_chains_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @lc_start, ptr @lc_stop, ptr @lc_next, ptr @lc_show }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lockdep_stats\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lock_stat\00", [22 x i8] zeroinitializer }, align 32
@lock_stat_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @lock_stat_open, ptr @seq_read, ptr null, ptr @lock_stat_write, ptr @seq_lseek, ptr @lock_stat_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@all_lock_classes = external dso_local global %struct.list_head, align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"all lock classes:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%p\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" OPS:%8ld\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" FD:%5ld\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" BD:%5ld\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c": \00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" -> [%p] \00", [22 x i8] zeroinitializer }, align 32
@lock_classes = external dso_local global [8192 x %struct.lock_class], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@lockdep_stats = external dso_local global %struct.lockdep_stats, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"#%d\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"/%d\00", [28 x i8] zeroinitializer }, align 32
@lock_chains = external dso_local global [0 x %struct.lock_chain], align 8
@lc_show.irq_strs = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"softirq\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hardirq\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hardirq|softirq\00", [16 x i8] zeroinitializer }, align 32
@nr_free_chain_hlocks = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(buggered) \00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"all lock chains:\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq_context: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%p] \00", [26 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/locking/lockdep_proc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"debug_atomic_read(nr_unused_locks) != nr_unused\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" lock-classes:                  %11lu [max: %lu]\0A\00", [46 x i8] zeroinitializer }, align 32
@nr_lock_classes = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" direct dependencies:           %11lu [max: %lu]\0A\00", [46 x i8] zeroinitializer }, align 32
@nr_list_entries = external dso_local local_unnamed_addr global i32, align 4
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" indirect dependencies:         %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" all direct dependencies:       %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" dependency chains:             %11lu [max: %lu]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" dependency chain hlocks used:  %11lu [max: %lu]\0A\00", [46 x i8] zeroinitializer }, align 32
@nr_lost_chain_hlocks = external dso_local local_unnamed_addr global i32, align 4
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" dependency chain hlocks lost:  %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" in-hardirq chains:             %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@nr_hardirq_chains = external dso_local local_unnamed_addr global i32, align 4
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" in-softirq chains:             %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@nr_softirq_chains = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" in-process chains:             %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@nr_process_chains = external dso_local local_unnamed_addr global i32, align 4
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" stack-trace entries:           %11lu [max: %lu]\0A\00", [46 x i8] zeroinitializer }, align 32
@nr_stack_trace_entries = external dso_local local_unnamed_addr global i32, align 4
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" number of stack traces:        %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" number of stack hash chains:   %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" combined max dependencies:     %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" hardirq-safe locks:            %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" hardirq-unsafe locks:          %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" softirq-safe locks:            %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" softirq-unsafe locks:          %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" irq-safe locks:                %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" irq-unsafe locks:              %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" hardirq-read-safe locks:       %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" hardirq-read-unsafe locks:     %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" softirq-read-safe locks:       %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" softirq-read-unsafe locks:     %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" irq-read-safe locks:           %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" irq-read-unsafe locks:         %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" uncategorized locks:           %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" unused locks:                  %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" max locking depth:             %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@max_lockdep_depth = external dso_local local_unnamed_addr global i32, align 4
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" max bfs queue depth:           %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@max_bfs_queue_depth = external dso_local local_unnamed_addr global i32, align 4
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" debug_locks:                   %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" zapped classes:                %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@nr_zapped_classes = external dso_local local_unnamed_addr global i32, align 4
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" zapped lock chains:            %11lu\0A\00", [57 x i8] zeroinitializer }, align 32
@nr_zapped_lock_chains = external dso_local local_unnamed_addr global i32, align 4
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" large chain blocks:            %11u\0A\00", [58 x i8] zeroinitializer }, align 32
@nr_large_chain_blocks = external dso_local local_unnamed_addr global i32, align 4
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" chain lookup misses:           %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" chain lookup hits:             %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" cyclic checks:                 %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" redundant checks:              %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" redundant links:               %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" find-mask forwards checks:     %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" find-mask backwards checks:    %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" hardirq on events:             %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" hardirq off events:            %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" redundant hardirq ons:         %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" redundant hardirq offs:        %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" softirq on events:             %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" softirq off events:            %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" redundant softirq ons:         %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" redundant softirq offs:        %11llu\0A\00", [56 x i8] zeroinitializer }, align 32
@lockstat_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ls_start, ptr @ls_stop, ptr @ls_next, ptr @ls_show }, [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lock_stat version 0.4\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"*WARNING* lock debugging disabled!! - possibly due to a lockdep warning\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%40s %14s %14s %14s %14s %14s %14s %14s %14s %14s %14s %14s %14s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"class name\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"con-bounces\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"contentions\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"waittime-min\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"waittime-max\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"waittime-total\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"waittime-avg\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"acq-bounces\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acquisitions\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"holdtime-min\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"holdtime-max\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"holdtime-total\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"holdtime-avg\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@seq_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@seq_stats.__warned.95 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%38s-W:\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%40s:\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%14lu \00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %14lu \00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%38s-R:\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[<%p>]\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%40s %14lu %29s %pS\0A\00", [43 x i8] zeroinitializer }, align 32
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_read_lock_sched() used illegally while idle\00", [48 x i8] zeroinitializer }, align 32
@rcu_read_unlock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rcu_read_unlock_sched() used illegally while idle\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%14lu\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %14s\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%lld.%02d\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 682, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"lockdep_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 99, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 684, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"lockdep_chains_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 164, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 686, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 688, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"lock_stat_proc_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 671, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 65, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 69, i32 16 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 71, i32 16 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 74, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 75, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 78, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 81, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 83, i32 14 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 88, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 48, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 52, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 54, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [9 x i8] c"irq_strs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 133, i32 28 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 134, i32 16 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 136, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 135, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 138, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 143, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 144, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 148, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 155, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 258, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 262, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 264, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 266, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 275, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 281, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 283, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 287, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 292, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 294, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 297, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 299, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 302, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 304, i32 16 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 307, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 312, i32 16 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 314, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 316, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 318, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 320, i32 16 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 322, i32 16 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 325, i32 16 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 327, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 329, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 331, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 333, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 335, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 338, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 340, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 342, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 345, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 349, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 356, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 359, i32 16 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 361, i32 16 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 184, i32 16 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 186, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 188, i32 16 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 190, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 192, i32 16 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 194, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 196, i32 16 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 199, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 200, i32 16 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 201, i32 16 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 202, i32 16 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 203, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 204, i32 16 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 205, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 206, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant [13 x i8] c"lockstat_ops\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 605, i32 36 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 545, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 548, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 551, i32 16 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 553, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 554, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 555, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 556, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 557, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 558, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 559, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 560, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 561, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 562, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 563, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 564, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 565, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 398, i32 15 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 400, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 450, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 480, i32 18 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 482, i32 18 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 484, i32 17 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 486, i32 17 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 492, i32 17 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 515, i32 28 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 517, i32 17 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 787, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 805, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 424, i32 16 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 419, i32 16 }
@___asan_gen_.445 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.446 = private constant [33 x i8] c"../kernel/locking/lockdep_proc.c\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 411, i32 24 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__initcall__kmod_lockdep_proc__229_694_lockdep_proc_init6, ptr @.str, ptr @lockdep_ops, ptr @.str.1, ptr @lockdep_chains_ops, ptr @.str.2, ptr @.str.3, ptr @lock_stat_proc_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @lc_show.irq_strs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @lockstat_ops, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockdep_chains_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_stat_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lc_show.irq_strs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lockstat_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdep_proc_init() #0 section ".init.text" align 64 {
entry:
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @lockdep_ops, i32 noundef 0, ptr noundef null) #15
  %call1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @lockdep_chains_ops, i32 noundef 0, ptr noundef null) #15
  %call2 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @lockdep_stats_show, ptr noundef null) #15
  %call3 = tail call ptr @proc_create(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef null, ptr noundef nonnull @lock_stat_proc_ops) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lockdep_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @all_lock_classes to i32))
  %.pn298 = load ptr, ptr @all_lock_classes, align 4
  %cmp.not299 = icmp eq ptr %.pn298, @all_lock_classes
  br i1 %cmp.not299, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %.pn315 = phi ptr [ %.pn, %for.body ], [ %.pn298, %entry ]
  %nr_unused.0314 = phi i32 [ %spec.select, %for.body ], [ 0, %entry ]
  %nr_uncategorized.0313 = phi i32 [ %nr_uncategorized.1, %for.body ], [ 0, %entry ]
  %nr_irq_safe.0312 = phi i32 [ %nr_irq_safe.1, %for.body ], [ 0, %entry ]
  %nr_irq_unsafe.0311 = phi i32 [ %nr_irq_unsafe.1, %for.body ], [ 0, %entry ]
  %nr_softirq_safe.0310 = phi i32 [ %nr_softirq_safe.1, %for.body ], [ 0, %entry ]
  %nr_softirq_unsafe.0309 = phi i32 [ %nr_softirq_unsafe.1, %for.body ], [ 0, %entry ]
  %nr_hardirq_safe.0308 = phi i32 [ %nr_hardirq_safe.1, %for.body ], [ 0, %entry ]
  %nr_hardirq_unsafe.0307 = phi i32 [ %nr_hardirq_unsafe.1, %for.body ], [ 0, %entry ]
  %nr_irq_read_safe.0306 = phi i32 [ %nr_irq_read_safe.1, %for.body ], [ 0, %entry ]
  %nr_irq_read_unsafe.0305 = phi i32 [ %nr_irq_read_unsafe.1, %for.body ], [ 0, %entry ]
  %nr_softirq_read_safe.0304 = phi i32 [ %nr_softirq_read_safe.1, %for.body ], [ 0, %entry ]
  %sum_forward_deps.0303 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %nr_hardirq_read_unsafe.0302 = phi i32 [ %nr_hardirq_read_unsafe.1, %for.body ], [ 0, %entry ]
  %nr_hardirq_read_safe.0301 = phi i32 [ %nr_hardirq_read_safe.1, %for.body ], [ 0, %entry ]
  %nr_softirq_read_unsafe.0300 = phi i32 [ %nr_softirq_read_unsafe.1, %for.body ], [ 0, %entry ]
  %class.0 = getelementptr i8, ptr %.pn315, i32 -8
  %usage_mask = getelementptr i8, ptr %.pn315, i32 36
  %0 = ptrtoint ptr %usage_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage_mask, align 4
  %cmp1 = icmp eq i32 %1, 0
  %inc = zext i1 %cmp1 to i32
  %spec.select = add i32 %nr_unused.0314, %inc
  %cmp3 = icmp eq i32 %1, 256
  %inc5 = zext i1 %cmp3 to i32
  %nr_uncategorized.1 = add i32 %nr_uncategorized.0313, %inc5
  %and = and i32 %1, 17
  %tobool.not = icmp ne i32 %and, 0
  %inc9 = zext i1 %tobool.not to i32
  %nr_irq_safe.1 = add i32 %nr_irq_safe.0312, %inc9
  %and12 = and i32 %1, 68
  %tobool13.not = icmp ne i32 %and12, 0
  %inc15 = zext i1 %tobool13.not to i32
  %nr_irq_unsafe.1 = add i32 %nr_irq_unsafe.0311, %inc15
  %and18 = lshr i32 %1, 4
  %and18.lobit = and i32 %and18, 1
  %nr_softirq_safe.1 = add i32 %and18.lobit, %nr_softirq_safe.0310
  %and24 = lshr i32 %1, 6
  %and24.lobit = and i32 %and24, 1
  %nr_softirq_unsafe.1 = add i32 %and24.lobit, %nr_softirq_unsafe.0309
  %and30 = and i32 %1, 1
  %nr_hardirq_safe.1 = add i32 %and30, %nr_hardirq_safe.0308
  %and36 = lshr i32 %1, 2
  %and36.lobit = and i32 %and36, 1
  %nr_hardirq_unsafe.1 = add i32 %and36.lobit, %nr_hardirq_unsafe.0307
  %and42 = and i32 %1, 34
  %tobool43.not = icmp ne i32 %and42, 0
  %inc45 = zext i1 %tobool43.not to i32
  %nr_irq_read_safe.1 = add i32 %nr_irq_read_safe.0306, %inc45
  %and48 = and i32 %1, 136
  %tobool49.not = icmp ne i32 %and48, 0
  %inc51 = zext i1 %tobool49.not to i32
  %nr_irq_read_unsafe.1 = add i32 %nr_irq_read_unsafe.0305, %inc51
  %and54 = lshr i32 %1, 5
  %and54.lobit = and i32 %and54, 1
  %nr_softirq_read_safe.1 = add i32 %and54.lobit, %nr_softirq_read_safe.0304
  %and60 = lshr i32 %1, 7
  %and60.lobit = and i32 %and60, 1
  %nr_softirq_read_unsafe.1 = add i32 %and60.lobit, %nr_softirq_read_unsafe.0300
  %and66 = lshr i32 %1, 1
  %and66.lobit = and i32 %and66, 1
  %nr_hardirq_read_safe.1 = add i32 %and66.lobit, %nr_hardirq_read_safe.0301
  %and72 = lshr i32 %1, 3
  %and72.lobit = and i32 %and72, 1
  %nr_hardirq_read_unsafe.1 = add i32 %and72.lobit, %nr_hardirq_read_unsafe.0302
  %call = tail call i32 @lockdep_count_forward_deps(ptr noundef %class.0) #15
  %add = add i32 %call, %sum_forward_deps.0303
  %2 = ptrtoint ptr %.pn315 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn315, align 4
  %cmp.not = icmp eq ptr %.pn, @all_lock_classes
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %nr_softirq_read_unsafe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_softirq_read_unsafe.1, %for.body ]
  %nr_hardirq_read_safe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_hardirq_read_safe.1, %for.body ]
  %nr_hardirq_read_unsafe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_hardirq_read_unsafe.1, %for.body ]
  %sum_forward_deps.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %nr_softirq_read_safe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_softirq_read_safe.1, %for.body ]
  %nr_irq_read_unsafe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_irq_read_unsafe.1, %for.body ]
  %nr_irq_read_safe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_irq_read_safe.1, %for.body ]
  %nr_hardirq_unsafe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_hardirq_unsafe.1, %for.body ]
  %nr_hardirq_safe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_hardirq_safe.1, %for.body ]
  %nr_softirq_unsafe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_softirq_unsafe.1, %for.body ]
  %nr_softirq_safe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_softirq_safe.1, %for.body ]
  %nr_irq_unsafe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_irq_unsafe.1, %for.body ]
  %nr_irq_safe.0.lcssa = phi i32 [ 0, %entry ], [ %nr_irq_safe.1, %for.body ]
  %nr_uncategorized.0.lcssa = phi i32 [ 0, %entry ], [ %nr_uncategorized.1, %for.body ]
  %nr_unused.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select, %for.body ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %3 = load i32, ptr @oops_in_progress, align 4
  %tobool81.not = icmp eq i32 %3, 0
  br i1 %tobool81.not, label %for.cond82.preheader, label %if.end136

for.cond82.preheader:                             ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call83330 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp84331 = icmp ult i32 %call83330, %4
  br i1 %cmp84331, label %do.body, label %for.end90

do.body:                                          ; preds = %do.body, %for.cond82.preheader
  %call83333 = phi i32 [ %call83, %do.body ], [ %call83330, %for.cond82.preheader ]
  %__total.0332 = phi i64 [ %add89, %do.body ], [ 0, %for.cond82.preheader ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call83333
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add88 = add i32 %6, ptrtoint (ptr @lockdep_stats to i32)
  %7 = inttoptr i32 %add88 to ptr
  %nr_unused_locks = getelementptr inbounds %struct.lockdep_stats, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %nr_unused_locks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_unused_locks, align 4
  %conv = sext i32 %9 to i64
  %add89 = add i64 %__total.0332, %conv
  %call83 = tail call i32 @cpumask_next(i32 noundef %call83333, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp84 = icmp ult i32 %call83, %4
  br i1 %cmp84, label %do.body, label %for.end90

for.end90:                                        ; preds = %do.body, %for.cond82.preheader
  %__total.0.lcssa = phi i64 [ 0, %for.cond82.preheader ], [ %add89, %do.body ]
  %conv92 = zext i32 %nr_unused.0.lcssa to i64
  %cmp93.not = icmp eq i64 %__total.0.lcssa, %conv92
  br i1 %cmp93.not, label %if.end136, label %do.end101, !prof !239

do.end101:                                        ; preds = %for.end90
  %call102 = tail call i32 @debug_locks_off() #15
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end136, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %do.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %10 = load i32, ptr @debug_locks_silent, align 4
  %tobool105.not = icmp eq i32 %10, 0
  br i1 %tobool105.not, label %do.end118, label %if.end136

do.end118:                                        ; preds = %land.lhs.true104
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 258, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #15
  br label %if.end136

if.end136:                                        ; preds = %do.end118, %land.lhs.true104, %do.end101, %for.end90, %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_lock_classes to i32))
  %11 = load i32, ptr @nr_lock_classes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %11, i32 noundef 8192) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_list_entries to i32))
  %12 = load i32, ptr @nr_list_entries, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %12, i32 noundef 32768) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %sum_forward_deps.0.lcssa) #15
  %mul = mul i32 %nr_irq_safe.0.lcssa, %nr_irq_unsafe.0.lcssa
  %mul138 = mul i32 %nr_hardirq_safe.0.lcssa, %nr_hardirq_unsafe.0.lcssa
  %add139 = add i32 %mul, %mul138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_list_entries to i32))
  %13 = load i32, ptr @nr_list_entries, align 4
  %add140 = add i32 %add139, %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %add140) #15
  %call141 = tail call i32 @lock_chain_count() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %call141, i32 noundef 65536) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_free_chain_hlocks to i32))
  %14 = load i32, ptr @nr_free_chain_hlocks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_lost_chain_hlocks to i32))
  %15 = load i32, ptr @nr_lost_chain_hlocks, align 4
  %16 = add i32 %14, %15
  %sub = sub i32 327680, %16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %sub, i32 noundef 327680) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_lost_chain_hlocks to i32))
  %17 = load i32, ptr @nr_lost_chain_hlocks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %17) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_hardirq_chains to i32))
  %18 = load i32, ptr @nr_hardirq_chains, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %18) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_softirq_chains to i32))
  %19 = load i32, ptr @nr_softirq_chains, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %19) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_process_chains to i32))
  %20 = load i32, ptr @nr_process_chains, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %20) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_stack_trace_entries to i32))
  %21 = load i32, ptr @nr_stack_trace_entries, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %21, i32 noundef 524288) #15
  %call143 = tail call i64 @lockdep_stack_trace_count() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i64 noundef %call143) #15
  %call144 = tail call i64 @lockdep_stack_hash_count() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i64 noundef %call144) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_hardirq_chains to i32))
  %22 = load i32, ptr @nr_hardirq_chains, align 4
  %add145 = add i32 %22, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_softirq_chains to i32))
  %23 = load i32, ptr @nr_softirq_chains, align 4
  %add146 = add i32 %23, 1
  %mul147 = mul i32 %add146, %add145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_process_chains to i32))
  %24 = load i32, ptr @nr_process_chains, align 4
  %add148 = add i32 %24, 1
  %mul149 = mul i32 %mul147, %add148
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %mul149) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.41, i32 noundef %nr_hardirq_safe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %nr_hardirq_unsafe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %nr_softirq_safe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %nr_softirq_unsafe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %nr_irq_safe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %nr_irq_unsafe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %nr_hardirq_read_safe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %nr_hardirq_read_unsafe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %nr_softirq_read_safe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %nr_softirq_read_unsafe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %nr_irq_read_safe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %nr_irq_read_unsafe.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, i32 noundef %nr_uncategorized.0.lcssa) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %nr_unused.0.lcssa) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_lockdep_depth to i32))
  %25 = load i32, ptr @max_lockdep_depth, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %25) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_bfs_queue_depth to i32))
  %26 = load i32, ptr @max_bfs_queue_depth, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %26) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %call357.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp358.i = icmp ult i32 %call357.i, %27
  br i1 %cmp358.i, label %do.body.i, label %for.end170.i

do.body.i:                                        ; preds = %do.body.i, %if.end136
  %call360.i = phi i32 [ %call.i, %do.body.i ], [ %call357.i, %if.end136 ]
  %__total.0359.i = phi i64 [ %add2.i, %do.body.i ], [ 0, %if.end136 ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call360.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, ptrtoint (ptr @lockdep_stats to i32)
  %30 = inttoptr i32 %add.i to ptr
  %hardirqs_on_events.i = getelementptr inbounds %struct.lockdep_stats, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %hardirqs_on_events.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hardirqs_on_events.i, align 4
  %conv.i = zext i32 %32 to i64
  %add2.i = add i64 %__total.0359.i, %conv.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call360.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp.i = icmp ult i32 %call.i, %27
  br i1 %cmp.i, label %do.body.i, label %do.body12.i

do.body12.i:                                      ; preds = %do.body12.i, %do.body.i
  %call8365.i = phi i32 [ %call8.i, %do.body12.i ], [ %call357.i, %do.body.i ]
  %__total5.0364.i = phi i64 [ %add22.i, %do.body12.i ], [ 0, %do.body.i ]
  %arrayidx19.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8365.i
  %33 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19.i, align 4
  %add20.i = add i32 %34, ptrtoint (ptr @lockdep_stats to i32)
  %35 = inttoptr i32 %add20.i to ptr
  %hardirqs_off_events.i = getelementptr inbounds %struct.lockdep_stats, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %hardirqs_off_events.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hardirqs_off_events.i, align 4
  %conv21.i = zext i32 %37 to i64
  %add22.i = add i64 %__total5.0364.i, %conv21.i
  %call8.i = tail call i32 @cpumask_next(i32 noundef %call8365.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp9.i = icmp ult i32 %call8.i, %27
  br i1 %cmp9.i, label %do.body12.i, label %do.body33.i

do.body33.i:                                      ; preds = %do.body33.i, %do.body12.i
  %call29370.i = phi i32 [ %call29.i, %do.body33.i ], [ %call357.i, %do.body12.i ]
  %__total26.0369.i = phi i64 [ %add43.i, %do.body33.i ], [ 0, %do.body12.i ]
  %arrayidx40.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call29370.i
  %38 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx40.i, align 4
  %add41.i = add i32 %39, ptrtoint (ptr @lockdep_stats to i32)
  %40 = inttoptr i32 %add41.i to ptr
  %redundant_hardirqs_on.i = getelementptr inbounds %struct.lockdep_stats, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %redundant_hardirqs_on.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %redundant_hardirqs_on.i, align 4
  %conv42.i = zext i32 %42 to i64
  %add43.i = add i64 %__total26.0369.i, %conv42.i
  %call29.i = tail call i32 @cpumask_next(i32 noundef %call29370.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp30.i = icmp ult i32 %call29.i, %27
  br i1 %cmp30.i, label %do.body33.i, label %do.body54.i

do.body54.i:                                      ; preds = %do.body54.i, %do.body33.i
  %call50375.i = phi i32 [ %call50.i, %do.body54.i ], [ %call357.i, %do.body33.i ]
  %__total47.0374.i = phi i64 [ %add64.i, %do.body54.i ], [ 0, %do.body33.i ]
  %arrayidx61.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call50375.i
  %43 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx61.i, align 4
  %add62.i = add i32 %44, ptrtoint (ptr @lockdep_stats to i32)
  %45 = inttoptr i32 %add62.i to ptr
  %redundant_hardirqs_off.i = getelementptr inbounds %struct.lockdep_stats, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %redundant_hardirqs_off.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %redundant_hardirqs_off.i, align 4
  %conv63.i = zext i32 %47 to i64
  %add64.i = add i64 %__total47.0374.i, %conv63.i
  %call50.i = tail call i32 @cpumask_next(i32 noundef %call50375.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp51.i = icmp ult i32 %call50.i, %27
  br i1 %cmp51.i, label %do.body54.i, label %do.body75.i

do.body75.i:                                      ; preds = %do.body75.i, %do.body54.i
  %call71380.i = phi i32 [ %call71.i, %do.body75.i ], [ %call357.i, %do.body54.i ]
  %__total68.0379.i = phi i64 [ %add85.i, %do.body75.i ], [ 0, %do.body54.i ]
  %arrayidx82.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call71380.i
  %48 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx82.i, align 4
  %add83.i = add i32 %49, ptrtoint (ptr @lockdep_stats to i32)
  %50 = inttoptr i32 %add83.i to ptr
  %softirqs_on_events.i = getelementptr inbounds %struct.lockdep_stats, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %softirqs_on_events.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %softirqs_on_events.i, align 4
  %conv84.i = zext i32 %52 to i64
  %add85.i = add i64 %__total68.0379.i, %conv84.i
  %call71.i = tail call i32 @cpumask_next(i32 noundef %call71380.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp72.i = icmp ult i32 %call71.i, %27
  br i1 %cmp72.i, label %do.body75.i, label %do.body96.i

do.body96.i:                                      ; preds = %do.body96.i, %do.body75.i
  %call92385.i = phi i32 [ %call92.i, %do.body96.i ], [ %call357.i, %do.body75.i ]
  %__total89.0384.i = phi i64 [ %add106.i, %do.body96.i ], [ 0, %do.body75.i ]
  %arrayidx103.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call92385.i
  %53 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx103.i, align 4
  %add104.i = add i32 %54, ptrtoint (ptr @lockdep_stats to i32)
  %55 = inttoptr i32 %add104.i to ptr
  %softirqs_off_events.i = getelementptr inbounds %struct.lockdep_stats, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %softirqs_off_events.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %softirqs_off_events.i, align 4
  %conv105.i = zext i32 %57 to i64
  %add106.i = add i64 %__total89.0384.i, %conv105.i
  %call92.i = tail call i32 @cpumask_next(i32 noundef %call92385.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp93.i = icmp ult i32 %call92.i, %27
  br i1 %cmp93.i, label %do.body96.i, label %do.body117.i

do.body117.i:                                     ; preds = %do.body117.i, %do.body96.i
  %call113390.i = phi i32 [ %call113.i, %do.body117.i ], [ %call357.i, %do.body96.i ]
  %__total110.0389.i = phi i64 [ %add127.i, %do.body117.i ], [ 0, %do.body96.i ]
  %arrayidx124.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call113390.i
  %58 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx124.i, align 4
  %add125.i = add i32 %59, ptrtoint (ptr @lockdep_stats to i32)
  %60 = inttoptr i32 %add125.i to ptr
  %redundant_softirqs_on.i = getelementptr inbounds %struct.lockdep_stats, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %redundant_softirqs_on.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %redundant_softirqs_on.i, align 4
  %conv126.i = zext i32 %62 to i64
  %add127.i = add i64 %__total110.0389.i, %conv126.i
  %call113.i = tail call i32 @cpumask_next(i32 noundef %call113390.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp114.i = icmp ult i32 %call113.i, %27
  br i1 %cmp114.i, label %do.body117.i, label %do.body138.i

do.body138.i:                                     ; preds = %do.body138.i, %do.body117.i
  %call134395.i = phi i32 [ %call134.i, %do.body138.i ], [ %call357.i, %do.body117.i ]
  %__total131.0394.i = phi i64 [ %add148.i, %do.body138.i ], [ 0, %do.body117.i ]
  %arrayidx145.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call134395.i
  %63 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx145.i, align 4
  %add146.i = add i32 %64, ptrtoint (ptr @lockdep_stats to i32)
  %65 = inttoptr i32 %add146.i to ptr
  %redundant_softirqs_off.i = getelementptr inbounds %struct.lockdep_stats, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %redundant_softirqs_off.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %redundant_softirqs_off.i, align 4
  %conv147.i = zext i32 %67 to i64
  %add148.i = add i64 %__total131.0394.i, %conv147.i
  %call134.i = tail call i32 @cpumask_next(i32 noundef %call134395.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp135.i = icmp ult i32 %call134.i, %27
  br i1 %cmp135.i, label %do.body138.i, label %do.body159.i

do.body159.i:                                     ; preds = %do.body159.i, %do.body138.i
  %call155400.i = phi i32 [ %call155.i, %do.body159.i ], [ %call357.i, %do.body138.i ]
  %__total152.0399.i = phi i64 [ %add169.i, %do.body159.i ], [ 0, %do.body138.i ]
  %arrayidx166.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call155400.i
  %68 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx166.i, align 4
  %add167.i = add i32 %69, ptrtoint (ptr @lockdep_stats to i32)
  %70 = inttoptr i32 %add167.i to ptr
  %chain_lookup_misses.i = getelementptr inbounds %struct.lockdep_stats, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %chain_lookup_misses.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chain_lookup_misses.i, align 4
  %conv168.i = zext i32 %72 to i64
  %add169.i = add i64 %__total152.0399.i, %conv168.i
  %call155.i = tail call i32 @cpumask_next(i32 noundef %call155400.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp156.i = icmp ult i32 %call155.i, %27
  br i1 %cmp156.i, label %do.body159.i, label %for.end170.i

for.end170.i:                                     ; preds = %do.body159.i, %if.end136
  %__total131.0.lcssa.i296 = phi i64 [ 0, %if.end136 ], [ %add148.i, %do.body159.i ]
  %__total89.0.lcssa.i266274295 = phi i64 [ 0, %if.end136 ], [ %add106.i, %do.body159.i ]
  %__total47.0.lcssa.i244250265275294 = phi i64 [ 0, %if.end136 ], [ %add64.i, %do.body159.i ]
  %__total5.0.lcssa.i230234243251264276293 = phi i64 [ 0, %if.end136 ], [ %add22.i, %do.body159.i ]
  %__total.0.lcssa.i226229235242252263277292 = phi i64 [ 0, %if.end136 ], [ %add2.i, %do.body159.i ]
  %__total26.0.lcssa.i236241253262278291 = phi i64 [ 0, %if.end136 ], [ %add43.i, %do.body159.i ]
  %__total68.0.lcssa.i254261279290 = phi i64 [ 0, %if.end136 ], [ %add85.i, %do.body159.i ]
  %__total110.0.lcssa.i280289 = phi i64 [ 0, %if.end136 ], [ %add127.i, %do.body159.i ]
  %__total152.0.lcssa.i = phi i64 [ 0, %if.end136 ], [ %add169.i, %do.body159.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i64 noundef %__total152.0.lcssa.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %call176402.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp177403.i = icmp ult i32 %call176402.i, %73
  br i1 %cmp177403.i, label %do.body180.i, label %for.end191.i

do.body180.i:                                     ; preds = %do.body180.i, %for.end170.i
  %call176405.i = phi i32 [ %call176.i, %do.body180.i ], [ %call176402.i, %for.end170.i ]
  %__total173.0404.i = phi i64 [ %add190.i, %do.body180.i ], [ 0, %for.end170.i ]
  %arrayidx187.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call176405.i
  %74 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx187.i, align 4
  %add188.i = add i32 %75, ptrtoint (ptr @lockdep_stats to i32)
  %76 = inttoptr i32 %add188.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %conv189.i = zext i32 %78 to i64
  %add190.i = add i64 %__total173.0404.i, %conv189.i
  %call176.i = tail call i32 @cpumask_next(i32 noundef %call176405.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp177.i = icmp ult i32 %call176.i, %73
  br i1 %cmp177.i, label %do.body180.i, label %for.end191.i

for.end191.i:                                     ; preds = %do.body180.i, %for.end170.i
  %__total173.0.lcssa.i = phi i64 [ 0, %for.end170.i ], [ %add190.i, %do.body180.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i64 noundef %__total173.0.lcssa.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %79 = load i32, ptr @nr_cpu_ids, align 4
  %call197407.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp198408.i = icmp ult i32 %call197407.i, %79
  br i1 %cmp198408.i, label %do.body201.i, label %for.end212.i

do.body201.i:                                     ; preds = %do.body201.i, %for.end191.i
  %call197410.i = phi i32 [ %call197.i, %do.body201.i ], [ %call197407.i, %for.end191.i ]
  %__total194.0409.i = phi i64 [ %add211.i, %do.body201.i ], [ 0, %for.end191.i ]
  %arrayidx208.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call197410.i
  %80 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx208.i, align 4
  %add209.i = add i32 %81, ptrtoint (ptr @lockdep_stats to i32)
  %82 = inttoptr i32 %add209.i to ptr
  %nr_cyclic_checks.i = getelementptr inbounds %struct.lockdep_stats, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %nr_cyclic_checks.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_cyclic_checks.i, align 4
  %conv210.i = zext i32 %84 to i64
  %add211.i = add i64 %__total194.0409.i, %conv210.i
  %call197.i = tail call i32 @cpumask_next(i32 noundef %call197410.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp198.i = icmp ult i32 %call197.i, %79
  br i1 %cmp198.i, label %do.body201.i, label %for.end212.i

for.end212.i:                                     ; preds = %do.body201.i, %for.end191.i
  %__total194.0.lcssa.i = phi i64 [ 0, %for.end191.i ], [ %add211.i, %do.body201.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, i64 noundef %__total194.0.lcssa.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %call218412.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp219413.i = icmp ult i32 %call218412.i, %85
  br i1 %cmp219413.i, label %do.body222.i, label %for.end233.i

do.body222.i:                                     ; preds = %do.body222.i, %for.end212.i
  %call218415.i = phi i32 [ %call218.i, %do.body222.i ], [ %call218412.i, %for.end212.i ]
  %__total215.0414.i = phi i64 [ %add232.i, %do.body222.i ], [ 0, %for.end212.i ]
  %arrayidx229.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call218415.i
  %86 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx229.i, align 4
  %add230.i = add i32 %87, ptrtoint (ptr @lockdep_stats to i32)
  %88 = inttoptr i32 %add230.i to ptr
  %nr_redundant_checks.i = getelementptr inbounds %struct.lockdep_stats, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %nr_redundant_checks.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nr_redundant_checks.i, align 4
  %conv231.i = zext i32 %90 to i64
  %add232.i = add i64 %__total215.0414.i, %conv231.i
  %call218.i = tail call i32 @cpumask_next(i32 noundef %call218415.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp219.i = icmp ult i32 %call218.i, %85
  br i1 %cmp219.i, label %do.body222.i, label %for.end233.i

for.end233.i:                                     ; preds = %do.body222.i, %for.end212.i
  %__total215.0.lcssa.i = phi i64 [ 0, %for.end212.i ], [ %add232.i, %do.body222.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, i64 noundef %__total215.0.lcssa.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %call239417.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp240418.i = icmp ult i32 %call239417.i, %91
  br i1 %cmp240418.i, label %do.body243.i, label %for.end254.i

do.body243.i:                                     ; preds = %do.body243.i, %for.end233.i
  %call239420.i = phi i32 [ %call239.i, %do.body243.i ], [ %call239417.i, %for.end233.i ]
  %__total236.0419.i = phi i64 [ %add253.i, %do.body243.i ], [ 0, %for.end233.i ]
  %arrayidx250.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call239420.i
  %92 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx250.i, align 4
  %add251.i = add i32 %93, ptrtoint (ptr @lockdep_stats to i32)
  %94 = inttoptr i32 %add251.i to ptr
  %nr_redundant.i = getelementptr inbounds %struct.lockdep_stats, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %nr_redundant.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr_redundant.i, align 4
  %conv252.i = zext i32 %96 to i64
  %add253.i = add i64 %__total236.0419.i, %conv252.i
  %call239.i = tail call i32 @cpumask_next(i32 noundef %call239420.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp240.i = icmp ult i32 %call239.i, %91
  br i1 %cmp240.i, label %do.body243.i, label %for.end254.i

for.end254.i:                                     ; preds = %do.body243.i, %for.end233.i
  %__total236.0.lcssa.i = phi i64 [ 0, %for.end233.i ], [ %add253.i, %do.body243.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, i64 noundef %__total236.0.lcssa.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %97 = load i32, ptr @nr_cpu_ids, align 4
  %call260422.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp261423.i = icmp ult i32 %call260422.i, %97
  br i1 %cmp261423.i, label %do.body264.i, label %for.end275.i

do.body264.i:                                     ; preds = %do.body264.i, %for.end254.i
  %call260425.i = phi i32 [ %call260.i, %do.body264.i ], [ %call260422.i, %for.end254.i ]
  %__total257.0424.i = phi i64 [ %add274.i, %do.body264.i ], [ 0, %for.end254.i ]
  %arrayidx271.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call260425.i
  %98 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx271.i, align 4
  %add272.i = add i32 %99, ptrtoint (ptr @lockdep_stats to i32)
  %100 = inttoptr i32 %add272.i to ptr
  %nr_find_usage_forwards_checks.i = getelementptr inbounds %struct.lockdep_stats, ptr %100, i32 0, i32 14
  %101 = ptrtoint ptr %nr_find_usage_forwards_checks.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_find_usage_forwards_checks.i, align 4
  %conv273.i = zext i32 %102 to i64
  %add274.i = add i64 %__total257.0424.i, %conv273.i
  %call260.i = tail call i32 @cpumask_next(i32 noundef %call260425.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp261.i = icmp ult i32 %call260.i, %97
  br i1 %cmp261.i, label %do.body264.i, label %for.end275.i

for.end275.i:                                     ; preds = %do.body264.i, %for.end254.i
  %__total257.0.lcssa.i = phi i64 [ 0, %for.end254.i ], [ %add274.i, %do.body264.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.66, i64 noundef %__total257.0.lcssa.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %103 = load i32, ptr @nr_cpu_ids, align 4
  %call281427.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp282428.i = icmp ult i32 %call281427.i, %103
  br i1 %cmp282428.i, label %do.body285.i, label %lockdep_stats_debug_show.exit

do.body285.i:                                     ; preds = %do.body285.i, %for.end275.i
  %call281430.i = phi i32 [ %call281.i, %do.body285.i ], [ %call281427.i, %for.end275.i ]
  %__total278.0429.i = phi i64 [ %add295.i, %do.body285.i ], [ 0, %for.end275.i ]
  %arrayidx292.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call281430.i
  %104 = ptrtoint ptr %arrayidx292.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx292.i, align 4
  %add293.i = add i32 %105, ptrtoint (ptr @lockdep_stats to i32)
  %106 = inttoptr i32 %add293.i to ptr
  %nr_find_usage_backwards_checks.i = getelementptr inbounds %struct.lockdep_stats, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %nr_find_usage_backwards_checks.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr_find_usage_backwards_checks.i, align 4
  %conv294.i = zext i32 %108 to i64
  %add295.i = add i64 %__total278.0429.i, %conv294.i
  %call281.i = tail call i32 @cpumask_next(i32 noundef %call281430.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp282.i = icmp ult i32 %call281.i, %103
  br i1 %cmp282.i, label %do.body285.i, label %lockdep_stats_debug_show.exit

lockdep_stats_debug_show.exit:                    ; preds = %do.body285.i, %for.end275.i
  %__total278.0.lcssa.i = phi i64 [ 0, %for.end275.i ], [ %add295.i, %do.body285.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.67, i64 noundef %__total278.0.lcssa.i) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, i64 noundef %__total.0.lcssa.i226229235242252263277292) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, i64 noundef %__total5.0.lcssa.i230234243251264276293) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, i64 noundef %__total26.0.lcssa.i236241253262278291) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, i64 noundef %__total47.0.lcssa.i244250265275294) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i64 noundef %__total68.0.lcssa.i254261279290) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i64 noundef %__total89.0.lcssa.i266274295) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, i64 noundef %__total110.0.lcssa.i280289) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i64 noundef %__total131.0.lcssa.i296) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %109 = load i32, ptr @debug_locks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %109) #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_zapped_classes to i32))
  %110 = load i32, ptr @nr_zapped_classes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %110) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_zapped_lock_chains to i32))
  %111 = load i32, ptr @nr_zapped_lock_chains, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %111) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_large_chain_blocks to i32))
  %112 = load i32, ptr @nr_large_chain_blocks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %112) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @l_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start_head(ptr noundef nonnull @all_lock_classes, i64 noundef %1) #15
  ret ptr %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #3 align 64 {
entry:
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @l_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @all_lock_classes, ptr noundef %pos) #15
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l_show(ptr noundef %m, ptr noundef %v) #2 align 64 {
entry:
  %usage = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %usage) #15
  %cmp = icmp eq ptr %v, @all_lock_classes
  %0 = call ptr @memset(ptr %usage, i32 255, i32 5)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %v, i32 -8
  %key = getelementptr i8, ptr %v, i32 24
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, ptr noundef %2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call7.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp8.i = icmp ult i32 %call7.i, %3
  br i1 %cmp8.i, label %do.body.lr.ph.i, label %debug_class_ops_read.exit

do.body.lr.ph.i:                                  ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @lock_classes to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 132
  %arrayidx.i = getelementptr %struct.lockdep_stats, ptr @lockdep_stats, i32 0, i32 16, i32 %sub.ptr.div.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %do.body.lr.ph.i
  %call10.i = phi i32 [ %call7.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i ]
  %ops.09.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add3.i, %do.body.i ]
  %arrayidx2.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10.i
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %6, %4
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add3.i = add i32 %9, %ops.09.i
  %call.i = tail call i32 @cpumask_next(i32 noundef %call10.i, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp.i = icmp ult i32 %call.i, %3
  br i1 %cmp.i, label %do.body.i, label %debug_class_ops_read.exit

debug_class_ops_read.exit:                        ; preds = %do.body.i, %if.end
  %ops.0.lcssa.i = phi i32 [ 0, %if.end ], [ %add3.i, %do.body.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %ops.0.lcssa.i) #15
  %call2 = tail call i32 @lockdep_count_forward_deps(ptr noundef %add.ptr) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %call2) #15
  %call3 = tail call i32 @lockdep_count_backward_deps(ptr noundef %add.ptr) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %call3) #15
  call void @get_usage_chars(ptr noundef %add.ptr, ptr noundef nonnull %usage) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef nonnull %usage) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10) #15
  call fastcc void @print_name(ptr noundef %m, ptr noundef %add.ptr)
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  %locks_after = getelementptr i8, ptr %v, i32 8
  %10 = ptrtoint ptr %locks_after to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.049 = load ptr, ptr %locks_after, align 4
  %cmp10.not50 = icmp eq ptr %entry1.049, %locks_after
  br i1 %cmp10.not50, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %debug_class_ops_read.exit
  %entry1.051 = phi ptr [ %entry1.0, %for.inc ], [ %entry1.049, %debug_class_ops_read.exit ]
  %distance = getelementptr inbounds %struct.lock_list, ptr %entry1.051, i32 0, i32 4
  %11 = ptrtoint ptr %distance to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %distance, align 4
  %cmp11 = icmp eq i16 %12, 1
  br i1 %cmp11, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body
  %class14 = getelementptr inbounds %struct.lock_list, ptr %entry1.051, i32 0, i32 1
  %13 = ptrtoint ptr %class14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class14, align 4
  %key15 = getelementptr inbounds %struct.lock_class, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %key15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key15, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, ptr noundef %16) #15
  %17 = ptrtoint ptr %class14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class14, align 4
  call fastcc void @print_name(ptr noundef %m, ptr noundef %18)
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body
  %19 = ptrtoint ptr %entry1.051 to i32
  call void @__asan_load4_noabort(i32 %19)
  %entry1.0 = load ptr, ptr %entry1.051, align 4
  %cmp10.not = icmp eq ptr %entry1.0, %locks_after
  br i1 %cmp10.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %debug_class_ops_read.exit
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %usage) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_count_forward_deps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_count_backward_deps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_usage_chars(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_name(ptr noundef %m, ptr nocapture noundef readonly %class) unnamed_addr #2 align 64 {
entry:
  %str = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %str) #15
  %0 = call ptr @memset(ptr %str, i32 255, i32 128)
  %name1 = getelementptr inbounds %struct.lock_class, ptr %class, i32 0, i32 10
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.lock_class, ptr %class, i32 0, i32 4
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %key, align 4
  %call = call ptr @__get_key_name(ptr noundef %4, ptr noundef nonnull %str) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef %call) #15
  br label %if.end8

if.else:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #15
  %name_version = getelementptr inbounds %struct.lock_class, ptr %class, i32 0, i32 9
  %5 = ptrtoint ptr %name_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_version, align 4
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %6) #15
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  %subclass = getelementptr inbounds %struct.lock_class, ptr %class, i32 0, i32 5
  %7 = ptrtoint ptr %subclass to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %subclass, align 4
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %8) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %str) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_key_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @lc_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #6 align 64 {
entry:
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = trunc i64 %1 to i32
  %idx.ext = add i32 %2, -1
  %add.ptr = getelementptr %struct.lock_chain, ptr @lock_chains, i32 %idx.ext
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi ptr [ %add.ptr, %if.end3 ], [ null, %entry ], [ inttoptr (i32 1 to ptr), %if.end ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lc_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #3 align 64 {
entry:
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lc_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #2 align 64 {
entry:
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %2 = trunc i64 %1 to i32
  %conv = add i32 %2, -1
  %call = tail call i32 @lockdep_next_lockchain(i32 noundef %conv) #15
  %add = add i32 %call, 1
  %conv1 = sext i32 %add to i64
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv1, ptr %pos, align 8
  %cmp.i = icmp slt i32 %add, 0
  br i1 %cmp.i, label %lc_start.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp eq i32 %add, 0
  br i1 %cmp1.i, label %lc_start.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.lock_chain, ptr @lock_chains, i32 %call
  br label %lc_start.exit

lc_start.exit:                                    ; preds = %if.end3.i, %if.end.i, %entry
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end3.i ], [ null, %entry ], [ inttoptr (i32 1 to ptr), %if.end.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lc_show(ptr noundef %m, ptr noundef %v) #2 align 64 {
entry:
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_free_chain_hlocks to i32))
  %0 = load i32, ptr @nr_free_chain_hlocks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20) #15
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21) #15
  br label %cleanup

if.end2:                                          ; preds = %entry
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %v, align 8
  %bf.lshr = lshr i32 %bf.load, 30
  %arrayidx = getelementptr [4 x ptr], ptr @lc_show.irq_strs, i32 0, i32 %bf.lshr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %3) #15
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load325 = load i32, ptr %v, align 8
  %5 = and i32 %bf.load325, 1056964608
  %cmp528.not = icmp eq i32 %5, 0
  br i1 %cmp528.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end2
  %i.029 = phi i32 [ %inc, %for.inc ], [ 0, %if.end2 ]
  %call = tail call ptr @lock_chain_get_class(ptr noundef %v, i32 noundef %i.029) #15
  %key = getelementptr inbounds %struct.lock_class, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.inc, label %if.end8

if.end8:                                          ; preds = %for.body
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef nonnull %7) #15
  tail call fastcc void @print_name(ptr noundef %m, ptr noundef %call)
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body
  %inc = add nuw nsw i32 %i.029, 1
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load3 = load i32, ptr %v, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 24
  %bf.clear = and i32 %bf.lshr4, 63
  %cmp5 = icmp ult i32 %inc, %bf.clear
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end2
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_next_lockchain(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_chain_get_class(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_chain_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @lockdep_stack_trace_count() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @lockdep_stack_hash_count() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_stat_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  %tmp6 = alloca %struct.lock_class_stats, align 8
  %call = tail call noalias ptr @vmalloc(i32 noundef 1507336) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @lockstat_ops) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %stats = getelementptr inbounds %struct.lock_stat_seq, ptr %call, i32 0, i32 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @all_lock_classes to i32))
  %.pn34 = load ptr, ptr @all_lock_classes, align 4
  %cmp.not35 = icmp eq ptr %.pn34, @all_lock_classes
  br i1 %cmp.not35, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.then3
  %.pn37 = phi ptr [ %.pn, %for.body ], [ %.pn34, %if.then3 ]
  %iter.036 = phi ptr [ %incdec.ptr, %for.body ], [ %stats, %if.then3 ]
  %class.0 = getelementptr i8, ptr %.pn37, i32 -8
  %2 = ptrtoint ptr %iter.036 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %class.0, ptr %iter.036, align 8
  %stats5 = getelementptr inbounds %struct.lock_stat_data, ptr %iter.036, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %tmp6) #15
  call void @lock_stats(ptr nonnull sret(%struct.lock_class_stats) align 8 %tmp6, ptr noundef %class.0) #15
  %3 = call ptr @memcpy(ptr %stats5, ptr %tmp6, i32 176)
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %tmp6) #15
  %incdec.ptr = getelementptr %struct.lock_stat_data, ptr %iter.036, i32 1
  %4 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, @all_lock_classes
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then3
  %iter.0.lcssa = phi ptr [ %stats, %if.then3 ], [ %incdec.ptr, %for.body ]
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %iter.0.lcssa, ptr %call, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %iter.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %stats to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 184
  call void @sort(ptr noundef %stats, i32 noundef %sub.ptr.div, i32 noundef 184, ptr noundef nonnull @lock_stat_cmp, ptr noundef null) #15
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %private, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  tail call void @vfree(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call1, %if.else ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_stat_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 651) #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !230) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #13, !srcloc !240
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !242
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf, i32 -1226833921) #15, !srcloc !243
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #15, !srcloc !241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !242
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  %conv5 = and i32 %asmresult1, 255
  %cmp.not = icmp eq i32 %conv5, 48
  br i1 %cmp.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @all_lock_classes to i32))
  %.pn22 = load ptr, ptr @all_lock_classes, align 4
  %cmp10.not23 = icmp eq ptr %.pn22, @all_lock_classes
  br i1 %cmp10.not23, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %.pn24 = phi ptr [ %.pn, %for.body ], [ %.pn22, %for.cond.preheader ]
  %class.0 = getelementptr i8, ptr %.pn24, i32 -8
  tail call void @clear_lock_stats(ptr noundef %class.0) #15
  %4 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp10.not = icmp eq ptr %.pn, @all_lock_classes
  br i1 %cmp10.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %if.end, %if.then, %entry
  %retval.0 = phi i32 [ -14, %if.then ], [ %count, %if.end ], [ 0, %entry ], [ %count, %for.cond.preheader ], [ %count, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_stat_release(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @vfree(ptr noundef %3) #15
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_stats(ptr sret(%struct.lock_class_stats) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lock_stat_cmp(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) #6 align 64 {
entry:
  %nr1 = getelementptr inbounds %struct.lock_stat_data, ptr %l, i32 0, i32 1, i32 2, i32 3
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr1, align 8
  %nr3 = getelementptr inbounds %struct.lock_stat_data, ptr %l, i32 0, i32 1, i32 3, i32 3
  %2 = ptrtoint ptr %nr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr3, align 8
  %nr6 = getelementptr inbounds %struct.lock_stat_data, ptr %r, i32 0, i32 1, i32 2, i32 3
  %4 = ptrtoint ptr %nr6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr6, align 8
  %nr9 = getelementptr inbounds %struct.lock_stat_data, ptr %r, i32 0, i32 1, i32 3, i32 3
  %6 = ptrtoint ptr %nr9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr9, align 8
  %8 = add i32 %3, %1
  %add10 = sub i32 %5, %8
  %sub = add i32 %add10, %7
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ls_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #8 align 64 {
entry:
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %stats = getelementptr inbounds %struct.lock_stat_seq, ptr %3, i32 0, i32 1
  %4 = trunc i64 %1 to i32
  %idx.ext = add i32 %4, -1
  %add.ptr = getelementptr %struct.lock_stat_data, ptr %stats, i32 %idx.ext
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %cmp1.not = icmp ult ptr %add.ptr, %6
  %spec.store.select = select i1 %cmp1.not, ptr %add.ptr, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi ptr [ %spec.store.select, %if.end ], [ inttoptr (i32 1 to ptr), %entry ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ls_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #3 align 64 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ls_next(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #9 align 64 {
entry:
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp.i = icmp eq i64 %inc, 0
  br i1 %cmp.i, label %ls_start.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %stats.i = getelementptr inbounds %struct.lock_stat_seq, ptr %3, i32 0, i32 1
  %4 = trunc i64 %inc to i32
  %idx.ext.i = add i32 %4, -1
  %add.ptr.i = getelementptr %struct.lock_stat_data, ptr %stats.i, i32 %idx.ext.i
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %cmp1.not.i = icmp ult ptr %add.ptr.i, %6
  %spec.store.select.i = select i1 %cmp1.not.i, ptr %add.ptr.i, ptr null
  br label %ls_start.exit

ls_start.exit:                                    ; preds = %if.end.i, %entry
  %retval.0.i = phi ptr [ %spec.store.select.i, %if.end.i ], [ inttoptr (i32 1 to ptr), %entry ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_show(ptr noundef %m, ptr noundef readonly %v) #2 align 64 {
entry:
  %name.i = alloca [39 x i8], align 1
  %str.i = alloca [128 x i8], align 1
  %ip.i = alloca [32 x i8], align 1
  %ip127.i = alloca [32 x i8], align 1
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body3.i.i.preheader, !prof !244

if.then.i:                                        ; preds = %if.then
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.77) #15
  br label %for.body3.i.i.preheader

for.body3.i.i.preheader:                          ; preds = %if.then.i, %if.then
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i, %for.body3.i.i.preheader
  %i.115.i.i = phi i32 [ %inc5.i.i, %for.body3.i.i ], [ 0, %for.body3.i.i.preheader ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef 45) #15
  %inc5.i.i = add nuw nsw i32 %i.115.i.i, 1
  %exitcond16.not.i.i = icmp eq i32 %inc5.i.i, 221
  br i1 %exitcond16.not.i.i, label %seq_line.exit.i, label %for.body3.i.i

seq_line.exit.i:                                  ; preds = %for.body3.i.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #15
  br label %for.body3.i12.i

for.body3.i12.i:                                  ; preds = %for.body3.i12.i, %seq_line.exit.i
  %i.115.i9.i = phi i32 [ 0, %seq_line.exit.i ], [ %inc5.i10.i, %for.body3.i12.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef 45) #15
  %inc5.i10.i = add nuw nsw i32 %i.115.i9.i, 1
  %exitcond16.not.i11.i = icmp eq i32 %inc5.i10.i, 221
  br i1 %exitcond16.not.i11.i, label %seq_header.exit, label %for.body3.i12.i

seq_header.exit:                                  ; preds = %for.body3.i12.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %name.i) #15
  %1 = call ptr @memset(ptr %name.i, i32 255, i32 39)
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v, align 8
  %stats2.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1
  %name_version.i = getelementptr inbounds %struct.lock_class, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %name_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name_version.i, align 4
  %cmp.i = icmp sgt i32 %5, 1
  %spec.select.i = select i1 %cmp.i, i32 36, i32 38
  %subclass.i = getelementptr inbounds %struct.lock_class, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %subclass.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subclass.i, align 4
  %tobool.not.i3 = icmp eq i32 %7, 0
  %sub4.i = add nsw i32 %spec.select.i, -2
  %namelen.1.i = select i1 %tobool.not.i3, i32 %spec.select.i, i32 %sub4.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !230) #15
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !245
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %rcu_read_lock_sched.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %rcu_read_lock_sched.exit.i, label %land.lhs.true3.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i.i, label %rcu_read_lock_sched.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 788, ptr noundef nonnull @.str.104) #15
  br label %rcu_read_lock_sched.exit.i

rcu_read_lock_sched.exit.i:                       ; preds = %if.then.i.i, %land.lhs.true3.i.i, %land.lhs.true.i.i, %if.else
  %name6.i = getelementptr inbounds %struct.lock_class, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %name6.i, align 4
  %call.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i, label %do.end16.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock_sched.exit.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.end16.i, label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %.b246.i = load i1, ptr @seq_stats.__warned, align 1
  br i1 %.b246.i, label %do.end16.i, label %if.then13.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  store i1 true, ptr @seq_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 450, ptr noundef nonnull @.str.94) #15
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then13.i, %land.lhs.true11.i, %land.lhs.true.i, %rcu_read_lock_sched.exit.i
  %key.i = getelementptr inbounds %struct.lock_class, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %key.i, align 4
  %call23.i = tail call i32 @rcu_read_lock_sched_held() #15
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %do.end33.i

land.lhs.true25.i:                                ; preds = %do.end16.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %do.end33.i, label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b244245.i = load i1, ptr @seq_stats.__warned.95, align 1
  br i1 %.b244245.i, label %do.end33.i, label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  store i1 true, ptr @seq_stats.__warned.95, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 451, ptr noundef nonnull @.str.94) #15
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i, %land.lhs.true25.i, %do.end16.i
  %tobool35.not.i = icmp eq ptr %13, null
  %tobool37.not.i = icmp eq ptr %15, null
  %or.cond.i = select i1 %tobool35.not.i, i1 %tobool37.not.i, i1 false
  br i1 %or.cond.i, label %if.then38.i, label %if.else.i

if.then38.i:                                      ; preds = %do.end33.i
  %call.i249.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i249.i, label %rcu_read_unlock_sched.exit.i, label %land.lhs.true.i251.i

land.lhs.true.i251.i:                             ; preds = %if.then38.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i250.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i250.i, label %rcu_read_unlock_sched.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i251.i
  %.b6.i252.i = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i252.i, label %rcu_read_unlock_sched.exit.i, label %if.then.i253.i

if.then.i253.i:                                   ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 806, ptr noundef nonnull @.str.105) #15
  br label %rcu_read_unlock_sched.exit.i

rcu_read_unlock_sched.exit.i:                     ; preds = %if.then.i253.i, %land.lhs.true2.i.i, %land.lhs.true.i251.i, %if.then38.i
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !246
  %16 = tail call i32 @llvm.read_register.i32(metadata !230) #15
  %and.i.i.i.i254.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i254.i to ptr
  %preempt_count.i.i.i255.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i255.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i255.i, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i255.i, align 4
  br label %seq_stats.exit

if.else.i:                                        ; preds = %do.end33.i
  br i1 %tobool35.not.i, label %if.then40.i, label %if.else44.i

if.then40.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %str.i) #15
  %20 = call ptr @memset(ptr %str.i, i32 255, i32 128)
  %call41.i = call ptr @__get_key_name(ptr noundef %15, ptr noundef nonnull %str.i) #15
  %call43.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef %namelen.1.i, ptr noundef nonnull @.str.13, ptr noundef %call41.i) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %str.i) #15
  br label %if.end48.i

if.else44.i:                                      ; preds = %if.else.i
  %call46.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef %namelen.1.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %13) #15
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else44.i, %if.then40.i
  %call.i256.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i256.i, label %rcu_read_unlock_sched.exit266.i, label %land.lhs.true.i259.i

land.lhs.true.i259.i:                             ; preds = %if.end48.i
  %call1.i257.i = call i32 @debug_lockdep_rcu_enabled() #15
  %tobool.not.i258.i = icmp eq i32 %call1.i257.i, 0
  br i1 %tobool.not.i258.i, label %rcu_read_unlock_sched.exit266.i, label %land.lhs.true2.i261.i

land.lhs.true2.i261.i:                            ; preds = %land.lhs.true.i259.i
  %.b6.i260.i = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i260.i, label %rcu_read_unlock_sched.exit266.i, label %if.then.i262.i

if.then.i262.i:                                   ; preds = %land.lhs.true2.i261.i
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 806, ptr noundef nonnull @.str.105) #15
  br label %rcu_read_unlock_sched.exit266.i

rcu_read_unlock_sched.exit266.i:                  ; preds = %if.then.i262.i, %land.lhs.true2.i261.i, %land.lhs.true.i259.i, %if.end48.i
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !246
  %21 = call i32 @llvm.read_register.i32(metadata !230) #15
  %and.i.i.i.i263.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i263.i to ptr
  %preempt_count.i.i.i264.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i264.i, align 4
  %sub.i.i265.i = add i32 %24, -1
  store volatile i32 %sub.i.i265.i, ptr %preempt_count.i.i.i264.i, align 4
  %call50.i = call i32 @strlen(ptr noundef nonnull %name.i) #18
  %25 = ptrtoint ptr %name_version.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %name_version.i, align 4
  %cmp52.i = icmp sgt i32 %26, 1
  br i1 %cmp52.i, label %if.then53.i, label %if.end57.i

if.then53.i:                                      ; preds = %rcu_read_unlock_sched.exit266.i
  %add.ptr.i = getelementptr i8, ptr %name.i, i32 %call50.i
  %call56.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %26) #15
  %add.i = add i32 %call50.i, 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then53.i, %rcu_read_unlock_sched.exit266.i
  %namelen.2.i = phi i32 [ %add.i, %if.then53.i ], [ %call50.i, %rcu_read_unlock_sched.exit266.i ]
  %27 = ptrtoint ptr %subclass.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subclass.i, align 4
  %tobool59.not.i = icmp eq i32 %28, 0
  br i1 %tobool59.not.i, label %if.end66.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end57.i
  %add.ptr62.i = getelementptr i8, ptr %name.i, i32 %namelen.2.i
  %call64.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr62.i, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %28) #15
  %add65.i = add i32 %namelen.2.i, 2
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then60.i, %if.end57.i
  %namelen.3.i = phi i32 [ %add65.i, %if.then60.i ], [ %namelen.2.i, %if.end57.i ]
  %nr.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 5, i32 3
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 8
  %tobool67.not.i = icmp eq i32 %30, 0
  br i1 %tobool67.not.i, label %if.end79.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end66.i
  %write_holdtime.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 5
  %nr69.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 4, i32 3
  %31 = ptrtoint ptr %nr69.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr69.i, align 8
  %tobool70.not.i = icmp eq i32 %32, 0
  %.str.97..str.96.i = select i1 %tobool70.not.i, ptr @.str.97, ptr @.str.96
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.97..str.96.i, ptr noundef nonnull %name.i) #15
  %bounces.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 6
  %arrayidx.i = getelementptr %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 6, i32 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %34) #15
  %write_waittime.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 3
  call fastcc void @seq_lock_time(ptr noundef %m, ptr noundef %write_waittime.i) #15
  %35 = ptrtoint ptr %bounces.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bounces.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99, i32 noundef %36) #15
  call fastcc void @seq_lock_time(ptr noundef %m, ptr noundef %write_holdtime.i) #15
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then68.i, %if.end66.i
  %nr81.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 4, i32 3
  %37 = ptrtoint ptr %nr81.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr81.i, align 8
  %tobool82.not.i = icmp eq i32 %38, 0
  br i1 %tobool82.not.i, label %if.end90.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end79.i
  %read_holdtime80.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, ptr noundef nonnull %name.i) #15
  %arrayidx86.i = getelementptr %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 6, i32 3
  %39 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx86.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %40) #15
  %read_waittime.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 2
  call fastcc void @seq_lock_time(ptr noundef %m, ptr noundef %read_waittime.i) #15
  %arrayidx88.i = getelementptr %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 6, i32 1
  %41 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx88.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99, i32 noundef %42) #15
  call fastcc void @seq_lock_time(ptr noundef %m, ptr noundef %read_holdtime80.i) #15
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then83.i, %if.end79.i
  %nr92.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 2, i32 3
  %43 = ptrtoint ptr %nr92.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr92.i, align 8
  %nr94.i = getelementptr inbounds %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 3, i32 3
  %45 = ptrtoint ptr %nr94.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr94.i, align 8
  %add95.i = sub i32 0, %46
  %cmp96.i = icmp eq i32 %44, %add95.i
  br i1 %cmp96.i, label %seq_stats.exit, label %if.end98.i

if.end98.i:                                       ; preds = %if.end90.i
  %47 = ptrtoint ptr %nr81.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr81.i, align 8
  %tobool101.not.i = icmp eq i32 %48, 0
  %add103.i = add i32 %namelen.3.i, 2
  %spec.select247.i = select i1 %tobool101.not.i, i32 %namelen.3.i, i32 %add103.i
  %sub112.i = sub i32 40, %spec.select247.i
  %cmp12.i.i = icmp sgt i32 %sub112.i, 0
  %cmp214.i.i = icmp sgt i32 %spec.select247.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.end98.i
  %i.0293.i = phi i32 [ 0, %if.end98.i ], [ %inc.i, %for.inc.i ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ip.i) #15
  %arrayidx106.i = getelementptr %struct.lock_class, ptr %3, i32 0, i32 14, i32 %i.0293.i
  %49 = call ptr @memset(ptr %ip.i, i32 255, i32 32)
  %50 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx106.i, align 4
  %cmp107.i = icmp eq i32 %51, 0
  br i1 %cmp107.i, label %cleanup.i, label %if.end109.i

if.end109.i:                                      ; preds = %for.body.i
  %tobool110.not.i = icmp eq i32 %i.0293.i, 0
  br i1 %tobool110.not.i, label %if.then111.i, label %for.inc.i

if.then111.i:                                     ; preds = %if.end109.i
  br i1 %cmp12.i.i, label %for.body.i.i, label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i, %if.then111.i
  br i1 %cmp214.i.i, label %for.body3.i.i7, label %seq_line.exit.i8

for.body.i.i:                                     ; preds = %for.body.i.i, %if.then111.i
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i ], [ 0, %if.then111.i ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.92) #15
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub112.i
  br i1 %exitcond.not.i.i, label %for.cond1.preheader.i.i, label %for.body.i.i

for.body3.i.i7:                                   ; preds = %for.body3.i.i7, %for.cond1.preheader.i.i
  %i.115.i.i4 = phi i32 [ %inc5.i.i5, %for.body3.i.i7 ], [ 0, %for.cond1.preheader.i.i ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef 45) #15
  %inc5.i.i5 = add nuw nsw i32 %i.115.i.i4, 1
  %exitcond16.not.i.i6 = icmp eq i32 %inc5.i.i5, %spec.select247.i
  br i1 %exitcond16.not.i.i6, label %seq_line.exit.i8, label %for.body3.i.i7

seq_line.exit.i8:                                 ; preds = %for.body3.i.i7, %for.cond1.preheader.i.i
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ip.i) #15
  br label %for.body126.i.preheader

for.inc.i:                                        ; preds = %seq_line.exit.i8, %if.end109.i
  %52 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx106.i, align 4
  %54 = inttoptr i32 %53 to ptr
  %call117.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip.i, i32 noundef 32, ptr noundef nonnull @.str.101, ptr noundef %54) #15
  %arrayidx120.i = getelementptr [4 x i32], ptr %stats2.i, i32 0, i32 %i.0293.i
  %55 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx120.i, align 4
  %57 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx106.i, align 4
  %59 = inttoptr i32 %58 to ptr
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull %name.i, i32 noundef %56, ptr noundef nonnull %ip.i, ptr noundef %59) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ip.i) #15
  %inc.i = add nuw nsw i32 %i.0293.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.body126.i.preheader, label %for.body.i

for.body126.i.preheader:                          ; preds = %for.inc.i, %cleanup.i
  br label %for.body126.i

for.body126.i:                                    ; preds = %for.inc149.i, %for.body126.i.preheader
  %i.1294.i = phi i32 [ %inc150.i, %for.inc149.i ], [ 0, %for.body126.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ip127.i) #15
  %arrayidx128.i = getelementptr %struct.lock_class, ptr %3, i32 0, i32 15, i32 %i.1294.i
  %60 = call ptr @memset(ptr %ip127.i, i32 255, i32 32)
  %61 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx128.i, align 4
  %cmp129.i = icmp eq i32 %62, 0
  br i1 %cmp129.i, label %for.end151.i, label %if.end131.i

if.end131.i:                                      ; preds = %for.body126.i
  %tobool132.not.i = icmp eq i32 %i.1294.i, 0
  br i1 %tobool132.not.i, label %if.then133.i, label %for.inc149.i

if.then133.i:                                     ; preds = %if.end131.i
  br i1 %cmp12.i.i, label %for.body.i274.i, label %for.cond1.preheader.i269.i

for.cond1.preheader.i269.i:                       ; preds = %for.body.i274.i, %if.then133.i
  br i1 %cmp214.i.i, label %for.body3.i278.i, label %seq_line.exit279.i

for.body.i274.i:                                  ; preds = %for.body.i274.i, %if.then133.i
  %i.013.i271.i = phi i32 [ %inc.i272.i, %for.body.i274.i ], [ 0, %if.then133.i ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.92) #15
  %inc.i272.i = add nuw nsw i32 %i.013.i271.i, 1
  %exitcond.not.i273.i = icmp eq i32 %inc.i272.i, %sub112.i
  br i1 %exitcond.not.i273.i, label %for.cond1.preheader.i269.i, label %for.body.i274.i

for.body3.i278.i:                                 ; preds = %for.body3.i278.i, %for.cond1.preheader.i269.i
  %i.115.i275.i = phi i32 [ %inc5.i276.i, %for.body3.i278.i ], [ 0, %for.cond1.preheader.i269.i ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef 45) #15
  %inc5.i276.i = add nuw nsw i32 %i.115.i275.i, 1
  %exitcond16.not.i277.i = icmp eq i32 %inc5.i276.i, %spec.select247.i
  br i1 %exitcond16.not.i277.i, label %seq_line.exit279.i, label %for.body3.i278.i

seq_line.exit279.i:                               ; preds = %for.body3.i278.i, %for.cond1.preheader.i269.i
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %for.inc149.i

for.inc149.i:                                     ; preds = %seq_line.exit279.i, %if.end131.i
  %63 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx128.i, align 4
  %65 = inttoptr i32 %64 to ptr
  %call139.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip127.i, i32 noundef 32, ptr noundef nonnull @.str.101, ptr noundef %65) #15
  %arrayidx142.i = getelementptr %struct.lock_stat_data, ptr %v, i32 0, i32 1, i32 1, i32 %i.1294.i
  %66 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx142.i, align 4
  %68 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx128.i, align 4
  %70 = inttoptr i32 %69 to ptr
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull %name.i, i32 noundef %67, ptr noundef nonnull %ip127.i, ptr noundef %70) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ip127.i) #15
  %inc150.i = add nuw nsw i32 %i.1294.i, 1
  %exitcond296.not.i = icmp eq i32 %inc150.i, 4
  br i1 %exitcond296.not.i, label %if.then153.i, label %for.body126.i

for.end151.i:                                     ; preds = %for.body126.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ip127.i) #15
  %tobool152.not.i = icmp eq i32 %i.1294.i, 0
  br i1 %tobool152.not.i, label %seq_stats.exit, label %if.then153.i

if.then153.i:                                     ; preds = %for.end151.i, %for.inc149.i
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %for.body3.i285.i

for.body3.i285.i:                                 ; preds = %for.body3.i285.i, %if.then153.i
  %i.115.i282.i = phi i32 [ 0, %if.then153.i ], [ %inc5.i283.i, %for.body3.i285.i ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef 46) #15
  %inc5.i283.i = add nuw nsw i32 %i.115.i282.i, 1
  %exitcond16.not.i284.i = icmp eq i32 %inc5.i283.i, 221
  br i1 %exitcond16.not.i284.i, label %seq_line.exit286.i, label %for.body3.i285.i

seq_line.exit286.i:                               ; preds = %for.body3.i285.i
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #15
  br label %seq_stats.exit

seq_stats.exit:                                   ; preds = %seq_line.exit286.i, %for.end151.i, %if.end90.i, %rcu_read_unlock_sched.exit.i
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %name.i) #15
  br label %if.end

if.end:                                           ; preds = %seq_stats.exit, %seq_header.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seq_lock_time(ptr noundef %m, ptr nocapture noundef readonly %lt) unnamed_addr #2 align 64 {
entry:
  %rem.i.i26 = alloca i32, align 4
  %num.i27 = alloca [15 x i8], align 1
  %rem.i.i20 = alloca i32, align 4
  %num.i21 = alloca [15 x i8], align 1
  %rem.i.i14 = alloca i32, align 4
  %num.i15 = alloca [15 x i8], align 1
  %rem.i.i = alloca i32, align 4
  %num.i = alloca [15 x i8], align 1
  %nr = getelementptr inbounds %struct.lock_time, ptr %lt, i32 0, i32 3
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.106, i32 noundef %1) #15
  %2 = ptrtoint ptr %lt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lt, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %num.i) #15
  %4 = call ptr @memset(ptr %num.i, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i.i) #15
  %5 = ptrtoint ptr %rem.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %rem.i.i, align 4, !annotation !247
  %add.i.i = add i64 %3, 5
  %call.i.i = call i64 @div_s64_rem(i64 noundef %add.i.i, i32 noundef 1000, ptr noundef nonnull %rem.i.i) #15
  %6 = ptrtoint ptr %rem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rem.i.i, align 4
  %div1.i.i = sdiv i32 %7, 10
  %call2.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %num.i, i32 noundef 15, ptr noundef nonnull @.str.108, i64 noundef %call.i.i, i32 noundef %div1.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i.i) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, ptr noundef nonnull %num.i) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %num.i) #15
  %max = getelementptr inbounds %struct.lock_time, ptr %lt, i32 0, i32 1
  %8 = ptrtoint ptr %max to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %num.i15) #15
  %10 = call ptr @memset(ptr %num.i15, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i.i14) #15
  %11 = ptrtoint ptr %rem.i.i14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rem.i.i14, align 4, !annotation !247
  %add.i.i16 = add i64 %9, 5
  %call.i.i17 = call i64 @div_s64_rem(i64 noundef %add.i.i16, i32 noundef 1000, ptr noundef nonnull %rem.i.i14) #15
  %12 = ptrtoint ptr %rem.i.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rem.i.i14, align 4
  %div1.i.i18 = sdiv i32 %13, 10
  %call2.i.i19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %num.i15, i32 noundef 15, ptr noundef nonnull @.str.108, i64 noundef %call.i.i17, i32 noundef %div1.i.i18) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i.i14) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, ptr noundef nonnull %num.i15) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %num.i15) #15
  %total = getelementptr inbounds %struct.lock_time, ptr %lt, i32 0, i32 2
  %14 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %total, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %num.i21) #15
  %16 = call ptr @memset(ptr %num.i21, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i.i20) #15
  %17 = ptrtoint ptr %rem.i.i20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %rem.i.i20, align 4, !annotation !247
  %add.i.i22 = add i64 %15, 5
  %call.i.i23 = call i64 @div_s64_rem(i64 noundef %add.i.i22, i32 noundef 1000, ptr noundef nonnull %rem.i.i20) #15
  %18 = ptrtoint ptr %rem.i.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rem.i.i20, align 4
  %div1.i.i24 = sdiv i32 %19, 10
  %call2.i.i25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %num.i21, i32 noundef 15, ptr noundef nonnull @.str.108, i64 noundef %call.i.i23, i32 noundef %div1.i.i24) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i.i20) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, ptr noundef nonnull %num.i21) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %num.i21) #15
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr, align 8
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %22 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %total, align 8
  %conv = zext i32 %21 to i64
  %call = call i64 @div64_u64(i64 noundef %23, i64 noundef %conv) #15
  %phi.bo = add i64 %call, 5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry
  %cond = phi i64 [ %phi.bo, %cond.true ], [ 5, %entry ]
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %num.i27) #15
  %24 = call ptr @memset(ptr %num.i27, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i.i26) #15
  %25 = ptrtoint ptr %rem.i.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %rem.i.i26, align 4, !annotation !247
  %call.i.i29 = call i64 @div_s64_rem(i64 noundef %cond, i32 noundef 1000, ptr noundef nonnull %rem.i.i26) #15
  %26 = ptrtoint ptr %rem.i.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rem.i.i26, align 4
  %div1.i.i30 = sdiv i32 %27, 10
  %call2.i.i31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %num.i27, i32 noundef 15, ptr noundef nonnull @.str.108, i64 noundef %call.i.i29, i32 noundef %div1.i.i30) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i.i26) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, ptr noundef nonnull %num.i27) #15
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %num.i27) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #12 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_sched_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_lock_stats(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind uwtable(sync) }
attributes #15 = { nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !223, !224, !226, !228}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @__initcall__kmod_lockdep_proc__229_694_lockdep_proc_init6, !1, !"__initcall__kmod_lockdep_proc__229_694_lockdep_proc_init6", i1 false, i1 false}
!1 = !{!"../kernel/locking/lockdep_proc.c", i32 694, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/locking/lockdep_proc.c", i32 682, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/locking/lockdep_proc.c", i32 684, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/locking/lockdep_proc.c", i32 686, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/locking/lockdep_proc.c", i32 688, i32 14}
!10 = !{ptr @lockdep_ops, !11, !"lockdep_ops", i1 false, i1 false}
!11 = !{!"../kernel/locking/lockdep_proc.c", i32 99, i32 36}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/locking/lockdep_proc.c", i32 65, i32 17}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/locking/lockdep_proc.c", i32 69, i32 16}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/locking/lockdep_proc.c", i32 71, i32 16}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/locking/lockdep_proc.c", i32 74, i32 17}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/locking/lockdep_proc.c", i32 75, i32 17}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/locking/lockdep_proc.c", i32 78, i32 17}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/locking/lockdep_proc.c", i32 81, i32 16}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/locking/lockdep_proc.c", i32 83, i32 14}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/locking/lockdep_proc.c", i32 88, i32 19}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/locking/lockdep_proc.c", i32 48, i32 17}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/locking/lockdep_proc.c", i32 52, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/locking/lockdep_proc.c", i32 54, i32 18}
!36 = !{ptr @lockdep_chains_ops, !37, !"lockdep_chains_ops", i1 false, i1 false}
!37 = !{!"../kernel/locking/lockdep_proc.c", i32 164, i32 36}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/locking/lockdep_proc.c", i32 134, i32 16}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/locking/lockdep_proc.c", i32 136, i32 34}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/locking/lockdep_proc.c", i32 135, i32 34}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/locking/lockdep_proc.c", i32 138, i32 34}
!46 = !{ptr @lc_show.irq_strs, !47, !"irq_strs", i1 false, i1 false}
!47 = !{!"../kernel/locking/lockdep_proc.c", i32 133, i32 28}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/locking/lockdep_proc.c", i32 143, i32 18}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/locking/lockdep_proc.c", i32 144, i32 17}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/locking/lockdep_proc.c", i32 148, i32 16}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/locking/lockdep_proc.c", i32 155, i32 17}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/locking/lockdep_proc.c", i32 258, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/locking/lockdep_proc.c", i32 262, i32 16}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/locking/lockdep_proc.c", i32 264, i32 16}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/locking/lockdep_proc.c", i32 266, i32 16}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/locking/lockdep_proc.c", i32 275, i32 16}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/locking/lockdep_proc.c", i32 281, i32 16}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/locking/lockdep_proc.c", i32 283, i32 16}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/locking/lockdep_proc.c", i32 287, i32 16}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/locking/lockdep_proc.c", i32 292, i32 16}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/locking/lockdep_proc.c", i32 294, i32 16}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/locking/lockdep_proc.c", i32 297, i32 16}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/locking/lockdep_proc.c", i32 299, i32 16}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/locking/lockdep_proc.c", i32 302, i32 16}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/locking/lockdep_proc.c", i32 304, i32 16}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/locking/lockdep_proc.c", i32 307, i32 16}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/locking/lockdep_proc.c", i32 312, i32 16}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/locking/lockdep_proc.c", i32 314, i32 16}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/locking/lockdep_proc.c", i32 316, i32 16}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/locking/lockdep_proc.c", i32 318, i32 16}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/locking/lockdep_proc.c", i32 320, i32 16}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/locking/lockdep_proc.c", i32 322, i32 16}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/locking/lockdep_proc.c", i32 325, i32 16}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/locking/lockdep_proc.c", i32 327, i32 16}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/locking/lockdep_proc.c", i32 329, i32 16}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/locking/lockdep_proc.c", i32 331, i32 16}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/locking/lockdep_proc.c", i32 333, i32 16}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/locking/lockdep_proc.c", i32 335, i32 16}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/locking/lockdep_proc.c", i32 338, i32 16}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/locking/lockdep_proc.c", i32 340, i32 16}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/locking/lockdep_proc.c", i32 342, i32 16}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/locking/lockdep_proc.c", i32 345, i32 16}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/locking/lockdep_proc.c", i32 349, i32 16}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/locking/lockdep_proc.c", i32 356, i32 16}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/locking/lockdep_proc.c", i32 359, i32 16}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/locking/lockdep_proc.c", i32 361, i32 16}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/locking/lockdep_proc.c", i32 184, i32 16}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/locking/lockdep_proc.c", i32 186, i32 16}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/locking/lockdep_proc.c", i32 188, i32 16}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/locking/lockdep_proc.c", i32 190, i32 16}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/locking/lockdep_proc.c", i32 192, i32 16}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../kernel/locking/lockdep_proc.c", i32 194, i32 16}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/locking/lockdep_proc.c", i32 196, i32 16}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/locking/lockdep_proc.c", i32 199, i32 16}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/locking/lockdep_proc.c", i32 200, i32 16}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/locking/lockdep_proc.c", i32 201, i32 16}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/locking/lockdep_proc.c", i32 202, i32 16}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/locking/lockdep_proc.c", i32 203, i32 16}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/locking/lockdep_proc.c", i32 204, i32 16}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/locking/lockdep_proc.c", i32 205, i32 16}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/locking/lockdep_proc.c", i32 206, i32 16}
!158 = !{ptr @lock_stat_proc_ops, !159, !"lock_stat_proc_ops", i1 false, i1 false}
!159 = !{!"../kernel/locking/lockdep_proc.c", i32 671, i32 30}
!160 = !{ptr @lockstat_ops, !161, !"lockstat_ops", i1 false, i1 false}
!161 = !{!"../kernel/locking/lockdep_proc.c", i32 605, i32 36}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/locking/lockdep_proc.c", i32 545, i32 14}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/locking/lockdep_proc.c", i32 548, i32 17}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/locking/lockdep_proc.c", i32 551, i32 16}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/locking/lockdep_proc.c", i32 553, i32 4}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/locking/lockdep_proc.c", i32 554, i32 4}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/locking/lockdep_proc.c", i32 555, i32 4}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/locking/lockdep_proc.c", i32 556, i32 4}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/locking/lockdep_proc.c", i32 557, i32 4}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/locking/lockdep_proc.c", i32 558, i32 4}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/locking/lockdep_proc.c", i32 559, i32 4}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/locking/lockdep_proc.c", i32 560, i32 4}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/locking/lockdep_proc.c", i32 561, i32 4}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/locking/lockdep_proc.c", i32 562, i32 4}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../kernel/locking/lockdep_proc.c", i32 563, i32 4}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/locking/lockdep_proc.c", i32 564, i32 4}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../kernel/locking/lockdep_proc.c", i32 565, i32 4}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../kernel/locking/lockdep_proc.c", i32 398, i32 15}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../kernel/locking/lockdep_proc.c", i32 400, i32 17}
!198 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!199 = !{!"../kernel/locking/lockdep_proc.c", i32 450, i32 10}
!200 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../kernel/locking/lockdep_proc.c", i32 451, i32 10}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../kernel/locking/lockdep_proc.c", i32 480, i32 18}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../kernel/locking/lockdep_proc.c", i32 482, i32 18}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../kernel/locking/lockdep_proc.c", i32 484, i32 17}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../kernel/locking/lockdep_proc.c", i32 486, i32 17}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../kernel/locking/lockdep_proc.c", i32 492, i32 17}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../kernel/locking/lockdep_proc.c", i32 515, i32 28}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../kernel/locking/lockdep_proc.c", i32 517, i32 17}
!217 = distinct !{null, !218, !"__warned", i1 false, i1 false}
!218 = !{!"../include/linux/rcupdate.h", i32 787, i32 2}
!219 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!221 = distinct !{null, !222, !"__warned", i1 false, i1 false}
!222 = !{!"../include/linux/rcupdate.h", i32 805, i32 2}
!223 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../kernel/locking/lockdep_proc.c", i32 424, i32 16}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/locking/lockdep_proc.c", i32 419, i32 16}
!228 = !{ptr @.str.108, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/locking/lockdep_proc.c", i32 411, i32 24}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{i64 4685512}
!241 = !{i64 4685709}
!242 = !{i64 2152170942}
!243 = !{i64 2153610877, i64 2153611157, i64 2153611491, i64 2153611825}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{i64 2149497756}
!246 = !{i64 2149499151}
!247 = !{!"auto-init"}
