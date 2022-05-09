; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_ioctl.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.midi_info = type { [30 x i8], i32, i32, i32, [18 x i32] }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.68 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%union.anon.68 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.synth_info = type { [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [19 x i32] }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_oss_readq = type { ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.seq_oss_timer = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_oss_writeq = type { ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/core/seq/oss/seq_oss_ioctl.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [29 x i64] [i64 27, i64 32, i64 20736, i64 20737, i64 20753, i64 21506, i64 21507, i64 21508, i64 1074024712, i64 1074024713, i64 1074024717, i64 1074024719, i64 1074025479, i64 1074025480, i64 1074286866, i64 2147766532, i64 2147766533, i64 2147766538, i64 2147766539, i64 2147766547, i64 3221508355, i64 3221508366, i64 3221509121, i64 3221509125, i64 3221509126, i64 3221515520, i64 3228848396, i64 3230421250, i64 3230421268]
@___asan_gen_.5 = private constant [38 x i8] c"../sound/core/seq/oss/seq_oss_ioctl.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 97, i32 7 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 156, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.3], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_ioctl(ptr noundef %dp, i32 noundef %cmd, i32 noundef %carg) local_unnamed_addr #0 align 64 {
entry:
  %info.i420 = alloca %struct.midi_info, align 4
  %ev.i = alloca [8 x i8], align 8
  %tmpev.i = alloca %struct.snd_seq_event, align 4
  %info.i = alloca %struct.synth_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %carg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -1073458175, label %entry.sw.bb_crit_edge
    i32 -1073458171, label %entry.sw.bb_crit_edge452
    i32 21506, label %entry.sw.bb_crit_edge453
    i32 21507, label %entry.sw.bb_crit_edge454
    i32 21508, label %entry.sw.bb_crit_edge455
    i32 1074025479, label %entry.sw.bb_crit_edge456
    i32 -1073458170, label %entry.sw.bb_crit_edge457
    i32 1074025480, label %entry.sw.bb_crit_edge458
    i32 -1073458941, label %entry.sw.bb_crit_edge459
    i32 20753, label %sw.bb1
    i32 20737, label %sw.bb2
    i32 20736, label %sw.bb11
    i32 1074024712, label %sw.bb12
    i32 -2147200763, label %sw.bb21
    i32 -2147200764, label %sw.bb40
    i32 -2147200749, label %sw.bb68
    i32 1074024713, label %sw.bb88
    i32 -2147200758, label %sw.bb105
    i32 -2147200757, label %sw.bb123
    i32 -1073458930, label %sw.bb141
    i32 1074024719, label %sw.bb175
    i32 -1064546046, label %entry.sw.bb192_crit_edge
    i32 -1064546028, label %entry.sw.bb192_crit_edge460
    i32 1074286866, label %sw.bb194
    i32 -1066118900, label %sw.bb196
    i32 1074024717, label %sw.bb198
    i32 -1073451776, label %sw.bb229
  ]

entry.sw.bb192_crit_edge460:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb192

entry.sw.bb192_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb192

entry.sw.bb_crit_edge459:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge458:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge457:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge456:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge455:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge454:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge453:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge452:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge452, %entry.sw.bb_crit_edge453, %entry.sw.bb_crit_edge454, %entry.sw.bb_crit_edge455, %entry.sw.bb_crit_edge456, %entry.sw.bb_crit_edge457, %entry.sw.bb_crit_edge458, %entry.sw.bb_crit_edge459
  %timer = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %call = tail call i32 @snd_seq_oss_timer_ioctl(ptr noundef %3, i32 noundef %cmd, ptr noundef %0) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_seq_oss_reset(ptr noundef %dp) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %4 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %file_mode, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb2.cleanup_crit_edge, label %lor.lhs.false

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb2
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 11
  %6 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writeq, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.while.cond_crit_edge

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  br label %while.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %lor.lhs.false.while.cond_crit_edge
  %8 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %writeq, align 4
  %call4 = tail call i32 @snd_seq_oss_writeq_sync(ptr noundef %9) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i399 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i399 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.end.cleanup_crit_edge, !prof !19

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

signal_pending.exit:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool8.not = icmp eq i32 %and1.i.i.i.i.i, 0
  %spec.select451 = select i1 %tobool8.not, i32 0, i32 -512
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_seq_oss_reset(ptr noundef %dp) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 97) #5
  %21 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !20
  %and.i = and i32 %23, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %24 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !23
  %asmresult = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool16.not = icmp eq i32 %asmresult, 0
  br i1 %tobool16.not, label %if.end18, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult14 = extractvalue { i32, i32 } %24, 1
  %file_mode19 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %25 = ptrtoint ptr %file_mode19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %file_mode19, align 4
  %call20 = tail call i32 @snd_seq_oss_midi_open(ptr noundef %dp, i32 noundef %asmresult14, i32 noundef %26) #5
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 12
  %27 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %readq, align 4
  %cmp22 = icmp eq ptr %28, null
  br i1 %cmp22, label %sw.bb21.cleanup_crit_edge, label %lor.lhs.false23

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false23:                                  ; preds = %sw.bb21
  %file_mode24 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %29 = ptrtoint ptr %file_mode24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %file_mode24, align 4
  %and25 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false23.cleanup_crit_edge, label %if.end28

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  %qlen = getelementptr inbounds %struct.seq_oss_readq, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 104) #5
  %33 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i351 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i351 to ptr
  %cpu_domain.i.i352 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i352) #3, !srcloc !20
  %and.i353 = and i32 %35, -13
  %or.i354 = or i32 %and.i353, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i354) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %32, i32 -1226833921) #5, !srcloc !24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  %cond = select i1 %tobool39.not, i32 0, i32 -14
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  %file_mode41 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %37 = ptrtoint ptr %file_mode41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %file_mode41, align 4
  %and42 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %sw.bb40.cleanup_crit_edge, label %lor.lhs.false44

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false44:                                  ; preds = %sw.bb40
  %writeq45 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 11
  %39 = ptrtoint ptr %writeq45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %writeq45, align 4
  %cmp46 = icmp eq ptr %40, null
  br i1 %cmp46, label %lor.lhs.false44.cleanup_crit_edge, label %if.end48

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #7
  %call54 = tail call i32 @snd_seq_oss_writeq_get_free_size(ptr noundef nonnull %40) #5
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 109) #5
  %41 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i355 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i355 to ptr
  %cpu_domain.i.i356 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i356) #3, !srcloc !20
  %and.i357 = and i32 %43, -13
  %or.i358 = or i32 %and.i357, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i358) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %44 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call54, i32 -1226833921) #5, !srcloc !25
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool66.not = icmp eq i32 %44, 0
  %cond67 = select i1 %tobool66.not, i32 0, i32 -14
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %timer73 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %45 = ptrtoint ptr %timer73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %timer73, align 4
  %cur_tick.i = getelementptr inbounds %struct.seq_oss_timer, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %cur_tick.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_tick.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 112) #5
  %49 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i359 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i359 to ptr
  %cpu_domain.i.i360 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i360) #3, !srcloc !20
  %and.i361 = and i32 %51, -13
  %or.i362 = or i32 %and.i361, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i362) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %48, i32 -1226833921) #5, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool86.not = icmp eq i32 %52, 0
  %cond87 = select i1 %tobool86.not, i32 0, i32 -14
  br label %cleanup

