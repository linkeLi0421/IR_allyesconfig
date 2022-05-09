; ModuleID = '/llk/IR_all_yes/block/blk-cgroup-rwstat.c_pt.bc'
source_filename = "../block/blk-cgroup-rwstat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blkg_rwstat_init\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_rwstat_init\09\09\09\09"
module asm "\09.long\09__crc_blkg_rwstat_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_rwstat_init:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_rwstat_init\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_rwstat_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkg_rwstat_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_rwstat_exit\09\09\09\09"
module asm "\09.long\09__crc_blkg_rwstat_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_rwstat_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_rwstat_exit\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_rwstat_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__blkg_prfill_rwstat\22, \22a\22\09"
module asm "\09.weak\09__crc___blkg_prfill_rwstat\09\09\09\09"
module asm "\09.long\09__crc___blkg_prfill_rwstat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blkg_prfill_rwstat:\09\09\09\09\09"
module asm "\09.asciz \09\22__blkg_prfill_rwstat\22\09\09\09\09\09"
module asm "__kstrtabns___blkg_prfill_rwstat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkg_prfill_rwstat\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_prfill_rwstat\09\09\09\09"
module asm "\09.long\09__crc_blkg_prfill_rwstat\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_prfill_rwstat:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_prfill_rwstat\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_prfill_rwstat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkg_rwstat_recursive_sum\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_rwstat_recursive_sum\09\09\09\09"
module asm "\09.long\09__crc_blkg_rwstat_recursive_sum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_rwstat_recursive_sum:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_rwstat_recursive_sum\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_rwstat_recursive_sum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.blkg_rwstat = type { [5 x %struct.percpu_counter], [5 x %struct.atomic64_t] }
%struct.atomic64_t = type { i64 }
%struct.blkg_rwstat_sample = type { [5 x i64] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }

