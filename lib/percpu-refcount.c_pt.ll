; ModuleID = '/llk/IR_all_yes/lib/percpu-refcount.c_pt.bc'
source_filename = "../lib/percpu-refcount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_init\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_init\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_init:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_init\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_exit\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_exit\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_switch_to_atomic\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_switch_to_atomic\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_switch_to_atomic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_switch_to_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_switch_to_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_switch_to_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_switch_to_atomic_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_switch_to_atomic_sync\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_switch_to_atomic_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_switch_to_atomic_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_switch_to_atomic_sync\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_switch_to_atomic_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_switch_to_percpu\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_switch_to_percpu\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_switch_to_percpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_switch_to_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_switch_to_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_switch_to_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_kill_and_confirm\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_kill_and_confirm\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_kill_and_confirm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_kill_and_confirm:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_kill_and_confirm\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_kill_and_confirm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_is_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_is_zero\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_is_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_is_zero\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_reinit\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_reinit\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_reinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_reinit\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+percpu_ref_resurrect\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_ref_resurrect\09\09\09\09"
module asm "\09.long\09__crc_percpu_ref_resurrect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_ref_resurrect:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_ref_resurrect\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_ref_resurrect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_percpu_ref_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_init = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_init to i32), ptr @__kstrtab_percpu_ref_init, ptr @__kstrtabns_percpu_ref_init }, section "___ksymtab_gpl+percpu_ref_init", align 4
@percpu_ref_switch_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_percpu_ref_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_exit to i32), ptr @__kstrtab_percpu_ref_exit, ptr @__kstrtabns_percpu_ref_exit }, section "___ksymtab_gpl+percpu_ref_exit", align 4
@__kstrtab_percpu_ref_switch_to_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_switch_to_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_switch_to_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_switch_to_atomic to i32), ptr @__kstrtab_percpu_ref_switch_to_atomic, ptr @__kstrtabns_percpu_ref_switch_to_atomic }, section "___ksymtab_gpl+percpu_ref_switch_to_atomic", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib/percpu-refcount.c\00", [42 x i8] zeroinitializer }, align 32
@percpu_ref_switch_waitq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @percpu_ref_switch_waitq, i64 44), ptr getelementptr (i8, ptr @percpu_ref_switch_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_percpu_ref_switch_to_atomic_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_switch_to_atomic_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_switch_to_atomic_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_switch_to_atomic_sync to i32), ptr @__kstrtab_percpu_ref_switch_to_atomic_sync, ptr @__kstrtabns_percpu_ref_switch_to_atomic_sync }, section "___ksymtab_gpl+percpu_ref_switch_to_atomic_sync", align 4
@__kstrtab_percpu_ref_switch_to_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_switch_to_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_switch_to_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_switch_to_percpu to i32), ptr @__kstrtab_percpu_ref_switch_to_percpu, ptr @__kstrtabns_percpu_ref_switch_to_percpu }, section "___ksymtab_gpl+percpu_ref_switch_to_percpu", align 4
@percpu_ref_kill_and_confirm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s called more than once on %ps!\00", [63 x i8] zeroinitializer }, align 32
@__func__.percpu_ref_kill_and_confirm = private unnamed_addr constant [28 x i8] c"percpu_ref_kill_and_confirm\00", align 1
@__kstrtab_percpu_ref_kill_and_confirm = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_kill_and_confirm = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_kill_and_confirm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_kill_and_confirm to i32), ptr @__kstrtab_percpu_ref_kill_and_confirm, ptr @__kstrtabns_percpu_ref_kill_and_confirm }, section "___ksymtab_gpl+percpu_ref_kill_and_confirm", align 4
@__kstrtab_percpu_ref_is_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_is_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_is_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_is_zero to i32), ptr @__kstrtab_percpu_ref_is_zero, ptr @__kstrtabns_percpu_ref_is_zero }, section "___ksymtab_gpl+percpu_ref_is_zero", align 4
@percpu_ref_reinit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_percpu_ref_reinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_reinit = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_reinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_reinit to i32), ptr @__kstrtab_percpu_ref_reinit, ptr @__kstrtabns_percpu_ref_reinit }, section "___ksymtab_gpl+percpu_ref_reinit", align 4
@percpu_ref_resurrect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@percpu_ref_resurrect.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_percpu_ref_resurrect = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_ref_resurrect = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_ref_resurrect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_ref_resurrect to i32), ptr @__kstrtab_percpu_ref_resurrect, ptr @__kstrtabns_percpu_ref_resurrect }, section "___ksymtab_gpl+percpu_ref_resurrect", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__percpu_ref_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"percpu_ref_switch_lock\00", [41 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@percpu_ref_switch_to_atomic_rcu.underflows = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@percpu_ref_switch_to_atomic_rcu.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"percpu_refcount\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"percpu_ref_switch_to_atomic_rcu\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"global %lu percpu %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: global %lu percpu %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@percpu_ref_switch_to_atomic_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"percpu ref (%ps) <= 0 (%ld) after switching to atomic\00", [42 x i8] zeroinitializer }, align 32
@percpu_ref_switch_to_atomic_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: %s(): percpu_ref underflow\00", [63 x i8] zeroinitializer }, align 32
@percpu_ref_switch_to_atomic_rcu._entry_ptr = internal global ptr @percpu_ref_switch_to_atomic_rcu._entry, section ".printk_index", align 4
@__percpu_ref_switch_to_percpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"percpu_ref_switch_waitq.lock\00", [35 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"percpu_ref_switch_lock\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 329, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"percpu_ref_switch_waitq\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 388, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 39, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"underflows\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 172, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 179, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 196, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 200, i32 3 }
@___asan_gen_.54 = private constant [25 x i8] c"../lib/percpu-refcount.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 40, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_percpu_ref_exit, ptr @__ksymtab_percpu_ref_init, ptr @__ksymtab_percpu_ref_is_zero, ptr @__ksymtab_percpu_ref_kill_and_confirm, ptr @__ksymtab_percpu_ref_reinit, ptr @__ksymtab_percpu_ref_resurrect, ptr @__ksymtab_percpu_ref_switch_to_atomic, ptr @__ksymtab_percpu_ref_switch_to_atomic_sync, ptr @__ksymtab_percpu_ref_switch_to_percpu, ptr @percpu_ref_switch_to_atomic_rcu._entry, ptr @percpu_ref_switch_to_atomic_rcu._entry_ptr, ptr @percpu_ref_switch_lock, ptr @.str, ptr @percpu_ref_switch_waitq, ptr @.str.1, ptr @.str.3, ptr @percpu_ref_switch_to_atomic_rcu.underflows, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_ref_switch_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_ref_switch_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_ref_switch_to_atomic_rcu.underflows to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_ref_switch_to_atomic_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @percpu_ref_init(ptr noundef %ref, ptr noundef %release, i32 noundef %flags, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %gfp) #13
  %0 = ptrtoint ptr %call to i32
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %ref, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !71

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %2 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 28) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref, align 4
  %6 = inttoptr i32 %5 to ptr
  tail call void @free_percpu(ptr noundef %6) #15
  br label %cleanup

if.end6:                                          ; preds = %kzalloc.exit
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %call7.i.i, i32 0, i32 3
  %7 = trunc i32 %flags to i8
  %8 = ptrtoint ptr %force_atomic to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %force_atomic, align 4
  %bf.shl = shl i8 %7, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %9 = shl i8 %7, 4
  %bf.shl12 = and i8 %9, 64
  %bf.set14 = or i8 %bf.set, %bf.shl12
  store i8 %bf.set14, ptr %force_atomic, align 4
  %and16 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end6.if.end24_crit_edge, label %if.then18

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %ref, align 4
  %bf.set23 = or i8 %bf.set, 64
  %12 = ptrtoint ptr %force_atomic to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set23, ptr %force_atomic, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end6.if.end24_crit_edge
  %start_count.0 = phi i32 [ 0, %if.then18 ], [ -2147483648, %if.end6.if.end24_crit_edge ]
  %and25 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref, align 4
  %or29 = or i32 %14, 2
  store i32 %or29, ptr %ref, align 4
  br label %if.end31

if.else30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %inc = or i32 %start_count.0, 1
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then27
  %start_count.1 = phi i32 [ %start_count.0, %if.then27 ], [ %inc, %if.else30 ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #15
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %start_count.1, ptr %call7.i.i, align 8
  %release32 = getelementptr inbounds %struct.percpu_ref_data, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %release32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %release, ptr %release32, align 4
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %confirm_switch to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %confirm_switch, align 8
  %ref33 = getelementptr inbounds %struct.percpu_ref_data, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ref33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ref, ptr %ref33, align 8
  %data34 = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %19 = ptrtoint ptr %data34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %data34, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_exit(ptr nocapture noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %data1 = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref, align 4
  %and.i.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.__percpu_ref_exit.exit_crit_edge, label %if.then.i

entry.__percpu_ref_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__percpu_ref_exit.exit

if.then.i:                                        ; preds = %entry
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.then.i.if.end34.i_crit_edge, label %land.rhs.i

if.then.i.if.end34.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

land.rhs.i:                                       ; preds = %if.then.i
  %confirm_switch.i = getelementptr inbounds %struct.percpu_ref_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %confirm_switch.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %confirm_switch.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %land.rhs.i.if.end34.i_crit_edge, label %land.rhs6.i

land.rhs.i.if.end34.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

land.rhs6.i:                                      ; preds = %land.rhs.i
  %.b49.i = load i1, ptr @__percpu_ref_exit.__already_done, align 1
  br i1 %.b49.i, label %land.rhs6.i.if.end34.i_crit_edge, label %if.then13.i, !prof !71

land.rhs6.i.if.end34.i_crit_edge:                 ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then13.i:                                      ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__percpu_ref_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #15
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then13.i, %land.rhs6.i.if.end34.i_crit_edge, %land.rhs.i.if.end34.i_crit_edge, %if.then.i.if.end34.i_crit_edge
  tail call void @free_percpu(ptr noundef nonnull %4) #15
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %ref, align 4
  br label %__percpu_ref_exit.exit

__percpu_ref_exit.exit:                           ; preds = %if.end34.i, %entry.__percpu_ref_exit.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %__percpu_ref_exit.exit.cleanup_crit_edge, label %do.body2

__percpu_ref_exit.exit.cleanup_crit_edge:         ; preds = %__percpu_ref_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %__percpu_ref_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %8 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef 4) #15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %shl = shl i32 %11, 2
  %12 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %ref, align 4
  %14 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %data1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call3) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %__percpu_ref_exit.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_switch_to_atomic(ptr noundef %ref, ptr noundef %confirm_switch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %data = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %force_atomic to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %force_atomic, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %force_atomic, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef %confirm_switch)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef %confirm_switch) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %data1 = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @percpu_ref_switch_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !72

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %confirm_switch26 = getelementptr inbounds %struct.percpu_ref_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %confirm_switch26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %confirm_switch26, align 4
  %tobool27.not = icmp eq ptr %4, null
  br i1 %tobool27.not, label %if.end.do.end37_crit_edge, label %if.end29