sw.bb88:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 115) #5
  %53 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i363 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i363 to ptr
  %cpu_domain.i.i364 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i364) #3, !srcloc !20
  %and.i365 = and i32 %55, -13
  %or.i366 = or i32 %and.i365, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i366) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %56 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !27
  %asmresult98 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult98)
  %tobool101.not = icmp eq i32 %asmresult98, 0
  br i1 %tobool101.not, label %if.end103, label %sw.bb88.cleanup_crit_edge

sw.bb88.cleanup_crit_edge:                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end103:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult99 = extractvalue { i32, i32 } %56, 1
  %call104 = tail call i32 @snd_seq_oss_synth_ioctl(ptr noundef %dp, i32 noundef %asmresult99, i32 noundef 1074024713, i32 noundef %carg) #5
  br label %cleanup

sw.bb105:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max_synthdev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %57 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_synthdev, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 120) #5
  %59 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i367 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i367 to ptr
  %cpu_domain.i.i368 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i368) #3, !srcloc !20
  %and.i369 = and i32 %61, -13
  %or.i370 = or i32 %and.i369, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i370) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %62 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %58, i32 -1226833921) #5, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool121.not = icmp eq i32 %62, 0
  %cond122 = select i1 %tobool121.not, i32 0, i32 -14
  br label %cleanup

