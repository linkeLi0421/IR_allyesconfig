; ModuleID = '/llk/IR_all_yes/kernel/power/wakelock.c_pt.bc'
source_filename = "../kernel/power/wakelock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wakelock = type { ptr, %struct.rb_node, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }

@wakelocks_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wakelocks_lock, i64 52), ptr getelementptr (i8, ptr @wakelocks_lock, i64 52) }, ptr @wakelocks_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@wakelocks_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wakelocks_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakelocks_lock\00", [17 x i8] zeroinitializer }, align 32
@number_of_wakelocks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wakelocks_lru_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @wakelocks_lru_list, ptr @wakelocks_lru_list }, [24 x i8] zeroinitializer }, align 32
@wakelocks_gc_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@wakelock_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @wakelock_work, i64 4), ptr getelementptr (i8, ptr @wakelock_work, i64 4) }, ptr @__wakelocks_gc, %struct.lockdep_map { ptr @wakelock_work, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakelock_work\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"wakelocks_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"wakelocks_tree\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 36, i32 23 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 49, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 52, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 25, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"number_of_wakelocks\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 59, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"wakelocks_lru_list\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 86, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"wakelocks_gc_count\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 88, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"wakelock_work\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [27 x i8] c"../kernel/power/wakelock.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 87, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @wakelocks_lock, ptr @wakelocks_tree, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @number_of_wakelocks, ptr @wakelocks_lru_list, ptr @wakelocks_gc_count, ptr @wakelock_work, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakelocks_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakelocks_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @number_of_wakelocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakelocks_lru_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakelocks_gc_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakelock_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_show_wakelocks(ptr noundef %buf, i1 noundef zeroext %show_active) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @wakelocks_lock, i32 noundef 0) #5
  %call = tail call ptr @rb_first(ptr noundef nonnull @wakelocks_tree) #5
  %tobool.not16 = icmp eq ptr %call, null
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = zext i1 %show_active to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.018 = phi ptr [ %call, %for.body.lr.ph ], [ %call5, %for.inc.for.body_crit_edge ]
  %len.017 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %ws = getelementptr i8, ptr %node.018, i32 12
  %1 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ws, align 4
  %active = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %active, align 8
  %bf.load.lobit = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.load.lobit, i8 %0)
  %cmp = icmp eq i8 %bf.load.lobit, %0
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %node.018, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.017, ptr noundef nonnull @.str, ptr noundef %5) #5
  %add = add i32 %call4, %len.017
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add, %if.then ], [ %len.017, %for.body.for.inc_crit_edge ]
  %call5 = tail call ptr @rb_next(ptr noundef nonnull %node.018) #5
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.1, %for.inc.for.end_crit_edge ]
  %call6 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.0.lcssa, ptr noundef nonnull @.str.1) #5
  %add7 = add i32 %call6, %len.0.lcssa
  tail call void @mutex_unlock(ptr noundef nonnull @wakelocks_lock) #5
  ret i32 %add7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_wake_lock(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %timeout_ns = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timeout_ns) #5
  %0 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %timeout_ns, align 8
  %call = tail call zeroext i1 @capable(i32 noundef 36) #5
  br i1 %call, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not319 = icmp eq i8 %2, 0
  br i1 %tobool.not319, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %3 = phi i8 [ %8, %while.body.land.rhs_crit_edge ], [ %2, %while.cond.preheader.land.rhs_crit_edge ]
  %str.0320 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %buf, %while.cond.preheader.land.rhs_crit_edge ]
  %conv = zext i8 %3 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %str.0320, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %str.0.lcssa = phi ptr [ %str.0320, %land.rhs.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %.lcssa = phi i8 [ %3, %land.rhs.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %str.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %tobool4.not = icmp eq ptr %str.0.lcssa, %buf
  br i1 %tobool4.not, label %while.end.cleanup_crit_edge, label %if.end6

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %while.end
  %9 = zext i8 %.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.lcssa, label %if.then12 [
    i8 0, label %if.end6.if.end18_crit_edge
    i8 10, label %if.end6.if.end18_crit_edge330
  ]

if.end6.if.end18_crit_edge330:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12:                                        ; preds = %if.end6
  %call13 = tail call ptr @skip_spaces(ptr noundef %str.0.lcssa) #5
  %call.i = call i32 @kstrtoull(ptr noundef %call13, i32 noundef 10, ptr noundef nonnull %timeout_ns) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.then12.if.end18_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end6.if.end18_crit_edge, %if.end6.if.end18_crit_edge330
  call void @mutex_lock_nested(ptr noundef nonnull @wakelocks_lock, i32 noundef 0) #5
  %call19 = call fastcc ptr @wakelock_lookup_add(ptr noundef %buf, i32 noundef %sub.ptr.sub, i1 noundef zeroext true)
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call19 to i32
  br label %out

if.end23:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timeout_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool24.not = icmp eq i64 %12, 0
  br i1 %tobool24.not, label %if.else218, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i64 %12, 999999
  %13 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub) #8, !srcloc !28
  %14 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub, i64 %13, i32 0) #8, !srcloc !29
  %asmresult10.i = extractvalue { i64, i32 } %14, 0
  %div194318 = lshr i64 %asmresult10.i, 18
  %ws = getelementptr inbounds %struct.wakelock, ptr %call19, i32 0, i32 2
  %15 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ws, align 4
  %conv217 = trunc i64 %div194318 to i32
  call void @pm_wakeup_ws_event(ptr noundef %16, i32 noundef %conv217, i1 noundef zeroext false) #5
  br label %if.end220