if.end.do.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.end29:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call3053 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %6 = ptrtoint ptr %confirm_switch26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %confirm_switch26, align 4
  %tobool32.not54 = icmp eq ptr %7, null
  br i1 %tobool32.not54, label %if.end29.for.end_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  br label %cleanup

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @percpu_ref_switch_lock) #15
  call void @schedule() #15
  call void @_raw_spin_lock_irq(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %call30 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %8 = ptrtoint ptr %confirm_switch26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %confirm_switch26, align 4
  %tobool32.not = icmp eq ptr %9, null
  br i1 %tobool32.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end29.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end37

do.end37:                                         ; preds = %for.end, %if.end.do.end37_crit_edge
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %force_atomic to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %force_atomic, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %lor.lhs.false, label %do.end37.if.then39_crit_edge

do.end37.if.then39_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

lor.lhs.false:                                    ; preds = %do.end37
  %11 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ref, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %do.end37.if.then39_crit_edge
  %13 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref, align 4
  %and.i47 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.not.i = icmp eq i32 %and.i47, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %if.then39
  %tobool1.not.i = icmp eq ptr %confirm_switch, null
  br i1 %tobool1.not.i, label %if.then.i.if.end40_crit_edge, label %if.then2.i

if.then.i.if.end40_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %confirm_switch(ptr noundef %ref) #15
  br label %if.end40

if.end3.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %14, 1
  %15 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %ref, align 4
  %tobool5.not.i = icmp eq ptr %confirm_switch, null
  %.percpu_ref_noop_confirm_switch.i = select i1 %tobool5.not.i, ptr @percpu_ref_noop_confirm_switch, ptr %confirm_switch
  %16 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data1, align 4
  %confirm_switch6.i = getelementptr inbounds %struct.percpu_ref_data, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %confirm_switch6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.percpu_ref_noop_confirm_switch.i, ptr %confirm_switch6.i, align 4
  call fastcc void @percpu_ref_get(ptr noundef %ref) #15
  %19 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data1, align 4
  %rcu.i = getelementptr inbounds %struct.percpu_ref_data, ptr %20, i32 0, i32 4
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @percpu_ref_switch_to_atomic_rcu) #15
  br label %if.end40

