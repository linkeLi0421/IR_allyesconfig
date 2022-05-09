; ModuleID = '/llk/IR_all_yes/kernel/bpf/percpu_freelist.c_pt.bc'
source_filename = "../kernel/bpf/percpu_freelist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pcpu_freelist_head = type { ptr, %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pcpu_freelist = type { ptr, %struct.pcpu_freelist_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@pcpu_freelist_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&head->lock\00", [20 x i8] zeroinitializer }, align 32
@pcpu_freelist_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&s->extralist.lock\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 17, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [32 x i8] c"../kernel/bpf/percpu_freelist.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 20, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @pcpu_freelist_init.__key, ptr @.str, ptr @pcpu_freelist_init.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_freelist_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_freelist_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcpu_freelist_init(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 48, i32 noundef 4) #8
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %s, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call221 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call221, i32 %1)
  %cmp22 = icmp ult i32 %call221, %1
  br i1 %cmp22, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body8_crit_edge

for.cond.preheader.do.body8_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call223 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ %call221, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call223
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.pcpu_freelist_head, ptr %7, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @pcpu_freelist_init.__key, i16 noundef signext 2) #5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call223, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body8_crit_edge

for.body.do.body8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body8:                                         ; preds = %for.body.do.body8_crit_edge, %for.cond.preheader.do.body8_crit_edge
  %extralist = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1
  %lock9 = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock9, ptr noundef nonnull @.str.2, ptr noundef nonnull @pcpu_freelist_init.__key.1, i16 noundef signext 2) #5
  %10 = ptrtoint ptr %extralist to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %extralist, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcpu_freelist_destroy(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  tail call void @free_percpu(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pcpu_freelist_push(ptr noundef %s, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i5 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i5 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i, align 4
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 4
  %10 = ptrtoint ptr %9 to i32
  %arrayidx25.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %11 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx25.i, align 4
  %add26.i = add i32 %12, %10
  %13 = inttoptr i32 %add26.i to ptr
  %lock27.i = getelementptr inbounds %struct.pcpu_freelist_head, ptr %13, i32 0, i32 1
  %call328.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328.i)
  %tobool.not29.i = icmp eq i32 %call328.i, 0
  br i1 %tobool.not29.i, label %if.end.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.lr.ph.i:                                   ; preds = %if.then
  %lock.i.i = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %cpu.030.i = phi i32 [ %7, %if.end.lr.ph.i ], [ %spec.store.select.i, %cleanup.i.if.end.i_crit_edge ]
  %call5.i = tail call i32 @cpumask_next(i32 noundef %cpu.030.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %14)
  %cmp.not.i = icmp ult i32 %call5.i, %14
  %spec.store.select.i = select i1 %cmp.not.i, i32 %call5.i, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %7)
  %cmp8.i = icmp eq i32 %spec.store.select.i, %7
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %pcpu_freelist_try_push_extra.exit.thread.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

pcpu_freelist_try_push_extra.exit.thread.i:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %extralist.i.i = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1
  br label %if.end

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  %15 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s, align 4
  %17 = ptrtoint ptr %16 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %spec.store.select.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %17
  %20 = inttoptr i32 %add.i to ptr
  %lock.i = getelementptr inbounds %struct.pcpu_freelist_head, ptr %20, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock.i) #5
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cleanup.i.if.end.i_crit_edge, label %___pcpu_freelist_push_nmi.exit.loopexit

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

___pcpu_freelist_push_nmi.exit.loopexit:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = inttoptr i32 %add.i to ptr
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add = add i32 %30, %24
  %31 = inttoptr i32 %add to ptr
  %lock.i6 = getelementptr inbounds %struct.pcpu_freelist_head, ptr %31, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i6) #5
  br label %if.end

if.end:                                           ; preds = %do.body, %___pcpu_freelist_push_nmi.exit.loopexit, %pcpu_freelist_try_push_extra.exit.thread.i, %if.then.if.end_crit_edge
  %.sink8 = phi ptr [ %31, %do.body ], [ %extralist.i.i, %pcpu_freelist_try_push_extra.exit.thread.i ], [ %13, %if.then.if.end_crit_edge ], [ %21, %___pcpu_freelist_push_nmi.exit.loopexit ]
  %lock.i6.sink = phi ptr [ %lock.i6, %do.body ], [ %lock.i.i, %pcpu_freelist_try_push_extra.exit.thread.i ], [ %lock27.i, %if.then.if.end_crit_edge ], [ %lock.i, %___pcpu_freelist_push_nmi.exit.loopexit ]
  %32 = ptrtoint ptr %.sink8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.sink8, align 4
  %34 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %node, align 4
  store ptr %node, ptr %.sink8, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i6.sink) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcpu_freelist_push(ptr noundef %s, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !16
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then21, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pcpu_freelist_push(ptr noundef %s, ptr noundef %node)
  br label %do.body23

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  tail call void @__pcpu_freelist_push(ptr noundef %s, ptr noundef %node)
  tail call void @trace_hardirqs_on() #5
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !18

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcpu_freelist_populate(ptr nocapture noundef readonly %s, ptr noundef %buf, i32 noundef %elem_size, i32 noundef %nr_elems) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #5
  %div = udiv i32 %nr_elems, %call4.i.i
  %add = add i32 %div, 1
  %call115 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call115, i32 %1)
  %cmp16 = icmp ult i32 %call115, %1
  br i1 %cmp16, label %entry.again.preheader_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.again.preheader_crit_edge:                  ; preds = %entry
  br label %again.preheader