@blkg_rwstat_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__kstrtab_blkg_rwstat_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_rwstat_init = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_rwstat_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_rwstat_init to i32), ptr @__kstrtab_blkg_rwstat_init, ptr @__kstrtabns_blkg_rwstat_init }, section "___ksymtab_gpl+blkg_rwstat_init", align 4
@__kstrtab_blkg_rwstat_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_rwstat_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_rwstat_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_rwstat_exit to i32), ptr @__kstrtab_blkg_rwstat_exit, ptr @__kstrtabns_blkg_rwstat_exit }, section "___ksymtab_gpl+blkg_rwstat_exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Read\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Write\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sync\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Async\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Discard\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s %s %llu\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s Total %llu\0A\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab___blkg_prfill_rwstat = external dso_local constant [0 x i8], align 1
@__kstrtabns___blkg_prfill_rwstat = external dso_local constant [0 x i8], align 1
@__ksymtab___blkg_prfill_rwstat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blkg_prfill_rwstat to i32), ptr @__kstrtab___blkg_prfill_rwstat, ptr @__kstrtabns___blkg_prfill_rwstat }, section "___ksymtab_gpl+__blkg_prfill_rwstat", align 4
@__kstrtab_blkg_prfill_rwstat = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_prfill_rwstat = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_prfill_rwstat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_prfill_rwstat to i32), ptr @__kstrtab_blkg_prfill_rwstat, ptr @__kstrtabns_blkg_prfill_rwstat }, section "___ksymtab_gpl+blkg_prfill_rwstat", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"block/blk-cgroup-rwstat.c\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_blkg_rwstat_recursive_sum = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_rwstat_recursive_sum = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_rwstat_recursive_sum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_rwstat_recursive_sum to i32), ptr @__kstrtab_blkg_rwstat_recursive_sum, ptr @__kstrtabns_blkg_rwstat_recursive_sum }, section "___ksymtab_gpl+blkg_rwstat_recursive_sum", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@blkcg_root = external dso_local global %struct.blkcg, align 8
@__blkg_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/blk-cgroup.h\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 13, i32 9 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 46, i32 24 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 47, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 48, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 49, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 50, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 60, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 66, i32 17 }
@___asan_gen_.38 = private constant [29 x i8] c"../block/blk-cgroup-rwstat.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 110, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"../include/linux/blk-cgroup.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 340, i32 9 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab___blkg_prfill_rwstat, ptr @__ksymtab_blkg_prfill_rwstat, ptr @__ksymtab_blkg_rwstat_exit, ptr @__ksymtab_blkg_rwstat_init, ptr @__ksymtab_blkg_rwstat_recursive_sum, ptr @blkg_rwstat_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkg_rwstat_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkg_rwstat_init(ptr noundef %rwstat, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__percpu_counter_init(ptr noundef %rwstat, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @blkg_rwstat_init.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end.3.while.body_crit_edge, %if.end.2.while.body_crit_edge, %if.end.1.while.body_crit_edge, %if.end.while.body_crit_edge
  %i.016.lcssa.ph = phi i32 [ 3, %if.end.3.while.body_crit_edge ], [ 2, %if.end.2.while.body_crit_edge ], [ 1, %if.end.1.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %call.lcssa.ph = phi i32 [ %call.4, %if.end.3.while.body_crit_edge ], [ %call.3, %if.end.2.while.body_crit_edge ], [ %call.2, %if.end.1.while.body_crit_edge ], [ %call.1, %if.end.while.body_crit_edge ]
  %arrayidx3 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 %i.016.lcssa.ph
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx3) #6
  br i1 %tobool.not.1, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec = add nsw i32 %i.016.lcssa.ph, -1
  %arrayidx3.1 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 %dec
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx3.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1.not.1 = icmp eq i32 %dec, 0
  br i1 %cmp1.not.1, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  %dec.1 = add nsw i32 %i.016.lcssa.ph, -2
  %arrayidx3.2 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 %dec.1
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx3.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp1.not.2 = icmp eq i32 %dec.1, 0
  br i1 %cmp1.not.2, label %while.body.2.cleanup_crit_edge, label %while.body.3

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %dec.2 = add nsw i32 %i.016.lcssa.ph, -3
  %arrayidx3.3 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 %dec.2
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx3.3) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 0
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4, i64 noundef 0) #6
  %arrayidx.1 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 1
  %call.1 = tail call i32 @__percpu_counter_init(ptr noundef %arrayidx.1, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @blkg_rwstat_init.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.1:                                         ; preds = %if.end
  %arrayidx4.1 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.1, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4.1, i64 noundef 0) #6
  %arrayidx.2 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 2
  %call.2 = tail call i32 @__percpu_counter_init(ptr noundef %arrayidx.2, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @blkg_rwstat_init.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.while.body_crit_edge

if.end.1.while.body_crit_edge:                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.2:                                         ; preds = %if.end.1
  %arrayidx4.2 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.2, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4.2, i64 noundef 0) #6
  %arrayidx.3 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 3
  %call.3 = tail call i32 @__percpu_counter_init(ptr noundef %arrayidx.3, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @blkg_rwstat_init.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.while.body_crit_edge

if.end.2.while.body_crit_edge:                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.3:                                         ; preds = %if.end.2
  %arrayidx4.3 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.3, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4.3, i64 noundef 0) #6
  %arrayidx.4 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 4
  %call.4 = tail call i32 @__percpu_counter_init(ptr noundef %arrayidx.4, i64 noundef 0, i32 noundef %gfp, ptr noundef nonnull @blkg_rwstat_init.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.while.body_crit_edge

if.end.3.while.body_crit_edge:                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.4:                                         ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4.4 = getelementptr %struct.blkg_rwstat, ptr %rwstat, i32 0, i32 1, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4.4, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4.4, i64 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %while.body.3, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.4 ], [ %call, %entry.cleanup_crit_edge ], [ %call.lcssa.ph, %while.body.3 ], [ %call.lcssa.ph, %while.body.2.cleanup_crit_edge ], [ %call.lcssa.ph, %while.body.1.cleanup_crit_edge ], [ %call.lcssa.ph, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkg_rwstat_exit(ptr noundef %rwstat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @percpu_counter_destroy(ptr noundef %rwstat) #6
  %arrayidx.1 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 1
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx.1) #6
  %arrayidx.2 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 2
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx.2) #6
  %arrayidx.3 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 3
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx.3) #6
  %arrayidx.4 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat, i32 0, i32 4
  tail call void @percpu_counter_destroy(ptr noundef %arrayidx.4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__blkg_prfill_rwstat(ptr noundef %sf, ptr nocapture noundef readonly %pd, ptr nocapture noundef readonly %rwstat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %call = tail call ptr @blkg_dev_name(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rwstat to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rwstat, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef nonnull @.str, i64 noundef %3) #6
  %arrayidx1.1 = getelementptr [5 x i64], ptr %rwstat, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx1.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef nonnull @.str.1, i64 noundef %5) #6
  %arrayidx1.2 = getelementptr [5 x i64], ptr %rwstat, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx1.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef nonnull @.str.2, i64 noundef %7) #6
  %arrayidx1.3 = getelementptr [5 x i64], ptr %rwstat, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef nonnull @.str.3, i64 noundef %9) #6
  %arrayidx1.4 = getelementptr [5 x i64], ptr %rwstat, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx1.4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef nonnull @.str.4, i64 noundef %11) #6
  %12 = ptrtoint ptr %rwstat to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rwstat, align 8
  %14 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx1.1, align 8
  %add = add i64 %15, %13
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx1.4, align 8
  %add8 = add i64 %add, %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.6, ptr noundef nonnull %call, i64 noundef %add8) #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %add8, %for.body.preheader ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @blkg_prfill_rwstat(ptr noundef %sf, ptr noundef %pd, i32 noundef %off) #0 align 64 {