if.else218:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %ws219 = getelementptr inbounds %struct.wakelock, ptr %call19, i32 0, i32 2
  %17 = ptrtoint ptr %ws219 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ws219, align 4
  call void @__pm_stay_awake(ptr noundef %18) #5
  br label %if.end220

if.end220:                                        ; preds = %if.else218, %if.then25
  %lru.i = getelementptr inbounds %struct.wakelock, ptr %call19, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end220.__list_del_entry.exit.i.i_crit_edge

if.end220.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.wakelock, ptr %call19, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end220.__list_del_entry.exit.i.i_crit_edge
  %25 = load ptr, ptr @wakelocks_lru_list, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lru.i, ptr noundef nonnull @wakelocks_lru_list, ptr noundef %25) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.out_crit_edge

__list_del_entry.exit.i.i.out_crit_edge:          ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lru.i, ptr %prev1.i.i1.i.i, align 4
  %27 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %lru.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.wakelock, ptr %call19, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @wakelocks_lru_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %lru.i, ptr @wakelocks_lru_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.out_crit_edge, %if.then21
  %ret.1 = phi i32 [ %10, %if.then21 ], [ 0, %__list_del_entry.exit.i.i.out_crit_edge ], [ 0, %if.end.i.i.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @wakelocks_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then12.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -1, %entry.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -22, %if.then12.cleanup_crit_edge ], [ -22, %while.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timeout_ns) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wakelock_lookup_add(ptr noundef %name, i32 noundef %len, i1 noundef zeroext %add_if_not_found) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @wakelocks_tree, align 4
  %tobool.not80 = icmp eq ptr %0, null
  br i1 %tobool.not80, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.condthread-pre-split:                       ; preds = %if.else8, %if.then7
  %node.2.ph = phi ptr [ %rb_right, %if.else8 ], [ %rb_left, %if.then7 ]
  %1 = ptrtoint ptr %node.2.ph to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pr = load ptr, ptr %node.2.ph, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %while.condthread-pre-split.while.end_crit_edge, label %while.condthread-pre-split.while.body_crit_edge

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.condthread-pre-split.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %.pr, %while.condthread-pre-split.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef %4, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %4, i32 %len
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %cleanup42.loopexit, label %if.then.if.then7_crit_edge

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end5:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end5.if.then7_crit_edge, label %if.else8

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %while.condthread-pre-split

if.else8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %while.condthread-pre-split

