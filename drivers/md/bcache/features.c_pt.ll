; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/features.c_pt.bc'
source_filename = "../drivers/md/bcache/features.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.feature = type { i32, i32, ptr }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.95, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.90 }
%struct.rb_root = type { ptr }
%struct.anon.90 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.91, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.91 = type { [8 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.95 = type { [8 x i64] }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.96, %union.anon.97, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.96 = type { i32, i32, i32, i32, ptr }
%union.anon.97 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.87], %struct.anon.88, i32, ptr, %struct.anon.89, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.71, [32 x i8], i64, i64, i64, i64, i64, %union.anon.72, i32, i16, %union.anon.75, [256 x i64] }
%union.anon.71 = type { i64, [8 x i8] }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i16, i16, i16, i32 }
%union.anon.75 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.87 = type { i32, i32, i32, i32, ptr }
%struct.anon.88 = type { i32, i32, i32, i32, ptr }
%struct.anon.89 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }

@feature_list = internal constant { [2 x %struct.feature], [40 x i8] } { [2 x %struct.feature] [%struct.feature { i32 2, i32 2, ptr @.str.6 }, %struct.feature zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"[\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" [\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"large_bucket\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"feature_list\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 19, i32 23 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 59, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [32 x i8] c"../drivers/md/bcache/features.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 21, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @feature_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feature_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_print_cache_set_feature_compat(ptr nocapture noundef readnone %c, ptr nocapture noundef readnone %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_print_cache_set_feature_ro_compat(ptr nocapture noundef readonly %c, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %size
  %sub.ptr.lhs.cast8 = ptrtoint ptr %add.ptr7 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %out.0 = phi ptr [ %buf, %entry ], [ %out.3, %for.inc ]
  %f.0 = phi ptr [ @feature_list, %entry ], [ %incdec.ptr, %for.inc ]
  %first.0.off0 = phi i1 [ true, %entry ], [ %first.1.off0, %for.inc ]
  %0 = ptrtoint ptr %f.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f.0, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %for.cond.for.inc_crit_edge [
    i32 0, label %for.end
    i32 1, label %if.end
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.cond
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache, align 4
  %feature_ro_compat = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %feature_ro_compat to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %feature_ro_compat, align 8
  %mask = getelementptr inbounds %struct.feature, ptr %f.0, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %conv = zext i32 %8 to i64
  %and = and i64 %6, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else14, label %if.then3

if.then3:                                         ; preds = %if.end
  %sub.ptr.rhs.cast = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast
  br i1 %first.0.off0, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str)
  %add.ptr6 = getelementptr i8, ptr %out.0, i32 %call
  br label %if.end24

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.1)
  %add.ptr12 = getelementptr i8, ptr %out.0, i32 %call11
  br label %if.end24

if.else14:                                        ; preds = %if.end
  br i1 %first.0.off0, label %if.else14.if.end24_crit_edge, label %if.then16

if.else14.if.end24_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast19 = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub20 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast19
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub20, ptr noundef nonnull @.str.2)
  %add.ptr22 = getelementptr i8, ptr %out.0, i32 %call21
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.else14.if.end24_crit_edge, %if.else, %if.then5
  %out.1 = phi ptr [ %add.ptr6, %if.then5 ], [ %add.ptr12, %if.else ], [ %out.0, %if.else14.if.end24_crit_edge ], [ %add.ptr22, %if.then16 ]
  %sub.ptr.rhs.cast27 = ptrtoint ptr %out.1 to i32
  %sub.ptr.sub28 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast27
  %string = getelementptr inbounds %struct.feature, ptr %f.0, i32 0, i32 2
  %9 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %string, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.1, i32 noundef %sub.ptr.sub28, ptr noundef nonnull @.str.3, ptr noundef %10)
  %add.ptr30 = getelementptr i8, ptr %out.1, i32 %call29
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %feature_ro_compat33 = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %feature_ro_compat33 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %feature_ro_compat33, align 8
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %conv35 = zext i32 %16 to i64
  %and36 = and i64 %14, %conv35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %if.end24.for.inc_crit_edge, label %if.then38

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast41 = ptrtoint ptr %add.ptr30 to i32
  %sub.ptr.sub42 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast41
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr30, i32 noundef %sub.ptr.sub42, ptr noundef nonnull @.str.4)
  %add.ptr44 = getelementptr i8, ptr %add.ptr30, i32 %call43
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %if.end24.for.inc_crit_edge, %for.cond.for.inc_crit_edge
  %out.3 = phi ptr [ %out.0, %for.cond.for.inc_crit_edge ], [ %add.ptr44, %if.then38 ], [ %add.ptr30, %if.end24.for.inc_crit_edge ]
  %first.1.off0 = phi i1 [ %first.0.off0, %for.cond.for.inc_crit_edge ], [ false, %if.then38 ], [ false, %if.end24.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.feature, ptr %f.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %first.0.off0, label %for.end.if.end54_crit_edge, label %if.then47

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast50 = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub51 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast50
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub51, ptr noundef nonnull @.str.5)
  %add.ptr53 = getelementptr i8, ptr %out.0, i32 %call52
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %for.end.if.end54_crit_edge
  %out.4 = phi ptr [ %out.0, %for.end.if.end54_crit_edge ], [ %add.ptr53, %if.then47 ]
  %sub.ptr.lhs.cast55 = ptrtoint ptr %out.4 to i32
  %sub.ptr.rhs.cast56 = ptrtoint ptr %buf to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  ret i32 %sub.ptr.sub57
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_print_cache_set_feature_incompat(ptr nocapture noundef readonly %c, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %size
  %sub.ptr.lhs.cast8 = ptrtoint ptr %add.ptr7 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %out.0 = phi ptr [ %buf, %entry ], [ %out.3, %for.inc ]
  %f.0 = phi ptr [ @feature_list, %entry ], [ %incdec.ptr, %for.inc ]
  %first.0.off0 = phi i1 [ true, %entry ], [ %first.1.off0, %for.inc ]
  %0 = ptrtoint ptr %f.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f.0, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %for.cond.for.inc_crit_edge [
    i32 0, label %for.end
    i32 2, label %if.end
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.cond
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache, align 4
  %feature_incompat = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 1, i32 9
  %5 = ptrtoint ptr %feature_incompat to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %feature_incompat, align 8
  %mask = getelementptr inbounds %struct.feature, ptr %f.0, i32 0, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %conv = zext i32 %8 to i64
  %and = and i64 %6, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else14, label %if.then3

if.then3:                                         ; preds = %if.end
  %sub.ptr.rhs.cast = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast
  br i1 %first.0.off0, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str)
  %add.ptr6 = getelementptr i8, ptr %out.0, i32 %call
  br label %if.end24

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.1)
  %add.ptr12 = getelementptr i8, ptr %out.0, i32 %call11
  br label %if.end24