sw.bb123:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %63 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_mididev, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 123) #5
  %65 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i371 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i371 to ptr
  %cpu_domain.i.i372 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i372) #3, !srcloc !20
  %and.i373 = and i32 %67, -13
  %or.i374 = or i32 %and.i373, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i374) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %68 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %64, i32 -1226833921) #5, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool139.not = icmp eq i32 %68, 0
  %cond140 = select i1 %tobool139.not, i32 0, i32 -14
  br label %cleanup

sw.bb141:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 126) #5
  %69 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i375 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i375 to ptr
  %cpu_domain.i.i376 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 4
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i376) #3, !srcloc !20
  %and.i377 = and i32 %71, -13
  %or.i378 = or i32 %and.i377, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i378) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %72 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !30
  %asmresult151 = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult151)
  %tobool154.not = icmp eq i32 %asmresult151, 0
  br i1 %tobool154.not, label %if.end156, label %sw.bb141.cleanup_crit_edge

sw.bb141.cleanup_crit_edge:                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end156:                                        ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult152 = extractvalue { i32, i32 } %72, 1
  %call157 = tail call i32 @snd_seq_oss_synth_ioctl(ptr noundef %dp, i32 noundef %asmresult152, i32 noundef -1073458930, i32 noundef %carg) #5
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 129) #5
  %73 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i379 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i379 to ptr
  %cpu_domain.i.i380 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i380) #3, !srcloc !20
  %and.i381 = and i32 %75, -13
  %or.i382 = or i32 %and.i381, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i382) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %76 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call157, i32 -1226833921) #5, !srcloc !31
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool173.not = icmp eq i32 %76, 0
  %cond174 = select i1 %tobool173.not, i32 0, i32 -14
  br label %cleanup

sw.bb175:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 132) #5
  %77 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i383 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i383 to ptr
  %cpu_domain.i.i384 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i384) #3, !srcloc !20
  %and.i385 = and i32 %79, -13
  %or.i386 = or i32 %and.i385, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i386) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %80 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !32
  %asmresult185 = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult185)
  %tobool188.not = icmp eq i32 %asmresult185, 0
  br i1 %tobool188.not, label %if.end190, label %sw.bb175.cleanup_crit_edge

sw.bb175.cleanup_crit_edge:                       ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end190:                                        ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult186 = extractvalue { i32, i32 } %80, 1
  %call191 = tail call i32 @snd_seq_oss_synth_ioctl(ptr noundef %dp, i32 noundef %asmresult186, i32 noundef 1074024719, i32 noundef %carg) #5
  br label %cleanup

sw.bb192:                                         ; preds = %entry.sw.bb192_crit_edge, %entry.sw.bb192_crit_edge460
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %info.i) #5
  %81 = call ptr @memset(ptr %info.i, i32 255, i32 140)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %sw.bb192.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb192.if.then11.i.i.i_crit_edge:               ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb192
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 140, i32 -1226833920) #8
  %asmresult.i.i.i = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !19

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 140) #5
  %83 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !20
  %and.i.i.i.i.i = and i32 %85, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %0, i32 noundef 140) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i400, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !19

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb192.if.then11.i.i.i_crit_edge
  %res.0.i.i21.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 140, %sw.bb192.if.then11.i.i.i_crit_edge ], [ 140, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 140, %res.0.i.i21.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i, i32 %sub.i.i.i
  %86 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i21.i)
  br label %snd_seq_oss_synth_info_user.exit