while.end:                                        ; preds = %while.condthread-pre-split.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %2, %while.condthread-pre-split.while.end_crit_edge ]
  %node.0.lcssa = phi ptr [ @wakelocks_tree, %entry.while.end_crit_edge ], [ %node.2.ph, %while.condthread-pre-split.while.end_crit_edge ]
  br i1 %add_if_not_found, label %if.end13, label %while.end.cleanup42_crit_edge

while.end.cleanup42_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end13:                                         ; preds = %while.end
  %7 = load i32, ptr @number_of_wakelocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp.i = icmp ugt i32 %7, 100
  br i1 %cmp.i, label %if.end13.cleanup42_crit_edge, label %if.end17

if.end13.cleanup42_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end17:                                         ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #9
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup42_crit_edge, label %if.end22

if.end17.cleanup42_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end22:                                         ; preds = %if.end17
  %call23 = tail call ptr @kstrndup(ptr noundef %name, i32 noundef %len, i32 noundef 3264) #5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %call7.i.i, align 8
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup42

if.end29:                                         ; preds = %if.end22
  %call31 = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef nonnull %call23) #5
  %ws = getelementptr inbounds %struct.wakelock, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call31, ptr %ws, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %12) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup42

if.end37:                                         ; preds = %if.end29
  %call38 = tail call i64 @ktime_get() #5
  %13 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ws, align 8
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %last_time to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call38, ptr %last_time, align 8
  %node40 = getelementptr inbounds %struct.wakelock, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %parent.0.lcssa to i32
  %17 = ptrtoint ptr %node40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %node40, align 4
  %rb_right.i = getelementptr inbounds %struct.wakelock, ptr %call7.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_right.i, align 8
  %rb_left.i = getelementptr inbounds %struct.wakelock, ptr %call7.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_left.i, align 4
  %20 = ptrtoint ptr %node.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node40, ptr %node.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %node40, ptr noundef nonnull @wakelocks_tree) #5
  %lru.i = getelementptr inbounds %struct.wakelock, ptr %call7.i.i, i32 0, i32 3
  %21 = load ptr, ptr @wakelocks_lru_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru.i, ptr noundef nonnull @wakelocks_lru_list, ptr noundef %21) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end37.wakelocks_lru_add.exit_crit_edge

if.end37.wakelocks_lru_add.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %wakelocks_lru_add.exit

if.end.i.i.i:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lru.i, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %lru.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wakelock, ptr %call7.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wakelocks_lru_list, ptr %prev3.i.i.i, align 8
  store volatile ptr %lru.i, ptr @wakelocks_lru_list, align 4
  br label %wakelocks_lru_add.exit

wakelocks_lru_add.exit:                           ; preds = %if.end.i.i.i, %if.end37.wakelocks_lru_add.exit_crit_edge
  %25 = load i32, ptr @number_of_wakelocks, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr @number_of_wakelocks, align 4
  br label %cleanup42

