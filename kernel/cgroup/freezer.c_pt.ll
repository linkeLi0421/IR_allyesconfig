; ModuleID = '/llk/IR_all_yes/kernel/cgroup/freezer.c_pt.bc'
source_filename = "../kernel/cgroup/freezer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.64 }
%union.anon.64 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/cgroup/freezer.c\00", [40 x i8] zeroinitializer }, align 32
@trace_cgroup_path_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path = external dso_local global [1024 x i8], align 1
@cgroup_leave_frozen.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@cgroup_freeze.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_cgroup_notify_frozen = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/cgroup.h\00", [34 x i8] zeroinitializer }, align 32
@trace_cgroup_notify_frozen.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@cgroup_dec_frozen_cnt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_cgroup_freeze = external dso_local global %struct.tracepoint, align 4
@trace_cgroup_freeze.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cgroup_unfreeze = external dso_local global %struct.tracepoint, align 4
@trace_cgroup_unfreeze.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.6 = private constant [27 x i8] c"../kernel/cgroup/freezer.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 56, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [33 x i8] c"../include/trace/events/cgroup.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 200, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 108, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 481, i32 9 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_update_frozen(ptr noundef %cgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !35

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 1
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %if.end.if.else_crit_edge, label %land.end29

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.end29:                                       ; preds = %if.end
  %nr_frozen_tasks = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 36, i32 3
  %4 = ptrtoint ptr %nr_frozen_tasks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_frozen_tasks, align 4
  %call27 = tail call i32 @__cgroup_task_count(ptr noundef %cgrp) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call27)
  %cmp28 = icmp eq i32 %5, %call27
  br i1 %cmp28, label %if.then31, label %land.end29.if.else_crit_edge

land.end29.if.else_crit_edge:                     ; preds = %land.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then31:                                        ; preds = %land.end29
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool34.not = icmp eq i32 %8, 0
  br i1 %tobool34.not, label %if.end36, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #5
  br label %if.end44

if.else:                                          ; preds = %land.end29.if.else_crit_edge, %if.end.if.else_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool40.not = icmp eq i32 %11, 0
  br i1 %tobool40.not, label %if.else.cleanup_crit_edge, label %if.end42

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end36
  %12 = phi i1 [ false, %if.end42 ], [ true, %if.end36 ]
  %events_file = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %events_file) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), ptr blockaddress(@cgroup_update_frozen, %if.then47)) #5
          to label %do.end64 [label %if.then47], !srcloc !36

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 11
  %13 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kn.i, align 8
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %14, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %conv61 = zext i1 %12 to i32
  tail call fastcc void @trace_cgroup_notify_frozen(ptr noundef %cgrp, i32 noundef %conv61)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call54) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then47, %if.end44
  tail call fastcc void @cgroup_propagate_frozen(ptr noundef %cgrp, i1 noundef zeroext %12)
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.else.cleanup_crit_edge, %if.then31.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_task_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_file_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_notify_frozen(ptr noundef %cgrp, i32 noundef %val) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), ptr blockaddress(@trace_cgroup_notify_frozen, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !38
  %call42 = tail call i32 @__traceiter_cgroup_notify_frozen(ptr noundef null, ptr noundef %cgrp, ptr noundef nonnull @trace_cgroup_path, i32 noundef %val) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !39
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !37

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_cgroup_notify_frozen.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_cgroup_notify_frozen.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @.str.2) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_propagate_frozen(ptr nocapture noundef readonly %cgrp, i1 noundef zeroext %frozen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i87 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %cgrp, i32 0, i32 12
  %0 = ptrtoint ptr %parent.i87 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i87, align 8
  %tobool.not88 = icmp eq ptr %1, null
  br i1 %tobool.not88, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end57.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %23, %if.end57.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %desc.089 = phi i32 [ %desc.1, %if.end57.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %nr_frozen_descendants = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 36, i32 2
  %3 = ptrtoint ptr %nr_frozen_descendants to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_frozen_descendants, align 4
  br i1 %frozen, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add = add i32 %4, %desc.089
  %5 = ptrtoint ptr %nr_frozen_descendants to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %nr_frozen_descendants, align 4
  %flags = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.if.end57_crit_edge

if.then.if.end57_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true:                                    ; preds = %if.then
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end57_crit_edge, label %land.lhs.true7

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

land.lhs.true7:                                   ; preds = %land.lhs.true
  %nr_descendants = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %nr_descendants to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_descendants, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp = icmp eq i32 %add, %13
  br i1 %cmp, label %if.then10, label %land.lhs.true7.if.end57_crit_edge

land.lhs.true7.if.end57_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then10:                                        ; preds = %land.lhs.true7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #5
  %events_file = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %events_file) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), ptr blockaddress(@cgroup_propagate_frozen, %if.then13)) #5
          to label %do.end24 [label %if.then13], !srcloc !36

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 11
  %14 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kn.i, align 8
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %15, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  tail call fastcc void @trace_cgroup_notify_frozen(ptr noundef nonnull %2, i32 noundef 1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call19) #5
  br label %do.end24