if.end.i400:                                      ; preds = %if.end.i.i.i
  %device.i = getelementptr inbounds %struct.synth_info, ptr %info.i, i32 0, i32 1
  %87 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %device.i, align 4
  %call1.i = call i32 @snd_seq_oss_synth_make_info(ptr noundef %dp, i32 noundef %88, ptr noundef nonnull %info.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i400.snd_seq_oss_synth_info_user.exit_crit_edge, label %if.end59.i.i12.i

if.end.i400.snd_seq_oss_synth_info_user.exit_crit_edge: ; preds = %if.end.i400
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_seq_oss_synth_info_user.exit

if.end59.i.i12.i:                                 ; preds = %if.end.i400
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i13.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i13.i, label %if.end59.i.i12.i.snd_seq_oss_synth_info_user.exit_crit_edge, label %copy_to_user.exit.i

if.end59.i.i12.i.snd_seq_oss_synth_info_user.exit_crit_edge: ; preds = %if.end59.i.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_seq_oss_synth_info_user.exit

copy_to_user.exit.i:                              ; preds = %if.end59.i.i12.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i17.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 140) #5
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %info.i, i32 noundef 140) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool5.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool5.not.i, i32 0, i32 -14
  br label %snd_seq_oss_synth_info_user.exit

snd_seq_oss_synth_info_user.exit:                 ; preds = %copy_to_user.exit.i, %if.end59.i.i12.i.snd_seq_oss_synth_info_user.exit_crit_edge, %if.end.i400.snd_seq_oss_synth_info_user.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i401 = phi i32 [ -22, %if.end.i400.snd_seq_oss_synth_info_user.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i12.i.snd_seq_oss_synth_info_user.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %info.i) #5
  br label %cleanup

sw.bb194:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.i) #5
  %89 = ptrtoint ptr %ev.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 -1, ptr %ev.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tmpev.i) #5
  %90 = getelementptr inbounds %struct.snd_seq_event, ptr %tmpev.i, i32 0, i32 3
  %91 = getelementptr inbounds %struct.snd_seq_event, ptr %tmpev.i, i32 0, i32 5
  %92 = getelementptr inbounds %struct.snd_seq_event, ptr %tmpev.i, i32 0, i32 6
  %93 = getelementptr inbounds %struct.snd_seq_event, ptr %tmpev.i, i32 0, i32 6, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #5
  %call.i.i.i402 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i402, label %sw.bb194.if.then11.i.i.i416_crit_edge, label %land.lhs.true.i.i.i405

sw.bb194.if.then11.i.i.i416_crit_edge:            ; preds = %sw.bb194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i416

land.lhs.true.i.i.i405:                           ; preds = %sw.bb194
  %94 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #8, !srcloc !33
  %asmresult.i.i.i403 = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i403)
  %cmp.i6.i.i404 = icmp eq i32 %asmresult.i.i.i403, 0
  br i1 %cmp.i6.i.i404, label %if.end.i.i.i413, label %land.lhs.true.i.i.i405.if.then11.i.i.i416_crit_edge, !prof !19

land.lhs.true.i.i.i405.if.then11.i.i.i416_crit_edge: ; preds = %land.lhs.true.i.i.i405
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i416

if.end.i.i.i413:                                  ; preds = %land.lhs.true.i.i.i405
  %call.i.i.i.i406 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ev.i, i32 noundef 8) #5
  %95 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i407 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i.i.i407 to ptr
  %cpu_domain.i.i.i.i.i.i408 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 4
  %97 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i408) #3, !srcloc !20
  %and.i.i.i.i.i409 = and i32 %97, -13
  %or.i.i.i.i.i410 = or i32 %and.i.i.i.i.i409, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i410) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i411 = call i32 @arm_copy_from_user(ptr noundef nonnull %ev.i, ptr noundef %0, i32 noundef 8) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i411)
  %tobool4.not.i.i.i412 = icmp eq i32 %call1.i.i.i.i411, 0
  br i1 %tobool4.not.i.i.i412, label %if.end.i418, label %if.end.i.i.i413.if.then11.i.i.i416_crit_edge, !prof !19

if.end.i.i.i413.if.then11.i.i.i416_crit_edge:     ; preds = %if.end.i.i.i413
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i416