if.else:                                          ; preds = %lor.lhs.false
  %and.i.i = and i32 %12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i48 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i48, label %do.body4.i, label %do.end9.i, !prof !72

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/percpu-refcount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #15, !srcloc !73
  unreachable

do.end9.i:                                        ; preds = %if.else
  %and.i49 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool10.not.i = icmp eq i32 %and.i49, 0
  br i1 %tobool10.not.i, label %do.end9.i.if.end40_crit_edge, label %if.end12.i

do.end9.i.if.end40_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end12.i:                                       ; preds = %do.end9.i
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data1, align 4
  %allow_reinit.i = getelementptr inbounds %struct.percpu_ref_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %allow_reinit.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %allow_reinit.i, align 4
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %bf.cast.not.i = icmp eq i8 %24, 0
  br i1 %bf.cast.not.i, label %land.rhs.i, label %if.end64.i

land.rhs.i:                                       ; preds = %if.end12.i
  %.b107.i = load i1, ptr @__percpu_ref_switch_to_percpu.__already_done, align 1
  br i1 %.b107.i, label %land.rhs.i.if.end40_crit_edge, label %if.then29.i, !prof !71

land.rhs.i.if.end40_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then29.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__percpu_ref_switch_to_percpu.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 9, ptr noundef null) #15
  br label %if.end40

