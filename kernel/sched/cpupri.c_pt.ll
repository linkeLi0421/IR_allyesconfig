; ModuleID = '/llk/IR_all_yes/kernel/sched/cpupri.c_pt.bc'
source_filename = "../kernel/sched/cpupri.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpupri_vec = type { %struct.atomic_t, ptr }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [25 x i8] c"../kernel/sched/cpupri.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 108, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpupri_find(ptr noundef %cp, ptr noundef %p, ptr noundef %lowest_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio.i, align 8
  switch i32 %1, label %sw.caserange.i [
    i32 -1, label %cpupri_find_fitness.exit
    i32 99, label %cpupri_find_fitness.exit
    i32 100, label %for.body.i.lr.ph
  ]

sw.caserange.i:                                   ; preds = %entry
  %inbounds.i = icmp ult i32 %1, 99
  %sub.i = sub i32 99, %1
  %cmp8.i5 = icmp sgt i32 %sub.i, 0
  %or.cond = and i1 %inbounds.i, %cmp8.i5
  br i1 %or.cond, label %for.body.i.lr.ph, label %cpupri_find_fitness.exit

for.body.i.lr.ph:                                 ; preds = %sw.caserange.i, %entry
  %cpupri.0.i16 = phi i32 [ %1, %entry ], [ %sub.i, %sw.caserange.i ]
  %cpus_mask.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 35
  %tobool10.not.i1 = icmp eq ptr %lowest_mask, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.i.lr.ph
  %idx.0.i6 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i, %for.inc.i ]
  %arrayidx.i = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %idx.0.i6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !12
  br i1 %tobool.not.i, label %for.inc.i, label %if.end6.i

