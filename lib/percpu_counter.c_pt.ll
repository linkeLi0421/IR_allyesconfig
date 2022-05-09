; ModuleID = '/llk/IR_all_yes/lib/percpu_counter.c_pt.bc'
source_filename = "../lib/percpu_counter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+percpu_counter_set\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_counter_set\09\09\09\09"
module asm "\09.long\09__crc_percpu_counter_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_set:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_set\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+percpu_counter_add_batch\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_counter_add_batch\09\09\09\09"
module asm "\09.long\09__crc_percpu_counter_add_batch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_add_batch\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+percpu_counter_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_counter_sync\09\09\09\09"
module asm "\09.long\09__crc_percpu_counter_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_sync\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__percpu_counter_sum\22, \22a\22\09"
module asm "\09.weak\09__crc___percpu_counter_sum\09\09\09\09"
module asm "\09.long\09__crc___percpu_counter_sum\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_counter_sum:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_counter_sum\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_counter_sum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__percpu_counter_init\22, \22a\22\09"
module asm "\09.weak\09__crc___percpu_counter_init\09\09\09\09"
module asm "\09.long\09__crc___percpu_counter_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_counter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_counter_init\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_counter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+percpu_counter_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_counter_destroy\09\09\09\09"
module asm "\09.long\09__crc_percpu_counter_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+percpu_counter_batch\22, \22a\22\09"
module asm "\09.weak\09__crc_percpu_counter_batch\09\09\09\09"
module asm "\09.long\09__crc_percpu_counter_batch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_counter_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_counter_batch\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_counter_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__percpu_counter_compare\22, \22a\22\09"
module asm "\09.weak\09__crc___percpu_counter_compare\09\09\09\09"
module asm "\09.long\09__crc___percpu_counter_compare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_counter_compare:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_counter_compare\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_counter_compare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.debug_obj_descr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_percpu_counter_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_set = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_set to i32), ptr @__kstrtab_percpu_counter_set, ptr @__kstrtabns_percpu_counter_set }, section "___ksymtab+percpu_counter_set", align 4
@__kstrtab_percpu_counter_add_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_add_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_add_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_add_batch to i32), ptr @__kstrtab_percpu_counter_add_batch, ptr @__kstrtabns_percpu_counter_add_batch }, section "___ksymtab+percpu_counter_add_batch", align 4
@__kstrtab_percpu_counter_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_sync to i32), ptr @__kstrtab_percpu_counter_sync, ptr @__kstrtabns_percpu_counter_sync }, section "___ksymtab+percpu_counter_sync", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab___percpu_counter_sum = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_counter_sum = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_counter_sum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_counter_sum to i32), ptr @__kstrtab___percpu_counter_sum, ptr @__kstrtabns___percpu_counter_sum }, section "___ksymtab+__percpu_counter_sum", align 4
@__percpu_counter_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fbc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@percpu_counters_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@percpu_counters = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @percpu_counters, ptr @percpu_counters }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___percpu_counter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_counter_init = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_counter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_counter_init to i32), ptr @__kstrtab___percpu_counter_init, ptr @__kstrtabns___percpu_counter_init }, section "___ksymtab+__percpu_counter_init", align 4
@__kstrtab_percpu_counter_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_destroy to i32), ptr @__kstrtab_percpu_counter_destroy, ptr @__kstrtabns_percpu_counter_destroy }, section "___ksymtab+percpu_counter_destroy", align 4
@percpu_counter_batch = dso_local global i32 32, section ".data..read_mostly", align 4
@__kstrtab_percpu_counter_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_counter_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_counter_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_counter_batch to i32), ptr @__kstrtab_percpu_counter_batch, ptr @__kstrtabns_percpu_counter_batch }, section "___ksymtab+percpu_counter_batch", align 4
@__kstrtab___percpu_counter_compare = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_counter_compare = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_counter_compare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_counter_compare to i32), ptr @__kstrtab___percpu_counter_compare, ptr @__kstrtabns___percpu_counter_compare }, section "___ksymtab+__percpu_counter_compare", align 4
@__initcall__kmod_percpu_counter__173_257_percpu_counter_startup6 = internal global ptr @percpu_counter_startup, section ".initcall6.init", align 4
@percpu_counter_debug_descr = internal constant { %struct.debug_obj_descr, [32 x i8] } { %struct.debug_obj_descr { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @percpu_counter_fixup_free, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"percpu_counter\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"percpu_counters_lock\00", [43 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lib/percpu_cnt:online\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/percpu_counter.c\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/percpu_cnt:dead\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 146, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 147, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"percpu_counters_lock\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"percpu_counters\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 14, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"percpu_counter_debug_descr\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 36, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 37, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 15, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 248, i32 47 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 250, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [24 x i8] c"../lib/percpu_counter.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 252, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_percpu_counter__173_257_percpu_counter_startup6, ptr @__ksymtab___percpu_counter_compare, ptr @__ksymtab___percpu_counter_init, ptr @__ksymtab___percpu_counter_sum, ptr @__ksymtab_percpu_counter_add_batch, ptr @__ksymtab_percpu_counter_batch, ptr @__ksymtab_percpu_counter_destroy, ptr @__ksymtab_percpu_counter_set, ptr @__ksymtab_percpu_counter_sync, ptr @.str.2, ptr @.str.3, ptr @percpu_counters_lock, ptr @percpu_counters, ptr @percpu_counter_debug_descr, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_counters_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_counters to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_counter_debug_descr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_counter_set(ptr noundef %fbc, i64 noundef %amount) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fbc) #9
  %call123 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call123, i32 %0)
  %cmp224 = icmp ult i32 %call123, %0
  br i1 %cmp224, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call125 = phi i32 [ %call123, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %counters, align 8
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call125
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call125, ptr noundef nonnull @__cpu_possible_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp2 = icmp ult i32 %call1, %8
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %amount, ptr %count, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fbc, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_counter_add_batch(ptr noundef %fbc, i64 noundef %amount, i32 noundef %batch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  %4 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counters, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %conv = sext i32 %15 to i64
  %add12 = add i64 %conv, %amount
  %16 = tail call i64 @llvm.abs.i64(i64 %add12, i1 false)
  %conv15 = sext i32 %batch to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv15)
  %cmp16.not = icmp slt i64 %16, %conv15
  br i1 %cmp16.not, label %do.body63, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fbc) #9
  %count25 = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 1
  %17 = ptrtoint ptr %count25 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %count25, align 8
  %add26 = add i64 %18, %add12
  store i64 %add26, ptr %count25, align 8
  %19 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %counters, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %25, %21
  %26 = inttoptr i32 %add47 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add48 = sub i32 %28, %15
  store i32 %add48, ptr %26, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fbc, i32 noundef %call22) #9
  br label %do.body116