entry:
  %rwstat = alloca %struct.blkg_rwstat_sample, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %rwstat) #6
  %add.ptr = getelementptr i8, ptr %pd, i32 %off
  %call.i.i = tail call i64 @__percpu_counter_sum(ptr noundef %add.ptr) #6
  %0 = tail call i64 @llvm.smax.i64(i64 %call.i.i, i64 0) #6
  %1 = ptrtoint ptr %rwstat to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %rwstat, align 8
  %arrayidx.1.i = getelementptr [5 x %struct.percpu_counter], ptr %add.ptr, i32 0, i32 1
  %call.i.1.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.1.i) #6
  %2 = tail call i64 @llvm.smax.i64(i64 %call.i.1.i, i64 0) #6
  %arrayidx1.1.i = getelementptr inbounds [5 x i64], ptr %rwstat, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx1.1.i, align 8
  %arrayidx.2.i = getelementptr [5 x %struct.percpu_counter], ptr %add.ptr, i32 0, i32 2
  %call.i.2.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.2.i) #6
  %4 = tail call i64 @llvm.smax.i64(i64 %call.i.2.i, i64 0) #6
  %arrayidx1.2.i = getelementptr inbounds [5 x i64], ptr %rwstat, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.2.i, align 8
  %arrayidx.3.i = getelementptr [5 x %struct.percpu_counter], ptr %add.ptr, i32 0, i32 3
  %call.i.3.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.3.i) #6
  %6 = tail call i64 @llvm.smax.i64(i64 %call.i.3.i, i64 0) #6
  %arrayidx1.3.i = getelementptr inbounds [5 x i64], ptr %rwstat, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx1.3.i, align 8
  %arrayidx.4.i = getelementptr [5 x %struct.percpu_counter], ptr %add.ptr, i32 0, i32 4
  %call.i.4.i = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx.4.i) #6
  %8 = tail call i64 @llvm.smax.i64(i64 %call.i.4.i, i64 0) #6
  %arrayidx1.4.i = getelementptr inbounds [5 x i64], ptr %rwstat, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx1.4.i, align 8
  %call = call i64 @__blkg_prfill_rwstat(ptr noundef %sf, ptr noundef %pd, ptr noundef nonnull %rwstat)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %rwstat) #6
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkg_rwstat_recursive_sum(ptr nocapture noundef readonly %blkg, ptr noundef readonly %pol, i32 noundef %off, ptr nocapture noundef %sum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %blkg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %blkg, align 8
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i63 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.not = icmp eq i32 %call.i63, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !51

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 110, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = call ptr @memset(ptr %sum, i32 0, i32 40)
  %4 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 3
  %8 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkcg, align 4
  %call24 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %9) #6
  %tobool25.not83 = icmp eq ptr %call24, null
  br i1 %tobool25.not83, label %rcu_read_lock.exit.for.end48_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end48_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %tobool34.not = icmp eq ptr %pol, null
  %arrayidx.1 = getelementptr [5 x i64], ptr %sum, i32 0, i32 1
  %arrayidx.2 = getelementptr [5 x i64], ptr %sum, i32 0, i32 2
  %arrayidx.3 = getelementptr [5 x i64], ptr %sum, i32 0, i32 3
  %arrayidx.4 = getelementptr [5 x i64], ptr %sum, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc44.for.body_crit_edge, %for.body.lr.ph
  %pos_css.084 = phi ptr [ %call24, %for.body.lr.ph ], [ %call47, %for.inc44.for.body_crit_edge ]
  %10 = ptrtoint ptr %blkg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %blkg, align 8
  %cmp.i = icmp eq ptr %pos_css.084, @blkcg_root
  br i1 %cmp.i, label %if.then.i64, label %if.end.i

