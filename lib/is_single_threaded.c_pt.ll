; ModuleID = '/llk/IR_all_yes/lib/is_single_threaded.c_pt.bc'
source_filename = "../lib/is_single_threaded.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@init_task = external dso_local global %struct.task_struct, align 128
@current_is_single_threaded.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/is_single_threaded.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private constant [28 x i8] c"../lib/is_single_threaded.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 36, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @current_is_single_threaded() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !11) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %mm2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm2, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %live = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %live, i32 noundef 4) #6
  %8 = ptrtoint ptr %live to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %live, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mm_users = getelementptr inbounds %struct.anon.2, ptr %5, i32 0, i32 10
  %call.i.i100 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #6
  %10 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mm_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp5 = icmp eq i32 %11, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %12 = tail call i32 @llvm.read_register.i32(metadata !11) #6
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr117 = getelementptr i8, ptr %16, i32 -1136
  %cmp9.not118 = icmp eq ptr %add.ptr117, @init_task
  br i1 %cmp9.not118, label %rcu_read_lock.exit.found_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.found_crit_edge:               ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %found

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %add.ptr119 = phi ptr [ %add.ptr117, %for.body.lr.ph ], [ %add.ptr, %for.cond.backedge.for.body_crit_edge ]
  %17 = phi ptr [ %16, %for.body.lr.ph ], [ %31, %for.cond.backedge.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %17, i32 -1124
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %for.body.for.cond.backedge_crit_edge, !prof !21

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge

if.end13:                                         ; preds = %for.body
  %20 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group_leader, align 4
  %cmp14 = icmp eq ptr %add.ptr119, %21
  br i1 %cmp14, label %if.end13.for.cond.backedge_crit_edge, label %do.body23, !prof !22

if.end13.for.cond.backedge_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge

do.body23:                                        ; preds = %if.end13
  %call24 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true, label %do.body23.do.end33_crit_edge

do.body23.do.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

land.lhs.true:                                    ; preds = %do.body23
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true.do.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true
  %.b99 = load i1, ptr @current_is_single_threaded.__warned, align 1
  br i1 %.b99, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @current_is_single_threaded.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @.str.1) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true.do.end33_crit_edge, %do.body23.do.end33_crit_edge
  %signal39 = getelementptr i8, ptr %17, i32 544
  %22 = ptrtoint ptr %signal39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal39, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn113 = load volatile ptr, ptr %thread_head, align 4
  %cmp46.not115 = icmp eq ptr %.pn113, %thread_head
  br i1 %cmp46.not115, label %do.end33.for.cond.backedge_crit_edge, label %do.end33.for.body47_crit_edge

do.end33.for.body47_crit_edge:                    ; preds = %do.end33
  br label %for.body47

do.end33.for.cond.backedge_crit_edge:             ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge

for.body47:                                       ; preds = %do.end71.for.body47_crit_edge, %do.end33.for.body47_crit_edge
  %.pn116 = phi ptr [ %.pn, %do.end71.for.body47_crit_edge ], [ %.pn113, %do.end33.for.body47_crit_edge ]
  %mm48 = getelementptr i8, ptr %.pn116, i32 -228
  %25 = ptrtoint ptr %mm48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mm48, align 8
  %cmp49 = icmp eq ptr %26, %5
  br i1 %cmp49, label %for.body47.found_crit_edge, label %if.end57, !prof !22

for.body47.found_crit_edge:                       ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %found

if.end57:                                         ; preds = %for.body47
  %tobool59.not = icmp eq ptr %26, null
  br i1 %tobool59.not, label %do.end71, label %if.end57.for.cond.backedge_crit_edge, !prof !22

if.end57.for.cond.backedge_crit_edge:             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge

do.end71:                                         ; preds = %if.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  %27 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load volatile ptr, ptr %.pn116, align 4
  %28 = ptrtoint ptr %signal39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal39, align 16
  %thread_head45 = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 3
  %cmp46.not = icmp eq ptr %.pn, %thread_head45
  br i1 %cmp46.not, label %do.end71.for.cond.backedge_crit_edge, label %do.end71.for.body47_crit_edge

do.end71.for.body47_crit_edge:                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body47

do.end71.for.cond.backedge_crit_edge:             ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end71.for.cond.backedge_crit_edge, %if.end57.for.cond.backedge_crit_edge, %do.end33.for.cond.backedge_crit_edge, %if.end13.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %tasks = getelementptr inbounds %struct.task_struct, ptr %add.ptr119, i32 0, i32 50
  %30 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %tasks, align 16
  %add.ptr = getelementptr i8, ptr %31, i32 -1136
  %cmp9.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp9.not, label %for.cond.backedge.found_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.cond.backedge.found_crit_edge:                ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %found

found:                                            ; preds = %for.cond.backedge.found_crit_edge, %for.body47.found_crit_edge, %rcu_read_lock.exit.found_crit_edge
  %cmp9.not112 = phi i1 [ true, %rcu_read_lock.exit.found_crit_edge ], [ false, %for.body47.found_crit_edge ], [ true, %for.cond.backedge.found_crit_edge ]
  %call.i101 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i101, label %found.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i104

found.rcu_read_unlock.exit_crit_edge:             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #5
  br label %rcu_read_unlock.exit

land.lhs.true.i104:                               ; preds = %found
  %call1.i102 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #5
  br label %rcu_read_unlock.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #5
  br label %rcu_read_unlock.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, %found.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  %32 = tail call i32 @llvm.read_register.i32(metadata !11) #6
  %and.i.i.i.i.i108 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp9.not112, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../lib/is_single_threaded.c", i32 36, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2149184363}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2152090231}
!24 = !{i64 2149184629}