cleanup42.loopexit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.le = getelementptr i8, ptr %2, i32 -4
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup42.loopexit, %wakelocks_lru_add.exit, %if.then34, %if.then27, %if.end17.cleanup42_crit_edge, %if.end13.cleanup42_crit_edge, %while.end.cleanup42_crit_edge
  %retval.2 = phi ptr [ %call7.i.i, %wakelocks_lru_add.exit ], [ inttoptr (i32 -12 to ptr), %if.then34 ], [ inttoptr (i32 -12 to ptr), %if.then27 ], [ inttoptr (i32 -22 to ptr), %while.end.cleanup42_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end13.cleanup42_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end17.cleanup42_crit_edge ], [ %add.ptr.le, %cleanup42.loopexit ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_wake_unlock(ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 36) #5
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strlen(ptr noundef %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = add i32 %call1, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp = icmp eq i8 %1, 10
  %spec.select = select i1 %cmp, i32 %sub, i32 %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  tail call void @mutex_lock_nested(ptr noundef nonnull @wakelocks_lock, i32 noundef 0) #5
  %2 = load ptr, ptr @wakelocks_tree, align 4
  %tobool.not80.i = icmp eq ptr %2, null
  br i1 %tobool.not80.i, label %if.end9.if.then12_crit_edge, label %if.end9.while.body.i_crit_edge

if.end9.while.body.i_crit_edge:                   ; preds = %if.end9
  br label %while.body.i

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

while.condthread-pre-split.i:                     ; preds = %if.else8.i, %if.then7.i
  %node.2.ph.i = phi ptr [ %rb_right.i, %if.else8.i ], [ %rb_left.i, %if.then7.i ]
  %3 = ptrtoint ptr %node.2.ph.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr.i = load ptr, ptr %node.2.ph.i, align 4
  %tobool.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i, label %while.condthread-pre-split.i.if.then12_crit_edge, label %while.condthread-pre-split.i.while.body.i_crit_edge

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.condthread-pre-split.i.if.then12_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

while.body.i:                                     ; preds = %while.condthread-pre-split.i.while.body.i_crit_edge, %if.end9.while.body.i_crit_edge
  %4 = phi ptr [ %.pr.i, %while.condthread-pre-split.i.while.body.i_crit_edge ], [ %2, %if.end9.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef %6, i32 noundef %spec.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %while.body.i
  %arrayidx.i = getelementptr i8, ptr %6, i32 %spec.select
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i, label %wakelock_lookup_add.exit, label %if.then.i.if.then7.i_crit_edge

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end5.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.end5.i.if.then7.i_crit_edge, label %if.else8.i

if.end5.i.if.then7.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %while.condthread-pre-split.i

if.else8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %while.condthread-pre-split.i

wakelock_lookup_add.exit:                         ; preds = %if.then.i
  %add.ptr.i.le = getelementptr i8, ptr %4, i32 -4
  %cmp.i26 = icmp ugt ptr %add.ptr.i.le, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %wakelock_lookup_add.exit.if.then12_crit_edge, label %if.end14

wakelock_lookup_add.exit.if.then12_crit_edge:     ; preds = %wakelock_lookup_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %wakelock_lookup_add.exit.if.then12_crit_edge, %while.condthread-pre-split.i.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  %retval.2.i31 = phi ptr [ %add.ptr.i.le, %wakelock_lookup_add.exit.if.then12_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end9.if.then12_crit_edge ], [ inttoptr (i32 -22 to ptr), %while.condthread-pre-split.i.if.then12_crit_edge ]
  %9 = ptrtoint ptr %retval.2.i31 to i32
  br label %out

if.end14:                                         ; preds = %wakelock_lookup_add.exit
  %ws = getelementptr i8, ptr %4, i32 12
  %10 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ws, align 4
  tail call void @__pm_relax(ptr noundef %11) #5
  %lru.i = getelementptr i8, ptr %4, i32 16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end14.__list_del_entry.exit.i.i_crit_edge

if.end14.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %4, i32 20
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %lru.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lru.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end14.__list_del_entry.exit.i.i_crit_edge
  %18 = load ptr, ptr @wakelocks_lru_list, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru.i, ptr noundef nonnull @wakelocks_lru_list, ptr noundef %18) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.wakelocks_lru_most_recent.exit_crit_edge

__list_del_entry.exit.i.i.wakelocks_lru_most_recent.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wakelocks_lru_most_recent.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lru.i, ptr %prev1.i.i1.i.i, align 4
  %20 = ptrtoint ptr %lru.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %lru.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %4, i32 20
  %21 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wakelocks_lru_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %lru.i, ptr @wakelocks_lru_list, align 4
  br label %wakelocks_lru_most_recent.exit

wakelocks_lru_most_recent.exit:                   ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.wakelocks_lru_most_recent.exit_crit_edge
  %22 = load i32, ptr @wakelocks_gc_count, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr @wakelocks_gc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %inc.i)
  %cmp.i27 = icmp ult i32 %inc.i, 101
  br i1 %cmp.i27, label %wakelocks_lru_most_recent.exit.out_crit_edge, label %if.end.i

wakelocks_lru_most_recent.exit.out_crit_edge:     ; preds = %wakelocks_lru_most_recent.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %wakelocks_lru_most_recent.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i.i28 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef nonnull @wakelock_work) #5
  br label %out