for.cond.loopexit:                                ; preds = %if.end
  %call1 = tail call i32 @cpumask_next(i32 noundef %call119, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %2
  br i1 %cmp, label %for.cond.loopexit.again.preheader_crit_edge, label %for.cond.loopexit.for.end_crit_edge

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.loopexit.again.preheader_crit_edge:      ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.preheader

again.preheader:                                  ; preds = %for.cond.loopexit.again.preheader_crit_edge, %entry.again.preheader_crit_edge
  %call119 = phi i32 [ %call1, %for.cond.loopexit.again.preheader_crit_edge ], [ %call115, %entry.again.preheader_crit_edge ]
  %buf.addr.018 = phi ptr [ %add.ptr, %for.cond.loopexit.again.preheader_crit_edge ], [ %buf, %entry.again.preheader_crit_edge ]
  %i.017 = phi i32 [ %inc, %for.cond.loopexit.again.preheader_crit_edge ], [ 0, %entry.again.preheader_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call119
  br label %again

again:                                            ; preds = %if.end.again_crit_edge, %again.preheader
  %i.1 = phi i32 [ %inc, %if.end.again_crit_edge ], [ %i.017, %again.preheader ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.end.again_crit_edge ], [ %buf.addr.018, %again.preheader ]
  %3 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add3 = add i32 %7, %5
  %8 = inttoptr i32 %add3 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %buf.addr.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %buf.addr.1, align 4
  store ptr %buf.addr.1, ptr %8, align 4
  %inc = add i32 %i.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_elems)
  %cmp4 = icmp eq i32 %inc, %nr_elems
  br i1 %cmp4, label %again.for.end_crit_edge, label %if.end

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %again
  %add.ptr = getelementptr i8, ptr %buf.addr.1, i32 %elem_size
  %rem = srem i32 %inc, %add
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %for.cond.loopexit, label %if.end.again_crit_edge

if.end.again_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %again

for.end:                                          ; preds = %again.for.end_crit_edge, %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__pcpu_freelist_pop(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = tail call i32 @llvm.read_register.i32(metadata !6) #5
  %and.i.i5 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i5 to ptr
  %cpu1.i6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i6, align 4
  br i1 %tobool.not, label %entry.while.cond.i12_crit_edge, label %entry.while.cond.i_crit_edge

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

entry.while.cond.i12_crit_edge:                   ; preds = %entry
  br label %while.cond.i12

while.cond.i:                                     ; preds = %if.end9.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %cpu.0.i = phi i32 [ %spec.store.select.i, %if.end9.i.while.cond.i_crit_edge ], [ %7, %entry.while.cond.i_crit_edge ]
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s, align 4
  %10 = ptrtoint ptr %9 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %10
  %13 = inttoptr i32 %add.i to ptr
  %lock.i = getelementptr inbounds %struct.pcpu_freelist_head, ptr %13, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end9.i_crit_edge, label %if.then.i

while.cond.i.if.end9.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i:                                        ; preds = %while.cond.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %if.end.i, label %cleanup.sink.split.sink.split.i.loopexit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i, %while.cond.i.if.end9.i_crit_edge
  %call10.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %16)
  %cmp.not.i = icmp ult i32 %call10.i, %16
  %spec.store.select.i = select i1 %cmp.not.i, i32 %call10.i, i32 0
  %cmp13.i = icmp eq i32 %spec.store.select.i, %7
  br i1 %cmp13.i, label %while.end.i, label %if.end9.i.while.cond.i_crit_edge

if.end9.i.while.cond.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end9.i
  %lock16.i = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1, i32 1
  %call17.i = tail call i32 @_raw_spin_trylock(ptr noundef %lock16.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %while.end.i.return_crit_edge, label %if.end20.i

while.end.i.return_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end20.i:                                       ; preds = %while.end.i
  %extralist.i = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1
  %17 = ptrtoint ptr %extralist.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extralist.i, align 4
  %tobool23.not.i = icmp eq ptr %18, null
  br i1 %tobool23.not.i, label %if.end20.i.return.sink.split_crit_edge, label %if.end20.i.return.sink.split.sink.split_crit_edge

if.end20.i.return.sink.split.sink.split_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.sink.split

if.end20.i.return.sink.split_crit_edge:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

cleanup.sink.split.sink.split.i.loopexit:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = inttoptr i32 %add.i to ptr
  br label %return.sink.split.sink.split

while.cond.i12:                                   ; preds = %if.end.i16.while.cond.i12_crit_edge, %entry.while.cond.i12_crit_edge
  %cpu.0.i7 = phi i32 [ %spec.store.select.i15, %if.end.i16.while.cond.i12_crit_edge ], [ %7, %entry.while.cond.i12_crit_edge ]
  %20 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s, align 4
  %22 = ptrtoint ptr %21 to i32
  %arrayidx.i8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0.i7
  %23 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i8, align 4
  %add.i9 = add i32 %24, %22
  %25 = inttoptr i32 %add.i9 to ptr
  %lock.i10 = getelementptr inbounds %struct.pcpu_freelist_head, ptr %25, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i10) #5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i11 = icmp eq ptr %27, null
  br i1 %tobool.not.i11, label %if.end.i16, label %cleanup.sink.split.i20.loopexit

if.end.i16:                                       ; preds = %while.cond.i12
  tail call void @_raw_spin_unlock(ptr noundef %lock.i10) #5
  %call6.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i7, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %28)
  %cmp.not.i14 = icmp ult i32 %call6.i, %28
  %spec.store.select.i15 = select i1 %cmp.not.i14, i32 %call6.i, i32 0
  %cmp9.i = icmp eq i32 %spec.store.select.i15, %7
  br i1 %cmp9.i, label %while.end.i18, label %if.end.i16.while.cond.i12_crit_edge