do.end24:                                         ; preds = %if.then13, %if.then10
  %inc = add i32 %desc.089, 1
  br label %if.end57

if.else:                                          ; preds = %while.body
  %sub = sub i32 %4, %desc.089
  %16 = ptrtoint ptr %nr_frozen_descendants to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %nr_frozen_descendants, align 4
  %flags28 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags28, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not = icmp eq i32 %19, 0
  br i1 %tobool30.not, label %if.else.if.end57_crit_edge, label %if.then31

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then31:                                        ; preds = %if.else
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags28) #5
  %events_file33 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %events_file33) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), ptr blockaddress(@cgroup_propagate_frozen, %if.then36)) #5
          to label %do.end54 [label %if.then36], !srcloc !36

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %kn.i83 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 11
  %20 = ptrtoint ptr %kn.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kn.i83, align 8
  %call.i.i84 = tail call i32 @kernfs_path_from_node(ptr noundef %21, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  tail call fastcc void @trace_cgroup_notify_frozen(ptr noundef nonnull %2, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call46) #5
  br label %do.end54

do.end54:                                         ; preds = %if.then36, %if.then31
  %inc55 = add i32 %desc.089, 1
  br label %if.end57

if.end57:                                         ; preds = %do.end54, %if.else.if.end57_crit_edge, %do.end24, %land.lhs.true7.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.then.if.end57_crit_edge
  %desc.1 = phi i32 [ %desc.089, %if.then.if.end57_crit_edge ], [ %inc, %do.end24 ], [ %desc.089, %land.lhs.true7.if.end57_crit_edge ], [ %desc.089, %land.lhs.true.if.end57_crit_edge ], [ %inc55, %do.end54 ], [ %desc.089, %if.else.if.end57_crit_edge ]
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 12
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end57.while.end_crit_edge, label %if.end57.while.body_crit_edge

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end57.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_enter_frozen() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %frozen = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %frozen to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %frozen, align 8
  %5 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %frozen3 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %frozen3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load4 = load i16, ptr %frozen3, align 8
  %bf.set = or i16 %bf.load4, 512
  store i16 %bf.set, ptr %frozen3, align 8
  %9 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 164
  %10 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.task_dfl_cgroup.exit_crit_edge

if.end.task_dfl_cgroup.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

lor.lhs.false.i.i:                                ; preds = %if.end
  %call.i18.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i18.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_dfl_cgroup.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b17.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i, label %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 481, ptr noundef nonnull @.str.2) #5
  br label %task_dfl_cgroup.exit

task_dfl_cgroup.exit:                             ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, %land.lhs.true.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge, %if.end.task_dfl_cgroup.exit_crit_edge
  %dfl_cgrp.i = getelementptr inbounds %struct.css_set, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %dfl_cgrp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dfl_cgrp.i, align 4
  %nr_frozen_tasks.i = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 36, i32 3
  %16 = ptrtoint ptr %nr_frozen_tasks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_frozen_tasks.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %nr_frozen_tasks.i, align 4
  tail call void @cgroup_update_frozen(ptr noundef %15)
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %task_dfl_cgroup.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_leave_frozen(i1 noundef zeroext %always_leave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 164
  %4 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.task_dfl_cgroup.exit_crit_edge

entry.task_dfl_cgroup.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %call.i18.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i18.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge

lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_dfl_cgroup.exit_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b17.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i, label %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge: ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %task_dfl_cgroup.exit

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 481, ptr noundef nonnull @.str.2) #5
  br label %task_dfl_cgroup.exit

task_dfl_cgroup.exit:                             ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_dfl_cgroup.exit_crit_edge, %land.lhs.true.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false6.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false4.i.i.task_dfl_cgroup.exit_crit_edge, %lor.lhs.false.i.i.task_dfl_cgroup.exit_crit_edge, %entry.task_dfl_cgroup.exit_crit_edge
  %dfl_cgrp.i = getelementptr inbounds %struct.css_set, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dfl_cgrp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dfl_cgrp.i, align 4
  br i1 %always_leave, label %task_dfl_cgroup.exit.if.then_crit_edge, label %lor.lhs.false