if.end64.i:                                       ; preds = %if.end12.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %22, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %22, i32 1, i32 3, i32 1) #15
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 -2147483648, ptr elementtype(i32) %22) #15, !srcloc !74
  %call66109.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call66109.i, i32 %26)
  %cmp110.i = icmp ult i32 %call66109.i, %26
  br i1 %cmp110.i, label %if.end64.i.do.body67.i_crit_edge, label %if.end64.i.do.end79.i_crit_edge

if.end64.i.do.end79.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79.i

if.end64.i.do.body67.i_crit_edge:                 ; preds = %if.end64.i
  br label %do.body67.i

do.body67.i:                                      ; preds = %do.body67.i.do.body67.i_crit_edge, %if.end64.i.do.body67.i_crit_edge
  %call66111.i = phi i32 [ %call66.i, %do.body67.i.do.body67.i_crit_edge ], [ %call66109.i, %if.end64.i.do.body67.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call66111.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %28, %and.i.i
  %29 = inttoptr i32 %add.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %call66.i = call i32 @cpumask_next(i32 noundef %call66111.i, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call66.i, %31
  br i1 %cmp.i, label %do.body67.i.do.body67.i_crit_edge, label %do.body67.i.do.end79.i_crit_edge

do.body67.i.do.end79.i_crit_edge:                 ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79.i

do.body67.i.do.body67.i_crit_edge:                ; preds = %do.body67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body67.i

do.end79.i:                                       ; preds = %do.body67.i.do.end79.i_crit_edge, %if.end64.i.do.end79.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !75
  %32 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ref, align 4
  %and86.i = and i32 %33, -2
  store volatile i32 %and86.i, ptr %ref, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end79.i, %if.then29.i, %land.rhs.i.if.end40_crit_edge, %do.end9.i.if.end40_crit_edge, %if.end3.i, %if.then2.i, %if.then.i.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_switch_to_atomic_sync(ptr noundef %ref) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %force_atomic.i = getelementptr inbounds %struct.percpu_ref_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %force_atomic.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %force_atomic.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %force_atomic.i, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef null) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call2.i) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 329) #15
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %confirm_switch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %confirm_switch, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %if.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call14 = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %confirm_switch515 = getelementptr inbounds %struct.percpu_ref_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %confirm_switch515 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %confirm_switch515, align 4
  %tobool6.not16 = icmp eq ptr %11, null
  br i1 %tobool6.not16, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #15
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %confirm_switch5 = getelementptr inbounds %struct.percpu_ref_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %confirm_switch5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %confirm_switch5, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @percpu_ref_switch_waitq, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end9