do.body63:                                        ; preds = %entry
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !54
  %30 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %counters, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx88 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx88, align 4
  %add89 = add i32 %36, %32
  %37 = inttoptr i32 %add89 to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = trunc i64 %amount to i32
  %conv92 = add i32 %39, %40
  store i32 %conv92, ptr %37, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !55
  %and.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then106, label %do.body63.do.end108_crit_edge, !prof !56

do.body63.do.end108_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end108

if.then106:                                       ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end108

do.end108:                                        ; preds = %if.then106, %do.body63.do.end108_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #9, !srcloc !57
  br label %do.body116

do.body116:                                       ; preds = %do.end108, %if.then
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %42 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i131 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i131 to ptr
  %preempt_count.i.i132 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i132 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i132, align 4
  %sub.i = add i32 %45, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i132, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_counter_sync(ptr noundef %fbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fbc) #9
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counters, align 8
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %conv14 = sext i32 %11 to i64
  %count15 = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 1
  %12 = ptrtoint ptr %count15 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count15, align 8
  %add16 = add i64 %13, %conv14
  store i64 %add16, ptr %count15, align 8
  %14 = load i32, ptr %cpu, align 4
  %arrayidx34 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %16, %2
  %17 = inttoptr i32 %add35 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add36 = sub i32 %19, %11
  store i32 %add36, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fbc, i32 noundef %call) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__percpu_counter_sum(ptr noundef %fbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fbc) #9
  %count = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call126 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call126, i32 %2)
  %cmp227 = icmp ult i32 %call126, %2
  br i1 %cmp227, label %for.body.lr.ph, label %entry.do.body11_crit_edge

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