task_dfl_cgroup.exit.if.then_crit_edge:           ; preds = %task_dfl_cgroup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %task_dfl_cgroup.exit
  %flags = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %task_dfl_cgroup.exit.if.then_crit_edge
  %nr_frozen_tasks.i = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 36, i32 3
  %13 = ptrtoint ptr %nr_frozen_tasks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_frozen_tasks.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %nr_frozen_tasks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.then.cgroup_dec_frozen_cnt.exit_crit_edge

if.then.cgroup_dec_frozen_cnt.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cgroup_dec_frozen_cnt.exit

land.rhs.i:                                       ; preds = %if.then
  %.b40.i = load i1, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.cgroup_dec_frozen_cnt.exit_crit_edge, label %if.then.i, !prof !37

land.rhs.i.cgroup_dec_frozen_cnt.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cgroup_dec_frozen_cnt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %cgroup_dec_frozen_cnt.exit

cgroup_dec_frozen_cnt.exit:                       ; preds = %if.then.i, %land.rhs.i.cgroup_dec_frozen_cnt.exit_crit_edge, %if.then.cgroup_dec_frozen_cnt.exit_crit_edge
  tail call void @cgroup_update_frozen(ptr noundef %9)
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %frozen = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 65
  %17 = ptrtoint ptr %frozen to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %frozen, align 8
  %18 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool6.not = icmp eq i16 %18, 0
  br i1 %tobool6.not, label %land.rhs, label %cgroup_dec_frozen_cnt.exit.if.end37_crit_edge

cgroup_dec_frozen_cnt.exit.if.end37_crit_edge:    ; preds = %cgroup_dec_frozen_cnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.rhs:                                         ; preds = %cgroup_dec_frozen_cnt.exit
  %.b70 = load i1, ptr @cgroup_leave_frozen.__already_done, align 1
  br i1 %.b70, label %land.rhs.if.end37_crit_edge, label %if.then16, !prof !37

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cgroup_leave_frozen.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then16, %land.rhs.if.end37_crit_edge, %cgroup_dec_frozen_cnt.exit.if.end37_crit_edge
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %frozen47 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 65
  %21 = ptrtoint ptr %frozen47 to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load48 = load i16, ptr %frozen47, align 8
  %bf.clear49 = and i16 %bf.load48, -513
  store i16 %bf.clear49, ptr %frozen47, align 8
  br label %if.end65