if.then.i64:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root_blkg.i, align 8
  br label %__blkg_lookup.exit

if.end.i:                                         ; preds = %for.body
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %pos_css.084, i32 0, i32 4
  %14 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i65 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

land.lhs.true.i67:                                ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i67.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i67.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i67
  %.b1.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 340, ptr noundef nonnull @.str.11) #6
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i67.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %cmp14.i = icmp eq ptr %17, %11
  br i1 %cmp14.i, label %land.lhs.true12.i.if.then30_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

land.lhs.true12.i.if.then30_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %call18.i = tail call ptr @blkg_lookup_slowpath(ptr noundef nonnull %pos_css.084, ptr noundef %11, i1 noundef zeroext false) #6
  br label %__blkg_lookup.exit

__blkg_lookup.exit:                               ; preds = %if.end16.i, %if.then.i64
  %retval.0.i = phi ptr [ %13, %if.then.i64 ], [ %call18.i, %if.end16.i ]
  %tobool29.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool29.not, label %__blkg_lookup.exit.for.inc44_crit_edge, label %__blkg_lookup.exit.if.then30_crit_edge

__blkg_lookup.exit.if.then30_crit_edge:           ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

__blkg_lookup.exit.for.inc44_crit_edge:           ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc44

if.then30:                                        ; preds = %__blkg_lookup.exit.if.then30_crit_edge, %land.lhs.true12.i.if.then30_crit_edge
  %retval.0.i81 = phi ptr [ %retval.0.i, %__blkg_lookup.exit.if.then30_crit_edge ], [ %15, %land.lhs.true12.i.if.then30_crit_edge ]
  %online = getelementptr inbounds %struct.blkcg_gq, ptr %retval.0.i81, i32 0, i32 6
  %18 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %online, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool31.not = icmp eq i8 %19, 0
  br i1 %tobool31.not, label %if.then30.for.inc44_crit_edge, label %if.end33

if.then30.for.inc44_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc44

if.end33:                                         ; preds = %if.then30
  br i1 %tobool34.not, label %if.end33.if.end38_crit_edge, label %blkg_to_pd.exit

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