if.else14:                                        ; preds = %if.end
  br i1 %first.0.off0, label %if.else14.if.end24_crit_edge, label %if.then16

if.else14.if.end24_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast19 = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub20 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast19
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub20, ptr noundef nonnull @.str.2)
  %add.ptr22 = getelementptr i8, ptr %out.0, i32 %call21
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.else14.if.end24_crit_edge, %if.else, %if.then5
  %out.1 = phi ptr [ %add.ptr6, %if.then5 ], [ %add.ptr12, %if.else ], [ %out.0, %if.else14.if.end24_crit_edge ], [ %add.ptr22, %if.then16 ]
  %sub.ptr.rhs.cast27 = ptrtoint ptr %out.1 to i32
  %sub.ptr.sub28 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast27
  %string = getelementptr inbounds %struct.feature, ptr %f.0, i32 0, i32 2
  %9 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %string, align 4
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.1, i32 noundef %sub.ptr.sub28, ptr noundef nonnull @.str.3, ptr noundef %10)
  %add.ptr30 = getelementptr i8, ptr %out.1, i32 %call29
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %feature_incompat33 = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 1, i32 9
  %13 = ptrtoint ptr %feature_incompat33 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %feature_incompat33, align 8
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %conv35 = zext i32 %16 to i64
  %and36 = and i64 %14, %conv35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %if.end24.for.inc_crit_edge, label %if.then38

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast41 = ptrtoint ptr %add.ptr30 to i32
  %sub.ptr.sub42 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast41
  %call43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr30, i32 noundef %sub.ptr.sub42, ptr noundef nonnull @.str.4)
  %add.ptr44 = getelementptr i8, ptr %add.ptr30, i32 %call43
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %if.end24.for.inc_crit_edge, %for.cond.for.inc_crit_edge
  %out.3 = phi ptr [ %out.0, %for.cond.for.inc_crit_edge ], [ %add.ptr44, %if.then38 ], [ %add.ptr30, %if.end24.for.inc_crit_edge ]
  %first.1.off0 = phi i1 [ %first.0.off0, %for.cond.for.inc_crit_edge ], [ false, %if.then38 ], [ false, %if.end24.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.feature, ptr %f.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %first.0.off0, label %for.end.if.end54_crit_edge, label %if.then47

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast50 = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub51 = sub i32 %sub.ptr.lhs.cast8, %sub.ptr.rhs.cast50
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %out.0, i32 noundef %sub.ptr.sub51, ptr noundef nonnull @.str.5)
  %add.ptr53 = getelementptr i8, ptr %out.0, i32 %call52
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %for.end.if.end54_crit_edge
  %out.4 = phi ptr [ %out.0, %for.end.if.end54_crit_edge ], [ %add.ptr53, %if.then47 ]
  %sub.ptr.lhs.cast55 = ptrtoint ptr %out.4 to i32
  %sub.ptr.rhs.cast56 = ptrtoint ptr %buf to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  ret i32 %sub.ptr.sub57
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/features.c", i32 59, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/md/bcache/features.c", i32 21, i32 3}
!9 = !{ptr @feature_list, !10, !"feature_list", i1 false, i1 false}
!10 = !{!"../drivers/md/bcache/features.c", i32 19, i32 23}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