if.else:                                          ; preds = %lor.lhs.false
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 61
  %24 = ptrtoint ptr %jobctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %jobctl, align 4
  %and = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.then53, label %if.else.if.end65_crit_edge

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sighand = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 112
  %26 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock(ptr noundef %27) #5
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %jobctl58 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 61
  %30 = ptrtoint ptr %jobctl58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jobctl58, align 4
  %or = or i32 %31, 8388608
  store i32 %or, ptr %jobctl58, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #5
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %sighand62 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 112
  %34 = ptrtoint ptr %sighand62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sighand62, align 4
  tail call void @_raw_spin_unlock(ptr noundef %35) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then53, %if.else.if.end65_crit_edge, %if.end37
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_freezer_migrate_task(ptr noundef %task, ptr noundef %src, ptr noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !35

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end26:                                         ; preds = %if.end
  %flags27 = getelementptr inbounds %struct.cgroup, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags27, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool29.not = icmp eq i32 %5, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end26
  %flags30 = getelementptr inbounds %struct.cgroup, ptr %dst, i32 0, i32 1
  %6 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags30, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool32.not = icmp eq i32 %8, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true33:                                  ; preds = %land.lhs.true
  %frozen = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 65
  %9 = ptrtoint ptr %frozen to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %frozen, align 8
  %10 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool34.not = icmp eq i16 %10, 0
  br i1 %tobool34.not, label %land.lhs.true33.return_crit_edge, label %land.lhs.true33.if.end36_crit_edge

land.lhs.true33.if.end36_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true33.return_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end36:                                         ; preds = %land.lhs.true33.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %frozen37 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 65
  %11 = ptrtoint ptr %frozen37 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load38 = load i16, ptr %frozen37, align 8
  %12 = and i16 %bf.load38, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool42.not = icmp eq i16 %12, 0
  br i1 %tobool42.not, label %if.end36.if.end44_crit_edge, label %if.then43

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %if.end36
  %nr_frozen_tasks.i = getelementptr inbounds %struct.cgroup, ptr %dst, i32 0, i32 36, i32 3
  %13 = ptrtoint ptr %nr_frozen_tasks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_frozen_tasks.i, align 4
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %nr_frozen_tasks.i, align 4
  %nr_frozen_tasks.i61 = getelementptr inbounds %struct.cgroup, ptr %src, i32 0, i32 36, i32 3
  %15 = ptrtoint ptr %nr_frozen_tasks.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_frozen_tasks.i61, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %nr_frozen_tasks.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.then43.if.end44_crit_edge

if.then43.if.end44_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.rhs.i:                                       ; preds = %if.then43
  %.b40.i = load i1, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.if.end44_crit_edge, label %if.then.i, !prof !37

land.rhs.i.if.end44_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then.i, %land.rhs.i.if.end44_crit_edge, %if.then43.if.end44_crit_edge, %if.end36.if.end44_crit_edge
  tail call void @cgroup_update_frozen(ptr noundef %dst)
  tail call void @cgroup_update_frozen(ptr noundef %src)
  %flags45 = getelementptr inbounds %struct.cgroup, ptr %dst, i32 0, i32 1
  %17 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags45, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %flags.i, align 4, !annotation !42
  %call.i.i = call ptr @__lock_task_sighand(ptr noundef %task, ptr noundef nonnull %flags.i) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end44.cgroup_freeze_task.exit_crit_edge, label %if.end.i

if.end44.cgroup_freeze_task.exit_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cgroup_freeze_task.exit

if.end.i:                                         ; preds = %if.end44
  %20 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool47.not = icmp eq i32 %20, 0
  %jobctl.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 61
  %21 = ptrtoint ptr %jobctl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %jobctl.i, align 4
  br i1 %tobool47.not, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %22, 8388608
  %23 = ptrtoint ptr %jobctl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %jobctl.i, align 4
  call void @signal_wake_up_state(ptr noundef %task, i32 noundef 0) #5
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %22, -8388609
  %24 = ptrtoint ptr %jobctl.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i, ptr %jobctl.i, align 4
  %call4.i = call i32 @wake_up_process(ptr noundef %task) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 112
  %25 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sighand.i.i, align 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %28) #5
  br label %cgroup_freeze_task.exit

cgroup_freeze_task.exit:                          ; preds = %if.end5.i, %if.end44.cgroup_freeze_task.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #5
  br label %return

return:                                           ; preds = %cgroup_freeze_task.exit, %land.lhs.true33.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cgroup_freeze(ptr noundef %cgrp, i1 noundef zeroext %freeze) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %freeze to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !35

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %freezer = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 36
  %1 = ptrtoint ptr %freezer to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %freezer, align 4, !range !43
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %frombool)
  %cmp28 = icmp eq i8 %2, %frombool
  br i1 %cmp28, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %3 = ptrtoint ptr %freezer to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %freezer, align 4
  %call36 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %cgrp) #5
  %tobool37.not170 = icmp eq ptr %call36, null
  br i1 %tobool37.not170, label %if.end31.do.body121_crit_edge, label %if.end31.for.body.outer_crit_edge

if.end31.for.body.outer_crit_edge:                ; preds = %if.end31
  br label %for.body.outer

if.end31.do.body121_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body121

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %if.end31.for.body.outer_crit_edge
  %css.0172.ph = phi ptr [ %call118174, %for.inc.thread.for.body.outer_crit_edge ], [ %call36, %if.end31.for.body.outer_crit_edge ]
  %applied.0.off0171.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %if.end31.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %css.0172 = phi ptr [ %call118, %for.inc.for.body_crit_edge ], [ %css.0172.ph, %for.body.outer ]
  %4 = ptrtoint ptr %css.0172 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %css.0172, align 8
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %if.end40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %e_freeze = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 36, i32 1
  %8 = ptrtoint ptr %e_freeze to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e_freeze, align 4
  br i1 %freeze, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end40
  %inc = add i32 %9, 1
  %10 = ptrtoint ptr %e_freeze to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %e_freeze, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp46 = icmp sgt i32 %inc, 1
  br i1 %cmp46, label %if.then42.for.inc_crit_edge, label %if.then42.for.inc.thread_crit_edge