for.body.lr.ph:                                   ; preds = %entry
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  %3 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %counters, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call129 = phi i32 [ %call126, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %ret.028 = phi i64 [ %1, %for.body.lr.ph ], [ %add10, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call129
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %conv9 = sext i32 %10 to i64
  %add10 = add i64 %ret.028, %conv9
  %call1 = tail call i32 @cpumask_next(i32 noundef %call129, ptr noundef nonnull @__cpu_online_mask) #10
  %cmp2 = icmp ult i32 %call1, %2
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.do.body11_crit_edge

for.body.do.body11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body11:                                        ; preds = %for.body.do.body11_crit_edge, %entry.do.body11_crit_edge
  %ret.0.lcssa = phi i64 [ %1, %entry.do.body11_crit_edge ], [ %add10, %for.body.do.body11_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fbc, i32 noundef %call) #9
  ret i64 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__percpu_counter_init(ptr noundef %fbc, i64 noundef %amount, i32 noundef %gfp, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__raw_spin_lock_init(ptr noundef %fbc, ptr noundef nonnull @.str.2, ptr noundef nonnull @__percpu_counter_init.__key, i16 noundef signext 2) #9
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %fbc, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.raw_spinlock, ptr %fbc, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.3, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %count = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %amount, ptr %count, align 8
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %gfp) #11
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  %3 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %counters, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @debug_object_init(ptr noundef %fbc, ptr noundef nonnull @percpu_counter_debug_descr) #9
  %call.i = tail call i32 @debug_object_activate(ptr noundef %fbc, ptr noundef nonnull @percpu_counter_debug_descr) #9
  %list = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 2
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_counters_lock) #9
  %6 = load ptr, ptr @percpu_counters, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @percpu_counters, ptr noundef %6) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list, align 4
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @percpu_counters, ptr %prev.i, align 4
  store volatile ptr %list, ptr @percpu_counters, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_counters_lock, i32 noundef %call10) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @percpu_counter_destroy(ptr noundef %fbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counters, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @debug_object_deactivate(ptr noundef %fbc, ptr noundef nonnull @percpu_counter_debug_descr) #9
  tail call void @debug_object_free(ptr noundef %fbc, ptr noundef nonnull @percpu_counter_debug_descr) #9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @percpu_counters_lock) #9
  %list = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @percpu_counters_lock, i32 noundef %call2) #9
  %10 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %counters, align 8
  tail call void @free_percpu(ptr noundef %11) #9
  %12 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %counters, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__percpu_counter_compare(ptr noundef %fbc, i64 noundef %rhs, i32 noundef %batch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %count.i = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 1
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %sub = sub i64 %1, %rhs
  %2 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = mul i32 %3, %batch
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv)
  %cmp3 = icmp sgt i64 %2, %conv
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %rhs)
  %cmp5 = icmp sgt i64 %1, %rhs
  %. = select i1 %cmp5, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fbc) #9
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %count.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call126.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call126.i.i, i32 %6)
  %cmp227.i.i = icmp ult i32 %call126.i.i, %6
  br i1 %cmp227.i.i, label %for.body.lr.ph.i.i, label %if.end.percpu_counter_sum.exit_crit_edge

if.end.percpu_counter_sum.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %percpu_counter_sum.exit

