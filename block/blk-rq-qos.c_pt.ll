; ModuleID = '/llk/IR_all_yes/block/blk-rq-qos.c_pt.bc'
source_filename = "../block/blk-rq-qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rq_wait = type { %struct.wait_queue_head, %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.rq_depth = type { i32, i32, i8, i32, i32 }
%struct.rq_qos_wait_data = type { %struct.wait_queue_entry, ptr, ptr, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rq_wait_inc_below(ptr noundef %rq_wait, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %inflight = getelementptr inbounds %struct.rq_wait, ptr %rq_wait, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inflight, i32 noundef 4) #8
  %0 = ptrtoint ptr %inflight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inflight, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %atomic_cmpxchg.exit.i.for.cond.i_crit_edge, %entry
  %cur.0.i = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i, %atomic_cmpxchg.exit.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur.0.i, i32 %limit)
  %cmp.not.i = icmp ult i32 %cur.0.i, %limit
  br i1 %cmp.not.i, label %if.end.i, label %for.cond.i.atomic_inc_below.exit_crit_edge

for.cond.i.atomic_inc_below.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_inc_below.exit

if.end.i:                                         ; preds = %for.cond.i
  %add.i = add nuw i32 %cur.0.i, 1
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 %cur.0.i, i32 %add.i, ptr elementtype(i32) %inflight) #8, !srcloc !14
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !15
  %cmp2.i = icmp eq i32 %asmresult3.i.i.i.i, %cur.0.i
  br i1 %cmp2.i, label %atomic_cmpxchg.exit.i.atomic_inc_below.exit_crit_edge, label %atomic_cmpxchg.exit.i.for.cond.i_crit_edge

atomic_cmpxchg.exit.i.for.cond.i_crit_edge:       ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

atomic_cmpxchg.exit.i.atomic_inc_below.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_inc_below.exit