do.end9:                                          ; preds = %for.end, %entry.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_switch_to_percpu(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %data = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %force_atomic to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %force_atomic, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %force_atomic, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_kill_and_confirm(ptr noundef %ref, ptr noundef %confirm_kill) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end37_crit_edge, label %land.rhs

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.rhs:                                         ; preds = %entry
  %.b51 = load i1, ptr @percpu_ref_kill_and_confirm.__already_done, align 1
  br i1 %.b51, label %land.rhs.if.end37_crit_edge, label %if.then, !prof !71

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @percpu_ref_kill_and_confirm.__already_done, align 1
  %data = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.percpu_ref_kill_and_confirm, ptr noundef %5) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then, %land.rhs.if.end37_crit_edge, %entry.if.end37_crit_edge
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %ref, align 4
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef %confirm_kill)
  tail call fastcc void @percpu_ref_put(ptr noundef %ref)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #15
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !71

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !77
  %7 = tail call i32 @llvm.read_register.i32(metadata !62) #15
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, -1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !78
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !72

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !srcloc !79
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #15, !srcloc !81
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !72

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #15
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #15
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !83
  %24 = tail call i32 @llvm.read_register.i32(metadata !62) #15
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @percpu_ref_is_zero(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  %and.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %data = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %3, i32 noundef 4) #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  br label %if.end10

if.else:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref, align 4
  %shr = lshr i32 %7, 2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %count.0 = phi i32 [ %5, %if.then6 ], [ %shr, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0)
  %cmp11 = icmp eq i32 %count.0, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp11, %if.end10 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_reinit(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.land.rhs_crit_edge, label %do.body1.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.body1.i:                                       ; preds = %entry
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %3, i32 noundef 4) #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  br label %percpu_ref_is_zero.exit

if.else.i:                                        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref, align 4
  %shr.i = lshr i32 %7, 2
  br label %percpu_ref_is_zero.exit

percpu_ref_is_zero.exit:                          ; preds = %if.else.i, %if.then6.i
  %count.0.i = phi i32 [ %5, %if.then6.i ], [ %shr.i, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call3.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %cmp11.i = icmp eq i32 %count.0.i, 0
  br i1 %cmp11.i, label %percpu_ref_is_zero.exit.if.end28_crit_edge, label %percpu_ref_is_zero.exit.land.rhs_crit_edge

percpu_ref_is_zero.exit.land.rhs_crit_edge:       ; preds = %percpu_ref_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

percpu_ref_is_zero.exit.if.end28_crit_edge:       ; preds = %percpu_ref_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs:                                         ; preds = %percpu_ref_is_zero.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b39 = load i1, ptr @percpu_ref_reinit.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !71

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @percpu_ref_reinit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %percpu_ref_is_zero.exit.if.end28_crit_edge
  tail call void @percpu_ref_resurrect(ptr noundef %ref)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_ref_resurrect(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_ref_switch_lock) #15
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref, align 4
  %and.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.rhs, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.rhs:                                         ; preds = %entry
  %.b111 = load i1, ptr @percpu_ref_resurrect.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end38_crit_edge, label %if.then, !prof !71

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @percpu_ref_resurrect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 468, i32 noundef 9, ptr noundef null) #15
  br label %if.end38

if.end38:                                         ; preds = %if.then, %land.rhs.if.end38_crit_edge, %entry.if.end38_crit_edge
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ref, align 4
  %and.i112 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i, label %land.rhs55, label %if.end38.if.end93_crit_edge