for.body.lr.ph.i.i:                               ; preds = %if.end
  %counters.i.i = getelementptr inbounds %struct.percpu_counter, ptr %fbc, i32 0, i32 3
  %7 = ptrtoint ptr %counters.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %counters.i.i, align 8
  %9 = ptrtoint ptr %8 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call129.i.i = phi i32 [ %call126.i.i, %for.body.lr.ph.i.i ], [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %ret.028.i.i = phi i64 [ %5, %for.body.lr.ph.i.i ], [ %add10.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call129.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %11, %9
  %12 = inttoptr i32 %add.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %conv9.i.i = sext i32 %14 to i64
  %add10.i.i = add i64 %ret.028.i.i, %conv9.i.i
  %call1.i.i = tail call i32 @cpumask_next(i32 noundef %call129.i.i, ptr noundef nonnull @__cpu_online_mask) #10
  %cmp2.i.i = icmp ult i32 %call1.i.i, %6
  br i1 %cmp2.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.percpu_counter_sum.exit_crit_edge

for.body.i.i.percpu_counter_sum.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %percpu_counter_sum.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

percpu_counter_sum.exit:                          ; preds = %for.body.i.i.percpu_counter_sum.exit_crit_edge, %if.end.percpu_counter_sum.exit_crit_edge
  %ret.0.lcssa.i.i = phi i64 [ %5, %if.end.percpu_counter_sum.exit_crit_edge ], [ %add10.i.i, %for.body.i.i.percpu_counter_sum.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fbc, i32 noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %ret.0.lcssa.i.i, i64 %rhs)
  %cmp9 = icmp sgt i64 %ret.0.lcssa.i.i, %rhs
  br i1 %cmp9, label %percpu_counter_sum.exit.cleanup_crit_edge, label %if.else12

percpu_counter_sum.exit.cleanup_crit_edge:        ; preds = %percpu_counter_sum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else12:                                        ; preds = %percpu_counter_sum.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %ret.0.lcssa.i.i, i64 %rhs)
  %cmp13 = icmp slt i64 %ret.0.lcssa.i.i, %rhs
  %.26 = sext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %percpu_counter_sum.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 1, %percpu_counter_sum.exit.cleanup_crit_edge ], [ %.26, %if.else12 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @percpu_counter_startup() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.6, i1 noundef zeroext true, ptr noundef nonnull @compute_batch_value, ptr noundef null, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 250, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i54 = tail call i32 @__cpuhp_setup_state(i32 noundef 31, ptr noundef nonnull @.str.8, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @percpu_counter_cpu_dead, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp21 = icmp slt i32 %call.i54, 0
  br i1 %cmp21, label %do.end37, label %if.end.if.end43_crit_edge, !prof !56

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 254, i32 noundef 9, ptr noundef null) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end37, %if.end.if.end43_crit_edge
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @percpu_counter_fixup_free(ptr noundef %addr, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @percpu_counter_destroy(ptr noundef %addr)
  tail call void @debug_object_free(ptr noundef %addr, ptr noundef nonnull @percpu_counter_debug_descr) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_deactivate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compute_batch_value(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = shl i32 %0, 1
  %1 = tail call i32 @llvm.smax.i32(i32 %mul, i32 32)
  store i32 %1, ptr @percpu_counter_batch, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @percpu_counter_cpu_dead(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul.i = shl i32 %0, 1
  %1 = tail call i32 @llvm.smax.i32(i32 %mul.i, i32 32) #9
  store i32 %1, ptr @percpu_counter_batch, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @percpu_counters_lock) #9
  %.pn16 = load ptr, ptr @percpu_counters, align 4
  %cmp.not17 = icmp eq ptr %.pn16, @percpu_counters
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn18 = phi ptr [ %.pn16, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %fbc.0 = getelementptr i8, ptr %.pn18, i32 -56
  tail call void @_raw_spin_lock(ptr noundef %fbc.0) #9
  %counters = getelementptr i8, ptr %.pn18, i32 8
  %2 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %counters, align 8
  %4 = ptrtoint ptr %3 to i32
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv = sext i32 %9 to i64
  %count = getelementptr i8, ptr %.pn18, i32 -8
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count, align 8
  %add3 = add i64 %11, %conv
  store i64 %add3, ptr %count, align 8
  store i32 0, ptr %7, align 4
  tail call void @_raw_spin_unlock(ptr noundef %fbc.0) #9
  %12 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, @percpu_counters
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @percpu_counters_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_percpu_counter_set, !1, !"__ksymtab_percpu_counter_set", i1 false, i1 false}
!1 = !{!"../lib/percpu_counter.c", i32 73, i32 1}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/percpu_counter.c", i32 87, i32 10}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/percpu_counter.c", i32 92, i32 3}
!6 = !{ptr @__ksymtab_percpu_counter_add_batch, !7, !"__ksymtab_percpu_counter_add_batch", i1 false, i1 false}
!7 = !{!"../lib/percpu_counter.c", i32 99, i32 1}
!8 = !{ptr @__ksymtab_percpu_counter_sync, !9, !"__ksymtab_percpu_counter_sync", i1 false, i1 false}
!9 = !{!"../lib/percpu_counter.c", i32 118, i32 1}
!10 = !{ptr @__ksymtab___percpu_counter_sum, !11, !"__ksymtab___percpu_counter_sum", i1 false, i1 false}
!11 = !{!"../lib/percpu_counter.c", i32 139, i32 1}
!12 = !{ptr @__percpu_counter_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../lib/percpu_counter.c", i32 146, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/percpu_counter.c", i32 147, i32 2}
!17 = !{ptr @__ksymtab___percpu_counter_init, !18, !"__ksymtab___percpu_counter_init", i1 false, i1 false}
!18 = !{!"../lib/percpu_counter.c", i32 163, i32 1}
!19 = !{ptr @__ksymtab_percpu_counter_destroy, !20, !"__ksymtab_percpu_counter_destroy", i1 false, i1 false}
!20 = !{!"../lib/percpu_counter.c", i32 182, i32 1}
!21 = !{ptr @percpu_counter_batch, !22, !"percpu_counter_batch", i1 false, i1 false}
!22 = !{!"../lib/percpu_counter.c", i32 184, i32 5}
!23 = !{ptr @__ksymtab_percpu_counter_batch, !24, !"__ksymtab_percpu_counter_batch", i1 false, i1 false}
!24 = !{!"../lib/percpu_counter.c", i32 185, i32 1}
!25 = !{ptr @__ksymtab___percpu_counter_compare, !26, !"__ksymtab___percpu_counter_compare", i1 false, i1 false}
!26 = !{!"../lib/percpu_counter.c", i32 242, i32 1}
!27 = !{ptr @__initcall__kmod_percpu_counter__173_257_percpu_counter_startup6, !28, !"__initcall__kmod_percpu_counter__173_257_percpu_counter_startup6", i1 false, i1 false}
!28 = !{!"../lib/percpu_counter.c", i32 257, i32 1}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/percpu_counter.c", i32 37, i32 11}
!31 = !{ptr @percpu_counter_debug_descr, !32, !"percpu_counter_debug_descr", i1 false, i1 false}
!32 = !{!"../lib/percpu_counter.c", i32 36, i32 37}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/percpu_counter.c", i32 15, i32 8}
!35 = !{ptr @percpu_counters_lock, !34, !"percpu_counters_lock", i1 false, i1 false}
!36 = !{ptr @percpu_counters, !37, !"percpu_counters", i1 false, i1 false}
!37 = !{!"../lib/percpu_counter.c", i32 14, i32 8}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/percpu_counter.c", i32 248, i32 47}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/percpu_counter.c", i32 250, i32 2}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/percpu_counter.c", i32 252, i32 6}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2152299187}
!54 = !{i64 891182, i64 891243}
!55 = !{i64 893914}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 894199}
!58 = !{i64 2152323939}