atomic_inc_below.exit:                            ; preds = %atomic_cmpxchg.exit.i.atomic_inc_below.exit_crit_edge, %for.cond.i.atomic_inc_below.exit_crit_edge
  ret i1 %cmp.not.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_cleanup(ptr noundef %rqos, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %cleanup = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cleanup, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_done(ptr noundef %rqos, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %done = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %rq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_issue(ptr noundef %rqos, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %issue = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %issue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %issue, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %rq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_requeue(ptr noundef %rqos, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %requeue = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %requeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requeue, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %rq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_throttle(ptr noundef %rqos, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_track(ptr noundef %rqos, ptr noundef %rq, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %track = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %track to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %track, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %rq, ptr noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_merge(ptr noundef %rqos, ptr noundef %rq, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %merge = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %merge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %merge, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %rq, ptr noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_done_bio(ptr noundef %rqos, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %done_bio = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %done_bio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done_bio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0, ptr noundef %bio) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rq_qos_queue_depth_changed(ptr noundef %rqos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %rqos.addr.0 = phi ptr [ %rqos, %entry ], [ %5, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %rqos.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqos.addr.0, align 4
  %queue_depth_changed = getelementptr inbounds %struct.rq_qos_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %queue_depth_changed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue_depth_changed, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %rqos.addr.0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %next = getelementptr inbounds %struct.rq_qos, ptr %rqos.addr.0, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rq_depth_calc_max_depth(ptr nocapture noundef %rqd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_depth = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 3
  %0 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %scale_step = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 1
  %2 = ptrtoint ptr %scale_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scale_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  %. = select i1 %cmp1, i32 1, i32 2
  %not.cmp1 = xor i1 %cmp1, true
  br label %if.end32

if.else4:                                         ; preds = %entry
  %default_depth = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 4
  %4 = ptrtoint ptr %default_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %default_depth, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %1)
  %scale_step7 = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 1
  %7 = ptrtoint ptr %scale_step7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scale_step7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.else17

if.then9:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %6, -1
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 31)
  %shr = lshr i32 %sub, %9
  %add = add nuw i32 %shr, 1
  br label %if.end32

if.else17:                                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19 = icmp slt i32 %8, 0
  br i1 %cmp19, label %if.then20, label %if.else17.if.end32_crit_edge

if.else17.if.end32_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %1, 3
  %div55 = lshr i32 %mul, 2
  %sub22 = add i32 %6, -1
  %sub24 = sub i32 0, %8
  %shl = shl i32 %sub22, %sub24
  %add25 = add i32 %shl, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %div55)
  %cmp26 = icmp ugt i32 %add25, %div55
  %10 = tail call i32 @llvm.umin.i32(i32 %add25, i32 %div55)
  br label %if.end32

if.end32:                                         ; preds = %if.then20, %if.else17.if.end32_crit_edge, %if.then9, %if.then
  %.sink = phi i32 [ %., %if.then ], [ %add, %if.then9 ], [ %10, %if.then20 ], [ %6, %if.else17.if.end32_crit_edge ]
  %ret.2.off0 = phi i1 [ %not.cmp1, %if.then ], [ false, %if.then9 ], [ %cmp26, %if.then20 ], [ false, %if.else17.if.end32_crit_edge ]
  %11 = ptrtoint ptr %rqd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %rqd, align 4
  ret i1 %ret.2.off0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rq_depth_scale_up(ptr nocapture noundef %rqd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scaled_max = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 2
  %0 = ptrtoint ptr %scaled_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scaled_max, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %scale_step = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 1
  %2 = ptrtoint ptr %scale_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scale_step, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %scale_step, align 4
  %queue_depth.i = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 3
  %4 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %if.else4.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1.i = icmp sgt i32 %dec, 0
  %..i = select i1 %cmp1.i, i32 1, i32 2
  %not.cmp1.i = xor i1 %cmp1.i, true
  br label %rq_depth_calc_max_depth.exit

if.else4.i:                                       ; preds = %if.end
  %default_depth.i = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 4
  %6 = ptrtoint ptr %default_depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_depth.i, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp8.i = icmp sgt i32 %dec, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.else17.i

if.then9.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %8, -1
  %9 = tail call i32 @llvm.umin.i32(i32 %dec, i32 31) #8
  %shr.i = lshr i32 %sub.i, %9
  %add.i = add nuw i32 %shr.i, 1
  br label %rq_depth_calc_max_depth.exit

if.else17.i:                                      ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp19.i = icmp slt i32 %dec, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge

if.else17.i.rq_depth_calc_max_depth.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rq_depth_calc_max_depth.exit

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %5, 3
  %div55.i = lshr i32 %mul.i, 2
  %sub22.i = add i32 %8, -1
  %sub24.i = sub i32 1, %3
  %shl.i = shl i32 %sub22.i, %sub24.i
  %add25.i = add i32 %shl.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %div55.i)
  %cmp26.i = icmp ugt i32 %add25.i, %div55.i
  %10 = tail call i32 @llvm.umin.i32(i32 %add25.i, i32 %div55.i) #8
  br label %rq_depth_calc_max_depth.exit

rq_depth_calc_max_depth.exit:                     ; preds = %if.then20.i, %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge, %if.then9.i, %if.then.i
  %.sink.i = phi i32 [ %..i, %if.then.i ], [ %add.i, %if.then9.i ], [ %10, %if.then20.i ], [ %8, %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge ]
  %ret.2.off0.i = phi i1 [ %not.cmp1.i, %if.then.i ], [ false, %if.then9.i ], [ %cmp26.i, %if.then20.i ], [ false, %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge ]
  %11 = ptrtoint ptr %rqd to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %rqd, align 4
  %frombool = zext i1 %ret.2.off0.i to i8
  %12 = ptrtoint ptr %scaled_max to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %scaled_max, align 4
  br label %return

return:                                           ; preds = %rq_depth_calc_max_depth.exit, %entry.return_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rq_depth_scale_down(ptr nocapture noundef %rqd, i1 noundef zeroext %hard_throttle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rqd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %scale_step = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 1
  %2 = ptrtoint ptr %scale_step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scale_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp slt i32 %3, 0
  %4 = and i1 %cmp1, %hard_throttle
  %inc = add i32 %3, 1
  %spec.select = select i1 %4, i32 0, i32 %inc
  %5 = ptrtoint ptr %scale_step to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %scale_step, align 4
  %scaled_max = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 2
  %6 = ptrtoint ptr %scaled_max to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %scaled_max, align 4
  %queue_depth.i = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 3
  %7 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %if.else4.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp1.i.inv = icmp slt i32 %spec.select, 1
  %..i = select i1 %cmp1.i.inv, i32 2, i32 1
  br label %rq_depth_calc_max_depth.exit

if.else4.i:                                       ; preds = %if.end
  %default_depth.i = getelementptr inbounds %struct.rq_depth, ptr %rqd, i32 0, i32 4
  %9 = ptrtoint ptr %default_depth.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %default_depth.i, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp8.i = icmp sgt i32 %spec.select, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.else17.i

if.then9.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %11, -1
  %12 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 31) #8
  %shr.i = lshr i32 %sub.i, %12
  %add.i = add nuw i32 %shr.i, 1
  br label %rq_depth_calc_max_depth.exit

if.else17.i:                                      ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp19.i = icmp slt i32 %spec.select, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge

if.else17.i.rq_depth_calc_max_depth.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rq_depth_calc_max_depth.exit

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %8, 3
  %div55.i = lshr i32 %mul.i, 2
  %sub22.i = add i32 %11, -1
  %sub24.i = sub i32 0, %spec.select
  %shl.i = shl i32 %sub22.i, %sub24.i
  %add25.i = add i32 %shl.i, 1
  %13 = tail call i32 @llvm.umin.i32(i32 %add25.i, i32 %div55.i) #8
  br label %rq_depth_calc_max_depth.exit

rq_depth_calc_max_depth.exit:                     ; preds = %if.then20.i, %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge, %if.then9.i, %if.then.i
  %.sink.i = phi i32 [ %..i, %if.then.i ], [ %add.i, %if.then9.i ], [ %13, %if.then20.i ], [ %11, %if.else17.i.rq_depth_calc_max_depth.exit_crit_edge ]
  %14 = ptrtoint ptr %rqd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %rqd, align 4
  br label %return

return:                                           ; preds = %rq_depth_calc_max_depth.exit, %entry.return_crit_edge
  %15 = xor i1 %cmp, true
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rq_qos_wait(ptr noundef %rqw, ptr noundef %private_data, ptr noundef %acquire_inflight_cb, ptr nocapture noundef readonly %cleanup_cb) #0 align 64 {
entry:
  %data = alloca %struct.rq_qos_wait_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %data) #8
  %0 = getelementptr inbounds i8, ptr %data, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %private, align 4
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rq_qos_wake_function, ptr %func, align 4
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry1, ptr %entry1, align 4
  %prev = getelementptr inbounds %struct.wait_queue_entry, ptr %data, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry1, ptr %prev, align 4
  %task = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 1
  %7 = call i32 @llvm.read_register.i32(metadata !3) #8
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task6 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task6, align 8
  %11 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %task, align 4
  %rqw7 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %rqw7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rqw, ptr %rqw7, align 4
  %cb = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %acquire_inflight_cb, ptr %cb, align 4
  %private_data8 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %private_data8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %private_data, ptr %private_data8, align 4
  %got_token = getelementptr inbounds %struct.rq_qos_wait_data, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %got_token to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %got_token, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !17
  %head.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %rqw, i32 0, i32 1
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %17, %head.i.i
  br i1 %cmp.i.i.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call10 = call zeroext i1 %acquire_inflight_cb(ptr noundef %rqw, ptr noundef %private_data) #8
  br i1 %call10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %rqw, ptr noundef nonnull %data, i32 noundef 2) #8
  %18 = ptrtoint ptr %got_token to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %got_token, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not122 = icmp eq i8 %19, 0
  br i1 %tobool16.not122, label %if.end18, label %if.end.do.end103_crit_edge

if.end.do.end103_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

if.end18:                                         ; preds = %if.end
  br i1 %call13, label %land.lhs.true20, label %if.end18.if.end33.preheader_crit_edge

if.end18.if.end33.preheader_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.preheader

land.lhs.true20:                                  ; preds = %if.end18
  %call21 = call zeroext i1 %acquire_inflight_cb(ptr noundef %rqw, ptr noundef %private_data) #8
  br i1 %call21, label %if.then22, label %land.lhs.true20.if.end33.preheader_crit_edge

land.lhs.true20.if.end33.preheader_crit_edge:     ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.preheader

if.end33.preheader:                               ; preds = %land.lhs.true20.if.end33.preheader_crit_edge, %if.end18.if.end33.preheader_crit_edge
  br label %if.end33

if.then22:                                        ; preds = %land.lhs.true20
  call void @finish_wait(ptr noundef %rqw, ptr noundef nonnull %data) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !18
  %20 = ptrtoint ptr %got_token to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %got_token, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.then22.do.end103_crit_edge, label %if.then31

if.then22.do.end103_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

if.then31:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  call void %cleanup_cb(ptr noundef %rqw, ptr noundef %private_data) #8
  br label %do.end103

if.end33:                                         ; preds = %__here.if.end33_crit_edge, %if.end33.preheader
  call void @io_schedule() #8
  br label %__here

__here:                                           ; preds = %if.end33
  %22 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task6, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@rq_qos_wait, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task6, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 2, ptr %25, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !19
  %27 = ptrtoint ptr %got_token to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %got_token, align 4, !range !16
  %tobool16.not = icmp eq i8 %28, 0
  br i1 %tobool16.not, label %__here.if.end33_crit_edge, label %__here.do.end103_crit_edge

__here.do.end103_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

__here.if.end33_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end103:                                        ; preds = %__here.do.end103_crit_edge, %if.then31, %if.then22.do.end103_crit_edge, %if.end.do.end103_crit_edge
  call void @finish_wait(ptr noundef %rqw, ptr noundef nonnull %data) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rq_qos_wake_function(ptr noundef %curr, i32 noundef %mode, i32 noundef %wake_flags, ptr nocapture noundef readnone %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.rq_qos_wait_data, ptr %curr, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %rqw = getelementptr inbounds %struct.rq_qos_wait_data, ptr %curr, i32 0, i32 2
  %2 = ptrtoint ptr %rqw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rqw, align 4
  %private_data = getelementptr inbounds %struct.rq_qos_wait_data, ptr %curr, i32 0, i32 4
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i1 %1(ptr noundef %3, ptr noundef %5) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %got_token = getelementptr inbounds %struct.rq_qos_wait_data, ptr %curr, i32 0, i32 5
  %6 = ptrtoint ptr %got_token to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %got_token, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !20
  %entry4 = getelementptr inbounds %struct.wait_queue_entry, ptr %curr, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry4) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %curr, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %curr, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry4, ptr %prev.i3.i, align 4
  %task = getelementptr inbounds %struct.rq_qos_wait_data, ptr %curr, i32 0, i32 1
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 4
  %call5 = tail call i32 @wake_up_process(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %list_del_init.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rq_qos_exit(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @blk_mq_debugfs_unregister_queue_rqos(ptr noundef %q) #8
  %rq_qos = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %rq_qos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_qos, align 4
  %tobool.not8 = icmp eq ptr %1, null
  br i1 %tobool.not8, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %11, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.rq_qos, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  %5 = ptrtoint ptr %rq_qos to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %rq_qos, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 4
  %exit = getelementptr inbounds %struct.rq_qos_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exit, align 4
  tail call void %9(ptr noundef nonnull %2) #8
  %10 = ptrtoint ptr %rq_qos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_qos, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_queue_rqos(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.named.register.sp = !{!3}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../block/blk-rq-qos.c", i32 290, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = !{!"sp"}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2148322280}
!14 = !{i64 704193, i64 704217, i64 704238, i64 704255, i64 704272}
!15 = !{i64 2148322506}
!16 = !{i8 0, i8 2}
!17 = !{i64 2149582262}
!18 = !{i64 2154413627}
!19 = !{i64 2154418350}
!20 = !{i64 2154413362}