blkg_to_pd.exit:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pol, align 4
  %arrayidx.i = getelementptr %struct.blkcg_gq, ptr %retval.0.i81, i32 0, i32 9, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %blkg_to_pd.exit, %if.end33.if.end38_crit_edge
  %call36.pn = phi ptr [ %23, %blkg_to_pd.exit ], [ %retval.0.i81, %if.end33.if.end38_crit_edge ]
  %rwstat.0 = getelementptr i8, ptr %call36.pn, i32 %off
  %arrayidx.i69 = getelementptr %struct.blkg_rwstat, ptr %rwstat.0, i32 0, i32 1, i32 0
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i69, i32 noundef 8) #6
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx.i69) #6
  %call.i5.i = tail call i64 @__percpu_counter_sum(ptr noundef %rwstat.0) #6
  %24 = tail call i64 @llvm.smax.i64(i64 %call.i5.i, i64 0) #6
  %add.i = add i64 %24, %call.i.i
  %25 = ptrtoint ptr %sum to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sum, align 8
  %add = add i64 %add.i, %26
  store i64 %add, ptr %sum, align 8
  %arrayidx.i69.1 = getelementptr %struct.blkg_rwstat, ptr %rwstat.0, i32 0, i32 1, i32 1
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i69.1, i32 noundef 8) #6
  %call.i.i.1 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx.i69.1) #6
  %arrayidx1.i.1 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat.0, i32 0, i32 1
  %call.i5.i.1 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx1.i.1) #6
  %27 = tail call i64 @llvm.smax.i64(i64 %call.i5.i.1, i64 0) #6
  %add.i.1 = add i64 %27, %call.i.i.1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.1, align 8
  %add.1 = add i64 %add.i.1, %29
  store i64 %add.1, ptr %arrayidx.1, align 8
  %arrayidx.i69.2 = getelementptr %struct.blkg_rwstat, ptr %rwstat.0, i32 0, i32 1, i32 2
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i69.2, i32 noundef 8) #6
  %call.i.i.2 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx.i69.2) #6
  %arrayidx1.i.2 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat.0, i32 0, i32 2
  %call.i5.i.2 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx1.i.2) #6
  %30 = tail call i64 @llvm.smax.i64(i64 %call.i5.i.2, i64 0) #6
  %add.i.2 = add i64 %30, %call.i.i.2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.2, align 8
  %add.2 = add i64 %add.i.2, %32
  store i64 %add.2, ptr %arrayidx.2, align 8
  %arrayidx.i69.3 = getelementptr %struct.blkg_rwstat, ptr %rwstat.0, i32 0, i32 1, i32 3
  %call.i.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i69.3, i32 noundef 8) #6
  %call.i.i.3 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx.i69.3) #6
  %arrayidx1.i.3 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat.0, i32 0, i32 3
  %call.i5.i.3 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx1.i.3) #6
  %33 = tail call i64 @llvm.smax.i64(i64 %call.i5.i.3, i64 0) #6
  %add.i.3 = add i64 %33, %call.i.i.3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.3, align 8
  %add.3 = add i64 %add.i.3, %35
  store i64 %add.3, ptr %arrayidx.3, align 8
  %arrayidx.i69.4 = getelementptr %struct.blkg_rwstat, ptr %rwstat.0, i32 0, i32 1, i32 4
  %call.i.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i69.4, i32 noundef 8) #6
  %call.i.i.4 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx.i69.4) #6
  %arrayidx1.i.4 = getelementptr [5 x %struct.percpu_counter], ptr %rwstat.0, i32 0, i32 4
  %call.i5.i.4 = tail call i64 @__percpu_counter_sum(ptr noundef %arrayidx1.i.4) #6
  %36 = tail call i64 @llvm.smax.i64(i64 %call.i5.i.4, i64 0) #6
  %add.i.4 = add i64 %36, %call.i.i.4
  %37 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.4, align 8
  %add.4 = add i64 %add.i.4, %38
  store i64 %add.4, ptr %arrayidx.4, align 8
  br label %for.inc44