if.end38.if.end93_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

land.rhs55:                                       ; preds = %if.end38
  %.b109110 = load i1, ptr @percpu_ref_resurrect.__already_done.2, align 1
  br i1 %.b109110, label %land.rhs55.if.end93_crit_edge, label %if.then66, !prof !71

land.rhs55.if.end93_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then66:                                        ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @percpu_ref_resurrect.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 469, i32 noundef 9, ptr noundef null) #15
  br label %if.end93

if.end93:                                         ; preds = %if.then66, %land.rhs55.if.end93_crit_edge, %if.end38.if.end93_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ref, align 4
  %and = and i32 %5, -3
  store i32 %and, ptr %ref, align 4
  tail call fastcc void @percpu_ref_get(ptr noundef %ref)
  tail call fastcc void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_ref_switch_lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_get(ptr noundef %ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #15
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !76
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !71

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !77
  %7 = tail call i32 @llvm.read_register.i32(metadata !62) #15
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, 1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !78
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !72

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #15, !srcloc !79
  br label %if.end38.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #15, !srcloc !74
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i, label %if.end38.i.percpu_ref_get_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end38.i.percpu_ref_get_many.exit_crit_edge:    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_get_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end38.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_get_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_get_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #15
  br label %percpu_ref_get_many.exit

percpu_ref_get_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_get_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_get_many.exit_crit_edge, %if.end38.i.percpu_ref_get_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !83
  %20 = tail call i32 @llvm.read_register.i32(metadata !62) #15
  %and.i.i.i.i.i10.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @percpu_ref_noop_confirm_switch(ptr nocapture noundef %ref) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @percpu_ref_switch_to_atomic_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %rcu, i32 -16
  %ref1 = getelementptr i8, ptr %rcu, i32 8
  %0 = ptrtoint ptr %ref1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ref1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call2100 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call2100, i32 %4)
  %cmp101 = icmp ult i32 %call2100, %4
  br i1 %cmp101, label %entry.do.body_crit_edge, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call2103 = phi i32 [ %call2, %do.body.do.body_crit_edge ], [ %call2100, %entry.do.body_crit_edge ]
  %count.0102 = phi i32 [ %add5, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2103
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %and.i
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add5 = add i32 %9, %count.0102
  %call2 = tail call i32 @cpumask_next(i32 noundef %call2103, ptr noundef nonnull @__cpu_possible_mask) #16
  %cmp = icmp ult i32 %call2, %4
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.do.body6_crit_edge

do.body.do.body6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body6:                                         ; preds = %do.body.do.body6_crit_edge, %entry.do.body6_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.do.body6_crit_edge ], [ %add5, %do.body.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @percpu_ref_switch_to_atomic_rcu.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@percpu_ref_switch_to_atomic_rcu, %if.then)) #15
          to label %do.end14 [label %if.then], !srcloc !84

if.then:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #15
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @percpu_ref_switch_to_atomic_rcu.__UNIQUE_ID_ddebug219, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %count.0.lcssa) #15
  br label %do.end14

do.end14:                                         ; preds = %if.then, %do.body6
  %sub = xor i32 %count.0.lcssa, -2147483648
  %call.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 %sub, ptr elementtype(i32) %add.ptr) #15, !srcloc !74
  %call.i.i96 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #15
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp18 = icmp slt i32 %14, 1
  br i1 %cmp18, label %land.rhs, label %do.end14.if.end79_crit_edge

do.end14.if.end79_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

land.rhs:                                         ; preds = %do.end14
  %.b93 = load i1, ptr @percpu_ref_switch_to_atomic_rcu.__already_done, align 1
  br i1 %.b93, label %land.rhs.land.lhs.true_crit_edge, label %if.then34, !prof !71