if.end6.i:                                        ; preds = %for.body.i
  %mask.i = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %idx.0.i6, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mask.i, align 4
  %call6.i.i.i = tail call i32 @_find_first_and_bit(ptr noundef %cpus_mask.i, ptr noundef %6, i32 noundef %4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i = icmp ult i32 %call6.i.i.i, %7
  br i1 %cmp.not.i, label %if.end9.i, label %for.inc.i

if.end9.i:                                        ; preds = %if.end6.i
  br i1 %tobool10.not.i1, label %cpupri_find_fitness.exit, label %if.end.i.i29.i

if.end.i.i29.i:                                   ; preds = %if.end9.i
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mask.i, align 4
  %call.i.i28.i = tail call i32 @__bitmap_and(ptr noundef nonnull %lowest_mask, ptr noundef %cpus_mask.i, ptr noundef %9, i32 noundef %7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i36.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %lowest_mask, i32 noundef %10) #6
  %cmp4.i.i.i = icmp eq i32 %call.i.i36.i, %10
  br i1 %cmp4.i.i.i, label %for.inc.i, label %cpupri_find_fitness.exit

for.inc.i:                                        ; preds = %if.end.i.i29.i, %if.end6.i, %for.body.i
  %inc.i = add nuw nsw i32 %idx.0.i6, 1
  %exitcond.not = icmp eq i32 %inc.i, %cpupri.0.i16
  br i1 %exitcond.not, label %cpupri_find_fitness.exit, label %for.body.i

cpupri_find_fitness.exit:                         ; preds = %for.inc.i, %if.end.i.i29.i, %if.end9.i, %sw.caserange.i, %entry, %entry
  %retval.0.i = phi i32 [ 0, %entry ], [ 0, %sw.caserange.i ], [ 0, %entry ], [ 1, %if.end.i.i29.i ], [ 1, %if.end9.i ], [ 0, %for.inc.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpupri_find_fitness(ptr noundef %cp, ptr noundef %p, ptr noundef %lowest_mask, ptr noundef readonly %fitness_fn) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %prio = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 13
  %0 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prio, align 8
  switch i32 %1, label %sw.caserange.i [
    i32 -1, label %for.end27
    i32 99, label %for.end27
    i32 100, label %for.body.lr.ph
  ]

sw.caserange.i:                                   ; preds = %entry
  %inbounds.i = icmp ult i32 %1, 99
  %sub.i = sub i32 99, %1
  %cmp861 = icmp sgt i32 %sub.i, 0
  %or.cond = and i1 %inbounds.i, %cmp861
  br i1 %or.cond, label %for.body.lr.ph, label %for.end27

for.body.lr.ph:                                   ; preds = %sw.caserange.i, %entry
  %cpupri.0.i70 = phi i32 [ %1, %entry ], [ %sub.i, %sw.caserange.i ]
  %cpus_mask.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 35
  %tobool10.not.i = icmp eq ptr %lowest_mask, null
  %tobool14.not = icmp eq ptr %fitness_fn, null
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %idx.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx.i = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %idx.062
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #6
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !12
  br i1 %tobool.not.i, label %for.inc, label %if.end6.i

if.end6.i:                                        ; preds = %for.body
  %mask.i = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %idx.062, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mask.i, align 4
  %call6.i.i.i = tail call i32 @_find_first_and_bit(ptr noundef %cpus_mask.i, ptr noundef %6, i32 noundef %4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i = icmp ult i32 %call6.i.i.i, %7
  br i1 %cmp.not.i, label %if.end9.i, label %for.inc

if.end9.i:                                        ; preds = %if.end6.i
  br i1 %tobool10.not.i, label %cleanup, label %if.end.i.i29.i

if.end.i.i29.i:                                   ; preds = %if.end9.i
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mask.i, align 4
  %call.i.i28.i = tail call i32 @__bitmap_and(ptr noundef nonnull %lowest_mask, ptr noundef %cpus_mask.i, ptr noundef %9, i32 noundef %7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i36.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %lowest_mask, i32 noundef %10) #6
  %cmp4.i.i.i = icmp eq i32 %call.i.i36.i, %10
  br i1 %cmp4.i.i.i, label %for.inc, label %if.end12

if.end12:                                         ; preds = %if.end.i.i29.i
  br i1 %tobool14.not, label %cleanup, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %if.end12
  %call1857 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %lowest_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp1958 = icmp ult i32 %call1857, %11
  br i1 %cmp1958, label %for.body20, label %cpumask_empty.exit

for.body20:                                       ; preds = %if.end23, %for.cond17.preheader
  %call1859 = phi i32 [ %call18, %if.end23 ], [ %call1857, %for.cond17.preheader ]
  %call21 = tail call zeroext i1 %fitness_fn(ptr noundef %p, i32 noundef %call1859) #6
  br i1 %call21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %12, %call1859
  br i1 %cmp.not.i.i.i, label %cpumask_clear_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then22
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %cpumask_clear_cpu.exit, label %if.then.i.i.i51, !prof !13

if.then.i.i.i51:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i51, %land.rhs.i.i.i, %if.then22
  tail call void @_clear_bit(i32 noundef %call1859, ptr noundef nonnull %lowest_mask) #6
  br label %if.end23

if.end23:                                         ; preds = %cpumask_clear_cpu.exit, %for.body20
  %call18 = tail call i32 @cpumask_next(i32 noundef %call1859, ptr noundef nonnull %lowest_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call18, %13
  br i1 %cmp19, label %for.body20, label %cpumask_empty.exit

cpumask_empty.exit:                               ; preds = %if.end23, %for.cond17.preheader
  %.lcssa = phi i32 [ %11, %for.cond17.preheader ], [ %13, %if.end23 ]
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %lowest_mask, i32 noundef %.lcssa) #6
  %cmp4.i.i = icmp eq i32 %call.i.i, %.lcssa
  br i1 %cmp4.i.i, label %for.inc, label %cleanup

for.inc:                                          ; preds = %cpumask_empty.exit, %if.end.i.i29.i, %if.end6.i, %for.body
  %inc = add nuw nsw i32 %idx.062, 1
  %exitcond.not = icmp eq i32 %inc, %cpupri.0.i70
  br i1 %exitcond.not, label %for.end27, label %for.body

for.end27:                                        ; preds = %for.inc, %sw.caserange.i, %entry, %entry
  %tobool28.not = icmp eq ptr %fitness_fn, null
  br i1 %tobool28.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %for.end27
  %call30 = tail call i32 @cpupri_find(ptr noundef %cp, ptr noundef %p, ptr noundef %lowest_mask)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %for.end27, %cpumask_empty.exit, %if.end12, %if.end9.i
  %retval.0 = phi i32 [ %call30, %if.then29 ], [ 0, %for.end27 ], [ 1, %if.end12 ], [ 1, %cpumask_empty.exit ], [ 1, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpupri_set(ptr noundef %cp, i32 noundef %cpu, i32 noundef %newpri) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_to_pri = getelementptr inbounds %struct.cpupri, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cpu_to_pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_to_pri, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %cpu
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  switch i32 %newpri, label %sw.caserange.i [
    i32 -1, label %convert_prio.exit.thread
    i32 99, label %convert_prio.exit
    i32 100, label %sw.bb3.i
  ]

sw.caserange.i:                                   ; preds = %entry
  %inbounds.i = icmp ult i32 %newpri, 99
  %sub.i = sub i32 99, %newpri
  %spec.select.i = select i1 %inbounds.i, i32 %sub.i, i32 -1
  br label %convert_prio.exit

sw.bb3.i:                                         ; preds = %entry
  br label %convert_prio.exit

convert_prio.exit:                                ; preds = %sw.bb3.i, %sw.caserange.i, %entry
  %cpupri.0.i = phi i32 [ 100, %sw.bb3.i ], [ %spec.select.i, %sw.caserange.i ], [ 0, %entry ]
  %cmp8 = icmp eq i32 %cpupri.0.i, %3
  br i1 %cmp8, label %cleanup, label %if.end10

convert_prio.exit.thread:                         ; preds = %entry
  %cmp878 = icmp eq i32 %3, -1
  br i1 %cmp878, label %cleanup, label %if.end46

if.end10:                                         ; preds = %convert_prio.exit
  %cmp11.not = icmp eq i32 %cpupri.0.i, -1
  br i1 %cmp11.not, label %if.end26, label %if.then18, !prof !14

if.then18:                                        ; preds = %if.end10
  %arrayidx19 = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %cpupri.0.i
  %mask = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %cpupri.0.i, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %6, %cpu
  br i1 %cmp.not.i.i.i, label %if.end26.thread, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then18
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %if.end26.thread, label %if.then.i.i.i, !prof !13

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %if.end26.thread

if.end26:                                         ; preds = %if.end10
  %cmp27.not = icmp eq i32 %3, -1
  br i1 %cmp27.not, label %if.end55, label %if.end46, !prof !14

if.end26.thread:                                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.then18
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx19, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %arrayidx19, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx19, ptr %arrayidx19, i32 1, ptr elementtype(i32) %arrayidx19) #6, !srcloc !16
  %cmp27.not96 = icmp eq i32 %3, -1
  br i1 %cmp27.not96, label %if.end55, label %do.end43, !prof !14

do.end43:                                         ; preds = %if.end26.thread
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !17
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end26, %convert_prio.exit.thread
  %cpupri.0.i808893 = phi i32 [ %cpupri.0.i, %do.end43 ], [ -1, %convert_prio.exit.thread ], [ -1, %if.end26 ]
  %arrayidx3794 = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %3
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx3794, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %arrayidx3794, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx3794, ptr %arrayidx3794, i32 1, ptr elementtype(i32) %arrayidx3794) #6, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  %mask54 = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %3, i32 1
  %9 = ptrtoint ptr %mask54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mask54, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i73 = icmp ugt i32 %11, %cpu
  br i1 %cmp.not.i.i.i73, label %cpumask_clear_cpu.exit, label %land.rhs.i.i.i75

land.rhs.i.i.i75:                                 ; preds = %if.end46
  %.b37.i.i.i74 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i74, label %cpumask_clear_cpu.exit, label %if.then.i.i.i76, !prof !13

if.then.i.i.i76:                                  ; preds = %land.rhs.i.i.i75
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i76, %land.rhs.i.i.i75, %if.end46
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef %10) #6
  br label %if.end55

if.end55:                                         ; preds = %cpumask_clear_cpu.exit, %if.end26.thread, %if.end26
  %cpupri.0.i8089 = phi i32 [ %cpupri.0.i808893, %cpumask_clear_cpu.exit ], [ -1, %if.end26 ], [ %cpupri.0.i, %if.end26.thread ]
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cpupri.0.i8089, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %convert_prio.exit.thread, %convert_prio.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpupri_init(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %arrayidx = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %i.043
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %arrayidx, align 4
  %mask = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %i.043, i32 1
  %call = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef 3264) #6
  br i1 %call, label %for.inc, label %cleanup12

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 101
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !14

kcalloc.exit.thread:                              ; preds = %for.end
  %cpu_to_pri38 = getelementptr inbounds %struct.cpupri, ptr %cp, i32 0, i32 1
  %4 = ptrtoint ptr %cpu_to_pri38 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cpu_to_pri38, align 4
  br label %for.body15.preheader

if.end7.i.i:                                      ; preds = %for.end
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #9
  %cpu_to_pri = getelementptr inbounds %struct.cpupri, ptr %cp, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_to_pri to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %cpu_to_pri, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %for.body15.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %if.end7.i.i
  %call644 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp745 = icmp ult i32 %call644, %7
  br i1 %cmp745, label %for.body8, label %cleanup22

for.body8:                                        ; preds = %for.body8, %for.cond5.preheader
  %call646 = phi i32 [ %call6, %for.body8 ], [ %call644, %for.cond5.preheader ]
  %8 = ptrtoint ptr %cpu_to_pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_to_pri, align 4
  %arrayidx10 = getelementptr i32, ptr %9, i32 %call646
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %arrayidx10, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef %call646, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %11
  br i1 %cmp7, label %for.body8, label %cleanup22

cleanup12:                                        ; preds = %for.body
  %cmp1448.not = icmp eq i32 %i.043, 0
  br i1 %cmp1448.not, label %cleanup22, label %for.body15.preheader

for.body15.preheader:                             ; preds = %cleanup12, %if.end7.i.i, %kcalloc.exit.thread
  %i.249.in.ph = phi i32 [ 101, %if.end7.i.i ], [ 101, %kcalloc.exit.thread ], [ %i.043, %cleanup12 ]
  br label %for.body15

for.body15:                                       ; preds = %for.body15, %for.body15.preheader
  %i.249.in = phi i32 [ %i.249, %for.body15 ], [ %i.249.in.ph, %for.body15.preheader ]
  %i.249 = add nsw i32 %i.249.in, -1
  %mask18 = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %i.249, i32 1
  %12 = ptrtoint ptr %mask18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mask18, align 4
  tail call void @free_cpumask_var(ptr noundef %13) #6
  %cmp14 = icmp sgt i32 %i.249.in, 1
  br i1 %cmp14, label %for.body15, label %cleanup22

cleanup22:                                        ; preds = %for.body15, %cleanup12, %for.body8, %for.cond5.preheader
  %retval.0 = phi i32 [ -12, %cleanup12 ], [ 0, %for.cond5.preheader ], [ -12, %for.body15 ], [ 0, %for.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpupri_cleanup(ptr nocapture noundef readonly %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_to_pri = getelementptr inbounds %struct.cpupri, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cpu_to_pri to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_to_pri, align 4
  tail call void @kfree(ptr noundef %1) #6
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %mask = getelementptr [101 x %struct.cpupri_vec], ptr %cp, i32 0, i32 %i.04, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mask, align 4
  tail call void @free_cpumask_var(ptr noundef %3) #6
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 101
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i64 2158442237}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2158445888}
!16 = !{i64 2148508861, i64 2148508887, i64 2148508916, i64 2148508950, i64 2148508981, i64 2148509004}
!17 = !{i64 2158446108}
!18 = !{i64 2148511326, i64 2148511352, i64 2148511381, i64 2148511415, i64 2148511446, i64 2148511469}
!19 = !{i64 2158446285}