if.then11.i.i.i416:                               ; preds = %if.end.i.i.i413.if.then11.i.i.i416_crit_edge, %land.lhs.true.i.i.i405.if.then11.i.i.i416_crit_edge, %sw.bb194.if.then11.i.i.i416_crit_edge
  %res.0.i.i16.i = phi i32 [ %call1.i.i.i.i411, %if.end.i.i.i413.if.then11.i.i.i416_crit_edge ], [ 8, %sw.bb194.if.then11.i.i.i416_crit_edge ], [ 8, %land.lhs.true.i.i.i405.if.then11.i.i.i416_crit_edge ]
  %sub.i.i.i414 = sub i32 8, %res.0.i.i16.i
  %add.ptr.i.i.i415 = getelementptr i8, ptr %ev.i, i32 %sub.i.i.i414
  %98 = call ptr @memset(ptr %add.ptr.i.i.i415, i32 0, i32 %res.0.i.i16.i)
  br label %snd_seq_oss_oob_user.exit

if.end.i418:                                      ; preds = %if.end.i.i.i413
  %99 = call ptr @memset(ptr %tmpev.i, i32 0, i32 28)
  %addr.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %100 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %addr.i, align 4
  %port.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %port.i, align 1
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %104 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %queue.i.i, align 4
  %conv.i.i = trunc i32 %105 to i8
  %106 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i.i, ptr %90, align 1
  %107 = load i16, ptr %addr.i, align 4
  %108 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %91, align 4
  %109 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %101, ptr %92, align 2
  %110 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %103, ptr %93, align 1
  %call4.i = call i32 @snd_seq_oss_process_event(ptr noundef %dp, ptr noundef nonnull %ev.i, ptr noundef nonnull %tmpev.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i417 = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i417, label %if.then6.i, label %if.end.i418.snd_seq_oss_oob_user.exit_crit_edge

if.end.i418.snd_seq_oss_oob_user.exit_crit_edge:  ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_seq_oss_oob_user.exit

if.then6.i:                                       ; preds = %if.end.i418
  call void @__sanitizer_cov_trace_pc() #7
  %cseq.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %111 = ptrtoint ptr %cseq.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cseq.i.i, align 4
  %call.i.i = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %112, ptr noundef nonnull %tmpev.i, i32 noundef 0, i32 noundef 0) #5
  br label %snd_seq_oss_oob_user.exit

snd_seq_oss_oob_user.exit:                        ; preds = %if.then6.i, %if.end.i418.snd_seq_oss_oob_user.exit_crit_edge, %if.then11.i.i.i416
  %retval.0.i419 = phi i32 [ 0, %if.then6.i ], [ 0, %if.end.i418.snd_seq_oss_oob_user.exit_crit_edge ], [ -14, %if.then11.i.i.i416 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tmpev.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #5
  br label %cleanup

sw.bb196:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %info.i420) #5
  %113 = call ptr @memset(ptr %info.i420, i32 255, i32 116)
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #5
  %call.i.i.i421 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i421, label %sw.bb196.if.then11.i.i.i436_crit_edge, label %land.lhs.true.i.i.i424

sw.bb196.if.then11.i.i.i436_crit_edge:            ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i436

land.lhs.true.i.i.i424:                           ; preds = %sw.bb196
  %114 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 116, i32 -1226833920) #8
  %asmresult.i.i.i422 = extractvalue { i32, i32 } %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i422)
  %cmp.i6.i.i423 = icmp eq i32 %asmresult.i.i.i422, 0
  br i1 %cmp.i6.i.i423, label %if.end.i.i.i432, label %land.lhs.true.i.i.i424.if.then11.i.i.i436_crit_edge, !prof !19

land.lhs.true.i.i.i424.if.then11.i.i.i436_crit_edge: ; preds = %land.lhs.true.i.i.i424
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i436

if.end.i.i.i432:                                  ; preds = %land.lhs.true.i.i.i424
  %call.i.i.i.i425 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i420, i32 noundef 116) #5
  %115 = call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i.i.i.i.i426 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i.i.i.i.i426 to ptr
  %cpu_domain.i.i.i.i.i.i427 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 4
  %117 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i427) #3, !srcloc !20
  %and.i.i.i.i.i428 = and i32 %117, -13
  %or.i.i.i.i.i429 = or i32 %and.i.i.i.i.i428, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i429) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %call1.i.i.i.i430 = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i420, ptr noundef %0, i32 noundef 116) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #5, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i430)
  %tobool4.not.i.i.i431 = icmp eq i32 %call1.i.i.i.i430, 0
  br i1 %tobool4.not.i.i.i431, label %if.end.i440, label %if.end.i.i.i432.if.then11.i.i.i436_crit_edge, !prof !19