land.rhs.land.lhs.true_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @percpu_ref_switch_to_atomic_rcu.__already_done, align 1
  %release = getelementptr i8, ptr %rcu, i32 -12
  %15 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %release, align 4
  %call.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #15
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %add.ptr, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %16, i32 noundef %18) #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then34, %land.rhs.land.lhs.true_crit_edge
  %call.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @percpu_ref_switch_to_atomic_rcu.underflows, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr nonnull @percpu_ref_switch_to_atomic_rcu.underflows, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @percpu_ref_switch_to_atomic_rcu.underflows, ptr nonnull @percpu_ref_switch_to_atomic_rcu.underflows, i32 1, ptr nonnull elementtype(i32) @percpu_ref_switch_to_atomic_rcu.underflows) #15, !srcloc !86
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult.i.i.i.i)
  %cmp72 = icmp slt i32 %asmresult.i.i.i.i, 4
  br i1 %cmp72, label %do.end76, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end76:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5) #17
  tail call void @mem_dump_obj(ptr noundef %add.ptr) #15
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %land.lhs.true.if.end79_crit_edge, %do.end14.if.end79_crit_edge
  %20 = ptrtoint ptr %ref1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ref1, align 4
  %confirm_switch.i = getelementptr i8, ptr %rcu, i32 -8
  %22 = ptrtoint ptr %confirm_switch.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %confirm_switch.i, align 4
  tail call void %23(ptr noundef %21) #15
  %24 = ptrtoint ptr %confirm_switch.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %confirm_switch.i, align 4
  tail call void @__wake_up(ptr noundef nonnull @percpu_ref_switch_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  %allow_reinit.i = getelementptr i8, ptr %rcu, i32 -4
  %25 = ptrtoint ptr %allow_reinit.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %allow_reinit.i, align 4
  %26 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %bf.cast.not.i = icmp eq i8 %26, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.end79.percpu_ref_call_confirm_rcu.exit_crit_edge

if.end79.percpu_ref_call_confirm_rcu.exit_crit_edge: ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_call_confirm_rcu.exit

if.then.i:                                        ; preds = %if.end79
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %21, align 4
  %and.i.i.i = and i32 %28, -4
  %29 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.percpu_ref_call_confirm_rcu.exit_crit_edge, label %if.then.i.i

if.then.i.percpu_ref_call_confirm_rcu.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_call_confirm_rcu.exit

if.then.i.i:                                      ; preds = %if.then.i
  %data.i.i = getelementptr inbounds %struct.percpu_ref, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end34.i.i_crit_edge, label %land.rhs.i.i

if.then.i.i.if.end34.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %confirm_switch.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %confirm_switch.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %confirm_switch.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i.i, label %land.rhs.i.i.if.end34.i.i_crit_edge, label %land.rhs6.i.i

land.rhs.i.i.if.end34.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

land.rhs6.i.i:                                    ; preds = %land.rhs.i.i
  %.b49.i.i = load i1, ptr @__percpu_ref_exit.__already_done, align 1
  br i1 %.b49.i.i, label %land.rhs6.i.i.if.end34.i.i_crit_edge, label %if.then13.i.i, !prof !71

land.rhs6.i.i.if.end34.i.i_crit_edge:             ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then13.i.i:                                    ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__percpu_ref_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #15
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then13.i.i, %land.rhs6.i.i.if.end34.i.i_crit_edge, %land.rhs.i.i.if.end34.i.i_crit_edge, %if.then.i.i.if.end34.i.i_crit_edge
  tail call void @free_percpu(ptr noundef nonnull %29) #15
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %21, align 4
  br label %percpu_ref_call_confirm_rcu.exit

percpu_ref_call_confirm_rcu.exit:                 ; preds = %if.end34.i.i, %if.then.i.percpu_ref_call_confirm_rcu.exit_crit_edge, %if.end79.percpu_ref_call_confirm_rcu.exit_crit_edge
  tail call fastcc void @percpu_ref_put(ptr noundef %21) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_dump_obj(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind uwtable(sync) }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !54, !55, !57, !58, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__ksymtab_percpu_ref_init, !1, !"__ksymtab_percpu_ref_init", i1 false, i1 false}