if.then42.for.inc.thread_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.thread

if.then42.for.inc_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %if.end40
  %dec = add i32 %9, -1
  %11 = ptrtoint ptr %e_freeze to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec, ptr %e_freeze, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp54 = icmp sgt i32 %dec, 0
  br i1 %cmp54, label %if.else.for.inc_crit_edge, label %if.end57

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end57:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp60 = icmp slt i32 %dec, 0
  br i1 %cmp60, label %land.rhs69, label %if.end57.for.inc.thread_crit_edge

if.end57.for.inc.thread_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.thread

land.rhs69:                                       ; preds = %if.end57
  %.b168 = load i1, ptr @cgroup_freeze.__already_done, align 1
  br i1 %.b168, label %land.rhs69.for.inc.thread_crit_edge, label %if.then80, !prof !37

land.rhs69.for.inc.thread_crit_edge:              ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.thread

if.then80:                                        ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cgroup_freeze.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef null) #5
  br label %for.inc.thread

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call118 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %css.0172, ptr noundef %cgrp) #5
  %tobool37.not = icmp eq ptr %call118, null
  br i1 %tobool37.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.thread:                                   ; preds = %if.then80, %land.rhs69.for.inc.thread_crit_edge, %if.end57.for.inc.thread_crit_edge, %if.then42.for.inc.thread_crit_edge
  tail call fastcc void @cgroup_do_freeze(ptr noundef %5, i1 noundef zeroext %freeze)
  %call118174 = tail call ptr @css_next_descendant_pre(ptr noundef nonnull %css.0172, ptr noundef %cgrp) #5
  %tobool37.not175 = icmp eq ptr %call118174, null
  br i1 %tobool37.not175, label %for.inc.thread.cleanup_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.outer

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.inc
  br i1 %applied.0.off0171.ph, label %for.end.cleanup_crit_edge, label %for.end.do.body121_crit_edge

for.end.do.body121_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body121

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body121:                                       ; preds = %for.end.do.body121_crit_edge, %if.end31.do.body121_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), ptr blockaddress(@cgroup_freeze, %if.then123)) #5
          to label %do.end140 [label %if.then123], !srcloc !36

if.then123:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  %call130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 11
  %12 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kn.i, align 8
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %13, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %flags136 = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 1
  %14 = ptrtoint ptr %flags136 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags136, align 4
  %shr.i = lshr i32 %15, 3
  %and1.i = and i32 %shr.i, 1
  tail call fastcc void @trace_cgroup_notify_frozen(ptr noundef %cgrp, i32 noundef %and1.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call130) #5
  br label %do.end140

do.end140:                                        ; preds = %if.then123, %do.body121
  %events_file = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %events_file) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %for.end.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_do_freeze(ptr noundef %cgrp, i1 noundef zeroext %freeze) unnamed_addr #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %it = alloca %struct.css_task_iter, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %it) #5
  %0 = call ptr @memset(ptr %it, i32 255, i32 52)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !35

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %flags = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 1
  br i1 %freeze, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 1), ptr blockaddress(@cgroup_do_freeze, %if.then32)) #5
          to label %if.end70 [label %if.then32], !srcloc !36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 1), ptr blockaddress(@cgroup_do_freeze, %if.then51)) #5
          to label %if.end70 [label %if.then51], !srcloc !36

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %kn.i = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 11
  %2 = ptrtoint ptr %kn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kn.i, align 8
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %3, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  tail call fastcc void @trace_cgroup_freeze(ptr noundef %cgrp)
  br label %if.end70.sink.split

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %kn.i97 = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 11
  %4 = ptrtoint ptr %kn.i97 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kn.i97, align 8
  %call.i.i98 = tail call i32 @kernfs_path_from_node(ptr noundef %5, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  tail call fastcc void @trace_cgroup_unfreeze(ptr noundef %cgrp)
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.then51, %if.then32
  %call61.sink = phi i32 [ %call61, %if.then51 ], [ %call39, %if.then32 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %call61.sink) #5
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else, %if.then25
  call void @css_task_iter_start(ptr noundef %cgrp, i32 noundef 0, ptr noundef nonnull %it) #5
  %call71102 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #5
  %tobool72.not103 = icmp eq ptr %call71102, null
  br i1 %tobool72.not103, label %if.end70.while.end_crit_edge, label %if.end70.while.body_crit_edge

if.end70.while.body_crit_edge:                    ; preds = %if.end70
  br label %while.body

if.end70.while.end_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end70.while.body_crit_edge
  %call71104 = phi ptr [ %call71, %while.cond.backedge.while.body_crit_edge ], [ %call71102, %if.end70.while.body_crit_edge ]
  %flags73 = getelementptr inbounds %struct.task_struct, ptr %call71104, i32 0, i32 3
  %6 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags73, align 4
  %and = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %if.end76, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.end76:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %flags.i, align 4, !annotation !42
  %call.i.i99 = call ptr @__lock_task_sighand(ptr noundef nonnull %call71104, ptr noundef nonnull %flags.i) #5
  %tobool.not.i = icmp eq ptr %call.i.i99, null
  br i1 %tobool.not.i, label %if.end76.cgroup_freeze_task.exit_crit_edge, label %if.end.i

if.end76.cgroup_freeze_task.exit_crit_edge:       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cgroup_freeze_task.exit

if.end.i:                                         ; preds = %if.end76
  %jobctl.i = getelementptr inbounds %struct.task_struct, ptr %call71104, i32 0, i32 61
  %9 = ptrtoint ptr %jobctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jobctl.i, align 4
  br i1 %freeze, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %10, 8388608
  %11 = ptrtoint ptr %jobctl.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %jobctl.i, align 4
  call void @signal_wake_up_state(ptr noundef nonnull %call71104, i32 noundef 0) #5
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %10, -8388609
  %12 = ptrtoint ptr %jobctl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %jobctl.i, align 4
  %call4.i = call i32 @wake_up_process(ptr noundef nonnull %call71104) #5
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %call71104, i32 0, i32 112
  %13 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sighand.i.i, align 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %16) #5
  br label %cgroup_freeze_task.exit