if.end.i16.while.cond.i12_crit_edge:              ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i12

while.end.i18:                                    ; preds = %if.end.i16
  %extralist.i17 = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1
  %lock12.i = getelementptr inbounds %struct.pcpu_freelist, ptr %s, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock12.i) #5
  %29 = ptrtoint ptr %extralist.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extralist.i17, align 4
  %tobool15.not.i = icmp eq ptr %30, null
  br i1 %tobool15.not.i, label %while.end.i18.return.sink.split_crit_edge, label %while.end.i18.return.sink.split.sink.split_crit_edge

while.end.i18.return.sink.split.sink.split_crit_edge: ; preds = %while.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.sink.split

while.end.i18.return.sink.split_crit_edge:        ; preds = %while.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

cleanup.sink.split.i20.loopexit:                  ; preds = %while.cond.i12
  call void @__sanitizer_cov_trace_pc() #7
  %31 = inttoptr i32 %add.i9 to ptr
  br label %return.sink.split.sink.split

return.sink.split.sink.split:                     ; preds = %cleanup.sink.split.i20.loopexit, %while.end.i18.return.sink.split.sink.split_crit_edge, %cleanup.sink.split.sink.split.i.loopexit, %if.end20.i.return.sink.split.sink.split_crit_edge
  %.sink54.i.sink = phi ptr [ %18, %if.end20.i.return.sink.split.sink.split_crit_edge ], [ %15, %cleanup.sink.split.sink.split.i.loopexit ], [ %30, %while.end.i18.return.sink.split.sink.split_crit_edge ], [ %27, %cleanup.sink.split.i20.loopexit ]
  %extralist.sink.i19.sink = phi ptr [ %extralist.i, %if.end20.i.return.sink.split.sink.split_crit_edge ], [ %19, %cleanup.sink.split.sink.split.i.loopexit ], [ %extralist.i17, %while.end.i18.return.sink.split.sink.split_crit_edge ], [ %31, %cleanup.sink.split.i20.loopexit ]
  %lock16.sink.i.sink.ph = phi ptr [ %lock16.i, %if.end20.i.return.sink.split.sink.split_crit_edge ], [ %lock.i, %cleanup.sink.split.sink.split.i.loopexit ], [ %lock12.i, %while.end.i18.return.sink.split.sink.split_crit_edge ], [ %lock.i10, %cleanup.sink.split.i20.loopexit ]
  %32 = ptrtoint ptr %.sink54.i.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.sink54.i.sink, align 4
  %34 = ptrtoint ptr %extralist.sink.i19.sink to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %extralist.sink.i19.sink, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %while.end.i18.return.sink.split_crit_edge, %if.end20.i.return.sink.split_crit_edge
  %lock16.sink.i.sink = phi ptr [ %lock16.i, %if.end20.i.return.sink.split_crit_edge ], [ %lock12.i, %while.end.i18.return.sink.split_crit_edge ], [ %lock16.sink.i.sink.ph, %return.sink.split.sink.split ]
  %retval.0.ph = phi ptr [ null, %if.end20.i.return.sink.split_crit_edge ], [ null, %while.end.i18.return.sink.split_crit_edge ], [ %.sink54.i.sink, %return.sink.split.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %lock16.sink.i.sink) #5
  br label %return

return:                                           ; preds = %return.sink.split, %while.end.i.return_crit_edge
  %retval.0 = phi ptr [ null, %while.end.i.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pcpu_freelist_pop(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !16
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then22, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @__pcpu_freelist_pop(ptr noundef %s)
  br label %do.body24

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  %call1247 = tail call ptr @__pcpu_freelist_pop(ptr noundef %s)
  tail call void @trace_hardirqs_on() #5
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %do.end11
  %call1248 = phi ptr [ %call12, %do.end11 ], [ %call1247, %if.then22 ]
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !17
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !18

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !19
  ret ptr %call1248
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @pcpu_freelist_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/bpf/percpu_freelist.c", i32 17, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @pcpu_freelist_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../kernel/bpf/percpu_freelist.c", i32 20, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 885969, i64 886030}
!17 = !{i64 888701}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 888986}