out:                                              ; preds = %if.end.i, %wakelocks_lru_most_recent.exit.out_crit_edge, %if.then12
  %ret.0 = phi i32 [ %9, %if.then12 ], [ 0, %wakelocks_lru_most_recent.exit.out_crit_edge ], [ 0, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @wakelocks_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_source_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_ws_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__wakelocks_gc(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @wakelocks_lock, i32 noundef 0) #5
  %call = tail call i64 @ktime_get() #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @wakelocks_lru_list, i32 0, i32 1), align 4
  %cmp.not40 = icmp eq ptr %0, @wakelocks_lru_list
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn3341 = phi ptr [ %.pn45, %cleanup.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %wl.043 = getelementptr i8, ptr %.pn3341, i32 -20
  %.pn.in44 = getelementptr inbounds %struct.list_head, ptr %.pn3341, i32 0, i32 1
  %1 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn45 = load ptr, ptr %.pn.in44, align 4
  %ws = getelementptr i8, ptr %.pn3341, i32 -4
  %2 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ws, align 4
  %lock = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %4 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ws, align 4
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %last_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_time, align 8
  %sub = sub i64 %call, %7
  %active8 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %active8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %active8, align 8
  %lock10 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock10) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 300000000000, i64 %sub)
  %cmp11 = icmp ult i64 %sub, 300000000000
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %9 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ws, align 4
  tail call void @wakeup_source_unregister(ptr noundef %10) #5
  %node = getelementptr i8, ptr %.pn3341, i32 -16
  tail call void @rb_erase(ptr noundef %node, ptr noundef nonnull @wakelocks_tree) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn3341) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del.exit_crit_edge

if.then12.list_del.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in44, align 4
  %13 = ptrtoint ptr %.pn3341 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn3341, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then12.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn3341 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn3341, align 4
  %18 = ptrtoint ptr %.pn.in44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %.pn.in44, align 4
  %19 = ptrtoint ptr %wl.043 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wl.043, align 4
  tail call void @kfree(ptr noundef %20) #5
  tail call void @kfree(ptr noundef %wl.043) #5
  %21 = load i32, ptr @number_of_wakelocks, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr @number_of_wakelocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end.cleanup_crit_edge
  %cmp.not = icmp eq ptr %.pn45, @wakelocks_lru_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  store i32 0, ptr @wakelocks_gc_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @wakelocks_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_source_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/power/wakelock.c", i32 49, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/power/wakelock.c", i32 52, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/power/wakelock.c", i32 25, i32 8}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @wakelocks_lock, !5, !"wakelocks_lock", i1 false, i1 false}
!8 = !{ptr @wakelocks_tree, !9, !"wakelocks_tree", i1 false, i1 false}
!9 = !{!"../kernel/power/wakelock.c", i32 36, i32 23}
!10 = !{ptr @number_of_wakelocks, !11, !"number_of_wakelocks", i1 false, i1 false}
!11 = !{!"../kernel/power/wakelock.c", i32 59, i32 21}
!12 = !{ptr @wakelocks_lru_list, !13, !"wakelocks_lru_list", i1 false, i1 false}
!13 = !{!"../kernel/power/wakelock.c", i32 86, i32 8}
!14 = !{ptr @wakelocks_gc_count, !15, !"wakelocks_gc_count", i1 false, i1 false}
!15 = !{!"../kernel/power/wakelock.c", i32 88, i32 21}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/power/wakelock.c", i32 87, i32 8}
!18 = !{ptr @wakelock_work, !17, !"wakelock_work", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 862195, i64 862222}
!29 = !{i64 862890, i64 862917, i64 862950, i64 862971, i64 862998, i64 863024}