for.inc44:                                        ; preds = %if.end38, %if.then30.for.inc44_crit_edge, %__blkg_lookup.exit.for.inc44_crit_edge
  %39 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %blkcg, align 4
  %call47 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %pos_css.084, ptr noundef %40) #6
  %tobool25.not = icmp eq ptr %call47, null
  br i1 %tobool25.not, label %for.inc44.for.end48_crit_edge, label %for.inc44.for.body_crit_edge

for.inc44.for.body_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc44.for.end48_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.end48:                                        ; preds = %for.inc44.for.end48_crit_edge, %rcu_read_lock.exit.for.end48_crit_edge
  %call.i70 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i70, label %for.end48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i73

for.end48.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i73:                                ; preds = %for.end48
  %call1.i71 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool.not.i72, label %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i75

land.lhs.true.i73.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i75:                               ; preds = %land.lhs.true.i73
  %.b4.i74 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i74, label %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, label %if.then.i76

land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i76:                                      ; preds = %land.lhs.true2.i75
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.12) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i76, %land.lhs.true2.i75.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i73.rcu_read_unlock.exit_crit_edge, %for.end48.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %41 = tail call i32 @llvm.read_register.i32(metadata !41) #6
  %and.i.i.i.i.i77 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i77 to ptr
  %preempt_count.i.i.i.i78 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i78, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i78, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkg_lookup_slowpath(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @blkg_rwstat_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../block/blk-cgroup-rwstat.c", i32 13, i32 9}
!2 = !{ptr @__ksymtab_blkg_rwstat_init, !3, !"__ksymtab_blkg_rwstat_init", i1 false, i1 false}
!3 = !{!"../block/blk-cgroup-rwstat.c", i32 23, i32 1}
!4 = !{ptr @__ksymtab_blkg_rwstat_exit, !5, !"__ksymtab_blkg_rwstat_exit", i1 false, i1 false}
!5 = !{!"../block/blk-cgroup-rwstat.c", i32 32, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/blk-cgroup-rwstat.c", i32 46, i32 24}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/blk-cgroup-rwstat.c", i32 47, i32 25}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/blk-cgroup-rwstat.c", i32 48, i32 24}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/blk-cgroup-rwstat.c", i32 49, i32 25}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/blk-cgroup-rwstat.c", i32 50, i32 27}
!16 = distinct !{null, !17, !"rwstr", i1 false, i1 false}
!17 = !{!"../block/blk-cgroup-rwstat.c", i32 45, i32 21}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../block/blk-cgroup-rwstat.c", i32 60, i32 18}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/blk-cgroup-rwstat.c", i32 66, i32 17}
!22 = !{ptr @__ksymtab___blkg_prfill_rwstat, !23, !"__ksymtab___blkg_prfill_rwstat", i1 false, i1 false}
!23 = !{!"../block/blk-cgroup-rwstat.c", i32 69, i32 1}
!24 = !{ptr @__ksymtab_blkg_prfill_rwstat, !25, !"__ksymtab_blkg_prfill_rwstat", i1 false, i1 false}
!25 = !{!"../block/blk-cgroup-rwstat.c", i32 87, i32 1}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/blk-cgroup-rwstat.c", i32 110, i32 2}
!28 = !{ptr @__ksymtab_blkg_rwstat_recursive_sum, !29, !"__ksymtab_blkg_rwstat_recursive_sum", i1 false, i1 false}
!29 = !{!"../block/blk-cgroup-rwstat.c", i32 130, i32 1}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/blk-cgroup.h", i32 340, i32 9}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2149303094}
!53 = !{i8 0, i8 2}
!54 = !{i64 2149303360}