!1 = !{!"../lib/percpu-refcount.c", i32 105, i32 1}
!2 = !{ptr @__ksymtab_percpu_ref_exit, !3, !"__ksymtab_percpu_ref_exit", i1 false, i1 false}
!3 = !{!"../lib/percpu-refcount.c", i32 147, i32 1}
!4 = !{ptr @__ksymtab_percpu_ref_switch_to_atomic, !5, !"__ksymtab_percpu_ref_switch_to_atomic", i1 false, i1 false}
!5 = !{!"../lib/percpu-refcount.c", i32 316, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/percpu-refcount.c", i32 329, i32 2}
!8 = !{ptr @__ksymtab_percpu_ref_switch_to_atomic_sync, !9, !"__ksymtab_percpu_ref_switch_to_atomic_sync", i1 false, i1 false}
!9 = !{!"../lib/percpu-refcount.c", i32 331, i32 1}
!10 = !{ptr @__ksymtab_percpu_ref_switch_to_percpu, !11, !"__ksymtab_percpu_ref_switch_to_percpu", i1 false, i1 false}
!11 = !{!"../lib/percpu-refcount.c", i32 362, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../lib/percpu-refcount.c", i32 388, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.percpu_ref_kill_and_confirm, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_percpu_ref_kill_and_confirm, !17, !"__ksymtab_percpu_ref_kill_and_confirm", i1 false, i1 false}
!17 = !{!"../lib/percpu-refcount.c", i32 398, i32 1}
!18 = !{ptr @__ksymtab_percpu_ref_is_zero, !19, !"__ksymtab_percpu_ref_is_zero", i1 false, i1 false}
!19 = !{!"../lib/percpu-refcount.c", i32 426, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../lib/percpu-refcount.c", i32 441, i32 2}
!22 = !{ptr @__ksymtab_percpu_ref_reinit, !23, !"__ksymtab_percpu_ref_reinit", i1 false, i1 false}
!23 = !{!"../lib/percpu-refcount.c", i32 445, i32 1}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../lib/percpu-refcount.c", i32 468, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../lib/percpu-refcount.c", i32 469, i32 2}
!28 = !{ptr @__ksymtab_percpu_ref_resurrect, !29, !"__ksymtab_percpu_ref_resurrect", i1 false, i1 false}
!29 = !{!"../lib/percpu-refcount.c", i32 477, i32 1}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../lib/percpu-refcount.c", i32 113, i32 3}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/percpu-refcount.c", i32 39, i32 8}
!34 = !{ptr @percpu_ref_switch_lock, !33, !"percpu_ref_switch_lock", i1 false, i1 false}
!35 = !{ptr @percpu_ref_switch_to_atomic_rcu.underflows, !36, !"underflows", i1 false, i1 false}
!36 = !{!"../lib/percpu-refcount.c", i32 172, i32 18}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/percpu-refcount.c", i32 179, i32 2}
!39 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @percpu_ref_switch_to_atomic_rcu.__UNIQUE_ID_ddebug219, !38, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!42 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../lib/percpu-refcount.c", i32 196, i32 6}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/percpu-refcount.c", i32 200, i32 3}
!48 = !{ptr @percpu_ref_switch_to_atomic_rcu._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @percpu_ref_switch_to_atomic_rcu._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../lib/percpu-refcount.c", i32 245, i32 6}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/percpu-refcount.c", i32 40, i32 8}
!54 = !{ptr @percpu_ref_switch_waitq, !53, !"percpu_ref_switch_waitq", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!57 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2153323305, i64 2153323791, i64 2153323342, i64 2153323398, i64 2153323432, i64 2153323456, i64 2153323497, i64 2153323518, i64 2153323546, i64 2153323580}
!74 = !{i64 2148223460, i64 2148223486, i64 2148223515, i64 2148223549, i64 2148223580, i64 2148223603}
!75 = !{i64 2153328918}
!76 = !{i64 2149260516}
!77 = !{i64 615941, i64 616002}
!78 = !{i64 618673}
!79 = !{i64 618958}
!80 = !{i64 2148311912}
!81 = !{i64 2148226645, i64 2148226677, i64 2148226706, i64 2148226740, i64 2148226771, i64 2148226794}
!82 = !{i64 2148312141}
!83 = !{i64 2149260782}
!84 = !{i64 2148705275, i64 2148705280, i64 2148705293, i64 2148705337, i64 2148705371, i64 2148705392}
!85 = !{i64 2148308871}
!86 = !{i64 2148224180, i64 2148224212, i64 2148224241, i64 2148224275, i64 2148224306, i64 2148224329}
!87 = !{i64 2148309100}