if.end.i.i.i432.if.then11.i.i.i436_crit_edge:     ; preds = %if.end.i.i.i432
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i436

if.then11.i.i.i436:                               ; preds = %if.end.i.i.i432.if.then11.i.i.i436_crit_edge, %land.lhs.true.i.i.i424.if.then11.i.i.i436_crit_edge, %sw.bb196.if.then11.i.i.i436_crit_edge
  %res.0.i.i21.i433 = phi i32 [ %call1.i.i.i.i430, %if.end.i.i.i432.if.then11.i.i.i436_crit_edge ], [ 116, %sw.bb196.if.then11.i.i.i436_crit_edge ], [ 116, %land.lhs.true.i.i.i424.if.then11.i.i.i436_crit_edge ]
  %sub.i.i.i434 = sub i32 116, %res.0.i.i21.i433
  %add.ptr.i.i.i435 = getelementptr i8, ptr %info.i420, i32 %sub.i.i.i434
  %118 = call ptr @memset(ptr %add.ptr.i.i.i435, i32 0, i32 %res.0.i.i21.i433)
  br label %snd_seq_oss_midi_info_user.exit

if.end.i440:                                      ; preds = %if.end.i.i.i432
  %device.i437 = getelementptr inbounds %struct.midi_info, ptr %info.i420, i32 0, i32 1
  %119 = ptrtoint ptr %device.i437 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %device.i437, align 4
  %call1.i438 = call i32 @snd_seq_oss_midi_make_info(ptr noundef %dp, i32 noundef %120, ptr noundef nonnull %info.i420) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i438)
  %cmp.i439 = icmp slt i32 %call1.i438, 0
  br i1 %cmp.i439, label %if.end.i440.snd_seq_oss_midi_info_user.exit_crit_edge, label %if.end59.i.i12.i442

if.end.i440.snd_seq_oss_midi_info_user.exit_crit_edge: ; preds = %if.end.i440
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_seq_oss_midi_info_user.exit

if.end59.i.i12.i442:                              ; preds = %if.end.i440
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i13.i441 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i13.i441, label %if.end59.i.i12.i442.snd_seq_oss_midi_info_user.exit_crit_edge, label %copy_to_user.exit.i447

if.end59.i.i12.i442.snd_seq_oss_midi_info_user.exit_crit_edge: ; preds = %if.end59.i.i12.i442
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_seq_oss_midi_info_user.exit

copy_to_user.exit.i447:                           ; preds = %if.end59.i.i12.i442
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i17.i443 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i420, i32 noundef 116) #5
  %call.i12.i.i.i444 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %info.i420, i32 noundef 116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i444)
  %tobool5.not.i445 = icmp eq i32 %call.i12.i.i.i444, 0
  %spec.select.i446 = select i1 %tobool5.not.i445, i32 0, i32 -14
  br label %snd_seq_oss_midi_info_user.exit

snd_seq_oss_midi_info_user.exit:                  ; preds = %copy_to_user.exit.i447, %if.end59.i.i12.i442.snd_seq_oss_midi_info_user.exit_crit_edge, %if.end.i440.snd_seq_oss_midi_info_user.exit_crit_edge, %if.then11.i.i.i436
  %retval.0.i448 = phi i32 [ -22, %if.end.i440.snd_seq_oss_midi_info_user.exit_crit_edge ], [ -14, %if.then11.i.i.i436 ], [ -14, %if.end59.i.i12.i442.snd_seq_oss_midi_info_user.exit_crit_edge ], [ %spec.select.i446, %copy_to_user.exit.i447 ]
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %info.i420) #5
  br label %cleanup

sw.bb198:                                         ; preds = %entry
  %file_mode199 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %121 = ptrtoint ptr %file_mode199 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %file_mode199, align 4
  %and200 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %sw.bb198.cleanup_crit_edge, label %if.end203