cgroup_freeze_task.exit:                          ; preds = %if.end5.i, %if.end76.cgroup_freeze_task.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cgroup_freeze_task.exit, %while.body.while.cond.backedge_crit_edge
  %call71 = call ptr @css_task_iter_next(ptr noundef nonnull %it) #5
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end70.while.end_crit_edge
  call void @css_task_iter_end(ptr noundef nonnull %it) #5
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %nr_descendants = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 4
  %17 = ptrtoint ptr %nr_descendants to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_descendants, align 4
  %nr_frozen_descendants = getelementptr inbounds %struct.cgroup, ptr %cgrp, i32 0, i32 36, i32 2
  %19 = ptrtoint ptr %nr_frozen_descendants to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_frozen_descendants, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp78 = icmp eq i32 %18, %20
  br i1 %cmp78, label %if.then80, label %while.end.if.end81_crit_edge

while.end.if.end81_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then80:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @cgroup_update_frozen(ptr noundef %cgrp)
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %while.end.if.end81_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @css_set_lock) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %it) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_notify_frozen(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_freeze(ptr noundef %cgrp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 1), ptr blockaddress(@trace_cgroup_freeze, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !44
  %call42 = tail call i32 @__traceiter_cgroup_freeze(ptr noundef null, ptr noundef %cgrp, ptr noundef nonnull @trace_cgroup_path) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !45
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !37

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_cgroup_freeze.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_cgroup_freeze.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 111, ptr noundef nonnull @.str.2) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_unfreeze(ptr noundef %cgrp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 1), ptr blockaddress(@trace_cgroup_unfreeze, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !46
  %call42 = tail call i32 @__traceiter_cgroup_unfreeze(ptr noundef null, ptr noundef %cgrp, ptr noundef nonnull @trace_cgroup_path) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !47
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !37

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_cgroup_unfreeze.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_cgroup_unfreeze.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @.str.2) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #5
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_freeze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_unfreeze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !16, !17, !19, !21, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/freezer.c", i32 56, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/freezer.c", i32 140, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/freezer.c", i32 300, i32 4}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/trace/events/cgroup.h", i32 200, i32 1}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../kernel/cgroup/freezer.c", i32 100, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/cgroup.h", i32 106, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/cgroup.h", i32 113, i32 1}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2148267570, i64 2148267575, i64 2148267588, i64 2148267632, i64 2148267666, i64 2148267687}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2154642255}
!39 = !{i64 2154642488}
!40 = !{i64 2149290250}
!41 = !{i64 2149291286}
!42 = !{!"auto-init"}
!43 = !{i8 0, i8 2}
!44 = !{i64 2154551749}
!45 = !{i64 2154551958}
!46 = !{i64 2154568038}
!47 = !{i64 2154568251}