sw.bb198.cleanup_crit_edge:                       ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end203:                                        ; preds = %sw.bb198
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 150) #5
  %123 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i387 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i387 to ptr
  %cpu_domain.i.i388 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 4
  %125 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i388) #3, !srcloc !20
  %and.i389 = and i32 %125, -13
  %or.i390 = or i32 %and.i389, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i390) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %126 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !34
  %asmresult213 = extractvalue { i32, i32 } %126, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult213)
  %tobool216.not = icmp eq i32 %asmresult213, 0
  br i1 %tobool216.not, label %if.end218, label %if.end203.cleanup_crit_edge

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end218:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult214 = extractvalue { i32, i32 } %126, 1
  %127 = tail call i32 @llvm.smax.i32(i32 %asmresult214, i32 1)
  %writeq222 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 11
  %128 = ptrtoint ptr %writeq222 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %writeq222, align 4
  %maxlen = getelementptr inbounds %struct.seq_oss_writeq, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %131)
  %cmp223.not = icmp slt i32 %127, %131
  %sub = add i32 %131, -1
  %spec.select = select i1 %cmp223.not, i32 %127, i32 %sub
  tail call void @snd_seq_oss_writeq_set_output(ptr noundef %129, i32 noundef %spec.select) #5
  br label %cleanup

sw.bb229:                                         ; preds = %entry
  %readq230 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 12
  %132 = ptrtoint ptr %readq230 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %readq230, align 4
  %cmp231 = icmp eq ptr %133, null
  br i1 %cmp231, label %sw.bb229.cleanup_crit_edge, label %lor.lhs.false232

sw.bb229.cleanup_crit_edge:                       ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false232:                                 ; preds = %sw.bb229
  %file_mode233 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %134 = ptrtoint ptr %file_mode233 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %file_mode233, align 4
  %and234 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %lor.lhs.false232.cleanup_crit_edge, label %if.end237

lor.lhs.false232.cleanup_crit_edge:               ; preds = %lor.lhs.false232
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end237:                                        ; preds = %lor.lhs.false232
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 162) #5
  %136 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i391 = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i391 to ptr
  %cpu_domain.i.i392 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 4
  %138 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i392) #3, !srcloc !20
  %and.i393 = and i32 %138, -13
  %or.i394 = or i32 %and.i393, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i394) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %139 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #5, !srcloc !35
  %asmresult247 = extractvalue { i32, i32 } %139, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult247)
  %tobool250.not = icmp eq i32 %asmresult247, 0
  br i1 %tobool250.not, label %if.end252, label %if.end237.cleanup_crit_edge

if.end237.cleanup_crit_edge:                      ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end252:                                        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult248 = extractvalue { i32, i32 } %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult248)
  %cmp253 = icmp slt i32 %asmresult248, 1
  %mul = mul i32 %asmresult248, 100
  %div = sdiv i32 %mul, 10
  %val.1 = select i1 %cmp253, i32 -1, i32 %div
  %140 = ptrtoint ptr %readq230 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %readq230, align 4
  %pre_event_timeout = getelementptr inbounds %struct.seq_oss_readq, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %pre_event_timeout to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %val.1, ptr %pre_event_timeout, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 169) #5
  %143 = tail call i32 @llvm.read_register.i32(metadata !9) #5
  %and.i.i.i395 = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i395 to ptr
  %cpu_domain.i.i396 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 4
  %145 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i396) #3, !srcloc !20
  %and.i397 = and i32 %145, -13
  %or.i398 = or i32 %and.i397, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i398) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  %146 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %val.1, i32 -1226833921) #5, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool272.not = icmp eq i32 %146, 0
  %cond273 = select i1 %tobool272.not, i32 0, i32 -14
  br label %cleanup

sw.default:                                       ; preds = %entry
  %file_mode274 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %147 = ptrtoint ptr %file_mode274 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %file_mode274, align 4
  %and275 = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %sw.default.cleanup_crit_edge, label %if.end278

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end278:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %call279 = tail call i32 @snd_seq_oss_synth_ioctl(ptr noundef %dp, i32 noundef 0, i32 noundef %cmd, i32 noundef %carg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end278, %sw.default.cleanup_crit_edge, %if.end252, %if.end237.cleanup_crit_edge, %lor.lhs.false232.cleanup_crit_edge, %sw.bb229.cleanup_crit_edge, %if.end218, %if.end203.cleanup_crit_edge, %sw.bb198.cleanup_crit_edge, %snd_seq_oss_midi_info_user.exit, %snd_seq_oss_oob_user.exit, %snd_seq_oss_synth_info_user.exit, %if.end190, %sw.bb175.cleanup_crit_edge, %if.end156, %sw.bb141.cleanup_crit_edge, %sw.bb123, %sw.bb105, %if.end103, %sw.bb88.cleanup_crit_edge, %sw.bb68, %if.end48, %lor.lhs.false44.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %if.end28, %lor.lhs.false23.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %if.end18, %sw.bb12.cleanup_crit_edge, %sw.bb11, %signal_pending.exit, %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call279, %if.end278 ], [ %cond273, %if.end252 ], [ 0, %if.end218 ], [ %retval.0.i448, %snd_seq_oss_midi_info_user.exit ], [ %retval.0.i419, %snd_seq_oss_oob_user.exit ], [ %retval.0.i401, %snd_seq_oss_synth_info_user.exit ], [ 0, %if.end190 ], [ %cond174, %if.end156 ], [ %cond140, %sw.bb123 ], [ %cond122, %sw.bb105 ], [ %call104, %if.end103 ], [ %cond87, %sw.bb68 ], [ %cond67, %if.end48 ], [ %cond, %if.end28 ], [ %call20, %if.end18 ], [ 0, %sw.bb11 ], [ -22, %sw.bb1 ], [ %call, %sw.bb ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ -14, %sw.bb12.cleanup_crit_edge ], [ 0, %lor.lhs.false23.cleanup_crit_edge ], [ 0, %sw.bb21.cleanup_crit_edge ], [ 0, %lor.lhs.false44.cleanup_crit_edge ], [ 0, %sw.bb40.cleanup_crit_edge ], [ -14, %sw.bb88.cleanup_crit_edge ], [ -14, %sw.bb141.cleanup_crit_edge ], [ -14, %sw.bb175.cleanup_crit_edge ], [ 0, %sw.bb198.cleanup_crit_edge ], [ -14, %if.end203.cleanup_crit_edge ], [ 0, %lor.lhs.false232.cleanup_crit_edge ], [ 0, %sw.bb229.cleanup_crit_edge ], [ -14, %if.end237.cleanup_crit_edge ], [ -5, %sw.default.cleanup_crit_edge ], [ -512, %while.end.cleanup_crit_edge ], [ %spec.select451, %signal_pending.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_writeq_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_writeq_get_free_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_writeq_set_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_make_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_process_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_make_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_ioctl.c", i32 97, i32 7}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 4644813}
!21 = !{i64 4645010}
!22 = !{i64 2152130243}
!23 = !{i64 2153953251, i64 2153953531, i64 2153953865, i64 2153954199}
!24 = !{i64 2153963495, i64 2153963775, i64 2153964109, i64 2153964443}
!25 = !{i64 2153973115, i64 2153973395, i64 2153973729, i64 2153974063}
!26 = !{i64 2153982659, i64 2153982939, i64 2153983273, i64 2153983607}
!27 = !{i64 2153994836, i64 2153995116, i64 2153995450, i64 2153995784}
!28 = !{i64 2154005021, i64 2154005301, i64 2154005635, i64 2154005969}
!29 = !{i64 2154014521, i64 2154014801, i64 2154015135, i64 2154015469}
!30 = !{i64 2154026719, i64 2154026999, i64 2154027333, i64 2154027667}
!31 = !{i64 2154036177, i64 2154036457, i64 2154036791, i64 2154037125}
!32 = !{i64 2154048356, i64 2154048636, i64 2154048970, i64 2154049304}
!33 = !{i64 2152149258, i64 2152149283}
!34 = !{i64 2154064713, i64 2154064993, i64 2154065327, i64 2154065661}
!35 = !{i64 2154081716, i64 2154081996, i64 2154082330, i64 2154082664}
!36 = !{i64 2154091188, i64 2154091468, i64 2154091802, i64 2154092136}
